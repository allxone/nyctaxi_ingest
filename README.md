# NYC Taxi Dataset Flume uploader

# BUILD
docker build -t allxone/nyctaxi_ingest .

# START
docker run -v /home/core/nyctaxi_ingest/ingest:/tmp/flumein -v /home/core/nyctaxi_ingest/conf:/tmp/flumeconf -e "FLUME_AGENT=nyctaxi1" -e "FLUME_CONF_FILE=flume.conf.container" -d --name nyctaxi_ingest allxone/nyctaxi_ingest

# ENTER
docker exec -it nyctaxi_ingest /bin/bash
