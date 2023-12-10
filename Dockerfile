FROM openjdk:11
EXPOSE 8089
WORKDIR /app
RUN apt-get update && apt-get install -y curl
RUN curl -o timesheet-devops-1.0.jar -L "http://192.168.215.100:8081/repository/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar"
ENTRYPOINT ["java", "-jar", "timesheet-devops-1.0.jar"]