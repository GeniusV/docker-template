FROM openjdk:11-jdk-slim

ARG JAR
COPY ${JAR} /usr/local/app.jar
CMD ["java", "-jar", "/usr/local/app.jar"]
