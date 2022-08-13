#include "stdafx.h"
#include "Agent.h"
#include "Breakout.h"
#include "config.h"

#define NUM_BATCHES 16

Agent::Agent(Breakout* tGame) :game(tGame) 
{
	srand((unsigned int)time(NULL));
	model_policy.Init();
	TransferWeights(model_target, model_policy);
}

void Agent::TensorflowCtrl()
{
	const int steps_to_transfer = 50;
	const int memory_size = 5000;
	const float discount_rate = 0.9f;
	const float min_exploration_rate = 0.01f;
	const float max_exploration_rate = 1.0f;
	const float exploration_decay_rate = 0.005f;
	float exploration_threshold = 1.0f;
	int moves_rewarded = 0;
	int episode_num = 0;
	float ep_reward = 0;
	GameState gameStatePast, gameStateFuture;
	int action;
	float targetNowTab[NUM_BATCHES][NUM_ACTIONS];
	while (1)
	{
		if (checkBallInAction())
		{
			gameStatePast.set(getBallPos(), getPaddlePos(), getBallDir());
			float explorationProb = (float)rand() / RAND_MAX;
			bool isExploration = explorationProb <= exploration_threshold;
			int* actionPred = model_policy.Predict((const float*)&gameStatePast, 1);
			float* targetPast = model_policy.getPredictions();
			if (isExploration)
				action = randomAction();
			else
				action = actionPred[0];
			movePaddle(action);
			std::this_thread::sleep_for(std::chrono::milliseconds(50));

			if (checkBallInAction())
			{
				gameStateFuture.set(getBallPos(), getPaddlePos(), getBallDir());
				float reward = getReward();
				ep_reward += reward;
				addElemToMemory(gameStatePast, gameStateFuture, targetPast, action, reward);
				if (replayMemory.size() >= NUM_BATCHES * 20)
				{
					int repIdx = (int)(((float)rand() / RAND_MAX) * (float)(replayMemory.size() - NUM_BATCHES));
					GameState inputFuture[NUM_BATCHES];
					for (int i = 0; i < NUM_BATCHES; i++)
						inputFuture[i] = replayMemory[i + repIdx].next_state;
					int* maxQidx = model_target.Predict((const float*)&inputFuture, NUM_BATCHES);
					float* targetFuture = model_target.getPredictions();
					GameState inputPast[NUM_BATCHES];
					for (int i = 0; i < NUM_BATCHES; i++)
					{
						replayMemory[i + repIdx].targetData[replayMemory[i + repIdx].action] = replayMemory[i + repIdx].reward + discount_rate * targetFuture[maxQidx[i] + i * NUM_ACTIONS];
						inputPast[i] = replayMemory[i + repIdx].curr_state;
						for (int j = 0; j < NUM_ACTIONS; j++)
							targetNowTab[i][j] = replayMemory[i + repIdx].targetData[j];
					}
					moves_rewarded++;
					model_policy.Train((const float*)inputPast, &targetNowTab[0][0], NUM_BATCHES);
					if (moves_rewarded >= steps_to_transfer)
					{
						TransferWeights(model_target, model_policy);
						exploration_threshold = min_exploration_rate + (max_exploration_rate - min_exploration_rate) * expf(-episode_num * exploration_decay_rate);
						moves_rewarded = 0;
						episode_num++;
						printf("Average reward %f, exploration threshold %f\n", ep_reward / steps_to_transfer, exploration_threshold);
						ep_reward = 0;
						if (replayMemory.size() > memory_size)
						{
							printf("Clearing replay memory.\n");
							replayMemory.clear();
						}
					}
				}
			}
			else
				game->clearBounced();
		}
		else
			paddleNeutral();
		std::this_thread::sleep_for(std::chrono::milliseconds(50));
	}
}

void Agent::addElemToMemory( const GameState& curr_state, const GameState& next_state,const float* targetNow, int action, float reward)
{
	MemoryElem mem;
	mem.curr_state = curr_state;
	mem.next_state = next_state;
	for (int i = 0; i < NUM_ACTIONS; i++)
		mem.targetData[i] = targetNow[i];
	mem.reward = reward;
	mem.action = action;
	replayMemory.push_back(mem);
}

void Agent::TransferWeights(TensorflowModel& dest, TensorflowModel& src)
{
	src.Save();
	dest.Load();
}

float Agent::getPaddlePos() 
{ 
	return game->getPaddle().xpos / WINWIDTH;
}

std::tuple<float, float> Agent::getBallPos()
{
	if (!game->hasBall())
		return std::make_tuple(-1.0f, -1.0f);
	else
		return std::make_tuple(game->getBall().xpos / WINWIDTH , game->getBall().ypos / WINHEIGHT);
}

std::tuple<float, float> Agent::getBallDir()
{
	return std::make_tuple(fabs(game->getBall().xvel) / game->getBall().xvel, fabs(game->getBall().yvel) / game->getBall().yvel);
}

int Agent::randomAction()
{
	int action;
	do
	{
		action = rand() % 3;
		if ((game->getPaddle().xpos == 0) && action == AC_LEFT)
			continue;
		else if ((game->getPaddle().xpos == WINWIDTH - game->getPaddle().width) && action == AC_RIGHT)
			continue;
		else
			break;
	} while (1);
	return action;
}

bool Agent::checkBallInAction()
{
	if (game->hasBall())
		return game->getBall().ypos / WINHEIGHT > tfBallYThr;
	return false;
}

float Agent::getReward()
{
	float reward = 0;
	if (game->getBounced())
	{
		//reward += 1.0f;
		game->clearBounced();
	}
	if (game->hasBall())
	{
		float yDstPaddleToBall = game->getPaddle().ypos - (game->getBall().ypos + game->getBall().radius);
		if (game->getBall().xpos < game->getPaddle().xpos)
			reward += (game->getBall().xpos - game->getPaddle().xpos) / WINWIDTH;
		else if (game->getBall().xpos > game->getPaddle().xpos + game->getPaddle().width)
			reward += (game->getPaddle().xpos + game->getPaddle().width - game->getBall().xpos) / WINWIDTH;
		else if (yDstPaddleToBall > 0)
			reward += game->getBall().ypos / WINHEIGHT - tfBallYThr;
	}
	return reward;
}

void Agent::movePaddle(int action)
{
	if (action == AC_LEFT)
		game->setPaddleMove(-1.0f);
	else if (action == AC_RIGHT)
		game->setPaddleMove(1.0f);
	else
		game->setPaddleMove(0);
}

void Agent::paddleNeutral()
{
	game->setPaddleMove(0);
}