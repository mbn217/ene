#
# Build stage
#
FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM tomcat:9.0.24
VOLUME /tmp
COPY --from=build /target/ene-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ene.war
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/ene.war" ]
