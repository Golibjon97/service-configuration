# Assign a base image
FROM amazoncorretto:17-alpine-jdk

# Maintainer / author
LABEL maintainer="golibjon_davlatov@epam.com"

# Specify the argument for the jar file
ARG JAR_FILE=build/libs/service-configuration-0.0.1-SNAPSHOT.jar

# Copy the jar file to the docker image
COPY ${JAR_FILE} app.jar

# Set the start point
CMD ["java","-jar","/app.jar"]