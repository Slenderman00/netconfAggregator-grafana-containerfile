podman build -t grafana-netconfaggregator .
podman run -p 3000:3000 grafana-netconfaggregator