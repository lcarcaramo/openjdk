FROM quay.io/ibmz/openjdk:11.0.8
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java
CMD ["java", "Main"]
