FROM registry.access.redhat.com/ubi8/openjdk-11:latest
#ENV PROFILE=devspaces
RUN mkdir -p /opt/spring-service/
ADD target/backend-0.0.1-SNAPSHOT.jar /opt/spring-service/backend-0.0.1-SNAPSHOT.jar
WORKDIR /opt/spring-service/
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=${PROFILE}","backend-0.0.1-SNAPSHOT.jar"]
