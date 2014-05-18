Silhouette in Unity3D
=====================

Notable Notes:
--------------

Main Camera has a Child camera (called Silhouette Camera) that renders to a RenderTexture, which is assigned at run time in the SetupSilhouette script attached to Main Camera. The Silhouette Camera renders only the Silhouette layer, while the Main Camera renders everything but.

The object to silhouette has two children, one using normal diffuse, and one using the Silhouette shader. The silhouette object is assigned to the Silhouette layer.

The floor object is tagged "Silhouette Receiver" to hint to the SetupSilhouette script to attach the output RenderTexture to the ground material.

Things to mention
-----------------

If using the web player and the player resizes, the silhouette will go off. If you want to make it work with resizing, you have to monitor the canvas size in the update of SetupSilhouette and make it recreate the Silhouette RenderTexture if the size changes.
