Use refer below url for calino CNI configuration

https://docs.tigera.io/calico/latest/getting-started/kubernetes/kind

1. created cluster using above url where we have disabled default kind CNI so that we can use calino CNI.
2. Created manifest file (pod and services) for frontend,backend and database.
3. Created network policy so that only backend should communicated with mysql db and others are blocked.