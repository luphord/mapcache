FROM python:3.7.1-alpine

EXPOSE 80
VOLUME /opt/mapcache/cachefolder
WORKDIR /opt/mapcache

COPY mapcache.py ./

CMD [ "python3", "mapcache.py", \
               "--interface", "0.0.0.0", \
               "--port", "80", \
               "--folder", "./cachefolder" ]