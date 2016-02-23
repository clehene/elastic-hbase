#!/bin/bash
set -eo pipefail

if [ -z "$ZK_QUORUM" ]; then
  echo >&2 'You need to specify ZK_QUORUM environment var.'
  exit 1
fi

if [ -z "$HDFS_NAMENODE_HOST" ]; then
  echo >&2 'You need to specify HDFS_NAMENODE_HOST environment var.'
  exit 1
fi

if [ -z "$HDFS_NAMESPACE_ID" ]; then
  echo >&2 'You need to specify HDFS_NAMESPACE_ID environment var.'
  exit 1
fi

if [ -z "$HBASE_NAMESPACE_ID" ]; then
  echo >&2 'You need to specify HBASE_NAMESPACE_ID environment var.'
  exit 1
fi

exec "$@"

