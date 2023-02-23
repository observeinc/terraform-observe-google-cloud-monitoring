#FROM java:openjdk-8-alpine
FROM amazoncorretto:8-alpine3.13-jdk

WORKDIR /usr/src/app
COPY ./target/*.jar ./app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./app.jar", "--port=80"]
