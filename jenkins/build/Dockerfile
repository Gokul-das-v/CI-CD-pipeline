# Use an OpenJDK as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY *.jar /app/my-app-1.0-SNAPSHOT.jar

# Set the command to run your application when the container starts
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
