function ns() {
    #    --env DOCKER_CERT_PATH="/root/.docker/machine/machines/dvb" \
	#--env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
	#--env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
        #--env DOCKER_HOST="tcp://192.168.99.100:2376" \
	#--env DOCKER_TLS_VERIFY="1" \
	#--env DOCKER_MACHINE_NAME="dvb" \

    ns_cmd=$(cat <<-_EOT_
	docker run 
	--rm 
	-it 
	--volume "$(pwd):/data" 
	--volume "/home/$(whoami)/.suitecloud-sdk:/root/.suitecloud-sdk" 
	dgliwa/ns:20210210 
	suitecloud $@
	_EOT_
	)
	eval $ns_cmd
}
