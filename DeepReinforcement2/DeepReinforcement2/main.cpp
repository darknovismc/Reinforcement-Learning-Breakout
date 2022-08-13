//
//  main.cp
//
//
#include "stdafx.h"
#include "Breakout.h"
#include "Agent.h"

Breakout game;

// Define the display function
void myDisplay()
{
	game.display();
}

// Define the reshape function
void myReshape(int width, int height)
{
	game.reshape(width, height);
}

// Define keystroke events
void myKeyStroke(unsigned char key, int x, int y)
{
	game.keyStroke(key, x, y);
}

void mySpecialKeyPress(int key, int x, int y)
{
	game.specialKeyPress(key, x, y);
}

void mySpecialKeyRelease(int key, int x, int y)
{
	game.specialKeyRelease(key, x, y);
}

void myCloseFunc()
{
	glutLeaveMainLoop();
}

// The main function here
int main(int argc, char ** argv)
{
	try
	{
		Agent agent(&game);
		// Init glut
		glutInit(&argc, argv);
		glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_MULTISAMPLE);

		// Init window size, position, title
		glutInitWindowSize(WINWIDTH, WINHEIGHT);
		glutInitWindowPosition(100, 100);
		glutCreateWindow(WINTITLE);
		game.init();
		// Draw scene
		glutDisplayFunc(myDisplay);
		// Handle reshape
		glutReshapeFunc(myReshape);

		// Handle keyboard strokes
		glutIgnoreKeyRepeat(1);
		glutKeyboardFunc(myKeyStroke);
		// specify keyboard special key input events
		glutSpecialFunc(mySpecialKeyPress);
		glutSpecialUpFunc(mySpecialKeyRelease);
		glutCloseFunc(myCloseFunc);
		glutSetOption(GLUT_ACTION_ON_WINDOW_CLOSE, GLUT_ACTION_GLUTMAINLOOP_RETURNS);
		std::thread(&Agent::TensorflowCtrl,&agent).detach();
		// Enter the opengl event processing loop
		glutMainLoop();
	}
	catch(std::exception e)
	{
		std::cout << e.what() << std::endl;
		std::cout << "Application finished.Press a key" << std::endl;
		getchar();
	}
	return 0;
}
