# Keepalived

FROM fedora:21

MAINTAINER Yury Kavaliou <Yury_Kavaliou@epam.com>

RUN yum install -y tar

ADD https://github.com/hashicorp/consul-template/releases/download/v0.10.0/consul-template_0.10.0_linux_amd64.tar.gz /tmp/consul-template.tar.gz
RUN tar -xf /tmp/consul-template.tar.gz \
    && mv consul-template_0.10.0_linux_amd64/consul-template /bin/consul-template \
    && chmod a+x /bin/consul-template

COPY ./files/init_template.sh /usr/local/sbin/init_template.sh
COPY ./files/update_vip.sh /usr/local/sbin/update_vip.sh
COPY ./files/update_vip.ctmpl /usr/local/sbin/update_vip.ctmpl

RUN chmod u+x /usr/local/sbin/update_vip.sh \
    /usr/local/sbin/init_template.sh

ENTRYPOINT [ "/usr/local/sbin/init_template.sh" ]