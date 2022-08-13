// stdafx.h : include file for standard system include files,
// or project specific include files that are used frequently, but
// are changed infrequently
//

#pragma once

#include "targetver.h"

#pragma once
#if defined(_MSC_VER) && !defined(COMPILER_MSVC)
#  define COMPILER_MSVC // Set MSVC visibility of exported symbols in the shared library.
#endif
#if defined(_MSC_VER)
#  pragma warning(push)
#  pragma warning(disable : 4190)
#endif

#include <vector>
#include <stdio.h>
#include <tchar.h>
#include <tuple>
#include <iostream>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <thread>
#if defined(__APPLE__) || defined(MACOSX)
	#include <GLUT/glut.h>
#else
	#include "freeglut.h"
#endif



// TODO: reference additional headers your program requires here
