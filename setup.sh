gcloud compute disks create --size 20GB kubernetes-jenkins
ssh-keygen -t rsa -b 4096 -C "jenkins" -f jenkins -q -N ""
kubectl create secret generic jenkins-ssh --from-file=jenkins --from-file=jenkins.pub
rm jenkins*
kubectl create -f jenkins-deployment.yaml
kubectl create -f jenkins-service.yaml
