# Run Jenkins on a Kubernetes Cluster

A Kubernetes Deployment for Jenkins 2.3 for Google Container Engine. To install into default cluster:

```
chmod o+x setup.sh
./setup.sh
```

Find out the IP of the service (it may take a minute until the load balancer has been provisioned):
```
kubectl describe services jenkins | grep Ingress
``` 

Go into your the Google Cloud Platform log viewer and find the Password for continuing the installation there.

## Planned

- SSH Key integration via kubernetes secrets
