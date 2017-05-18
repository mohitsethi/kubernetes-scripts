#!/bin/bash

. $(dirname ${BASH_SOURCE})/util.sh

TOKEN='ba253e.dcad1eb5cd579bb1'
MASTER_ENDPOINT='10.128.0.95:6443'
# desc "Create a demo pod"
# run "cat $(relative resources/pod.yaml)" skip
# run "kubectl create -f $(relative resources/pod.yaml)"

# desc "Thus was conjured a pod!"
# run "kubectl get pod demo"

# desc "And it is running"
# run "kubectl logs --tail=3 demo"

# desc "Delete the pod"
# run "kubectl delete pod demo" skip


desc "Update package manager's cache"
run "sudo apt-get update -y"

desc "Install dependencies"
run "sudo apt-get install -y apt-transport-https"

desc "Setup repository"
run "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo  apt-key add -"
run "sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF"
run "sudo apt-get update"

desc "Install docker if you don't have it already."
run "sudo apt-get install -y docker-engine"
run "sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni"


desc "Joininig node to master"
run "kubeadm join --token $TOKEN $MASTER_ENDPOINT"
