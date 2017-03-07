FROM milcom/centos7-systemd
MAINTAINER "Paolo Cadiz" <pscadiz@gmail.com>
ENV container docker
RUN yum -y update && yum -y install policycoreutils-python selinux-policy-targeted initscripts
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
