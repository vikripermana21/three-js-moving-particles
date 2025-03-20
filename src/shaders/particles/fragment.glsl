varying vec2 vUv;
varying vec3 vColor;

void main()
{

    vec2 uv = gl_PointCoord;
    vec3 color = vColor;
    color += vec3(vUv,1.0);

    float distanceToCenter = distance(uv,vec2(0.5));
    if(distanceToCenter > 0.5)
        discard;

    gl_FragColor = vec4(color,1.0);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}