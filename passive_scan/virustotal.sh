curl -sk --insecure "https://www.virustotal.com/vtapi/v2/domain/report?apikey=d20bd23d3f631ffa0d9593783e7d361cca02ddce972f4b93b8c7f38468d5fa23&domain=$1" | jq -r '.subdomains[]?' | sort -u
