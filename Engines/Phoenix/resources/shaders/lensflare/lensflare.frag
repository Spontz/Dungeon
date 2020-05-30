#version 330 core
layout (location = 0) out vec4 fragColor;

in vec2 fragCoord;

uniform float raysRotation;
uniform float sunSize;
uniform float numRays;
uniform float raysDefinition;
uniform float raysIntensity;
uniform float flareCount;
uniform float gain;
uniform  vec2 sunPosition;
uniform  vec3 sunColor;
uniform  vec3 glareColor;
uniform float aspectRatio;

float rnd(float w) {
  return fract(sin(w) * 1000.);
}

vec3 lensFlare(vec2 p, float size, float dist, float index) {
  // l is used for making rings. I get the length and pass it through a sinwave
  // but I also use a pow function. pow function + sin function , from 0 and up, = a pulse, at least
  // if you return the max of that and 0.0.
    
  float l = length(p + 4.0 * sunPosition * dist) + size/2.;

  // Depending of the circle that we are drawing we emphasize one of the color components
  // And remove the amount of the others
  float component = mod(673*index,3);
  float factor = 1.3;

  vec3 color = (component == 0) ? vec3(sunColor.r * factor, sunColor.g / factor, sunColor.b / factor) :
               (component == 1) ? vec3(sunColor.r / factor, sunColor.g * factor, sunColor.b / factor) :
               (component == 2) ? vec3(sunColor.r / factor, sunColor.g / factor, sunColor.b * factor) : vec3(0.);
  
  float bigFlares   = max(0.01  - pow(length(p + sunPosition * dist   ), size), 0.0) * 50.;
  float smallFlares = max(0.01  / pow(length(p - sunPosition * dist/4.0), 1.), 0.0) / 20.;
  float circles     = max(0.01  - pow(l, 0.05) +  + sin(l*30.), 0.0) * 3.0;

  vec3 f = vec3(0.);

  f += bigFlares;
  f += smallFlares;
  f += circles;

  return color * f * sin(color);
}

float noise(float t){
	return 1.0;
}

float noise(vec2 t) {
	return 1.0;
}

vec3 lensGlare(vec2 uv) {
  vec3 c;
  vec2 main = uv - sunPosition;
  vec2 uvd = uv * (length(uv));
	
  float ang = atan(main.y, main.x);
  float dist = length(main);
  float n = noise(vec2(ang, dist));

  c += max(1.0/(1.0 + 32.0*pow(length(uvd+0.8*sunPosition ),2.0)),0.);

  return c * glareColor;
}

vec3 rays(vec2 uv) {
    // Get angle of the sun
    float angle = atan(uv.x - sunPosition.x, uv.y - sunPosition.y);

	float dist = length(uv - sunPosition);
	float n = noise(vec2(angle, dist));

    // Draw the rays
	float rays = sin((angle + noise(abs(angle) + n)) * numRays);

    // Add the movement using another layer of rays
    float movement = 1.0;
    movement = raysDefinition * abs(sin(angle*3. + cos(10. * (angle - raysRotation)))) / 8.0 * abs(sin(angle - raysRotation));

    return vec3(rays) * movement * raysIntensity;
}

vec3 sun(vec2 uv) {
  vec3 sun = vec3(1.);
  sun *= 1 / length(uv-sunPosition) * sunSize * 0.1;
  return sun;
}

void main() {
  
  vec2 uv = fragCoord.xy - 0.5;
  uv.x *= aspectRatio;

  vec3 color;

  // Add the sun    	
  color +=       sun(uv);
  color += lensGlare(uv);
  color +=      rays(uv);

  // This calls the function which adds three circle types every time through the loop based on parameters I
  // got by trying things out.
  for(float i=0.; i<flareCount; i++){
    color += lensFlare(uv, pow(rnd(i*2000.) * 1.8, 2.) + 1.41, rnd(i*20.)*3.0 - 0.3, i);
  }

  // Multiply by the exponential e^x ? of 1.0-length which kind of masks the brightness more so that
  // there is a sharper roll of of the light decay from the sun.
  color *= exp(1.0 - length(uv-sunPosition)) * gain;

  fragColor = vec4(color, 1.0);
}