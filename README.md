# Project ZILE Sweets

The ZILE Sweets project is a demo project. ZILE is the name of a virtual bonbon manufacturer and
also the name of the toplevel `LocationGroup` in the project. The project comprises a
flatgood (carton) stock with a small automatic conveyor system in front to serve
the picking (commissioning) stations with cartons. Feeding the stock happens manually by putting
cartons onto an infeed position (I-Point). Beside the automatic flatgood stock, a palett stock
and a kanban stock exists as well. Transportation between the three types of stock happens with
manual transports.

# System Layout

![Layout][1]

# System Architecture

![SA][2]


# Installation

# Development

```
docker-compose up -d --build
docker run -d --name srv -p 8761:8761 <IMAGE ID>
docker run -d --name cfg -p 8099:8099 <IMAGE ID>
```

[1]: res/layout.png
[2]: res/systemoverview.png
