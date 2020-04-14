# build application
FROM openjdk:8
ADD target/springboot-with-dockerfile.jar springboot-with-dockerfile.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "springboot-with-dockerfile.jar"]