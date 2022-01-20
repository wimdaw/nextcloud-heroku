#!/bin/bash

#a2dismod mpm_prefork

#service apache2 restart

echo "Listen ${PORT:443}" > /etc/apache2/ports.conf

/entrypoint.sh "$@"
