#!/bin/sh

consul-template -consul ${CONSUL_ADDR:-consul}:${CONSUL_PORT:-8500} \
    -template /usr/local/sbin/update_vip.ctmpl:/usr/local/sbin/update_vip.sh -once

consul-template -consul ${CONSUL_ADDR:-consul}:${CONSUL_PORT:-8500} \
    -template /usr/local/sbin/update_vip.ctmpl:/usr/local/sbin/update_vip.sh:/usr/local/sbin/update_vip.sh
