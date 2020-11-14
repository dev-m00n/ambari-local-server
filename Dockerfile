FROM devmoonduck/ambari-local-base:2.7.4.0

RUN yum install -y ambari-server && yum clean all && rm -rf /var/cache/yum

# entrypoint script will execute run-ambari-server.sh
COPY run-ambari-server.sh /entry/usr/

COPY ambari-conf/ambari.properties ambari-conf/password.dat /etc/ambari-server/conf/

