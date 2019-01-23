# docker run -d --hostname my-rabbit --name rbtmq_mgmt -p 15672:15672 -p 25672:25672 rabbitmq:3.7.8-management
# docker run -d --hostname my-rabbit --name rbtmq -p 5671:5671 -p 5672:5672 rabbitmq:3.7.8
docker run -d --hostname my-rabbit --name rbtmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin -p 15672:15672 -p 5672:5672 -p 25672:25672 -p 61613:61613 -p 1883:1883 rabbitmq:3.7.8-management
