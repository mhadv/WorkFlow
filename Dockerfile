# Use a base image with OpenJDK 17
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file generated by Maven
COPY target/my-spring-boot-app-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8090
EXPOSE 8090

# Command to run the application
CMD ["java", "-jar", "app.jar"]