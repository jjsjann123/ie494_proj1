#version 150 compatibility
#extension GL_EXT_geometry_shader4: enable

void main(void)
{
	float halfsize = 2000;
	
	gl_TexCoord[0].st = vec2(1.0,-1.0);
	gl_Position = gl_PositionIn[0];
	gl_Position.xy += vec2(halfsize, -halfsize);
	gl_Position = gl_ProjectionMatrix * gl_Position;
	EmitVertex();

	gl_TexCoord[0].st = vec2(1.0,1.0);
	gl_Position = gl_PositionIn[0];
	gl_Position.xy += vec2(halfsize, halfsize);
	gl_Position = gl_ProjectionMatrix * gl_Position;
	EmitVertex();

	gl_TexCoord[0].st = vec2(-1.0,-1.0);
	gl_Position = gl_PositionIn[0];
	gl_Position.xy += vec2(-halfsize, -halfsize);
	gl_Position = gl_ProjectionMatrix * gl_Position;
	EmitVertex();

	gl_TexCoord[0].st = vec2(-1.0,1.0);
	gl_Position = gl_PositionIn[0];
	gl_Position.xy += vec2(-halfsize, halfsize);
	gl_Position = gl_ProjectionMatrix * gl_Position;
	EmitVertex();

	EndPrimitive();
}
