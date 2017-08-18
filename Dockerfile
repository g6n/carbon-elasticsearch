FROM quay.io/pires/docker-elasticsearch:5.5.2
ADD config /elasticsearch/config
RUN bin/elasticsearch-plugin remove x-pack
RUN elasticsearch-plugin install --batch repository-s3
ENV DISCOVERY_SERVICE elasticsearch-discovery
ENV MEMORY_LOCK false
