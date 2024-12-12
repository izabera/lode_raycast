/*
Copyright (c) 2004, Lode Vandevenne
All rights reserved.
*/

#include <cmath>
#include <string>

#include "quickcg.h"
using namespace QuickCG;
using namespace std;

int main() {
    screen(256, 256, 0, "Small Test Script");
    for (int x = 0; x < w; x++)
        for (int y = 0; y < h; y++) {
            pset(x, y, ColorRGB(x, y, 128));
        }
    print("Hello, world!", 8, 8);

    std::string test;
    test.resize(20);

    redraw();
    sleep();
}
