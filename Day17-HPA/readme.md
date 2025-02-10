To create auto scaling using cmd.
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

We use below pod to provide traffic to php-apache pod as that auto svcaling happen.
kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"

to list the hpa
kubectl get hpa php-apache --watch

kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

