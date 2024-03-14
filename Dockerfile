# Use a base image with Java and a suitable version of the JRE
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file from the local filesystem to the container
COPY target/your-application.jar /app/eStoreBackend.jar

# Expose the port on which your Spring Boot application is running (if needed)
EXPOSE 8080

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "eStoreBackend.jar"]