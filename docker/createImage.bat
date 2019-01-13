@echo off
echo Creating image
set ROOT_PATH=D:/GaniWork/EclipseWorkspace/VideoAnalytics
REM cd %ROOT_PATH%/console
REM call mvn clean install
REM echo Making the docker image
cd %ROOT_PATH%/deployment/docker
del console-1.0.0.jar
cp %ROOT_PATH%\console\target\console-1.0.0.jar console-1.0.0.jar
call docker build -t console .
call pushImage.bat