# Consul-template / VIP
==============
Check value from Consul and add VIP to the loopback interface

Installation
--------------

1. Install [Docker](https://www.docker.com)

2. Download automated build from public Docker Hub Registry: `docker pull qapps/check_vip`
(alternatively, you can build an image from Dockerfile: `docker build -t="qapps/check_vip" github.com/qualiapps/consul-template`)

Running the daemon
-----------------

`docker run -it --net=host --privileged --cap-add=NET_ADMIN --entrypoint bash --name ct consul-template`

ENV:
-----------------

`CONSUL_ADDR` - consul IP-address

`CONSUL_PORT` - consul port (defaults to 8500)

