gcloud compute disks create --size 20GB kubernetes-jenkins
ssh-keygen -t rsa -b 4096 -C "jenkins" -f jenkins_ssh -q -N ""
kubectl create secret generic jenkins-ssh --from-file="jenkins=jenkins_ssh" --from-file="jenkins.pub=jenkins_ssh.pub"
rm jenkins_ssh*
kubectl create -f jenkins-deployment.yaml
kubectl create -f jenkins-service.yaml

