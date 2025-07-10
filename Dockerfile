FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/ROOT.war app.war
COPY src/main/webapp /app/src/main/webapp

EXPOSE 8099

ENTRYPOINT ["java","-jar","app.war"]


