FROM openjdk:11
#FROM registry.access.redhat.com/ubi8/openjdk-11:latest
#WORKDIR /app
#COPY --from=builder /workspace/target/springboot-hello-world-0.0.1-SNAPSHOT.jar .
#CMD ["java", "-jar", "springboot-hello-world-0.0.1-SNAPSHOT.jar"]

COPY ./springboot-hello-world-0.0.1-SNAPSHOT.jar ./app.jar

EXPOSE 8080

# USER 1001

CMD ["java","-jar","./app.jar"]