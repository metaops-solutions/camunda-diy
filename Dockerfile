FROM openjdk:17.0-jdk
ARG JAR_FILE=target/spring-boot-web.jar

RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY target/*.jar /opt/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

