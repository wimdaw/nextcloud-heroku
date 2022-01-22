FROM nextcloud:latest
ADD aria2.conf /root/aria2/aria2.conf
ADD trackers-list-aria2.sh /root/aria2/trackers-list-aria2.sh
RUN wget -qO /root/aria2/dht.dat https://github.com/P3TERX/aria2.conf/raw/master/dht.dat && \
    wget -qO /root/aria2/dht6.dat https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat
RUN mkdir -p /root/Download
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
