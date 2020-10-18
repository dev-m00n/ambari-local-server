FROM centos:centos7

RUN curl "http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.4.0/ambari.repo" -o /etc/yum.repos.d/ambari.repo && yum install -y "java-1.8.0-openjdk" "maven" "gcc-c++" "rpm-build" "openssh-server" "openssh-clients" "ambari-server" && yum clean all && ssh-keygen -A

ADD id_rsa id_rsa.pub /root/.ssh/
