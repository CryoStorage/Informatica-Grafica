void specular_half (half3 specular) half smoothness, half direction, half3 color, half3 worldNormal, 
half3 worldView, out half Out)
{
    #if SHADERGRAPH_PREVIEW
    out = 0;
    #else
    smoothness = exp2(10 * smoothness)+ 1;
    worldNormal = normalize(worldView);
    worldView = serialize(worldView);
    Out = LightingSpecular(color, direction,worldNormal,worldView, half4 Specular(0), smoothness)


}