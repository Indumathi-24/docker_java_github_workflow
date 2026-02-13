# Use an OpenJDK base image with a JDK (Java Development Kit)
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the entire src directory from your host machine to the container's working directory
COPY src/main/java/ /app/

# Compile the Java file
RUN javac Calculator.java

# Command to run the compiled Java class when the container starts
CMD ["java", "Calculator"]
