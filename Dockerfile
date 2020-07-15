FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/my-api-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

#https://thepracticaldeveloper.com/2017/12/11/dockerize-spring-boot/#dockerizing-spring-boot-or-any-executable-jar-file
#https://dzone.com/articles/run-simple-jar-application-in-docker-container-1
#https://hub.docker.com/r/marcoseduardoss/springboot-test/tags


# docker build -f Dockerfile .

# docker login
# docker images
# 
# docker tag app marcoseduardoss/springboot-test 
# docker push

# docker pull marcoseduardoss/springboot-test
# docker run -p 8081:8080 marcoseduardoss/springboot-test:app