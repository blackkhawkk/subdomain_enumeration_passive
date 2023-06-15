#!/bin/bash

domain=$1

curl -s "https://rapiddns.io/subdomain/$domain" | grep -Eo '>[^<]+\'"$domain"'<' | sed -E 's/[<>]//g' | sort -u
