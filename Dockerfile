FROM allxone/flume-ng
MAINTAINER allxone@hotmail.com

# Ingest data from specified directory into HDFS
RUN mkdir /tmp/flumein && mkdir /tmp/flumeconf
VOLUME /tmp/flumein
VOLUME /tmp/flumeconf

WORKDIR /usr/local/apache-flume-1.5.2-bin
ENTRYPOINT bin/flume-ng agent -n $FLUME_AGENT -c conf -f /tmp/flumeconf/$FLUME_CONF_FILE
