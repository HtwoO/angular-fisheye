/***************************************************************
 * Author:   hxf.prc@gmail.com
 * Modified:  2015.11.2
 * Module:   fh_fisheye
 **************************************************************/

#include "math.h"
#include "shader.h"

DLLEXPORT int fh_fisheye_version(void) {
    return(0);
}

struct fh_fisheye_param {
    miScalar fov;
    // miVector view_offset;
};

DLLEXPORT miBoolean fh_fisheye (
    miColor *result,
    miState *state,
    struct fh_fisheye_param *param)
{
    miScalar fov = *mi_eval_scalar(&param->fov);
    miVector eye_ray;
    miScalar x, y, r, maxFOV, phi, theta;

    x = 2 * state->raster_x / state->camera->x_resolution - 1.0;
    y = 2 * state->raster_y / state->camera->y_resolution - 1.0;
    phi = atan2(y, x);
    r = sqrt(x*x + y*y);
    maxFOV = fov * M_PI / 180.0;
    theta = r * (maxFOV/2.0);

    if ( r < 1.0) {
        eye_ray.x = sin(theta) * cos(phi);
        eye_ray.y = sin(theta) * sin(phi);
        eye_ray.z = -cos(theta);
        return(mi_trace_eye(result, state, &state->org, &eye_ray));
    } else {
        result->r = result->g = result->b = result->a = 0;
        return(miFALSE);
    }
}
