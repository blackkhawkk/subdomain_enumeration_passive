#!/bin/bash

domain=$1

curl --silent --insecure "https://api.securitytrails.com/v1/domain/$1/subdomains?children_only=false&include_inactive=false" --header 'APIKEY: LTmzSKGTo3jDMmzK3WjeQpdS53qVHwgD' | jq -r '.subdomains[]' | awk '{sub(/^\./, ""); print $0 "." "'$1'"}' | sort -u
