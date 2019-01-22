docker run -d --hostname my-rabbit --name rbtmq_mgmt -p 15672:15672 -p 25672:25672 rabbitmq:3.7.8-management
docker run -d --hostname my-rabbit --name rbtmq -p 5671:5671 -p 5672:5672 rabbitmq:3.7.8
