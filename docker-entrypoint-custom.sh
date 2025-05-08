#!/bin/bash

# Parchea el Server.js para habilitar trust proxy si no lo tiene
if ! grep -q "trust proxy" /usr/local/lib/node_modules/n8n/dist/Server.js; then
  sed -i "s/app = express()/app = express(); app.set('trust proxy', true)/" /usr/local/lib/node_modules/n8n/dist/Server.js
fi

# Lanza el n8n original
/docker-entrypoint.sh "$@"
