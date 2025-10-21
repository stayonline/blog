---
layout: post
title: The Shape of Things - C13, C15, C19. and C21
date: 2025-10-21
tags:
  - c13
  - c15
  - c19
  - c21
  - power-cords
  - data-center
description: C15 (higher temp) can interface with C14 or C16 whereas C13 can only interface with C14.  Likewise, C21 (higher temp) can interface with C20 and C22 whereas C19 can only interface with C20.
author: jacob-bechtol
thumbnail:
---
It's been a few years since we first explained the <a href="https://blog.stayonline.com/2022/02/15/What-Is-the-Difference-Between-C13-Power-Cord-&-the-C15.html">difference between C13 and C15 connectors</a>, but they are worth revisiting.  The C15 is interoperable with both C14 and C16 inlets, whereas the C13 only interfaces with C14.  To expand on the interoperability landscape, we will also cover the C19 and the C21. Just like with C13/C14/C15/C16, the C21 interfaces with C20 and C22, whereas the C19 will only mate with C20.

# C13/C14/C15/C16

The difference between C13 and C15 is all about the notch. Both connectors have the same footprint, that classic hexagonal shape that is so familiar to anyone who has ever plugged in a computer, tv or printer. However, the C15 has a recessed cavity that allows it to mate with the C16 inlet which has a corresponding notch molded into the housing.  This prevents the C13 from entry while the C15 fits in snugly. 

<img src="/assets/images/posts/c13-c14-c15-c16-side-x-side.webp" alt="C13 C14 C15 C16 side by side">
### Why?

It all has to do with temperature ratings. The IEC 60320 C15 connector is a high-temperature variation of C13 connector, designed specifically to handle higher thermal environments. The C15 is rated for temperature environments up to 120°C, which is significantly higher than the 70°C rating of the C13 connector. This makes it suitable for applications such as electric kettles, high-power servers, and devices that generate or are exposed to substantial heat.

[Shop C15 Products](https://www.stayonline.com/pc_combined_results.asp?pc_id=&search_keyword=&opts=&faceted_search_terms=Female+Connector~8F86220F75194452B6B6FFDA86E43D90)

## C19/C20/C21/C22

For devices that require higher amperage loads[^1], there is a similar paradigm. The C19 and C21 have the same outer dimensions, allowing them both to mate with a C20 inlet. However, the C19 is rectangular, and the C21 is hexagonal, having the top two corners "cut off" so that it can mate with the C22 which has the same shape.


<img src="/assets/images/posts/c21.png" alt="C21 Connector line drawing showing beveled corners">

This is also because of temperature ratings with C19/C20 being rated for only 70°C compared with the 120°C rating of C21/C22.  Many newer PDUs come equipped with C22 inlets which will not accept a C19 connector.

[Shop C21 Products](https://www.stayonline.com/pc_combined_results.asp?pc_id=&search_keyword=&opts=&faceted_search_terms=Female+Connector~7C5A22061C8047A1BD1FABC43723DF17)

## Practical Implications

In effect, the C21 and C15 power cords are "backwards compatible".  They will interface with standard C20 and C14 inlets, but will also interface with C22 and C16 inlets, respectively.   This means that for scenarios where you may be unsure of which inlets you encounter in the field, it is safer to go with C21/C15 than C19/C13 as they will work in both instances.  This also means that if you cannot procure a C19 or C13 power cord, you can substitute a C21 or C15 with complete interoperability.

# In Summation

C15 (higher temp) can interface with C14 or C16 whereas C13 can only interface with C14.  Likewise, C21 (higher temp) can interface with C20 and C22 whereas C19 can only interface with C20. 

| **Inlet** | **Mates With** | **Notes**                              |
| --------- | -------------- | -------------------------------------- |
| **C14**   | C13, C15       | Common inlet on many electronics       |
| **C16**   | C15            | Notched for C15 only; blocks C13       |
| **C20**   | C19, C21       | Common in PDUs and enterprise hardware |
| **C22**   | C21            | Notched for C21 only; blocks C19       |



[^1]: C13, C14, C15, and C16 max out at 10A (internationally) and 15A (North America) compared to the 16A/20A (international/North American) ratings of C19/C20/C21/C22.
