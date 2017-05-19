
#!/bin/bash

. $(dirname ${BASH_SOURCE})/util.sh


desc "List nodes"
run "kubectl --kubeconfig /etc/kubernetes/admin.conf get nodes"
