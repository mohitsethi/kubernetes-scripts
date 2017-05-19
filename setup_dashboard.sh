#!/bin/bash

. $(dirname ${BASH_SOURCE})/util.sh

desc "The Dashboard UI is not deployed by default. To deploy it, run the following command:"
run ""

desc "Using yaml for kubernetes dashboard"
run "kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://rawgit.com/kubernetes/dashboard/master.ac/src/deploy/kubernetes-dashboard.yaml"

desc "Setting proxy"
run ""
