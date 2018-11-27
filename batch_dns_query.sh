#!/bin/bash

# Description: Batch DNS Checker
# Author: Steven Marchant
# Notes: Add your own list of DNS server IPs next to 'dns_servers'
#        add the fqdn of the server you want to query next to 'query'.


dns_servers='1.1.1.1 8.8.8.8'
query='google.com'

for i in $dns_servers
do
   nslookup $query $i
done
