#pragma once
#include "TensorflowModel.h"
#define AC_LEFT 0
#define AC_RIGHT 1
#define AC_STAY 2
#define NUM_ACTIONS 3

class Breakout;
struct GameState
{
	float paddlePos;
	float ballPosX;
	float ballPosY;
	float velDirX;
	float velDirY;

	void set(std::tuple<float,float>& ballPos,float pPos, std::tuple<float, float>& vDir)
	{
		std::tie(ballPosX, ballPosY) = ballPos;
		paddlePos = pPos;
		std::tie(velDirX, velDirY) = vDir;
	}
};
struct MemoryElem
{
	float reward;
	GameState curr_state;
	GameState next_state;
	int action;
	float targetData[NUM_ACTIONS];
};

class Agent
{
public:
	Agent(Breakout* tGame);
	float getPaddlePos();
	std::tuple<float, float> getBallPos();
	std::tuple<float, float> getBallDir();
	int randomAction();
	bool checkBallInAction();
	float getReward();
	void movePaddle(int action);
	void paddleNeutral();
	void TransferWeights(TensorflowModel& dest, TensorflowModel& src);
	void TensorflowCtrl();
private:
	void addElemToMemory(const GameState& curr_state, const GameState& next_state, const float* targetNow, int action, float reward);
	Breakout* game;
	std::vector<MemoryElem> replayMemory;
	const float tfBallYThr = 0.5f;
	TensorflowModel model_policy, model_target;
};

