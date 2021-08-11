# ejs
this is a tracking database used by my DevOps CI/CD pipeline

### Running locally

#### Scenario 1

You don’t have the repository locally. You clone the repository.

```
git clone https://github.com/ejbest/ejs-django-front-end.git
```

```
cd ejs-django-front-end
```

#### Scenario 2

You already have the repository locally. You update it.

```
cd /path/to/ejs-django-front-end
```

```
git pull
```

#### Build

Now that you have your repository locally.  It's time to build the images. Docker compose will build `db` and `web`.Their names will be prefixed with the parent folder’s name which is `ejs-django-front-end` where the `docker-compose.yml` file resides. If you run `$ docker images` you will notice the names `ejs-django-front-end_db` and `ejs-django-front-end_web`. Run the following command to build the images.

```
docker-compose build
```

#### Run

After images are finished building. To start the services which are the db and web, run the following command.

```
docker-compose up
```


### Access the database

Run this command to list all the containers that are currently running.

```
docker ps 
```

A table will be displayed. The table lists all the containers that are currently running.

Look for the container with name `ejs-django-front-end_db` and copy it's ID. The ID is found in the CONTAINER ID column.

Now run the following command to run the container in interactive mode.


```
docker exec -it cf696f511c50 /bin/bash
```

```
mysql --user=<username> -p
```

```
mysql> USE ejs;
```

```
mysql> SHOW tables;
```



### Run mysql database independently.

First you need to create a network 

```
docker network create ejs
```


To build mysql database image. Assuming you are in the root folder, `cd` into mysql folder.


```
cd mysql
```

```
chmod +x build_ejs_database.sh
```

```
./build_ejs_database.sh 
```

Create an .env file. In this file you will put `MYSQL_ROOT_PASSWORD, MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD`. For example

```
MYSQL_ROOT_PASSWORD=initial123
MYSQL_DATABASE=ejs
MYSQL_USER=sa
MYSQL_PASSWORD=initial123
```

Run.

```
chmod +x start_ejs_database.sh
```

```
./start_ejs_database.sh 
```

When running `$ ./start_ejs_database.sh ` you will be prompted to configure port mapping. You enter `<hostPort>:3306` mapping. For example `4000:3306`.

Connecting to the database with mysql client.

```
mysql --host 0.0.0.0 --port 4000 --user <username> -p
```

### Run ejs frontend independently.

Run the following commands to build the image.
Assuming you are in the root folder.

```chmod +x build_ejs_frontend.sh```

```./build_ejs_frontend.sh ```


Run.

```chmod +x start_ejs_frontend.sh```

```./start_ejs_frontend.sh```

When running `$ ./start_ejs_frontend.sh ` you will be prompted to configure port mapping. You enter `<hostPort>:8000` mapping. For example `8000:8000`.

Happy hacking 🚀
