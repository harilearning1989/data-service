FROM openjdk:20
MAINTAINER Hari Duddukunta <hari.learning1989@gmail.com>
ARG WAR_FILE=/build/libs/data-service-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app
COPY ${WAR_FILE}  /app/
EXPOSE 8081
#CMD ["java", "-Xmx200m", "-jar", "/app/eureka-server.jar"]
ENTRYPOINT ["java", "-Xmx200m", "-jar", "/app/data-service-0.0.1-SNAPSHOT.jar"]

#docker run --name data-service --network eureka-network -p 8081:8081 -d dataservice:1.0.0