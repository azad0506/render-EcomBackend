# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy jar file into container
COPY target/*.jar app.jar

# Expose the port Render will use
EXPOSE 10000

# Start Spring Boot app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
