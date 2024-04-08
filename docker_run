docker network create one_net
docker run -d --name=web --net=one_net -p 80:80 web_project
docker run -d --name=mysql --net=one_net -p 3306:3306 mysql_server