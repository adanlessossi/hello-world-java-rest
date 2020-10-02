# Build a JAR File
FROM maven:3.6.3-jdk-11-slim AS maven-build
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean install

# Create an Image
FROM adoptopenjdk/openjdk11:jdk-11.0.8_10-alpine-slim
EXPOSE 8080
COPY --from=maven-build home/app/target/hello-world-java-rest.jar hello-world-java-rest.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java-rest.jar"]
