# Amalgam Dev Tools
Amalgam Dev Tools is a project that was maked with the idea to facilitied the necesary tools to develop in  [Amalgam](https://github.com/ogueta93/amalgam) and [Amalgam Front](https://github.com/ogueta93/amalgam-front).

- [Releases](https://github.com/ogueta93/amalgam-dev-tools/releases)


## Docker
To establish all the develop environment a docker has been prepared. You need to install Docker and Docker Compose.

- [https://docs.docker.com/install/](https://docs.docker.com/install/)
- [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

### Configuration
You need to configure some paramatres in the **.env** file located in **docker/**

#### Ports
The ports must be available in your local machine. If they are not availaible, change them here for a proper functioning.

```
# PORTS
WEB_PORT=8008
WEB_SOCKET_PORT=8080
APP_FRONT_PORT=4545
MYSQL_PORT=3306
MEMCACHED_PORT=11211
```

#### Application Paths
First of all, you need to clone [Amalgam](https://github.com/ogueta93/amalgam) and [Amalgam Front](https://github.com/ogueta93/amalgam-front). When the proyects are in your local machine you need to replace the text beteewn brackend and the brackedn includes with absolutes routes poingting the root folders.

```
# APPLICATION
APP_PATH={path to amalgam folder}
APP_FRONT_PATH={path to amalgam-front folder}
```

#### MariaDB
By default, you don't need to change this configuration values.
- **MARIADB_STORAGE_FOLDER**:  You can indicate a relative or absolute route that poin the folder that database structure will be saved in your local machine.
- **MARIADB_EXTRA_ENTRYPOINT**:  You can indicate a relative or absolute route that point a folder that contains sql files. This sql files are going to be execute the first time that docker-compose up is execute. 
***By the fault, the folder contains the sql files needed to feed the amalgam database**
```
# MARIADB
MARIADB_STORAGE_FOLDER=./mariadb/volume
MARIADB_EXTRA_ENTRYPOINT=./mariadb/database
```
### Building Containers
The proyect have 4 containers and they have to be build.
- **amalgam_backend**:  This container have **php** mainly. Its function is to manage the websocket service of [Amalgam](https://github.com/ogueta93/amalgam).
- **amalgam_mariadb**:  This container have only **mariadb**. Its function is to manage the database processes.
-  **amalgam_memcached**:  This container have only **memcached**. Its function is to manage the cache services.
-  **amalgam_front**:  This container have **node** mainly. Its function is to manage the front application called [Amalgam Front](https://github.com/ogueta93/amalgam-front).

#### Start Command
**You need to be in the same directory that docker-compose.yml file.**

```
# BACKGROUND MODE
docker-compose up -d 
# LOGGING MODE
docker-compose up
```
#### Stop Command
**You need to be in the same directory that docker-compose.yml file.**

```
docker-compose down
```

### Working with Containers
At all times, you can access in the container by bash mode.

```
docker exec -it {container_name} bash
```

#### Amalgam Backend Utils
Amagam_backend container have some scripts to ease your development experience.
```
# Starts the websocket server
docker exec -it amalgam_backend ws-start

# Restarts the websocket server
docker exec -it amalgam_backend ws-restart

# Stops the websocket server
docker exec -it amalgam_backend ws-stop
```

#### Amalgam Front Utils
Amagam_front container have some scripts to ease your development experience.
```
# Starts the application
docker exec -it amalgam_front start

# Restarts the application
docker exec -it amalgam_front restart

# Stops the application
docker exec -it amalgam_front stop
```
