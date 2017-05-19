#!/bin/bash

. $(dirname ${BASH_SOURCE})/util.sh

desc "Connecting to API Server"

desc "If you want to connect to the API Server from outside the cluster you can use kubectl proxy:"
run "kubectl --kubeconfig /etc/kubernetes/admin.conf proxy"
