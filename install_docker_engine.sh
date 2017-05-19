. $(dirname ${BASH_SOURCE})/util.sh

desc "remove older docker-engine version"
run "apt-get remove docker docker-engine"

desc "update cached & upgrade kernel"
run "apt-get update -y && apt-get install linux-image-extra-$(uname -r)linux-image-extra-virtual"


desc "add docker repository"
run "apt-get install -y apt-transport-https ca-certificates curl software-properties-common"

desc "docker's official gpg key"
run "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"

desc "verify docker fingerprint"
run "apt-key fingerprint 0EBFCD88"


desc "add repository"
run "add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\""


desc "Install docker"
run "apt-get update -y && apt-get install -y docker-ce"
