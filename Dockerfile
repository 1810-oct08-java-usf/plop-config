FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD . target/config-service-0.0.1-SNAPSHOT.jar
EXPOSE 8888
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
