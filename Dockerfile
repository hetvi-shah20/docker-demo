#FROM openjdk:17-jdk-alpine
#COPY target/docker-0.0.1-SNAPSHOT.jar docker-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/docker-0.0.1-SNAPSHOT.jar"]

#above three commands will help to create docker image locally
# To buid a docker image write below command
# docker build -t your-image-name .

# to generate docker image on serve we will need seperate set of intruction
FROM ubuntu:latest As build
RUN apt-get update
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y ant && \
    apt-get clean;
COPY . .
RUN ./mvnw spring-boot:build-image

FROM openjdk:17-jdk-alpine
EXPOSE 8081
COPY --from=build /target/docker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

