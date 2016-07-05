#!/bin/bash

sleep 3
#
CASS_CONFIG=/opt/apache-cassandra-1.2.14/conf/cassandra.yaml
sed -i -e "s/cass1/$CASS_SEED/"      $CASS_CONFIG
sed -i -e "s/^listen_address.*/listen_address: $CASS_NAME/"      $CASS_CONFIG
#
/opt/apache-cassandra/bin/cassandra
sleep 1
tail -f /var/log/cassandra/system.log
#
