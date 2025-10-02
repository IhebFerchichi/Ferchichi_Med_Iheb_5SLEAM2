# 1. Use an official OpenJDK image as the base
FROM openjdk:17-jdk-slim

# 2. Specify the JAR file location inside target
ARG JAR_FILE=target/*.jar

# 3. Copy the JAR file into the Docker image
COPY ${JAR_FILE} app.jar

# 4. Expose the default Spring Boot port
EXPOSE 8080

# 5. Run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
