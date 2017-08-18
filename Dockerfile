FROM quay.io/pires/docker-elasticsearch:5.5.2
ADD config /elasticsearch/config
ENV DISCOVERY_SERVICE elasticsearch-discovery
ENV MEMORY_LOCK false
RUN elasticsearch-plugin install --batch repository-s3
