#!/bin/bash

# Set up Maven
MAVEN_WRAPPER="./mvnw"

# Check if Maven Wrapper exists, if not, download it
if [ ! -f "$MAVEN_WRAPPER" ]; then
  echo "Maven Wrapper not found. Downloading..."
  curl -O https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.6.5/maven-wrapper-0.6.5.jar
  curl -O https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.6.5/maven-wrapper-0.6.5.jar.asc
  echo "Downloading Maven Wrapper... DONE"
fi

# Make Maven Wrapper executable
chmod +x $MAVEN_WRAPPER

# Build the Spring Boot project
$MAVEN_WRAPPER clean install -DskipTests=true