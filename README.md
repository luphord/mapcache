# mapcache

[<img src="https://img.shields.io/pypi/v/mapcache">](https://pypi.python.org/pypi/mapcache)
[<img src="https://img.shields.io/docker/cloud/build/luphord/mapcache">](https://hub.docker.com/r/luphord/mapcache)

Simple caching server for map tiles.

## Install

You can install `mapcache` with `pip` by executing

```bash
pip3 install mapcache
```

or you can simply download `mapache.py` and put it into any folder of your liking.


## Usage

You can start `mapcache` locally by executing

```bash
python3 mapcache.py -p 8080 -f /tmp/tilecache
```

or you can run `mapcache` with [docker](https://www.docker.com/) using

```bash
docker run --rm -it -p 8080:80 -v /tmp/tilecache:/opt/mapcache/cachefolder mapcache
```

In both cases, `mapcache` will be served on <http://localhost:8080> and tiles will be cached in `/tmp/tilecache`.

Full command line options are:

```bash
usage: mapcache.py [-h] [-f FOLDER] [-i INTERFACE] [-p PORT]

Simple caching server. Forwards calls to http://<server-address>/<external-
server>/... to http://<external-server>/... and caches the result locally.
Later requests to the same address will be served from cache.

optional arguments:
  -h, --help            show this help message and exit
  -f FOLDER, --folder FOLDER
                        folder for storing cache files, defaults to ./cache
  -i INTERFACE, --interface INTERFACE
                        network interface to listen on, defaults to localhost
  -p PORT, --port PORT  server port, defaults to 8000

```