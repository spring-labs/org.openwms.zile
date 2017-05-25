# Project ZILE Sweets

The ZILE Sweets project is a demo project only. ZILE is the name of a virtual customer and 
as well the name of the toplevel `LocationGroup` in the project. The project comprises a
flatgood (carton) stock (9) with a small automatic conveyor system in front (8) to serve
the picking (commissioning) stations (23). Feeding the stock happens manually by putting
cartons onto an infeed position (7). Beside the automatic flatgood stock, a palett stock
and a kanban stock (31) are available, too. All transportation between the three stocks
happens by manual transports (30).

![Layout][1]

## LocationGroups


ID | Name
---- | ----
 4 | ZILE
 5 | FLATGOOD_AREA
 6 | FGAUTOMATIC
 7 | FGRECEIVING
 8 | FGCONV
 9 | FGSTOCK
10 | FGAISLE1
11 | FGAISLE1LIFT
12 | FGAISLE1LEFT
13 | FGAISLE1RIGHT
14 | FGAISLE2
15 | FGAISLE2LIFT
16 | FGAISLE2LEFT
17 | FGAISLE2RIGHT
18 | FGSHIPPING
19 | FGSHIPPING1
20 | FGWORKPLACE1
21 | FGWORKPLACE2
22 | FGWORKPLACE3
23 | FGSHIPPING2
24 | FGWORKPLACE4
25 | FGWORKPLACE5
26 | FGWORKPLACE6
27 | FGWORKPLACE7
28 | FGWORKPLACE8
29 | FGWORKPLACE9
30 | FGMANUAL
31 | FGCANBAN
32 | IPOINT
33 | IPOINT1
34 | IPOINT2
35 | PALLET_AREA
36 | PPICKING
37 | PHIGHBAY
38 | PAISLE1
39 | PAISLE1LIFT
40 | PAISLE1LEFT
41 | PAISLE1RIGHT
42 | PAISLE2
43 | PAISLE2LIFT
44 | PAISLE2LEFT
45 | PAISLE2RIGHT

## Locations

![Layout][2]

[1]: res/layout.png
[2]: res/location-layout-FG.png

## Development

```
docker-compose up -d --build
```
