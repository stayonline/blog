---
layout: post
title: Understanding NEMA and IEC Connectors
date: 2025-08-19
tags:
  - technical-knowledge
  - nema
  - iec
  - power-cords
description: "When sourcing or specifying power cords, two connector standards dominate the landscape: NEMA and IEC."
author: jacob-bechtol
thumbnail:
---
When you've been immersed in the world of power cords for as long as we have been, sometimes you forget that the knowledge we take for granted may not be shared by the public at large.  Case in point, NEMA versus IEC connectors.  What are they and why does it matter?  Both are widely used, but they serve different applications.

![](/assets/images/posts/NEMA-vs-IEC.png)
## What are NEMA connectors?

**NEMA** is short for **National Electrical Manufacturers Association** which is the body that defines standard connector configurations used in North America. The typical outlet that you find in homes and businesses across North America is a NEMA standard, the humble 5-15.  However, there are many more NEMA configurations for different applications. 

NEMA nomenclature is fairly simple once you know what to look for. Codes like 5-15, or L14-20 contain valuable information to identify the characteristics of the plug or connector.  

The code is made up of three parts:

1. **Series Number (before the dash)**    
    - Indicates the voltage rating, wiring configuration, and grounding type.        
    - **Example**:        
        - **5** series = 125V, 2-pole, 3-wire grounding (common in North America for general use).
        - **6** series = 250V, 2-pole, 3-wire grounding.
        - **14** series = 125/250V, 3-pole, 4-wire grounding
2. **Amperage Rating (after the dash)**
    - Shows the maximum current the connector is designed to handle.
    - **Example**:
        - **-15** = 15 amps.
        - **-20** = 20 amps.
        - **-30** = 30 amps.
3. **Locking or Straight-Blade Designation**    
    - If the code starts with an **“L”**, it’s a locking connector, designed so the plug twists into place and won’t pull out accidentally.
    - If there’s no “L,” it’s a straight-blade plug.

**Examples in Action**:
- **5-15P** = 125V, 15A, straight-blade plug (standard household plug).
- **L6-20R** = 250V, 20A, locking receptacle used for industrial equipment.
- **L14-30P** = 125/250V, 30A, locking plug, common for generators.

Here is a table with some common (and not so common) NEMA configurations.


| NEMA Code   | Voltage  | Amps | Type     | Typical Applications                                                          |
| ----------- | -------- | ---- | -------- | ----------------------------------------------------------------------------- |
| **5-15P**   | 125V     | 15A  | Straight | Standard household appliances, office equipment, lamps                        |
| **5-20P**   | 125V     | 20A  | Straight | Heavy-duty appliances, microwaves, small air conditioners                     |
| **6-15P**   | 250V     | 15A  | Straight | Commercial lighting, certain industrial tools                                 |
| **6-20P**   | 250V     | 20A  | Straight | Air compressors, larger industrial equipment                                  |
| **L5-15P**  | 125V     | 15A  | Locking  | Stage lighting, portable power distribution where secure connection is needed |
| **L5-20P**  | 125V     | 20A  | Locking  | Industrial vacuum cleaners, floor machines                                    |
| **L6-20P**  | 250V     | 20A  | Locking  | Server racks, high-powered machinery                                          |
| **L6-30P**  | 250V     | 30A  | Locking  | Data centers, welding machines                                                |
| **14-30P**  | 125/250V | 30A  | Straight | Electric dryers                                                               |
| **14-50P**  | 125/250V | 50A  | Straight | Electric ranges, RV shore power, EV chargers                                  |
| **L21-20P** | 120/208V | 20A  | Locking  | Portable power distribution for events                                        |
| **L21-30P** | 120/208V | 30A  | Locking  | Industrial machinery, temporary power systems                                 |

For a complete guide of NEMA configurations, our [locking](https://www.stayonline.com/product-resources/nema-locking-reference-chart.asp) and [straight blade](https://www.stayonline.com/product-resources/nema-straight-blade-reference-chart.asp) reference charts.
# What about IEC?

**IEC** standards are set by the **International Electrotechnical Commission**.  There are two common standards, **IEC 60320** (often referred to as IEC320) and **IEC 60309**.  While both are defined by the IEC, they have differing applications. Both are used widely worldwide.

### IEC 60320

IEC nomenclature is also straightforward once you know what to look for.  For IEC 60320, the identifier begins with a "C" and is followed by a number.  Odd numbers indicate female terminations and even numbers are male. The most common IEC 60320 configuration is the C13/C14 combo, commonly found on the back of TVs, monitors and desktop computers, the C13 is also very common in power distribution units (PDU) found in data centers worldwide.

Below is a table with the most common IEC 60320 configurations.


| IEC Code    | Max Voltage | Temp Rating | Typical Applications                                            |
| ----------- | ----------- | ----------- | --------------------------------------------------------------- |
| **C5/C6**   | 250V        | 70°C        | Laptop power adapters (“Mickey Mouse” connector)                |
| **C7/C8**   | 250V        | 70°C        | DVD players, game consoles, small electronics (“Figure-8” cord) |
| **C13/C14** | 250V        | 70°C        | Desktop computers, monitors, office equipment                   |
| **C15/C16** | 250V        | 120°C       | Electric kettles, some networking equipment (heat-resistant)    |
| **C19/C20** | 250V        | 70°C        | Servers, PDUs, high-current IT equipment                        |
| **C21/C22** | 250V        | 155°C       | High-temp industrial and IT equipment                           |

### IEC 60309

IEC 60309 are typically for more industrial applications than IEC 60320.  Commonly referred to as pin and sleeve plugs, IEC309 plugs follow a clockface pin positioning system which ensures that only compatible connections are made.  Naming conventions follow the following format.

- **Number of Wires**: Total number of conductors, including phase, neutral, and ground.
- **Amperage**: The maximum current rating of the connector.
- **Type**: Indicates whether the device is a plug (P), connector (C), or receptacle (R). 
- **Ground Pin Clock Position**: Refers to the orientation of the ground pin in relation to a clock face, which ensures that only compatible voltages and frequencies can be connected. For example, a ground pin at the 6 o’clock position is not physically compatible with one at the 4 o’clock position.

For example:

- **320P4**
    - **3** = 3 wires (2 poles + earth)
    - **20** = 20 amps
    - **P** = Plug        
    - **4** = Earth pin at 4 o’clock position
- **460C12**
	- **4** = 4 wires (3 poles + earth)
	- **60** = 60 amps
	- **C** = Connector
	- **12** = Earth pin at 12 o'clock position
- **5100R6**    
    - **5** = 5 wires (3 poles + neutral + earth)        
    - **100** = 100 amps        
    - **R** = Receptacle        
    - **6** = Earth pin at 6 o’clock position

Often you will see a trailing W added to these designations which means that the configuration is watertight. 

IEC 60309 connectors are most often found in industrial, commercial, and outdoor environments. They’re widely used on construction sites for powering heavy-duty tools, lighting, and temporary distribution boards. In the events and entertainment industry, they’re common for stage lighting, sound systems, and mobile power distribution. 

# Final Thoughts

We've explained the difference between NEMA and IEC standards, which are both widely used for many different applications. NEMA is typically found in North America while IEC (both 320 and 309) have been adopted worldwide. It is useful to know the shorthand designations that provide information about the characteristics of the configuration.

Understanding these codes isn’t just academic. It helps ensure you're using the right connector for your environment. Whether you're outfitting a data center, sourcing equipment for an event, or just replacing a cable at home, recognizing the standards can help to make sure you get the right cord for the right application—After all, **knowledge is power**.

