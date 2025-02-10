If you removed scheduler.yaml from /etc/kubernetes/manifests directory from crontrol plane node(container in kind) then it will remove the scheduler pod (To check kubectl get pods -n kube-system)
Static pods are store in single one directory (/etc/kubernetes/manifests/)
kubectl maintain  /etc/kubernetes/manifests/ directory.

Here I have removed the scheduler.yaml from /etc/kubernetes/manifests so that scheduler pod will removed.
now in pod.yaml file I provided nodename = cluster3-worker3 as a node name and pod is able to create cause we have provided node name in the pod.yaml file.So we dont require scheduler pod.

Now,I didnt provide the node name and run pod.yaml, after running pod.yaml pos is in pending state,cause scheduler node is removed.