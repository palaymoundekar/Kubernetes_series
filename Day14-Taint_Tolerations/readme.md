In Taint and toleration, node will check the taint (gpu=true),if the taint is machting the pod then it connect otherwise node will restrict the pod.

To taint the node.
kubectl.exe taint nodes cluster-2-worker gpu=true:NoSchedule

To untaint the node 
kubectl.exe taint nodes cluster-2-worker gpu=true:NoSchedule-

To check wheter taint is applied over node or not
kubectl.exe describe node cluster-2-worker | grep gpu

In Nodeselector, the pod will go to the each node and check which node has matching label.If pod found the maching label then pod will connect to that node.In below ex I have label the worker3 hence pod will connnect to the worker3 node.

To label the node.
 kubectl.exe label node cluster-2-worker3 gpu=false #where gpu=false is label.





