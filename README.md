# ACSE Java Docker example

This contains a simple Java hello world example and a Dockerfile for compiling the Java code and creating a Docker image for running it.
We use [multi-stage build](https://docs.docker.com/develop/develop-images/multistage-build/) to only include necessary files in the final image.

To build:
```sh
$ docker build -t wwupi/acse-java .
```

To run:
```sh
$ docker run --rm wwupi/acse-java
```
