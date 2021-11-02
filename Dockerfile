FROM debian:stretch-slim

 RUN apt-get -y update && \
     apt-get -y install netcat-traditional && \
     apt-get clean && \
     rm -rf /var/lib/apt/lists/*

 COPY . /data/ff
 WORKDIR /data/ff

 EXPOSE 8080
 ENTRYPOINT ["bash", "-c", "echo 'wopr-tea';"]
