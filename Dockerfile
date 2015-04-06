FROM allxone/flume-ng
MAINTAINER allxone@hotmail.com

# Ingest data from specified directory into HDFS
RUN mkdir /tmp/flumein
VOLUME /tmp/flumein

WORKDIR /usr/local/apache-flume-1.5.2-bin
ENTRYPOINT bin/flume-ng agent -n agent -c conf -f conf/flume.conf
COPY flume.conf.container /usr/local/apache-flume-1.5.2-bin/conf/flume.conf
