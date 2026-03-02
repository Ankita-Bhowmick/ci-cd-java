From openjdk-17:jdk:slim
workdir /app
copy ...
expose 5000
entrypoint ["java","-jar","app.jar"]
