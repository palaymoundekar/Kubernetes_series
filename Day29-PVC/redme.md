In Empty directory volume:
* we have created one pod and attched volume with type empty directory. Also,created one file in /data/redis direcorty.
* so when we delete the pod and re create the pod with the same yaml file,you can see the file we have created is not avilable in /data/redis location.
* this means,if we delete the pod using empty directory,it will also delete the volume.

