FROM openjdk:17-alpine3.14
RUN mkdir -p /app
WORKDIR /app
COPY ./target/eStoreBackend-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "eStoreBackend-0.0.1-SNAPSHOT.jar"]
