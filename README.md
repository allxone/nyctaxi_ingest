# NYC Taxi Dataset Flume uploader

# BUILD
docker build -t allxone/nyctaxi_ingest .

# START
docker run -v /tmp/nyctaxy/trip:/tmp/nyctaxi/trip -v /tmp/nyctaxy/fare:/tmp/nyctaxi/fare -d --name nyctaxi_ingest allxone/nyctaxi_ingest

# ENTER
docker exec -it nyctaxi_ingest /bin/bash
