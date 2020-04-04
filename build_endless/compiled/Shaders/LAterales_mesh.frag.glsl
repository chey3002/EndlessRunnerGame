#version 450
#include "compiled.inc"
#include "std/gbuffer.glsl"
in vec3 wnormal;
out vec4 fragColor[2];
void main() {
vec3 n = normalize(wnormal);
	vec3 basecol;
	float roughness;
	float metallic;
	float occlusion;
	float specular;
	basecol = vec3(0.930668294429779, 0.11374169588088989, 0.0030104387551546097);
	roughness = 0.5;
	metallic = 0.0;
	occlusion = 1.0;
	specular = 0.5;
	n /= (abs(n.x) + abs(n.y) + abs(n.z));
	n.xy = n.z >= 0.0 ? n.xy : octahedronWrap(n.xy);
	const float matid = 0.0;
	fragColor[0] = vec4(n.xy, packFloat(metallic, roughness), matid);
	fragColor[1] = vec4(basecol.rgb, packFloat2(occlusion, specular));
}
