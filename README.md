elastic-hbase
=============

[![Join the chat at https://gitter.im/clehene/elastic-hbase](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/clehene/elastic-hbase?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

As seen at HBaseCon 2015 - [[slides](http://www.slideshare.net/clehene/elastic-hbase-on-mesos) | [video](https://vimeo.com/128208572)]

Run HBase as a Marathon workload on top of Mesos

HBase runs in a Docker container

The Marathon application manifests is used to push the environment configuration 

    curl -X POST -H "Content-Type: application/json" \
    http://MARATHON_HOST/v2/apps\
    -d@marathon/hbase-regionserver.json


    curl -X POST -H "Content-Type: application/json" \
    http://MARATHON_HOST/v2/apps\
    -d@marathon/hbase-master.json

