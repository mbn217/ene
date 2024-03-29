#
# Build stage
#
FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:8-jdk-alpine
COPY --from=build /target/ene-0.0.1-SNAPSHOT.jar ene.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "ene.jar" ]
