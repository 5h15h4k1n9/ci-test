FROM openjdk:17-alpine
MAINTAINER Roman Shishkin <romashkin.2001@yandex.ru>

#Setting directories args
ARG APP_DIR=web-client
ARG VERSION=54.1.0-snapshot

#Copying application
WORKDIR /$APP_DIR
ARG JAR_FILE=build/libs/ci-test-$VERSION.jar
ARG APP=app.jar
COPY $JAR_FILE $APP

#Running application
EXPOSE 8888
ENTRYPOINT java $JAVA_OPTIONS -jar app.jar