FROM alpine:3.4
MAINTAINER Scott Brown

ENV APP_DIR /app
ENV OUTPUT_DIR /output

RUN apk add --update gcc-java
RUN mkdir $APP_DIR
RUN mkdir $OUTPUT_DIR
ADD plantuml.8046.jar $APP_DIR/plantuml.jar
WORKDIR /output
ENTRYPOINT ["/usr/bin/gij", "-jar", "/app/plantuml.jar", "-output", "/output"]

