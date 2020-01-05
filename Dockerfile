# build application
FROM openjdk:8
ADD target/hello-springboot.jar hello-springboot.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "hello-springboot.jar"]