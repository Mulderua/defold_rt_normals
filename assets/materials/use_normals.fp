varying mediump vec2 var_texcoord0;


uniform lowp sampler2D tex0;
uniform lowp vec4 uResolution;

void main()
{
    vec2 uv = gl_FragCoord.xy/uResolution.xy;
    vec4 normal_tex  = texture2D(tex0, uv);
    gl_FragColor = vec4(normal_tex.xyz, 1.0);
}

