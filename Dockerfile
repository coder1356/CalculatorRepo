ROM openjdk:11
COPY ./target/Calculator_Java-1.0-SNAPSHOT-jar-with-dependencies.jar ./
WORKDIR ./
CMD ["java", "-jar", "Calculator_Java-1.0-SNAPSHOT-jar-with-dependencies.jar"]
