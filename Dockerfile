FROM ewolff/docker-java
COPY target/eureka-0.0.1-SNAPSHOT.jar .
RUN sh -c 'touch /eureka-0.0.1-SNAPSHOT.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /eureka-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8761