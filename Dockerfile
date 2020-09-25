# Build a JAR File
FROM maven:3.6.3-jdk-11-slim AS stage1
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

# Create an Image
FROM openjdk:11.0.8_10-jdk-alpine
EXPOSE 5000
COPY --from=stage1 target/hello-world-java-rest.jar hello-world-java-rest.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java-rest.jar"]
