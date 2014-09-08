vagrant-docker
==============

My playground for vagrant docker stuff

The Vagrantfile brings up the following containers...

* etcd 
* rabbitmq
* mysql
* webapp

There are tcp-wait and http-wait scripts to wait for sevices to be up before continuing.

webapp:

* deploy.sh : does any deploy work, waiting for services, etc...
* run.sh : runs the webapp
