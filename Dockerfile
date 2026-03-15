FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY src/main/java/com/java/sample/Sample.java .

RUN javac -d . Sample.java

CMD ["java", "com.java.sample.Sample", "Hommie"]