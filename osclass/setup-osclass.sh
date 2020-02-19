#/bin/sh

set -e
cd "$(dirname "$0")"

../base/bullseye/build
../apache/php7/build

git clone "https://github.com/osclass/Osclass"
chmod 0777 Osclass/oc-content/uploads/
chmod 0777 Osclass/oc-content/downloads/
chmod 0777 Osclass/oc-content/languages/
chmod 0777 Osclass/

## Don't connect to Market API. It's down and we are not a real shop anyway.
sed -i -e 's~https://market.osclass.org/~http://localhost/~g' Osclass/oc-includes/osclass/installer/basic_data.sql

echo "Host:             db"
echo "Database name:    osclass"
echo "User Name:        osclass"
echo "Password:         osclass"
echo "Table prefix:     oc_"

echo "Run: docker-compose up"
echo "Browse to: http://localhost:8333/ or http://172.17.0.?/"
