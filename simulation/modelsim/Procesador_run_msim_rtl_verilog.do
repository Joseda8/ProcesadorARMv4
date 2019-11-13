transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/top.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/testbenchCPU.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/regfile.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/mux2_1.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/flopr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/extend.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/dmem.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/decoder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/datapath.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/controller.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/condlogic.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/condcheck.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/arm.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/ALU.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/adder.sv}
vlog -sv -work work +incdir+C:/Users/Usuario7b/Desktop/Procesador {C:/Users/Usuario7b/Desktop/Procesador/imemtb.sv}

