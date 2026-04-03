
#version 100

precision mediump float; 

uniform sampler2D Texture;

uniform sampler2D TextureTile;
//uniform sampler2D TextureColorGrid;
//uniform sampler2D TextureColorPatternGrid;

varying vec4 vTex;
varying vec3 vN;

void main(void)	{

	float fColor=texture2D(TextureTile, vTex.xy ).r;
	
	vec4 vGridValue=texture2D(Texture, vTex.zw );
	
	//gl_FragColor = vec4((texture2D(TextureColorGrid, vTex.zw ).rgb+texture2D(TextureColorPatternGrid, vTex.zw ).rgb),fColor);
	
	/*if(vGridValue.a>(1.0/255.0))
		vGridValue.rgb*=1.0/vGridValue.a;
	
	gl_FragColor = vec4(vGridValue.rgb,vGridValue.a*fColor);*/
	
	gl_FragColor = vec4(vGridValue.rgb,fColor);
	
}
