elastic-hbase
=============

As seen at HBaseCon 2015 - [[slides](http://www.slideshare.net/clehene/elastic-hbase-on-mesos) | [video](https://vimeo.com/128208572)]

Run HBase as a Marathon workload on top of Mesos

HBase runs in a Docker container

The Marathon application manifests is used to push the environment configuration 

STEP 1: fill-in the `marathon/config.json` with your configuration data

STEP 2: upload the application manifests:

    mustache config.json hbase-regionerver.json > payload.json && \
      curl -X POST -H "Content-Type: application/json" \
      http://MARATHON_HOST/v2/apps \
      -d@payload.json
 
    mustache config.json hbase-master.json > payload.json && \
      curl -X POST -H "Content-Type: application/json" \
      http://MARATHON_HOST/v2/apps \
      -d@payload.json  

