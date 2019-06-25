FROM openjdk:8-jdk AS build
COPY Hello.java /usr/local/src
RUN cd /usr/local/src \
 && javac Hello.java

FROM openjdk:8-jre AS run
COPY --from=build /usr/local/src/Hello.class /usr/local/lib/Hello/
WORKDIR /usr/local/lib/Hello/
CMD [ "java", "Hello" ]
