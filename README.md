DockerSsh
=========

Openssh server enabled Docker Ubuntu image for staters.

Usage
=========

1- Build your image with Dockerfile. Go to DockerSsh directory and run

    sudo docker build --rm -t docker_ssh .

2- Run an instance with image

    sudo docker run -d -P --name ubuntu_test docker_ssh

3- Check which port redirected to 22

    sudo docker port ubuntu_test 22 

4- Connect with ssh. Default password is changeme

    ssh root@127.0.0.1 -p $port