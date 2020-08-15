precision mediump float;

//
// BUILT-IN THREEJS
//
uniform mat4 viewMatrix;
uniform vec3 cameraPosition;

// Copy below
uniform vec3 colorA; 
uniform vec3 colorB; 
varying vec3 v_uv;

void main() {
	gl_FragColor = vec4(mix(colorA, colorB, v_uv.z), 1.0);
}