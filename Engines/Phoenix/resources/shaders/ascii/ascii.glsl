#type vertex
#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = vec4(aPos.x, aPos.y, 0.0, 1.0); 
}

#type fragment
#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform vec2 iResolution; // Use 256 in order to "see something"
uniform float sample; // Use 4.0 to 16.0
uniform sampler2D screenTexture; // Texture to ascii

// For generating new bitmaps use:
// http://www.thrill-project.com/archiv/coding/bitmap/

float character(float n, vec2 p) // some compilers have the word "char" reserved
 {
	p = floor(p*vec2(4.0, -4.0) + 2.5);
	if (clamp(p.x, 0.0, 4.0) == p.x && clamp(p.y, 0.0, 4.0) == p.y)
 {
		if (int(mod(n/exp2(p.x + 5.0*p.y), 2.0)) == 1) return 1.0;
	}	
	return 0.0;
}

void main(void)
{
	vec2 uv = vec2(TexCoords.x, -TexCoords.y);
	uv = uv * iResolution;
	
	vec3 col = texture(screenTexture, floor(uv/sample)*sample/iResolution).rgb;
	
	float gray = (col.r + col.g + col.b)/3.0;
	
	float n =  65536.0;             // .
	if (gray > 0.2) n = 65600.0;    // :
	if (gray > 0.3) n = 332772.0;   // *
	if (gray > 0.4) n = 15255086.0; // o 
	if (gray > 0.5) n = 23385164.0; // &
	if (gray > 0.6) n = 15252014.0; // 8
	if (gray > 0.7) n = 13199452.0; // @
	if (gray > 0.8) n = 11512810.0; // #
	
	vec2 p = mod(uv/4.0, 2.0) - vec2(1.0);
	//col = gray*vec3(character(n, p));	// Draw in Grey
	col = col*character(n, p);			// Draw in Colors

	FragColor = vec4(col, 1.0);
}