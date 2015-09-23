# Consul-template / VIP
==============
Check value from Consul and add VIP to the loopback interface

Installation
--------------

1. Install [Docker](https://www.docker.com)

2. Download automated build from public Docker Hub Registry: `docker pull qapps/consul-template`
(alternatively, you can build an image from Dockerfile: `docker build -t="qapps/consul-template" github.com/qualiapps/consul-template`)

Running the daemon
-----------------

`docker run -d --net=host --privileged --cap-add=NET_ADMIN --name vip qapps/consul-template`

ENV:
-----------------

`CONSUL_ADDR` - consul IP-address

`CONSUL_PORT` - consul port (default: 8500)

