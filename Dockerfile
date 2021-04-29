FROM openjdk:8-jdk-alpine
LABEL maintainer="audrb96@gmail.com"
VOLUME /tmp
RUN mkdir -p /Factorization
WORKDIR /Factorization
ADD . /Factorization
WORKDIR /Factorization/build/libs
ENTRYPOINT java -jar -Duser.timezone=Asia/Seoul comweb-0.0.1-SNAPSHOT
EXPOSE 8080
