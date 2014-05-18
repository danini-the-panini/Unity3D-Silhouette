using UnityEngine;
using System.Collections;

public class Bobbing : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.localPosition = new Vector3(0,Mathf.Sin (Time.time),0);
	}
}
