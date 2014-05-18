Shader "Custom/Silhouette" 
{
	Properties 
	{
	}
	
	CGINCLUDE
	#include "UnityCG.cginc"
	
	struct v2f {
		float4 pos:	SV_POSITION;
	};
	
	ENDCG
	
	SubShader
	{
		Tags 
		{ 
			"RenderType"="Opaque" 
		}
		
		LOD 200
		
		Pass
		{
			Lighting Off // silhouettes don't have lighting
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			v2f vert(appdata_full v)
			{
				v2f o;
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
				return o;
			}

			fixed4 frag(v2f i): COLOR
			{
				return fixed4(1.0,1.0,1.0,1.0); // return white for silhouette
			}
			ENDCG
		}
	}
}