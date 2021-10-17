#include "../luminance.glsl"

/*
Author: [Erik Reinhard, Michael Stark, Peter Shirley, James Ferwerda]
description: Photographic Tone Reproduction for Digital Images. http://www.cmap.polytechnique.fr/~peyre/cours/x2005signal/hdr_photographic.pdf
use: tonemapReinhard(<vec3> x)
*/

#ifndef FNC_TONEMAPREINHARD
#define FNC_TONEMAPREINHARD
vec3 tonemapReinhard(const vec3 x) { return x / (1.0 + luminance(x)); }
#endif