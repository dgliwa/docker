function now() {
    docker run \
	--rm \
	-it \
	--volume "$(pwd):/data" \
        --env DOCKER_CERT_PATH="/root/.docker/machine/machines/dvb" \
	--env TF_LOG="$TF_LOG" \
	--env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
	--env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	--volume /Users/jigsaw/.docker:/root/.docker \
        --env DOCKER_HOST="tcp://192.168.99.100:2376" \
	--env DOCKER_TLS_VERIFY="1" \
	--env DOCKER_MACHINE_NAME="dvb" \
	gjigsaw/now:20170924-1200 \
	"$@"
}

alias now.terraform="now terraform"
alias now.tf="now terraform"
source ~/docker/now/terraform.sh

alias now.packer="now packer"
alias now.p="now packer"
source ~/docker/now/packer.sh

alias now.docker="now docker"
alias now.d="now docker"

alias now.docker-compose="now docker-compose"
alias now.dc="now docker-compose"
source ~/docker/now/docker_compose.sh
