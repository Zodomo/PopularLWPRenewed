
#version 100

precision highp float; 

attribute vec2 Vertex; 
attribute vec2 TexCoord; 

varying vec2 vTex;

void main(void)
{
	gl_Position = vec4(Vertex,0.0,1.0);
	vTex=TexCoord;
}
