refer documents :- https://kubernetes.io/docs/tasks/administer-cluster/configure-upgrade-etcd/

export ETCDCTL_API=3  -- making it as env so that we dont have to write it every time.

----------------------------------------

root@cluster2-control-plane:/etc/kubernetes/manifests# ls -lrt
total 16
-rw------- 1 root root 2414 Sep  6 03:35 etcd.yaml
-rw------- 1 root root 3896 Sep  6 03:35 kube-apiserver.yaml
-rw------- 1 root root 3432 Sep  6 03:35 kube-controller-manager.yaml
-rw------- 1 root root 1463 Sep  6 03:35 kube-scheduler.yaml

--------------------------
To take the backup of etcd  and I have stored it in /opt/etcd_backup.db
 
etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key snapshot save /opt/etcd_backup.db

-----------------------------
To restore the backup, I have restore it on /var/lib/etcd-restore folder.

etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key snapshot restore /opt/etcd_backup.db --data-dir=/var/lib/etcd-retore

--------------------------------------------------
once restore complete then need to make chnages in etcd.yaml file.
replace /var/lib/etcd to /var/lib/etcd-retore. in --data-dire , mount path and host path in the yaml file.

restart the kubelet service and your etcd backup will restore.

