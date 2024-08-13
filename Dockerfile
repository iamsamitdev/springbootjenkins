# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim
FROM maven:3.8.4-openjdk-17-slim

# Working directory
WORKDIR /springboot/app

# Copy
COPY . .

# Build the jar file
RUN mvn clean package

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the jar file 
ENTRYPOINT ["java","-jar","/springboot/app/target/demo-0.0.1-SNAPSHOT.jar"]