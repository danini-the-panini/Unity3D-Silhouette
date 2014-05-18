Shader "Custom/Floor" {
	Properties {
		_Silhouette ("Silhouette",2D) = "black" {}
		_Color ("Color", Color) = (0,0,0.8,1.0)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _Silhouette;
		half4 _Color;

		struct Input {
			float2 uv_MainTex;
			float4 screenPos;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			float2 screenUV = IN.screenPos.xy / IN.screenPos.w;
			half4 s = tex2D (_Silhouette, screenUV);
			o.Albedo = _Color.rgb * (1.0-s.r*0.5);
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
