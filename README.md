# shadowsocks-privoxy

shadowsocks client for socks5 proxy, privoxy for http proxy, supports NAS like Synology.

## Image:

~~~
docker pull hiwanz/shadowsocks-privoxy
~~~

## Run:

~~~
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 hiwanz/shadowsocks-privoxy
~~~
