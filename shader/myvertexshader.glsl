varying vec3 ecPosition3;
varying vec3 fragmentNormal;
varying vec4 textureCoordinates;
void main(void)
{
vec4 ecPosition = gl_ModelViewMatrix * gl_Vertex;
ecPosition3 = normalize(ecPosition.xyz);
fragmentNormal = normalize(gl_NormalMatrix * gl_Normal);
textureCoordinates = gl_MultiTexCoord0;
gl_Position = ftransform();
}
