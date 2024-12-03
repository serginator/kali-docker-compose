# kali-docker-compose

This repository contains a docker-compose file to create a Kali Linux container with a set of tools for penetration testing, which I find very convenient to have some fun in TryHackMe, HackTheBox, etc. It's using `kali-linux-large` as the base image, which is a large image with a lot of tools pre-installed, but you can change it to `kali-linux-default`or `kali-linux-top10` if you prefer a smaller image.

To run the container, you need to have Docker and Docker Compose installed. Then, you can run the following command:

```bash
docker-compose up -d
```

For accessing the container, you can use different tools:

- **Docker CLI**: `docker exec -it kali /bin/bash`
- **Docker Compose**: `docker-compose exec -it kali /bin/bash`
- **noVNC**: `http://localhost:6901/vnc.html?autoconnect=true&password=password`
- **VNC**: `vnc://localhost:5901` (password: `password`)

To shutdown the container, you can run the following command:

```bash
docker-compose down
```
