#FROM openjdk:8-jre-alpine
FROM frolvlad/alpine-oraclejdk8:slim

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0 \
    JAVA_OPTS=""

RUN adduser -D -s /bin/sh cicduser

WORKDIR /home/adduser



ADD entrypoint.sh 
RUN chmod 755 entrypoint.sh && chown adduser:adduser entrypoint.sh
USER adduser

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8080

