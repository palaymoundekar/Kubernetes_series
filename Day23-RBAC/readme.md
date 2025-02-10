If I want to check whether I have access to list the pod or not,use below cmd
kubectl auth can-i get pod

which use am I?
kubectl auth whoami 

There are two types of group
1. core group :- apiversion: v1 => means this is core group. If there is nothing before v1 thats means it is core group.
2. name group :- apiVersion: rbac.authorization.k8s.io/v1 => means ths is name group. If there is some name before v1 thats mean it is name group.

refere below website for this lab
https://kubernetes.io/docs/reference/access-authn-authz/certificate-signing-requests/#create-certificatessigningrequest


