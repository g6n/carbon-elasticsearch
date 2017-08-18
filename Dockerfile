FROM quay.io/pires/docker-elasticsearch:5.5.2
RUN elasticsearch-plugin install --batch repository-s3
