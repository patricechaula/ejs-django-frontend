
read -p "Configure port mapping: " PORT_MAPPING
docker run -dp $PORT_MAPPING --env-file .env ejs_database