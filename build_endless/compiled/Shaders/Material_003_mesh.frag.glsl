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
	basecol = vec3(0.6444700360298157, 0.00504761328920722, 0.0);
	roughness = 0.6732679605484009;
	metallic = 1.0;
	occlusion = 1.0;
	specular = 0.5;
	n /= (abs(n.x) + abs(n.y) + abs(n.z));
	n.xy = n.z >= 0.0 ? n.xy : octahedronWrap(n.xy);
	const float matid = 0.0;
	fragColor[0] = vec4(n.xy, packFloat(metallic, roughness), matid);
	fragColor[1] = vec4(basecol.rgb, packFloat2(occlusion, specular));
}
