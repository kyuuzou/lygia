#include "../sample/derivative.glsl"

/*
original_author: Patricio Gonzalez Vivo
description: Converts a RGB normal map into normal vectors
use: normalMap(<sampler2D> texture, <vec2> st, <vec2> pixel)
options:
    - NORMALMAP_Z: Steepness of z before normalization, defaults to .01
*/
#ifndef NORMALMAP_Z
#define NORMALMAP_Z .01
#endif

#ifndef FNC_NORMALMAP
#define FNC_NORMALMAP
vec3 normalMap(sampler2D tex, vec2 st, vec2 pixel) {
    vec2 deltas = sampleDerivative(tex, st, pixel);
    return normalize( vec3(deltas, NORMALMAP_Z) );
}
#endif