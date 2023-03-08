FROM openjdk:17.0-jdk
ARG JAR_FILE=target/loan-approval-spring-boot-0.0.1-SNAPSHOT.jar

RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY $JAR_FILE /opt/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

