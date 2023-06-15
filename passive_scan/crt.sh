curl -s "https://crt.sh?q=%.securzy.io&output=json" | jq ".[].common_name,.[].name_value" | cut -d'"' -f2 | sed 's/\\n/\n/g' | sed 's/\*.//g'| sed -r 's/([A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4})//g' |sort -u 