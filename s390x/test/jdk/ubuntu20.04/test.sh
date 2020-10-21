#!/bin/bash

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "$ANSI_YELLOW \n*** FUNCTIONAL TEST(S) ***\n $ANSI_RESET"

echo -e "$ANSI_YELLOW It can run a Java program: $ANSI_RESET"
docker build -t test/run-app/quay.io/ibmz/openjdk runs-java-programs
docker run -it --rm --name runs-java-programs test/run-app/quay.io/ibmz/openjdk
docker rmi test/run-app/quay.io/ibmz/openjdk

echo -e "$ANSI_GREEN \n*** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY ***\n $ANSI_RESET"
