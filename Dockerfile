FROM nextcloud:latest
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
