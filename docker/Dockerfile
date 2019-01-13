FROM openjdk:8-jdk-alpine
RUN echo Creating My Image
COPY console-1.0.0.jar /opt/app/console/console.jar
#COPY start.sh /opt/app/console/start.sh
EXPOSE 8080
#ENTRYPOINT ["/opt/app/console/start.sh"]
ENTRYPOINT ["java","-jar","/opt/app/console/console.jar"]