# RSL-Assignment2
 
 Report @
https://www.overleaf.com/project/6188eaf879f75699cd977349



### Tram Nets

Idea: A directed graph with:

- vertices with two values (capacity, minimum waiting time). 
- Edges also have two values (capacity and minimum driving time)



##### Stop:

- Name
- Capacity = Maximum number of trams that are allowed to be at the stop at the same time
- Minimum waiting time = is the minimum time a tram must wait at the station, from its arrival until its departure.

##### Connection:

A single track connecting two stops. At most one track connecting two stops.

- Capacity = Maximum number of trams that are allowed be on the single track at the same time. (If more than 1 train, we have to make sure that all the trains in the specific connection drive the same way)
- Minimum driving time = The time it must at least take for a tram to drive between the two stops.



### Time Tables

- A tram is identified by a unique name.
- Time table associates name of tram with the plan of that tram.

##### Plan:

- States the names of those stops in the net where the tram will stop.
    - For each stop it has the arrival time and the departure time
    - A tram must stop at all stops it passes on its route (Eg. if we want to go from A --> C, we can't just skip B)
- Time should be stated as integers.

Idea:

States (eg. traffic lights example). Look at the time table.

- If it's between arrival time and departure time, we know it's still at a stop
- If it's greater than departure time and less than arrival time for the next stop, we know it's in transition.




