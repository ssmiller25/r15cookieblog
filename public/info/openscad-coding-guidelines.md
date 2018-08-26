---
layout: page
title: "OpenSCAD Coding Guidelines"
---
{% include JB/setup %}

OpenSCAD is a 3D CAM/CAD environment.  Instead of GUI design utilities, a coding environment is used to describe objects.  Parametrized designs allow for easy customization.


## Overall Goals 

* Parameters in the design should be minimal.
* Individual statements should be clear in what they do...calculations should be done with separate variable assignments.
* Follow procedural as best as possible. 
  * Each module should be given ALL variables as input fields (clear separation of global and local variables).  If there are too many variables being specified, redesign module.  Some of the inputs could be calculated internally.
  * Each module should be usable on it's own.  

## High-Level Design 

### Brainstorm/Paper Design 

Sketch out the main design.  Begin to breakup any major assemblies, with a thought on how the design will be printed.  Do not worry about splitting large portions of the design out at that point.

Once assemblies are written out, determine the parameters that should be "easily" adjustable.  This of other end-users, and what major components may need to be adjusted.  For some designs, the only paramter may be the final size (statues, art works, etc).  Other designs will involve hooks, spacers, etc.

### Program Structure 

Top level module is used for construction.  It should accept the following variables:

* generate: Can be "model", "explodedmodel", "parts", or "debug".  Define how final module is constructed.
  * model: Final model, fully constructed. 
  * explodedmodel: Parts exploded outward
  * parts: Individual parts, specified by parts variable
  * debug: A workspace for debugging the individual parts.
* part: The part number to print (1-x)
* scale: The scale of the entire module.  
* User defined variables.  Examples include:
  * height: If final hight needs to be declared/specified
  * hookwidth
  * supports: (0\|1): Should support structures be included)

