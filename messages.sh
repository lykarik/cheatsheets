#Problem in messages logfile
#After zip and deleting messages - new messages file don't create

cd /var/lib/rsyslog/imjournal.state && \
cp imjournal.state imjournal.state_1 && \
rm -f /var/lib/rsyslog/imjournal.state && \
service rsyslog restart
