#!/bin/sh
if [ ! -f UUID ]; then
  UUID="15163bd5-ab89-4f92-8071-9716286ac395"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

