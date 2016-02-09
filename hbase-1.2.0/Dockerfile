FROM andreifecioru/alpine-java:jdk8

ADD ./hbase-1.2.0-hadoop2-adobe-SNAPSHOT-bin.tar.gz .
RUN rm -f hbase-1.2.0-hadoop2-adobe-SNAPSHOT-bin.tar.gz

RUN \
  adduser -D -u 3434 hadoop &&\
  mkdir -p /var/log/hbase && \
  ln -s /hbase-1.2.0-hadoop2-adobe-SNAPSHOT /hbase

ADD ./hbase-site.xml /hbase/conf/

RUN chown -R hadoop:hadoop /hbase-1.2.0-hadoop2-adobe-SNAPSHOT /hbase /var/log/hbase


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

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

