transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Zero.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Xor_.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Substraction.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Shift_right_arithmetic.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Shift_right.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Shift_left.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Overflow_flag.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Or_.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Negative.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Mux16.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Carry_flag.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/And_.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Alu.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/Addition.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/arm.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/controller.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/decoder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/condlogic.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/condcheck.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/datapath.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/regfile.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/adder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/extend.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/flopr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/mux2.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/testbench.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/top.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/dmem.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/imem.sv}

