#Stage 1
FROM maven:3.6.3-adoptopenjdk-11 as compile
WORKDIR /home/source/java
COPY pom.xml .
RUN mvn dependency:go-offline
COPY ./src ./src
RUN mvn clean install -Dmaven.test.skip=true

#Stage 2 
FROM openjdk:8-jre-alpine
WORKDIR /home/application/java
COPY --from=compile "/home/source/java/build/DevOpsUsach2020-0.0.1.jar" .
EXPOSE 8081
ENTRYPOINT [ "java", "-jar", "/home/application/java/DevOpsUsach2020-0.0.1.jar"]