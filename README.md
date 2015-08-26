# Dockerized Ubiquiti UniFi Controller

Run it:

```
docker run -d -p 8443:8443 -v /opt/UniFi/data:/opt/Unifi/data aexea/unifi-controller
```

This runs the container from docker hub and mounts the data directory on the host system for data persitence.
