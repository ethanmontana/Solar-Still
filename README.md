# ME 366J - Reverse Osmosis Joneses - Simulation

## Solar still subassembly simulation 

Finite element method transient conduction from concentrated solar radiation to water

2D simulation, implicit method solved with matrix inversion

Discrete time and space

Adapted From: _Fundamentals of Heat and Mass Transfer_. Incropera, Dewitt, Bergman, & Lavine
                PP. 302-317, 212-234

## Documentation:

### Structure

Combination of object oriented programming and scripting

Written in Matlab

### Implementation

Boiling:
* Keep track of stored energy and temperature of node
* Once node reaches vaporization temperature, increase in energy results in increase in stored energy but not temperature
* When stored energy reaches energy of vaporization temp + enthalpy of vaporization, considered "boiled"
* Once boiled, replace energy with lowest level of energy of neighbors

#### Objects

Material
* Properties: 
    * Thermal Conductivity    (k:W/mK)
    * Specific Heat Capacity  (c_p:J/kgK)
    * density                 (rho:kg/m^3)
    * thermal diffusivity     (alpha:m^2/s)
    * Vaporization Temp       (T_vap:C)
    * Enthalpy of Vapor.      (E_vap:J)

Node
* Properties: 
    * Temperature             (T:C)
    * Stored Energy           (E:J)
    * Position                (P:2x1 vect :m)
    * Material                (obj)
* Functions:
    * update(T_new,graph)
        Update node temperature and energy based on material properties
        Implementation of boiling process as above

Edge
* Properties: 
    * Nodes                   (nodes:2x1 vect Node)
    * Thermal Resistivity     (R_tot:K/W)

Graph
* Properties: 
    * Nodes                   (nodes:collection of all nodes)
    * Edges                   (edges:connections between all nodes)

