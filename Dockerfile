FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

RUN apk add --no-cache curl unzip && \
    curl -sL https://raw.githubusercontent.com/3kh0/eaglercraft-builds/refs/heads/main/Eaglercraft_SharedWorldRelay.zip -o relay.zip && \
    unzip relay.zip && \
    rm relay.zip && \
    apk del curl unzip

EXPOSE 6699

CMD ["java", "-jar", "EaglerSPRelay.jar", "--debug"]