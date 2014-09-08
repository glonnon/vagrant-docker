echo "deploy"

echo "make sure the DB and rabbitmq are up"
/docker-wait $RABBITMQ_PORT_5672_TCP_ADDR $RABBITMQ_PORT_5672_TCP_PORT
/docker-wait $MYSQL_PORT_3306_TCP_ADDR  $MYSQL_PORT_3306_TCP_PORT

echo "check the health of the internets"
/http-wait

echo "check for etcd to be up"
/http-wait http://$ETCD_PORT_4001_TCP_ADDR:$ETCD_PORT_4001_TCP_PORT/version
