#!/bin/bash

sed -i "s/{{ host }}/${HOST}/g" /etc/imapproxy.conf
sed -i "s/{{ keyfile }}/${TLSKEYFILE}/g" /etc/imapproxy.conf
sed -i "s/{{ certfile }}/${TLSCERTFILE}/g" /etc/imapproxy.conf

syslogd
imapproxy -f /etc/imapproxy.conf
