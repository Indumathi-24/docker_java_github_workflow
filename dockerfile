# Use a Maven base image to build the application
FROM maven:3.8-openjdk-17 AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the application into a JAR file (adjust for your project structure)
RUN mvn clean package -DskipTests

# Use a smaller base image for the final application runtime
FROM eclipse-temurin:17-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the built JAR file from the build stage (adjust 'target/my-calculator-1.0.jar' to your actual JAR path and name)
COPY --from=build /app/target/java-calculator-1.0.0.jar ./app.jar

# Command to run the application (adjust 'app.jar' to your actual JAR name)
ENTRYPOINT ["java", "-cp", "/app", "main.java.Calculator"]
