cmd_start="docker run --name mysql5.7 -p 3306:3306 -v /Users/liqh/docker-project/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7"
cmd_stop="docker stop mysql5.7 && docker rm -v mysql5.7"
cmd_status="docker ps -a"


doStop(){
	echo ${cmd_stop}
	eval "${cmd_stop}"
}
doStart(){
	# echo ${cmd_stop}
	# eval "${cmd_stop}"
	# sleep 2
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
