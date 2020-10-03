# hello-world-java-rest
`http://localhost:8080/api/hello`

### Build the container
`docker build -t adanlessossi/hello-world-java-rest:0.0.1.RELEASE .`

### Run the container
`docker run -d -p 5000:8080 adanlessossi/hello-world-java-rest:0.0.1.RELEASE`

#### Test the container
`http://localhost:5000/api/hello`

### Push the image
`docker push adanlessossi/hello-world-java-rest:0.0.1.RELEASE`
