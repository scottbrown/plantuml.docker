FROM alpine:3.4
MAINTAINER Scott Brown

RUN apk add --update gcc-java curl
WORKDIR /usr/local/bin
RUN curl "http://downloads.sourceforge.net/project/plantuml/plantuml.8046.jar?r=http%3A%2F%2Fplantuml.com%2Fdownload.html&ts=1470432867&use_mirror=heanet" -o plantuml.8046.jar
WORKDIR /
ENTRYPOINT java -jar /usr/local/bin/plantuml.8046.jar -output .

