
#version 100

precision highp float; 

attribute vec3 Vertex; 
attribute vec3 Normal; 
attribute vec4 TexCoord; 

varying vec4 vTex;
varying vec3 vN;

uniform mat4 mWVP;
uniform mat4 mW;

void main(void)
{
	gl_Position = mWVP*vec4(Vertex,1.0);
	vN = (mW*vec4(Normal,0.0)).xyz;
	vTex=TexCoord;
}
