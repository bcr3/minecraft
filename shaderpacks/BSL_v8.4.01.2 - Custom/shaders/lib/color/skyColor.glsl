#if SKY_VANILLA_INTERNAL == 1
uniform vec3 skyColor;
uniform vec3 fogColor;

vec3 skyCol = pow(skyColor, vec3(2.2)) * SKY_I * SKY_I;
#ifdef SKY_VANILLA_USE_FOG
vec3 fogCol = pow(fogColor, vec3(2.2)) * SKY_I * SKY_I;
#else
vec3 fogCol = skyCol;
#endif
#else
vec3 skyColSqrt = vec3(SKY_R, SKY_G, SKY_B) * SKY_I / 255.0;
vec3 skyCol = skyColSqrt * skyColSqrt;
vec3 fogCol = skyCol;
#endif