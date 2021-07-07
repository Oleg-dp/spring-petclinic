FROM openjdk:8-jdk-alpine
EXPOSE 18888

ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Dserver.port=18888","-jar","/app.jar"]
