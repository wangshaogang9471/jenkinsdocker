FROM centos:jdk15
ARG home_path=home
WORKDIR /$home_path/
VOLUME /$home_path/
ADD target/jenkins_docker-0.0.1-SNAPSHOT.jar /$home_path/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]