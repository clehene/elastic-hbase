
FROM centos:centos7

RUN \
  curl -LO 'http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.rpm' -H 'Cookie: oraclelicense=accept-securebackup-cookie' && \
  rpm -i jdk-7u71-linux-x64.rpm && \
  rm jdk-7u71-linux-x64.rpm

RUN yum -y install tar

RUN \
  curl -O http://apache.mirrors.lucidnetworks.net/hbase/1.0.1.1/hbase-1.0.1.1-bin.tar.gz && \
  tar -xzf  hbase-1.0.1.1-bin.tar.gz

RUN \
  adduser --uid 3434 hadoop &&\
  mkdir -p /var/log/hbase && \
  ln -s /hbase-1.0.0 /hbase

ADD ./hbase-site.xml /hbase/conf/

RUN chown -R hadoop:hadoop /hbase-1.0.0 /hbase /var/log/hbase


ENV JAVA_HOME=/usr/java/jdk1.7.0_71/
# hbase.master.info.port
ENV PORT0=16010
# hbase.regionserver.port
ENV PORT1=16020
# hbase.regionserver.info.port
ENV PORT2=16030
# hbase.status.multicast.address.port
ENV PORT3=16100
# hbase.rest.port
ENV PORT4=8080

#RUN curl -vvv -o /hbase/conf/hdfs-site.xml \
#  http://vm1097.dev.ut1.omniture.com:50070/conf
