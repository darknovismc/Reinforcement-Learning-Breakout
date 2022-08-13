//
//  Breakout.h
//
//

#ifndef BREAKOUT_H
#define BREAKOUT_H
#include "stdafx.h"
#include "MyObjects.h"      // Game-specific objects
#include "config.h"         // Game configurations

class Breakout {

public:
    // Class Constructor/Destructor
	Breakout();
	~Breakout() {};
    // Public functions (handle GLUT calls)
	void display(void);
	void init(void);
	void reshape(int width, int height);
	void keyStroke(unsigned char key, int x, int y);
	void specialKeyPress(int key, int x, int y);
	void specialKeyRelease(int key, int x, int y);
	Paddle& getPaddle() { return paddle; }
	Ball& getBall() { return balls[0]; }
	bool hasBall() { return !balls.empty(); }
	void setPaddleMove(float move) { paddleMove = move; }
	bool getBounced() { return bounced; }
	void clearBounced() { bounced = false; }
private:
	int score;
    int level;
    int reward;
    int livesCount;
	bool bounced;

	int oldTimeSinceStart;
	float deltaTime;
	float paddleMove;
    
    // Possible ame mode
    enum State {INIT, Gameplay};
    Breakout::State gameState;
    
    std::vector <Ball> balls;
    Paddle paddle;
    std::vector<Brick> bricks;
    
    // Private functions
    void drawBackground(void);
    void drawGame(void);
    void newBall(float x, float y);
    void drawBalls(void);
    void initPaddle(void);
    void drawPaddle(void);
    void initBricks(void);
    void bricksLevel1(void);
    void bricksLevel2(void);
    void drawBricks(void);
    template <typename Iterator> Iterator hitBrick(Iterator brick);
    void drawLife(float x, float y);
    void drawGameStats(void);
    void drawScore(void);
    void drawCoordinate(void);
};

#endif // BREAKOUT_H
