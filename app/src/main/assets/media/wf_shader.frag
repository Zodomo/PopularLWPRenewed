
#version 100

precision mediump float; 

uniform sampler2D Texture;
uniform vec3 Color1;
uniform vec3 Color2;
uniform float Opacity;

varying vec2 vTex;

void main(void)	{

	vec2 vColor=texture2D(Texture, vTex.xy ).ra;
	gl_FragColor = vec4(mix(Color2,Color1,vColor.x),Opacity*vColor.y);
}
