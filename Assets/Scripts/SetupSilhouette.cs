using UnityEngine;
using System.Collections;

public class SetupSilhouette : MonoBehaviour {
	RenderTexture silhouetteTexture;

	void Start () {
		silhouetteTexture = new RenderTexture(Screen.width, Screen.height, 16, RenderTextureFormat.ARGB32);
		silhouetteTexture.Create();

		camera.targetTexture = silhouetteTexture;

		foreach (GameObject obj in GameObject.FindGameObjectsWithTag("Silhouette Receiver")) {
			obj.renderer.material.SetTexture("_Silhouette",silhouetteTexture as Texture);
		}
	}
}
