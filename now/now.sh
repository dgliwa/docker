function now() {
    docker run \
	--rm \
	-it \
	--volume "$(pwd):/data" \
	--env TF_LOG="$TF_LOG" \
	--env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
	--env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
	gjigsaw/now:20160417-2000 \
	"$@"
}

alias now.terraform="now terraform"
alias now.packer="now packer"
