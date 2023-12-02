FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/votreprojet-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "app.jar"]
