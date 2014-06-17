# TCL File Generated by Component Editor 13.1
# Mon Jun 16 18:09:17 PDT 2014
# DO NOT MODIFY


# 
# instrumentation_adapter "instrumentation_adapter" v1.0
#  2014.06.16.18:09:17
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module instrumentation_adapter
# 
set_module_property DESCRIPTION ""
set_module_property NAME instrumentation_adapter
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME instrumentation_adapter
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL instrumentation_adapter
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file instrumentation_adapter.v VERILOG PATH adapters/instrumentation_adapter.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point avl
# 
add_interface avl avalon end
set_interface_property avl addressUnits WORDS
set_interface_property avl associatedClock clock
set_interface_property avl associatedReset reset
set_interface_property avl bitsPerSymbol 8
set_interface_property avl burstOnBurstBoundariesOnly false
set_interface_property avl burstcountUnits WORDS
set_interface_property avl explicitAddressSpan 0
set_interface_property avl holdTime 0
set_interface_property avl linewrapBursts false
set_interface_property avl maximumPendingReadTransactions 0
set_interface_property avl readLatency 0
set_interface_property avl readWaitTime 1
set_interface_property avl setupTime 0
set_interface_property avl timingUnits Cycles
set_interface_property avl writeWaitTime 0
set_interface_property avl ENABLED true
set_interface_property avl EXPORT_OF ""
set_interface_property avl PORT_NAME_MAP ""
set_interface_property avl CMSIS_SVD_VARIABLES ""
set_interface_property avl SVD_ADDRESS_GROUP ""

add_interface_port avl avl_address address Input 1
add_interface_port avl avl_readdata readdata Output 16
set_interface_assignment avl embeddedsw.configuration.isFlash 0
set_interface_assignment avl embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avl embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avl embeddedsw.configuration.isPrintableDevice 0


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end current_instr export Input 16
add_interface_port conduit_end current_pc export Input 10

