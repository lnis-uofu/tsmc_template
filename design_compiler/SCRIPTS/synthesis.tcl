# The period has to be changed to see if the design can meet the timing constraint
#Same for the clk_name when using a different design.
set clk_period 6
set clk_name clk

#  Define the name of the top module to be synthesized.
set design mips

# Define the directory paths
set BASE_DIR	 	[pwd]
set RPT_DIR     "${BASE_DIR}/RPT"
set RTL_DIR 	 	"${BASE_DIR}/HDL/RTL"
set GATE_DIR 	 	"${BASE_DIR}/HDL/GATE"
set SDF_DIR 	 	"${BASE_DIR}/SDF"
set SDC_DIR 	 	"${BASE_DIR}/SDC"
set DDC_DIR 	 	"${BASE_DIR}/DDC"
set DESIGN_LIB	"${BASE_DIR}/DESIGN_LIBS/$design"

# Define the verilog file list.
set HDL_FILES $RTL_DIR/mips.sv

#Create the directories if they do no exist
exec mkdir -p $RPT_DIR
exec mkdir -p $DDC_DIR
exec mkdir -p $SDF_DIR
exec mkdir -p $SDC_DIR
exec mkdir -p $DESIGN_LIB

#  Start from fresh state
remove_design -designs

#Define a design library specific to the current design. Otherwise, when runing 2 synthesis in parallel, intermediate files get mixed.
define_design_lib $design -path $DESIGN_LIB

#  Analyze the Verilog sources
puts "-i- Analyze Verilog sources"
analyze -format sverilog $HDL_FILES -library $design

#  Elaborate the design
puts "-i- Elaborate design"
elaborate ${design} -library $design

#  Save the elaborated design
puts "-i- Save elaborated design"
write -hierarchy -format ddc -output ${DDC_DIR}/${design}_elab.ddc

#  Link the design
puts "-i- Linking the design"
link

#  Define constraints
puts "-i- Define constraints"
puts "-i- set_max_area 0"
puts "-i- set_clock"
set_max_area 0
create_clock -name $clk_name -period $clk_period $clk_name

#Check the design for warnings
check_design

#  Do not ungroup the hierarchy
#set_ungroup [get_designs *] false

#  Map and optimize the design
puts "-i- Map and optimize design"
compile

#  Save the mapped design
puts "-i- Save mapped design"
write -hierarchy -format ddc -output ${DDC_DIR}/${design}_mapped.ddc

#  Generate reports
puts "-i- Generate reports"
report_constraint -nosplit -all_violators > ${RPT_DIR}/${design}_mapped_allviol.rpt
report_area > ${RPT_DIR}/${design}_mapped_area.rpt
report_timing > ${RPT_DIR}/${design}_mapped_timing.rpt
report_power -nosplit -analysis_effort low > ${RPT_DIR}/${design}_mapped_power.rpt

#  Generate the Verilog netlist
puts "-i- Generate Verilog netlist"
write_file -format verilog -hierarchy -output ${GATE_DIR}/${design}_mapped.v
write_file -format verilog -hierarchy -output ${BASE_DIR}/../HDL/GATE/${design}_mapped.v

#  Generate the design constraint file
puts "-i- Generate SDC design constraint file"
write_sdc -nosplit ${SDC_DIR}/${design}_mapped.sdc

#  Generate the sdf file
puts "-i- Generate the SDF file"
write_sdf -version 2.1 ${SDF_DIR}/${design}_mapped.sdf

puts "-i- Finished"
