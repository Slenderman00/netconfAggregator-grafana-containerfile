podman build -t grafana-netconfaggregator .
podman run -d -p 3000:3000 -p 3001:3001 --name grafana grafana-netconfaggregator
