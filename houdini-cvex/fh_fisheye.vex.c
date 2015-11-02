/*
 * CVEX angular fisheye lens shader for houdini
 *
 * Author: hxf.prc@gmail.com
 * Last updated: 2015.11.2
 */

#pragma opname      fh_fisheye
#pragma oplabel     "fh_fisheye Lens"

#pragma hint    x   hidden
#pragma hint    y   hidden

#pragma hint    P   hidden
#pragma hint    I   hidden

#pragma range   fov     0 360
#pragma range   offsetX     -1 1
#pragma range   offsetY     -1 1

#include "math.h"

cvex fh_fisheye(
    // Inputs
    float x = 0;
    float y = 0;

    // Outputs
    export vector P = 0;
    export vector I = 0;

    // Shader arguments
    float fov = 180;
    float offsetX = 0;
    float offsetY = 0;
    )
{
    float r = sqrt(x*x + y*y);
    float phi = atan2(y, x);
    float rFOV = radians(fov);
    float theta = r * (rFOV/2.0);

    P = {0, 0, 0};
    I = set(sin(theta)*cos(phi) - offsetX,
            sin(theta)*sin(phi) - offsetY,
            cos(theta));
}
