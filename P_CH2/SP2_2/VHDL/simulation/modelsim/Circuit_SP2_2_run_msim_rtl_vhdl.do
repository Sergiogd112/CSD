transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/CSD/P_CH2/SP2_2/VHDL/T_FF.vhd}
vcom -93 -work work {C:/CSD/P_CH2/SP2_2/VHDL/Circuit_SP2_2.vhd}

