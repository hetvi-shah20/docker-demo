FROM openjdk:17-jdk-alpine
COPY target/docker-0.0.1-SNAPSHOT.jar docker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/docker-0.0.1-SNAPSHOT.jar"]

# To buid a docker image write below command
# docker build -t your-image-name .