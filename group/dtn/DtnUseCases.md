---
title: DTN Use Cases
description: 
published: true
date: 2022-12-08T22:51:41.868Z
tags: 
editor: markdown
dateCreated: 2022-12-08T22:51:41.868Z
---

# DTN Use Cases

### Space Systems Communications

* International Space Station (ISS) Tracking and Data Relay Satellite (TDRS) availability, bandwidth and latency
* Deep space communications (One-­Way Light Time (OWLT) from Earth to Mars ~4min minimum)
* Space system support for isolated ground systems (data exchanges only possible during satellite over-­flights)
* GEO satellite communications for long-delay; frequent disruptions (replaces traditional Peformance Enhancing Proxies (PEPs))
* LEO satellite communications with scheduled link intermittency which can take advantage of both DTN scheduled contacts and resilience to disruption. 

 Need:

* BP Compressed format for resource-­constrained devices
* BP End-to-end integrity assurance
* Streamlined Security
* Security Key Management 

### Unmanned Air Systems (UAS) in Integrated Air Space

* Unmanned Air Systems (UAS) will operate in same airspace as civil aviation (e.g., FAA Modernization and Reform Act of 2012)
* RF communications occasionally subject to disruption (e.g., terrain features, atmospheric conditions, signal fading, etc.)
* Operation in remote regions can result in extended outages
* Internet protocols alone (e.g., TCP/IP) insufficient to assure safety of flight 

Need:

* BP and SBSP Improvements
* Security Key Management
 * Dynamic Routing
* Neighbor and Contact Discovery 

### Vehicular Delay Tolerant Networks

* Vehicular communications in special-purpose applications, including public transportation, commercial fleets, law enforcement, expeditionary forces, etc.
* Vehicles communicate with each other for road safety, traffic monitoring, navigation, information sharing, etc.
* Infrequent transmission opportunities due to intermittent signals, sparse traffic conditions, terrain features etc.
* Short contacts between vehicles passing 

Need:

* BP and SBSP Improvements
* Security Key Management
* Dynamic Routing
* Neighbor and Contact Discovery 

### Disaster Response and Humanitarian Aid

* Communications infrastructure frequently impaired or decimated
* Response teams use portable or vehicular radio systems; “Reachback” via SATCOM; terrestrial links-of­-opportunity
* Long delays when connected; extended periods of disruption
* Loss due to attrition, battery lifetime, sensor network duty cycles, etc.
* Ad‐hoc approaches often result in communication failures 

Need:

* BP and SBSP Improvements
* Security Key Management
* Network Management
* Neighbor and Contact Discovery 

### Unmanned Underwater Vehicles (UUV)

* UUV networking still in exploratory phase
* Speed of sound underwater is only 1.5 km/sec; data rates are low
* Long‐endurance UUV operations (days/weeks/months)
* Delay-tolerant multi-hopping between mobile UUVs
* Message relaying based on scheduled or unplanned windows of opportunity
* Secure store, carry and forward of data objects larger than packets 

 Need:

* BP Compressed format for resource‐constrained devices
 * Streamlined Security
* Neighbor and Contact Discovery 

### Civil Aviation

* Global Aeronautical Telecommunications Network (ATN) is low delay/disruption and can use traditional non-DTN protocols
* Air Traffic Control (ATC), Airline Operations Control (AOC) track aircraft over ATN in all phases of flight in real time.
* System‐Wide Information Management (SWIM) - significant delays possible
* Aviation data links can experience disruption; some may not be available during all phases of flight, and periods of complete data link outages possible. DTN may be applicable. 

 Need:

* BP End‐to‐end integrity assurance
* Streamlined Security
* Security Key Management 

### Summary

* Many use cases, with more on the way
* Of interest to many industry sectors
* Bundle Protocol and security as enablers
* DTNWG provides framework for moving the technology forward 