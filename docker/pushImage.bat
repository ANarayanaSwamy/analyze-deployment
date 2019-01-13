@echo off
echo Pushing image 
set IMAGE_NAME=console
set DOCKER_ID_USER=narayanaswamy
call docker login
call docker tag %IMAGE_NAME% %DOCKER_ID_USER%/%IMAGE_NAME%
call docker push %DOCKER_ID_USER%/%IMAGE_NAME%