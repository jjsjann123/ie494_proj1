#version 150 compatibility

void main(void)
{
    gl_Position = gl_ModelViewMatrix * gl_Vertex;
	gl_FrontColor = gl_Color;
}
