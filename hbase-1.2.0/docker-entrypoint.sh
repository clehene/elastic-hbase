#!/bin/bash
set -eo pipefail

if [ -z "$ZK_QUORUM" ]; then
  echo >&2 'You need to specify ZK_QUORUM environment var.'
  exit 1
fi

if [ -z "$HDFS_NAMESPACE_ID" ]; then
  echo >&2 'You need to specify HDFS_NAMESPACE_ID environment var.'
  exit 1
fi

sed -ie "s/ZK_QUORUM/$ZK_QUORUM/g"  /hbase/conf/hbase-site.xml
sed -ie "s/HDFS_NAMESPACE_ID/$HDFS_NAMESPACE_ID/g"  /hbase/conf/hbase-site.xml

exec "$@"

