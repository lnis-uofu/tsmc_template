# tsmc_template


11/9/2021
added the synthesized netlist with the repo. mips synthesis need not be performed.
To change this in the future, delete HDL/GATE, delete design_compiler/HDL/GATE, delete design_compiler/SDC, delete design_compiler/SDF, delete design_compiler/RPT


Prerequisites : "source /research/ece/lnis-teaching/5710_6710_F21/tool_paths.sh"

#-----------------------BEGIN HERE---------------------

as soon as you clone this repo do "source setup_dir" (this sets up the directory structure for the class)

For Synthesis :
"cd design_compiler"
launch dc with "design_vision" 
"source SCRIPTS/synthesis.tcl" to run the synthesis script.

For place and route:
"cd innovus" and follow the instructions in the lab manual.

To launch virtuoso:
"cd virtuoso"
"source virtuoso-tsmc"
