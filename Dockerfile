
FROM amazoncorretto:17

# TODO: Should be an arg (or make a little script rather than entrypoint)
ENV JARFILE spring-demo-0.0.1-SNAPSHOT.jar

COPY target/${JARFILE} .

EXPOSE 8080

# Shell form of entrypoint, use docker.env to pass in more configs
ENTRYPOINT java -jar $JARFILE
