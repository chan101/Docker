Create an EC2 instance and run following to update and install git and docker.

`sudo yum update -y`

`sudo yum install git -y`

`sudo yum install docker -y`

`sudo service docker start`

`sudo systemctl enable docker`

Clone my docker repo and switch to *demo_skin* branch.

`git clone https://github.com/chan101/Docker.git`

`cd Docker`

`git switch demo_skin`

Run docker build and run scripts

`sudo sh docker_build`

`sudo sh docker_run`

login to *mysql* container to run database import scripts

`sudo docker exec -it mysql bash`

`sudo sh import_db.sh`

`exit`

Start ngrok

`sudo ngrok_setup`

`sudo ngrok_start`
