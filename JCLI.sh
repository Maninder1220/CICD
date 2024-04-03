#!/bin/bash

# Path to the Jenkins CLI JAR file
JENKINS_CLI_JAR="jenkins-cli.jar"

# Make Script Executable
chmod +x JCLI.sh

# Execute the Java JAR file with Jenkins CLI command
java -jar "$JENKINS_CLI_JAR" -s http://localhost:8080/ "$@"