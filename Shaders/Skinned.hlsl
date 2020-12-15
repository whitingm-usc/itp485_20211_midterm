 #include "Constants.hlsl"

struct VIn
{
    float3 position : POSITION0;
    float3 normal : NORMAL0;
    uint4 boneIndex : BONE0;
    float4 weight : WEIGHT0;
    float2 uv : TEXCOORD0;
};

struct VOut
{
    float4 position : SV_POSITION;
    float4 worldPos : POSITION1;
    float3 normal : NORMAL0;
    float2 uv : TEXCOORD0;
};

VOut VS(VIn vIn)
{
    VOut output;

    // TODO 3a Fill in the vertex shader
    output.worldPos = float4(0, 0, 0, 0);
    output.position = float4(0, 0, 0, 0);
    output.normal = float3(0, 0, 0);

    output.uv = vIn.uv;
    return output;
}

float4 PS(VOut pIn) : SV_TARGET
{
    float4 diffuseTex = DiffuseTexture.Sample(DefaultSampler, pIn.uv);

    // TODO 3b do the lighting
    float3 lightColor = float3(1, 1, 1);

    float4 finalColor = float4(lightColor, 1) * diffuseTex;
    return finalColor;
}
