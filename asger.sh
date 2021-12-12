#!/usr/bin/env bash
set -x
trafilatura --sitemap "$1" --list > mylinks.txt; cat mylinks.txt | while read f; do echo -e "curl -s -o /dev/null $f" >> config; done; rm -f config; echo 'curl -s -o /dev/null $1' > config1; chmod a+rwx config1; cat mylinks.txt | parallel -I% -j $2 ./config1 %
