from debian:stretch-slim
RUN apt -y update && \ 
apt install -y curl && \
curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.1.0-amd64.deb && \
dpkg -i metricbeat-7.1.0-amd64.deb && \
rm metricbeat-7.1.0-amd64.deb
COPY entrypoint.sh /usr/bin/entrypoint.sh
COPY metricbeat.yml.template /etc/metricbeat/metricbeat.yml
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
