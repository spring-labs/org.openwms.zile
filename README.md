# Project ZILE Candies

The ZILE Candies project is a demo project. ZILE is the name of a virtual candy maker and
also the name of the toplevel `LocationGroup` in the project. ZILE receives palettes of
ingredients, like sugar, flavor etc., to make the best candies on the planet.

# System Design

The project comprises a flatgood (carton) stock with an automatic conveyor system in front to serve
the picking (commissioning) stations with cartons shown of the left-hand side of the sketch. Feeding
the stock happens manually by putting
cartons onto an infeed position (I-Point #7). Beside the automatic flatgood stock, a palette stock
and a kanban stock exists as well. Transportation between the three types of stock happens with
manual transports.

![Layout][1]

The palette stock on the right comprises 2 aisles. Palettes can be pushed into the system at any of
the commissioning points.
For further explanation about the numbers shown in the sketch above have a look at the
[LocationGroup design](docs/referencedata.md)

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

A typical ELK dashboard of a live system looks like this.

Chart | Description
---- | ----
![TT][3] | Shows the distribution of incoming OSIP telegrams. This might be helpful in order to find error messages signaled by the underlying controller unit or to spot frequent changes of an `LocationGroup` status, for example when the controller of an aisle robot reports blocked target `Locations`.
![Traffic][4] | Shows the current traffic on the TMS produced by the different areas like Flatgood, Palettes and aisle robots. Useful to spot performance peaks.

Beside this basic information, OpenWMS.org provided TSL: Technical Service Logging, to log the consumption of business flows and requests to integration components, like ERP, Webservices or Databases.

# Installation

All microservices can be started as Spring Boot processes, from the shell via `java -jar ...` or as
single Docker containers or as a Docker compose project.

## Docker compose

All services are pre-built and available as Docker container from Docker Hub:

https://hub.docker.com/u/openwms
https://hub.docker.com/u/interface21

First clone the GitHub repository and run docker compose to fetch and run all containers.

```
git clone git@github.com:spring-labs/org.openwms.zile.git zile
cd zile
docker-compose up -d
```

The command above starts up all containers in the background and returns to the shell. Now we can monitor the logs
for all or for a single container:

```
docker-compose logs -f
docker-compose logs -f routing-service
```

Please notice: Starting all containers with compose requires a huge memory and cpu consumption. If services fail to start and return with an exit code 137 they cannot allocate enough memory. Check the container state:

```
docker-compose ps
```

Starting single containers and expose ports:

```
docker run -d --name srv -p 8761:8761 <IMAGE ID>
docker run -d --name cfg -p 8099:8099 <IMAGE ID>
```

# Operations

If all containers are up and running the Eureka dashboard lists all available service.

![Eureka][5]

Now the system is ready to process incoming OSIP telegrams. In real-life projects the connected Raspberry Pis send request and status telegrams to the server. We simulate an Pi and connect to one of the tcpip drivers:

```
telnet localhost 30000
```

As soon as the connection is established we send a first status telegram, an OSIP SYNQ:

```
###00160RAS10MFC__00001SYNQ20171123225959***********************************************************************************************************************
```

The server should respond immediately:
```
###00160MFC__RAS1000002SYNC20170601101504***********************************************************************************************************************
```

Basically the SYNQ telegram is used as heartbeat and time synchronization between Raspberry and MFC (Material Flow Controller).

Like the SYNQ we can trigger a workflow with a REQ_ telegram or send a status update for a `LocationGroup` with an SYSU.



[1]: res/layout.png
[2]: res/systemoverview.png
[3]: res/tt.png
[4]: res/traffic.png
[5]: res/eureka.png
