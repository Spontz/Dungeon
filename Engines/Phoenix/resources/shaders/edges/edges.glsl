#type vertex
#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

out vec2 TexCoords;

void main (void)
{
    TexCoords = aTexCoords;
    gl_Position = vec4(aPos.x, aPos.y, 0.0, 1.0); 
}

#type fragment
#version 330 core
out vec4 fragColor;

in vec2 TexCoords;
uniform float step;
uniform float DetectionMode;
uniform float colorMode;
uniform sampler2D screenTexture;

const mat3 kayyali_NESW = mat3(-6.0, 0.0, 6.0,
							   0.0, 0.0, 0.0,
							   6.0, 0.0, -6.0);
const mat3 kayyali_SENW = mat3(6.0, 0.0, -6.0,
							   0.0, 0.0, 0.0,
							   -6.0, 0.0, 6.0);
// Prewitt masks (see http://en.wikipedia.org/wiki/Prewitt_operator)
const mat3 prewittKernelX = mat3(-1.0, 0.0, 1.0,
								 -1.0, 0.0, 1.0,
								 -1.0, 0.0, 1.0);

const mat3 prewittKernelY = mat3(1.0, 1.0, 1.0,
								 0.0, 0.0, 0.0,
								-1.0,-1.0,-1.0);

// Roberts Cross masks (see http://en.wikipedia.org/wiki/Roberts_cross)
const mat3 robertsCrossKernelX = mat3(1.0, 0.0, 0.0,
									  0.0,-1.0, 0.0,
									  0.0, 0.0, 0.0);

const mat3 robertsCrossKernelY = mat3(0.0, 1.0, 0.0,
									 -1.0, 0.0, 0.0,
									  0.0, 0.0, 0.0);

// Scharr masks (see http://en.wikipedia.org/wiki/Sobel_operator#Alternative_operators)
const mat3 scharrKernelX = mat3(3.0, 10.0, 3.0,
								0.0,  0.0, 0.0,
							   -3.0,-10.0,-3.0);

const mat3 scharrKernelY = mat3(3.0, 0.0, -3.0,
							   10.0, 0.0,-10.0,
								3.0, 0.0, -3.0);

// Sobel masks (see http://en.wikipedia.org/wiki/Sobel_operator)
const mat3 sobelKernelX = mat3(1.0, 0.0, -1.0,
							   2.0, 0.0, -2.0,
							   1.0, 0.0, -1.0);

const mat3 sobelKernelY = mat3(-1.0,-2.0,-1.0,
							    0.0, 0.0, 0.0,
							    1.0, 2.0, 1.0);

//performs a convolution on an image with the given kernel
float convolve(mat3 kernel, mat3 image) {
	float result = 0.0;
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			result += kernel[i][j]*image[i][j];
		}
	}
	return result;
}

//helper function for colorEdge()
float convolveComponent(mat3 kernelX, mat3 kernelY, mat3 image) {
	vec2 result;
	result.x = convolve(kernelX, image);
	result.y = convolve(kernelY, image);
	return clamp(length(result), 0.0, 255.0);
}

//returns color edges using the separated color components for the measure of intensity
//for each color component instead of using the same intensity for all three.  This results
//in false color edges when transitioning from one color to another, but true colors when
//the transition is from black to color (or color to black).
vec4 colorEdge(float stepx, float stepy, vec2 center, mat3 kernelX, mat3 kernelY) {
	//get samples around pixel
	vec4 colors[9];
	colors[0] = texture(screenTexture,center + vec2(-stepx,stepy));
	colors[1] = texture(screenTexture,center + vec2(0,stepy));
	colors[2] = texture(screenTexture,center + vec2(stepx,stepy));
	colors[3] = texture(screenTexture,center + vec2(-stepx,0));
	colors[4] = texture(screenTexture,center);
	colors[5] = texture(screenTexture,center + vec2(stepx,0));
	colors[6] = texture(screenTexture,center + vec2(-stepx,-stepy));
	colors[7] = texture(screenTexture,center + vec2(0,-stepy));
	colors[8] = texture(screenTexture,center + vec2(stepx,-stepy));
	
	mat3 imageR, imageG, imageB, imageA;
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			imageR[i][j] = colors[i*3+j].r;
			imageG[i][j] = colors[i*3+j].g;
			imageB[i][j] = colors[i*3+j].b;
			imageA[i][j] = colors[i*3+j].a;
		}
	}
	
	vec4 color;
	color.r = convolveComponent(kernelX, kernelY, imageR);
	color.g = convolveComponent(kernelX, kernelY, imageG);
	color.b = convolveComponent(kernelX, kernelY, imageB);
	color.a = convolveComponent(kernelX, kernelY, imageA);
	
	return color;
}

//finds edges where fragment intensity changes from a higher value to a lower one (or vice versa).
vec4 edge(float stepx, float stepy, vec2 center, mat3 kernelX, mat3 kernelY){
  // get samples around pixel
  mat3 image = mat3(length(texture(screenTexture,center + vec2(-stepx,stepy)).rgb),
					  length(texture(screenTexture,center + vec2(0,stepy)).rgb),
					  length(texture(screenTexture,center + vec2(stepx,stepy)).rgb),
					  length(texture(screenTexture,center + vec2(-stepx,0)).rgb),
					  length(texture(screenTexture,center).rgb),
					  length(texture(screenTexture,center + vec2(stepx,0)).rgb),
					  length(texture(screenTexture,center + vec2(-stepx,-stepy)).rgb),
					  length(texture(screenTexture,center + vec2(0,-stepy)).rgb),
					  length(texture(screenTexture,center + vec2(stepx,-stepy)).rgb));
  vec2 result;
  result.x = convolve(kernelX, image);
  result.y = convolve(kernelY, image);
	
  float color = clamp(length(result), 0.0, 255.0);
  return vec4(color);
}

//Colors edges using the actual color for the fragment at this location
vec4 trueColorEdge(float stepx, float stepy, vec2 center, mat3 kernelX, mat3 kernelY) {
	vec4 edgeVal = edge(stepx, stepy, center, kernelX, kernelY);
	return edgeVal * texture(screenTexture,center);
}

void main() {
  vec2 uv = TexCoords.xy;
  vec4 color = texture(screenTexture, uv.xy);

  float STEP = step / 1000;

  if (DetectionMode >= 0.5 && DetectionMode < 1.5) {
    // KAYYALI_NESW
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, kayyali_NESW, kayyali_NESW);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, kayyali_NESW, kayyali_NESW);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, kayyali_NESW, kayyali_NESW);

    }
  }

  if (DetectionMode >= 1.5 && DetectionMode < 2.5) {
    // KAYYALI_SENW
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, kayyali_SENW, kayyali_SENW);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, kayyali_SENW, kayyali_SENW);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, kayyali_SENW, kayyali_SENW);

    }
  }

  if (DetectionMode >= 2.5 && DetectionMode < 3.5) {
    // PREWITT
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, prewittKernelX, prewittKernelY);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, prewittKernelX, prewittKernelY);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, prewittKernelX, prewittKernelY);

    }
  }

  if (DetectionMode >= 3.5 && DetectionMode < 4.5) {
    // ROBERTSCROSS
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, robertsCrossKernelX, robertsCrossKernelY);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, robertsCrossKernelX, robertsCrossKernelY);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, robertsCrossKernelX, robertsCrossKernelY);

    }
  }

  if (DetectionMode >= 4.5 && DetectionMode < 5.5) {
    // SOBEL
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, sobelKernelX, sobelKernelY);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, sobelKernelX, sobelKernelY);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, sobelKernelX, sobelKernelY);

    }
  }

  if (DetectionMode >= 5.5 && DetectionMode < 6.5) {
    // SCHARR
    if (colorMode >= 0.5 && colorMode < 1.5) {
      color = edge(STEP, STEP, uv, scharrKernelX, scharrKernelY);

    } else if (colorMode >=1.5 && colorMode < 2.5) {
      color = colorEdge(STEP, STEP, uv, scharrKernelX, scharrKernelY);

    } else if (colorMode >= 2.5 && colorMode < 3.5) {
      color = trueColorEdge(STEP, STEP, uv, scharrKernelX, scharrKernelY);

    }
  }

  fragColor = color;
}