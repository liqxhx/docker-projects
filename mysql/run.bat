docker run --name mysql -p 3306:3306 -v E:/docker-projects/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7.23
