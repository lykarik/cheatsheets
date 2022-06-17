#On Redhat/Fedora/CentOS Systems:

#To install the service:
ln -s /opt/amq/bin/jboss-amq-service /etc/init.d/
chkconfig jboss-amq-service --add

#To start the service when the machine is rebooted:
chkconfig jboss-amq-service on

#To disable starting the service when the machine is rebooted:
chkconfig jboss-amq-service off

#To start the service:
service jboss-amq-service start

#To stop the service:
service jboss-amq-service stop
    
#To uninstall the service :
chkconfig jboss-amq-service --del
rm /etc/init.d/jboss-amq-service
