varying vec3 ecPosition3;
varying vec3 fragmentNormal;
uniform sampler2D tex;
varying vec4 textureCoordinates;
void main(void)
{
	vec4 color;
	//color.rgb = gl_Color.rgb;
	float alpha = dot(-ecPosition3, fragmentNormal);
	color = texture2D(tex, vec2(textureCoordinates) );
	color.a = alpha*3.0;
	//color.rgb = vec3( 1.0, 1.0, 1.0);
	gl_FragColor = color;
}