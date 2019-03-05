#version 150 compatibility

uniform vec4 translationScale;
uniform vec3 rotPYR;

uniform vec3 sunDir;

uniform mat4 viewMat;
uniform mat4 invViewMat;
#if 1
	uniform mat4 projMat;
#else
	#define projMat gl_ProjectionMatrix
#endif

out Data {
	vec4 modelPos;
	vec4 worldPos;
	vec4 viewPos;

	vec3 viewNormal;
	vec3 viewHalfVec;
	vec3 reflectionVec;

	float colormix;
};

vec4 RotationQuat(vec3 axis, float angle)
{
	//axis = normalize(axis);
	float c = cos(0.5 * angle);
	float s = sqrt(1.0 - c * c);
	return vec4(axis.x * s, axis.y * s, axis.z * s, c);
}

vec3 Rotate(vec3 p, vec4 q)
{
	return p + 2.0 * cross(q.xyz, cross(q.xyz, p) + q.w * p);
}

vec3 Rotate(vec3 p, vec3 axis, float angle)
{
	return Rotate(p, RotationQuat(axis, angle));
}

void main() {
	modelPos = gl_Vertex;

	worldPos = vec4(modelPos.xyz * translationScale.www, 1.0);				//scaling
	worldPos.xyz = Rotate(worldPos.xyz, vec3(0.0, 0.0, 1.0), rotPYR.y);		//rotation around Yaw axis
	worldPos.xyz += translationScale.xyz;									//translation in world space

	viewPos = viewMat * worldPos;
	
	vec3 worldNormal = normalize(Rotate(gl_Normal, vec3(0.0, 0.0, 1.0), rotPYR.y));
	viewNormal = mat3(viewMat) * worldNormal;

	colormix = dot(viewNormal, normalize(viewPos.xyz));
	colormix = pow(abs(colormix), 0.2);

	vec3 viewCameraDir = normalize(-viewPos.xyz);
	vec3 worldCameraDir = mat3(invViewMat) * viewCameraDir;
	
	vec3 viewSunDir = normalize(mat3(viewMat) * sunDir);
	viewHalfVec = viewSunDir + viewCameraDir; //will be normalized in frag shader
	
	reflectionVec = -reflect(worldCameraDir, worldNormal); //will be normalized in frag shader

	gl_Position = projMat * viewPos;
}