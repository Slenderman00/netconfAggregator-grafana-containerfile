podman build -t grafana-netconfaggregator .
podman run -d -p 3000:3000 --name grafana grafana-netconfaggregator