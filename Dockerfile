
FROM amazoncorretto:17

ENV JARFILE spring-demo-0.0.1-SNAPSHOT.jar

COPY target/${JARFILE} .

EXPOSE 8080

# Shell form of entrypoint, use docker.env to pass in more configs
ENTRYPOINT java -jar $JARFILE
