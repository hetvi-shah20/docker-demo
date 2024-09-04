#FROM openjdk:17-jdk-alpine
#COPY target/docker-0.0.1-SNAPSHOT.jar docker-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/docker-0.0.1-SNAPSHOT.jar"]

#above three commands will help to create docker image locally
# To buid a docker image write below command
# docker build -t your-image-name .

# to generate docker image on serve we will need seperate set of intruction
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
EXPOSE 8081
COPY --from=build /target/docker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

#This set of commands will help us to deploy our spring boot application to render.com platform for free.