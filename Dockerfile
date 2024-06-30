FROM openjdk:17-jdk-slim

CMD ["./gradlew", "clean", "build"]

VOLUME /tmp

EXPOSE 8080

ENTRYPOINT ["java","-jar","./build/libs/cpuboundapp-0.0.1-SNAPSHOT.jar"]
