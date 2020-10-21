#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "$ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET"

echo -e "$ANSI_YELLOW It can run a Java program: $ANSI_RESET"
docker build -t test/run-app/quay.io/ibmz/openjdk runs-java-programs
docker run --rm --name runs-java-programs test/run-app/quay.io/ibmz/openjdk
docker rmi test/run-app/quay.io/ibmz/openjdk

echo -e "$ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET"
