FROM docker.io/grafana/grafana:main-ubuntu

USER root

ENV GF_PLUGINS_ALLOW_LOADING_UNSIGNED_PLUGINS=lsi-netconfaggregator-datasource

RUN apt-get update && apt-get install -y wget unzip

RUN wget -O /tmp/plugin.zip https://github.com/Slenderman00/netconfAggregator-grafana/releases/download/v1.0.2/lsi-netconfaggregator-datasource-1.0.2.zip

RUN mkdir -p /var/lib/grafana/plugins/lsi-netconfaggregator-datasource

RUN unzip /tmp/plugin.zip -d /var/lib/grafana/plugins/lsi-netconfaggregator-datasource

EXPOSE 3000

CMD ["grafana-server", "--homepath=/usr/share/grafana"]
