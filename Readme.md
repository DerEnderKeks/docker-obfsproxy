# docker-obfsproxy

This is a docker container for obfsproxy

### Usage

#### Plain Docker

Install [docker](https://docs.docker.com/engine/installation/) first.

Execute `docker run --rm -p 8080:8080 derenderkeks/obfsproxy obfsproxy <Arguments>` to start obfsproxy with given arguments in foreground.

To start the container detached execute `docker run --name obfsproxy -p 8080:8080 -d derenderkeks/obfsproxy obfsproxy <Arguments>` instead.

Start and stop it using `docker start obfsproxy` and `docker stop obfsproxy`.

#### docker-compose

If you prefer to use `docker-compose` you can use the included `gen_config.sh` script. Don't forget to install [`docker`](https://docs.docker.com/engine/installation/) and [`docker-compose`](https://docs.docker.com/compose/install/) first.

Execute `./gen_config.sh` to get the usage of `obfsproxy`. Then, execute `./gen_config.sh <obfsproxy arguments>` to generate the `docker-compose.yml` file with the given arguments.

Now start the container with `docker-compose up` or `docker-compose up -d` for detached mode. Stop it using `docker-compose stop`