FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.1
RUN bin/elasticsearch-plugin remove x-pack
RUN elasticsearch-plugin install --batch repository-s3
