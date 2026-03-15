# Java Docker Example

This project demonstrates how to **compile and run a simple Java program inside a Docker container** using the Eclipse Temurin JDK image.

The Dockerfile builds a container that:

1. Copies a Java source file into the container
2. Compiles the Java program
3. Executes the compiled class when the container starts

---

# Project Structure

```
java_docker
│
├── Dockerfile
├── src
│   └── main
│       └── java
│           └── com
│               └── java
│                   └── sample
│                       └── Sample.java
```

---

# Dockerfile Explanation

```
FROM eclipse-temurin:17-jdk-jammy
```

Uses the **Eclipse Temurin OpenJDK 17 image** as the base image.

```
WORKDIR /app
```

Sets the working directory inside the container to `/app`.

```
COPY src/main/java/com/java/sample/Sample.java .
```

Copies the Java source file from the local machine into the container.

```
RUN javac -d . Sample.java
```

Compiles the Java source file.
The `-d .` option tells the compiler to create the proper package directory structure for compiled classes.

```
CMD ["java", "com.java.sample.Sample"]
```

Runs the Java application when the container starts.

---

# Prerequisites

Make sure the following tools are installed:

* Docker Desktop
* Java project with the Sample.java file

Verify Docker installation:

```
docker --version
```

---

# Build Docker Image

Navigate to the project root directory and run:

```
docker build -t java_docker_image .
```

This command will:

* Read the Dockerfile
* Compile the Java program
* Create a Docker image named `java_docker_image`

---

# Run the Container

Execute the following command to run the Java application inside Docker:

```
docker run java_docker_image
```

Expected output:

```
Hello from Java running inside Docker
```

---

# Verify Docker Images

To see the created Docker image:

```
docker images
```

---

# Verify Running Containers

```
docker ps
```

To view all containers (including stopped ones):

```
docker ps -a
```

---

# Clean Up

Remove container:

```
docker rm <container_id>
```

Remove image:

```
docker rmi java_docker_image
```

---

# Notes

* The Java class must include the package declaration:

```
package com.java.sample;
```

* The program is executed using the **fully qualified class name**.

---

# Author

Example project for learning **Java + Docker containerization**.
