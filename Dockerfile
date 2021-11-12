#FROM openjdk:11
#FROM registry.access.redhat.com/ubi8/openjdk-11:latest
#WORKDIR /app
#COPY --from=builder /workspace/target/springboot-hello-world-0.0.1-SNAPSHOT.jar .
#CMD ["java", "-jar", "springboot-hello-world-0.0.1-SNAPSHOT.jar"]
FROM registry.access.redhat.com/ubi8/openjdk-11:latest
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#COPY ./target/*.jar ./app.jar

EXPOSE 8080

# USER 1001

CMD ["java","-jar","./app.jar"]