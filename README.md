# container-tomcat8

This repository is create an container to run web server.

## The port
the container are export the ports are:

* 8080: default tomcat port
* 8009: default tomcat Debug port

More important you have remember that you can to access the URL this ports.

## How to build the container.

You should run the build an container using the command like:
```
docker build -t tomcat8 .
```

## How to run the container.
You should run a container using the command like:
```
docker run -d -p 8080:8080 -p 8009:8009 --name=tomcat tomcat8
```

### How to access tomcat server
You access an URL as "http:localhost:8080" or "http:localhost:8080/manager/html"  and showing the site tomcat server.

### Reference
* [Git hub](https://github.com/cmoro-deusto/docker-tomcat8)
* [docker a beginner guide](https://www.pluralsight.com/guides/devops/docker-a-beginner-guide)
* [apache tomcat meets docker](https://jaxenter.de/apache-tomcat-meets-docker-webanwendungen-als-docker-images-herstellen-23213)
