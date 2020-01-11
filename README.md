# Springboot with Dockerfile sample
Starter project to build and run image in Docker Container with https://labs.play-with-docker.com/

## Getting started
Follow below instruction to create sample spring boot application and run it on Docker

### Prerequisites
Before we proceed please make sure you have following ready.
    
    - IntelliJ
    - Github account
    - Docker account

### Build, deploy and run
Follow below instruction to ready the project

    1. Login to https://labs.play-with-docker.com/
    2. Create new docker node by clicking + ADD NEW INSTANCE
    3. On terminal get the code from github 
    
```
git clone https://github.com/sid-nadgeri/springboot-with-dockerfile
```
    4. Go to directory and install application using maven
```
cd springboot-with-dockerfile
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
```
    5. Build and check docker image
```
docker build -f Dockerfile -t springboot-with-dockerfile:1.0-SNAPSHOT .
docker images
```
    6. Run docker image i.e. application
```
docker run -p 8080:8080 springboot-with-dockerfile:1.0-SNAPSHOT
```
    7. Check application by clicking port 8080 on docker site.
    


