# asger-cache-warm
Cache warm up tool

*Usage:*
```
docker run --rm -it quay.io/nemke82/asger-cache-warm bash -c "/root/asger.sh https://website.com 5"
```

You can run entire process as daemon:
```
docker run -d --rm -it quay.io/nemke82/asger-cache-warm bash -c "/root/asger.sh https://website.com 5"
```

2nd way. Clone repo, build your own image and run it:
1) git clone https://github.com/nemke82/asger-cache-warm.git
2) docker build -t asger-cache-warm .
3) docker run --rm -it asger-cache-warm:latest bash -c "/root/asger.sh https://website.com 5"

Note:
- Substitute website.com with real domain name
- 5 is default concurrent curl request to site pages. You can raise or lower it

Blog post:
https://nemanja.io/warm-up-pages-using-trafilatura-web-scraping-tool-2/
