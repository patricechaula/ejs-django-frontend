
read -p "Configure port mapping: " PORT_MAPPING
docker run -dp $PORT_MAPPING --network ejs --name ejs_database --env-file .env ejs_database