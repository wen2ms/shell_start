#!/bin/bash

# Command Line for URLs

curl example.com

# -X: Specific method
# cur -X -POST example.com -d '{"title": "curl_command"}'
curl -XPOST example.com -d '{"title": "curl_command"}'

curl -XPUT example.com -d '{"title": "curl_command"}'
curl -XDELETE example.com -d '{"title": "curl_command"}'

# -H: Request Header
curl -XDELETE example.com -H 'Content-Type: application/json' -d '{"title": "curl_command"}'

# -I: Fetch only the response headers
curl -I example.com

# -O: Output to current directory
curl -O example.com/index.html

# -o: output to specific file
curl -o ~/Downloads/index.html example.com/index.html

# -L: Follow redirections
curl -L example.com

# -v: verbose
curl -v example.com