gcloud compute disks create --size 20GB kubernetes-jenkins
kubectl create -f jenkins-deployment.yaml
kubectl create -f jenkins-service.yaml
