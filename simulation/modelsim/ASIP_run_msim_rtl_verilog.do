transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/pipes {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/pipes/IFID_Pipe.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF/plus_1.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF/pc_register.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF/Mux2_PC.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF/IF.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/TOP.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/TOP_tb {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/TOP_tb/Top_Fetch_TB.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF {C:/Users/DELL/Desktop/Proyecto2-ASIP/RSAASIP/IF/Instruction_Mem.sv}

