#!/bin/sh

SERVERS_JSON_PATH="/pgadmin4/servers.json"
PGPASSFILE="$HOME/.pgpass"

# Create the .pgpass file for password
echo "Creating pgpass file at $PGPASSFILE"
echo "${POSTGRES_HOST}:*:*:${POSTGRES_USER}:${POSTGRES_PASSWORD}" > "$PGPASSFILE"
chmod 600 $PGPASSFILE
cat $PGPASSFILE
echo "pgpass file created successfully."

echo "Creating servers.json file in $SERVERS_JSON_PATH"
cat << EOF > $SERVERS_JSON_PATH
{
    "Servers": {
        "1": {
            "Name": "My Postgres",
            "Group": "Servers",
            "Host": "${POSTGRES_HOST}",
            "Port": ${POSTGRES_PORT},
            "MaintenanceDB": "${POSTGRES_DB}",
            "Username": "${POSTGRES_USER}",
            "PassFile": "$PGPASSFILE",
            "SSLMode": "prefer"
        }
    }
}
EOF

echo "$SERVERS_JSON_PATH file created successfully."
cat $SERVERS_JSON_PATH

echo "Starting pgAdmin4..."
exec /entrypoint.sh
echo "pgAdmin4 started."

