# ejs

this is a tracking database used by my DevOps CI/CD pipeline

## Running locally

Clone the repository.

`$ git clone https://github.com/patricechaula/ejs-django-frontend.git`


If you  already have the repository locally

`$ cd /path/to/ejs-django-frontend`


`$ git pull `


Now that you have your repository locally. It's time to build the images.

`$ docker-compose build`

After images are finished building. To start the services which are the `db` and `web`, run the following command.

`$ docker-compose up` 


