FROM maven:3.6.2-jdk-8-slim AS BUILD_JAR

RUN mkdir /app

COPY logging-service /app

RUN mvn -f /app verify clean

RUN mvn -f /app package



FROM openjdk:8-jre

RUN mkdir /app

COPY --from=BUILD_JAR /app/target/logging-service-0.0.1-SNAPSHOT.jar /app/logging-service.jar

EXPOSE 80

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "/app/logging-service.jar"]