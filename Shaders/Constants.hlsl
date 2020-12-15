// We want to use row major matrices
#pragma pack_matrix(row_major)

cbuffer PerCameraConstants : register(b0)
{
    float4x4 c_viewProj;
    float3 c_cameraPosition;
};

cbuffer PerObjectConstants : register(b1)
{
    float4x4 c_modelToWorld;
};

cbuffer MaterialConstants : register(b2)
{
	float3 c_diffuseColor;
	float3 c_specularColor;
	float c_specularPower;
};

cbuffer LightingConstants : register(b3)
{
    float3 c_lightDir;
    float3 c_lightColor;
};

#define MAX_SKELETON_BONES 80
cbuffer SkinConstants : register(b4)
{
	float4x4 c_skinMatrix[MAX_SKELETON_BONES];
};

SamplerState DefaultSampler : register(s0);
Texture2D DiffuseTexture : register(t0);
