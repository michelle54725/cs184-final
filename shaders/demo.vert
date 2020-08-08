precision mediump float;

attribute vec3 vertPosition;
attribute vec3 vertColor;

varying vec3 fragColor;

uniform mat4 _Object2World; 
uniform mat4 _World2Object; 
uniform mat4 _View;
uniform mat4 _Projection;

void main()
{
    fragColor = vertColor;
    gl_Position = _Projection * _View * _Object2World * vec4(vertPosition, 1.0);
}