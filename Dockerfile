FROM openjdk:8
WORKDIR /app
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n
COPY target/test-java-remote-debug-1.0-SNAPSHOT.jar  test-java-remote-debug-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-cp", "test-java-remote-debug-1.0-SNAPSHOT.jar", "com.kaysush.App"]