FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/config-service-0.0.1-SNAPSHOT.jar config-service.jar
EXPOSE 8888
ENV JAVA_OPTS=""
CMD ["java", "-jar", "config-service.jar"]
