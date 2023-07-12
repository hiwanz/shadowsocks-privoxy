# shadowsocks-privoxy

shadowsocks client for socks5 proxy(port 7070), privoxy for http proxy(port 8118), supports NAS like Synology.

## Image:

~~~
docker pull hiwanz/shadowsocks-privoxy
~~~

## Run:

~~~
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e METHOD=method -e PASSWORD=123456 hiwanz/shadowsocks-privoxy
~~~
