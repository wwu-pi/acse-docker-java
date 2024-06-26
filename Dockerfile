FROM docker.io/library/eclipse-temurin:17-jdk AS build
COPY Hello.java /usr/local/src
RUN cd /usr/local/src \
 && javac Hello.java

FROM docker.io/library/eclipse-temurin:17-jre AS run
COPY --from=build /usr/local/src/Hello.class /usr/local/lib/Hello/
WORKDIR /usr/local/lib/Hello/
CMD [ "java", "Hello" ]
