# Reinforcement-Learning-Breakout
Simple breakout game with DQN agent which learn how to play it.
Written in C++17 in Microsoft Visual Studio 2019.
The game itself is written in OpenGL using freeglut library.
Standard DQN algorithm consisting of 2 neuro-network models with replay memory learns from game's ram data using epsilon-greedy policy.
Each model is a dense layer with 5 input states(2xball positions,paddle position,2xball velocities) and 3 output actions (left,right,none).
I used version 2.8 tensorflow C api so please include missing dll and replace the header files if needed. 
You need to train the agent for 1 to 2 hours to achieve good game results.
