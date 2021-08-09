# ejs
this is a tracking database used by my DevOps CI/CD pipeline

### Running locally

##### Scenario 1

You don’t have the repository locally. You clone the repository.

`$ git clone https://github.com/ejbest/ejs-django-front-end.git`

`$ cd ejs-django-front-end`

##### Scenario 2

You already have the repository locally. You update it.

`$ cd /path/to/ejs-django-front-end`

`$ git pull`

##### Build

Now that you have your repository locally.  It's time to build the images. Docker compose will build `db` and `web`.Their names will be prefixed with the parent folder’s name which is `ejs-django-frontend` where the `docker-compose.yml` file resides. If you run `$ docker images` you will notice the names `ejs-django-front-end_db` and `ejs-django-front-end_web`. Run the following command to build the images.

`$ docker-compose build`

##### Run

After images are finished building. To start the services which are the db and web, run the following command.

`$ docker-compose up`



