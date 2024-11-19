FROM openjdk:17-jdk-alpine
WORKDIR /app
RUN apk update && apk upgrade -a
COPY app.jar /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]