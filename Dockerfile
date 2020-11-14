FROM devmoonduck/ambari-local-base:2.7.4.0

LABEL maintainer="devlog.moonduck@gmail.com"

RUN yum install -y ambari-server && yum clean all && rm -rf /var/cache/yum

# entrypoint script will execute run-ambari-server.sh
COPY run-ambari-server.sh /entry/usr/

COPY ambari-conf/ambari.properties ambari-conf/password.dat /etc/ambari-server/conf/

COPY id_rsa id_rsa.pub /root/.ssh/

RUN chmod 644 /root/.ssh/id_rsa.pub && chmod 600 /root/.ssh/id_rsa
