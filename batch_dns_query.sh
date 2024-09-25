#!/bin/bash

# Description: Ridiculously simple Batch DNS Checker. Just shows how lazy I am.
# Author: Steven Marchant
# Notes: Expects there to be a text file named domains.txt consisting of the domains
# you want to query. The servers variable is to change the DNS servers to any custom ones you may want to test.

servers='1.1.1.1 8.8.8.8'

while read p; do
  nslookup "$p" "$servers"
done <domains.txt


#dns_servers='1.1.1.1 8.8.8.8'
#query='google.com'

#for i in $dns_servers
#do
#   nslookup $query $i
#done
