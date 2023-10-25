# node-dev-container
A docker container with the minimum to start a node.js project

## How to get started
1. clone the project
2. change your origin in Git (git remote rm origin            git remote origin add new_url)
3. mkdir app
4. create passwd.txt and add PASSWD=yourpasswdhere
5. export GID=$(id -g) // to set the right file permissions
6. export DOCKER_BUILDKIT=1
7. docker build -t NAME_IMAGE --build-arg USER_ID=$UID --build-arg GROUP_ID=$GID --secret id=passwd,src=./passwd.txt . // remember to name image

## RUN shell inside the Docker with bind volume
docker run -it --rm -v --mount type=bind,source=./app,target=/usr/src/app NAME_IMAGE /bin/sh

Here you can use use npm init to start your project etc

## Later use (work in progress)
docker compose up