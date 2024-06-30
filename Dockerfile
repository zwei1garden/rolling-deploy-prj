FROM openjdk:17-jdk-slim

CMD ["./gradlew", "clean", "build"]

VOLUME /tmp

ARG JAR_FILE=*.jar

COPY ./build/libs/cpuboundapp-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
