FROM eclipse-temurin:17-jre-jammy

RUN set -x && \
  apt-get update && \
  apt-get install -y wget && \
  apt-get clean

ARG JAR_URL
ENV JAR_URL $JAR_URL
RUN wget $JAR_URL -O server.jar

COPY ./start-server.sh /

EXPOSE 25565
WORKDIR /var/server-contents
ENTRYPOINT ["/start-server.sh"]
CMD ["4096", "8192"]