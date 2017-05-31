# Project ZILE Candies

The ZILE Candies project is a demo project. ZILE is the name of a virtual candy maker and
also the name of the toplevel `LocationGroup` in the project. ZILE receives palettes of
ingredients, like sugar, flavor etc., to make the best candies on the planet.

# System Design

The project comprises a flatgood (carton) stock with a small automatic conveyor system in front to serve
the picking (commissioning) stations with cartons. Feeding the stock happens manually by putting
cartons onto an infeed position (I-Point). Beside the automatic flatgood stock, a palette stock
and a kanban stock exists as well. Transportation between the three types of stock happens with
manual transports.

![Layout][1]

For further explanation about the numbers shown in the sketch above please have a look at the
(LocationGroup design)[docs/referencedata.md]

# System Architecture

ZILE project is a composition of microservices. The project configuration is kept in
this GitHub repository. All connections to control units of the material flow system are handled
by OSIP TCP/IP drivers. Each aisle has it's own Raspberry Pi controller that talks to the server
and drives physical infeed and outfeed operations. The palette conveyor has a dedicated material
flow controller as well as the flat good conveyor has. Incoming OSIP telegrams are transformed by
the corresponding driver component and send to the TMS Routing service that decides which workflow
is executed to handle the telegram message. Therefore it uses the Location service and the Transportation
service to gather information about the active `TransportOrder` and `Route`.

![SA][2]

The Activiti Explorer belongs to the group of infrastructure services and is used to create new
workflows or modify existing ones at runtime. Also the Service Registry and Configuration service
are infrastructure components used to connect all microservices and to apply configuration to them.

For distributed logging ZipKin server and ELK are used.

# Installation

All microservices may started as Spring Boot processes, from command line via `java -jar ...` or as
single Docker containers or as a Docker compose project.

## Docker compose

All services are pre-built and available as Docker container from Docker Hub:

https://hub.docker.com/u/openwms/
https://hub.docker.com/u/interface21/

First clone the GitHub repository and run docker compose to fetch all containers.

```
docker-compose up -d
```

This command starts up all containers in the background and returns to the shell. Now we can monitor the logs
in common or for each single container:

```
docker-compose logs -f
docker-compose logs -f routing-service
```

# Development

```
docker run -d --name srv -p 8761:8761 <IMAGE ID>
docker run -d --name cfg -p 8099:8099 <IMAGE ID>
```

[1]: res/layout.png
[2]: res/systemoverview.png
