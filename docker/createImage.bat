@echo off
echo Creating image
set CURR_FOLDER=%CD%
set ROOT_PATH=%CURR_FOLDER%/../../
echo Using root path %ROOT_PATH%
REM cd %ROOT_PATH%/console
REM call mvn clean install
REM echo Making the docker image
cd %ROOT_PATH%/analyze-deployment/docker
del console-1.0.0.jar
cp %ROOT_PATH%\analyze-console\target\console-1.0.0.jar console-1.0.0.jar
call docker build -t console .
call pushImage.bat