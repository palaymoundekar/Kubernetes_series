Here,we have created two deployments and two services.
nginx-deployment and nginx-deployment1

now we will acess the service name nginx-deployment1 through nginx-deployment pod

kubectl exec -it nginx-deployment-6cfb64b7c5-xlglg -- curl nginx-deployment1  **nginx-deployment1 is service name and we are not able to access it so we access it using service cluster IP**

kubectl exec -it nginx-deployment-6cfb64b7c5-xlglg -- curl 10.96.20.140  **Able to acess the service IP**

This means there is some issue with dns which is not able to convert name to IP.

----------------------------------------------------------------------------

kubectl get deploy -n kube-system -- to get the core dns deployment.

we increased the replicas to 2 and now able to access the servbice using service name

kubectl exec -it nginx-deployment-6cfb64b7c5-xlglg -- curl nginx-deployment1 

--------------------------------------------------------------------------
