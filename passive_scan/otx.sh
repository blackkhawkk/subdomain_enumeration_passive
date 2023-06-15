#!/bin/bash

domain=$1

curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$domain/passive_dns" | jq -r '.passive_dns[].hostname' | sort -u
