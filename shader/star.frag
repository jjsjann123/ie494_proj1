#version 150 compatibility

void main (void)
{
    float x = gl_TexCoord[0].x;
    float y = gl_TexCoord[0].y;
    float zz = 1.0 - x*x - y*y;

    if (zz <= 0.0 )	discard;

	float q = pow(zz, 16);
	if ( q < 0.01 )
		discard;
	vec4 color;
	color.rgb = vec3( 1.0, 0.75, 0);
	color.a = q;
	gl_FragColor = color;
}
