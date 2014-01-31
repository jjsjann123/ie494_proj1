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
	color.a = 1.0;
	//color.rgb = vec3( 1.0, 1.0, 1.0);
	if (alpha < 0.7 )
	{
		color = vec4( 1, 0.75, 0, pow(alpha/0.7, 3.5));
		//color.a = pow(alpha/0.7, 3.5);
	}
	gl_FragColor = color;
}