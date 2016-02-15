FROM anapsix/alpine-java:jdk8

ARG HBASE_DOWNLOAD_URL

ADD ./hbase-site.xml /

RUN \
  apk add --update --no-cache curl && \
  curl -o hbase.tar.gz $HBASE_DOWNLOAD_URL && \
  tar -xzf hbase.tar.gz && \
  adduser -D -u 3434 hadoop &&\
  mkdir -p /var/log/hbase && \
  ln -sf $(ls -d */ | grep hbase) /hbase && \
  rm -f /hbase.tar.gz && \
  rm -rf /hbase/docs && \
  mv /hbase-site.xml /hbase/conf && \
  chown -R hadoop:hadoop $(ls -d */ | grep hbase) /hbase /var/log/hbase


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


