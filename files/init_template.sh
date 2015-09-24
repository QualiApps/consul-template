#!/bin/sh

consul-template -consul ${CONSUL_ADDR:-consul}:${CONSUL_PORT:-8500} \
    -template /usr/local/bin/update_vip.ctmpl:/usr/local/bin/update_vip.sh -once

/usr/local/bin/update_vip.sh

consul-template -consul ${CONSUL_ADDR:-consul}:${CONSUL_PORT:-8500} \
    -template /usr/local/bin/update_vip.ctmpl:/usr/local/bin/update_vip.sh:/usr/local/bin/update_vip.sh
