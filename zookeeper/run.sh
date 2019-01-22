cmd_start="docker run --name zookeeper -d -p 2181:2181 --restart always zookeeper:3.4.9"
cmd_stop="docker stop zookeeper && docker rm -v zookeeper"
cmd_status="docker ps -a"
cmd_client="docker run -it --rm --link zookeeper:zookeeper zookeeper:3.4.9 zkCli.sh -server zookeeper"
#docker run -it --rm --link zoo:zookeeper zookeeper:3.4.9 zkCli.sh -server zoo

doStop(){
	echo ${cmd_stop}
	eval "${cmd_stop}"
}
doStart(){
	echo ${cmd_stop}
	eval "${cmd_stop}"
	sleep 2
	echo ${cmd_start}
	eval "${cmd_start}"

}

doStatus(){
	echo ${cmd_status}
	eval "${cmd_status}"
}


if [ $1 = 'start' ]; then
	doStart
fi
if [ $1 = 'stop' ]; then
	doStop
fi
if [ $1 = 'status' ]; then
	doStatus
fi
