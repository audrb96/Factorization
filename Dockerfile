FROM adoptopenjdk/openjdk11:alpine-jre
LABEL maintainer="audrb96@gmail.com"
VOLUME /tmp
RUN mkdir -p /Factorization
WORKDIR /Factorization
ADD . /Factorization
WORKDIR /Factorization/build/libs
ENTRYPOINT java -jar -Duser.timezone=Asia/Seoul comweb-0.0.1-SNAPSHOT.jar
EXPOSE 8080
