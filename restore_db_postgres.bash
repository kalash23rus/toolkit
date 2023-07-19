#!/bin/bash

# Set variables
POSTGRES_USER=""
POSTGRES_PASSWORD=""
POSTGRES_CONTAINER_NAME=""
# VOLUME_PATH="/path/to/your/docker/volume"
DUMPS_DIR=""

sleep 1

# Loop through all the dump files in the DUMPS_DIR and restore them
for dump_file in $DUMPS_DIR/*.sql; do
  # Get the database name from the dump file name
  db_name=$(basename "$dump_file" .sql)
  echo "Creating database $db_name..."
  # Create the database in the container
  # docker exec $POSTGRES_CONTAINER_NAME psql -U $POSTGRES_USER -c "CREATE DATABASE $db_name;"

  # Restore the database from the dump file
  cat $dump_file | docker exec -i $POSTGRES_CONTAINER_NAME psql -U $POSTGRES_USER -d $db_name
done
