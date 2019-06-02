#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 Color;
out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float scale;

void main()
{
    TexCoord = aTexCoord;
	Color = aColor;
	gl_Position = projection * view * model * vec4(aPos*scale, 1.0);
}