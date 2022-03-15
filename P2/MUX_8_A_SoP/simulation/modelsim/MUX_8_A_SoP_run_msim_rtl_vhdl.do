transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/CSD/P2/MUX_8_A_SoP/MUX_8.vhd}

