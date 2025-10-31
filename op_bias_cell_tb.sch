v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -40 460 -40 {lab=I_REF2X}
N 350 -60 530 -60 {lab=I_REF1X}
N 350 -80 600 -80 {lab=I_REF_1_5X}
N 530 70 530 100 {lab=GND}
N 460 100 530 100 {lab=GND}
N 460 70 460 100 {lab=GND}
N 600 70 600 100 {lab=GND}
N 530 100 600 100 {lab=GND}
N 200 100 200 120 {lab=GND}
N 200 -220 200 -130 {lab=vdd_1V5}
N -80 -220 200 -220 {lab=vdd_1V5}
N -80 -220 -80 20 {lab=vdd_1V5}
N 460 -40 460 10 {lab=I_REF2X}
N 530 -60 530 10 {lab=I_REF1X}
N 600 -80 600 10 {lab=I_REF_1_5X}
N 200 100 460 100 {lab=GND}
N 200 10 200 100 {lab=GND}
N 0 100 200 100 {lab=GND}
N -80 80 -80 100 {lab=GND}
N -0 -60 -0 20 {lab=ena}
N -0 -60 50 -60 {lab=ena}
N 0 80 0 100 {lab=GND}
N -80 100 0 100 {lab=GND}
C {vsource.sym} -80 50 0 0 {name=VDD_1V5 value=1.5 savecurrent=false}
C {gnd.sym} 200 120 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -50 -380 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {lab_pin.sym} -80 -120 0 0 {name=p1 sig_type=std_logic lab=vdd_1V5}
C {lab_pin.sym} 600 -80 0 0 {name=p3 sig_type=std_logic lab=I_REF_1_5X}
C {lab_pin.sym} 460 -40 0 0 {name=p4 sig_type=std_logic lab=I_REF2X}
C {lab_pin.sym} 530 -60 0 0 {name=p5 sig_type=std_logic lab=I_REF1X}
C {devices/code_shown.sym} 480 -765 0 0 {name=NGSPICE only_toplevel=true 
value="
.control

op
write testbench_op_bias_cell.raw
set appendwrite

dc  temp -40 125 2
plot  i(v_ref1) i(v_ref2) i(v_ref1_5) 
write testbench_op_bias_cell.raw
set appendwrite
let i_min = vecmin(i(v_ref1))
let i_max = vecmax(i(v_ref1))
print i_min
print i_max

let i_nom = i(v_ref1)[33]
print i_nom

let rel_err_pos = 100 * (i_max - i_nom)/i_nom
let rel_err_neg = - 100 * (i_nom - i_min)/i_nom

print rel_err_pos rel_err_neg


dc vdd_1V5 1.45 1.55 0.001
plot 0 i(v_ref1) i(v_ref2) i(v_ref1_5) 



write testbench_op_bias_cell.raw
*quit
.endc
"}
C {/foss/designs/Nikola Bsc/gm_bias_cell_test.sym} 200 -60 0 0 {name=x1 R=20k C=5p}
C {vsource.sym} 0 50 0 0 {name=V_ena value=0 savecurrent=false}
C {lab_pin.sym} 0 -60 0 0 {name=p2 sig_type=std_logic lab=ena}
C {vsource.sym} 460 40 0 0 {name=v_ref2 value=0 savecurrent=false}
C {vsource.sym} 530 40 0 0 {name=v_ref1 value=0 savecurrent=true}
C {vsource.sym} 600 40 0 0 {name=v_ref1_5 value=0 savecurrent=false}
C {devices/launcher.sym} 320 -205 0 0 {name=h1
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 320 -245 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/ngspice_get_value.sym} 780 -70 0 1 {name=r3 node=i(v_ref1)
descr="I_REF1X="}
C {devices/ngspice_get_value.sym} 780 -30 0 1 {name=r1 node=i(v_ref2)
descr="I_REF2X="}
C {devices/ngspice_get_value.sym} 780 10 0 1 {name=r2 node=i(v_ref1_5)
descr="I_REF1_5X="}
C {code.sym} 990 -590 0 0 {name=NGSPICE_SAVE_BLOCK only_toplevel=false value="
.save all



.save @n.x1.xm3.nsg13_lv_pmos[gm]
.save @n.x1.xm3.nsg13_lv_pmos[vth]
.save @n.x1.xm3.nsg13_lv_pmos[cgg]
.save @n.x1.xm3.nsg13_lv_pmos[vdss]
.save @n.x1.xm3.nsg13_lv_pmos[ids]
.save @n.x1.xm3.nsg13_lv_pmos[vds]
.save @n.x1.xm3.nsg13_lv_pmos[fug]
.save @n.x1.xm3.nsg13_lv_pmos[vgs]
.save @n.x1.xm3.nsg13_lv_pmos[sid]
.save @n.x1.xm3.nsg13_lv_pmos[gds]


.save @n.x1.xm4.nsg13_lv_pmos[gm]
.save @n.x1.xm4.nsg13_lv_pmos[vth]
.save @n.x1.xm4.nsg13_lv_pmos[cgg]
.save @n.x1.xm4.nsg13_lv_pmos[vdss]
.save @n.x1.xm4.nsg13_lv_pmos[ids]
.save @n.x1.xm4.nsg13_lv_pmos[vds]
.save @n.x1.xm4.nsg13_lv_pmos[fug]
.save @n.x1.xm4.nsg13_lv_pmos[vgs]
.save @n.x1.xm4.nsg13_lv_pmos[sid]
.save @n.x1.xm4.nsg13_lv_pmos[gds]


.save @n.x1.xm5.nsg13_lv_pmos[gm]
.save @n.x1.xm5.nsg13_lv_pmos[vth]
.save @n.x1.xm5.nsg13_lv_pmos[cgg]
.save @n.x1.xm5.nsg13_lv_pmos[vdss]
.save @n.x1.xm5.nsg13_lv_pmos[ids]
.save @n.x1.xm5.nsg13_lv_pmos[vds]
.save @n.x1.xm5.nsg13_lv_pmos[fug]
.save @n.x1.xm5.nsg13_lv_pmos[vgs]
.save @n.x1.xm5.nsg13_lv_pmos[sid]
.save @n.x1.xm5.nsg13_lv_pmos[gds]


.save @n.x1.xm7.nsg13_lv_pmos[gm]
.save @n.x1.xm7.nsg13_lv_pmos[vth]
.save @n.x1.xm7.nsg13_lv_pmos[cgg]
.save @n.x1.xm7.nsg13_lv_pmos[vdss]
.save @n.x1.xm7.nsg13_lv_pmos[ids]
.save @n.x1.xm7.nsg13_lv_pmos[vds]
.save @n.x1.xm7.nsg13_lv_pmos[fug]
.save @n.x1.xm7.nsg13_lv_pmos[vgs]
.save @n.x1.xm7.nsg13_lv_pmos[sid]
.save @n.x1.xm7.nsg13_lv_pmos[gds]

.save @n.x1.xm8.nsg13_lv_pmos[gm]
.save @n.x1.xm8.nsg13_lv_pmos[vth]
.save @n.x1.xm8.nsg13_lv_pmos[cgg]
.save @n.x1.xm8.nsg13_lv_pmos[vdss]
.save @n.x1.xm8.nsg13_lv_pmos[ids]
.save @n.x1.xm8.nsg13_lv_pmos[vds]
.save @n.x1.xm8.nsg13_lv_pmos[fug]
.save @n.x1.xm8.nsg13_lv_pmos[vgs]
.save @n.x1.xm8.nsg13_lv_pmos[sid]
.save @n.x1.xm8.nsg13_lv_pmos[gds]

.save @n.x1.xm9.nsg13_lv_pmos[gm]
.save @n.x1.xm9.nsg13_lv_pmos[vth]
.save @n.x1.xm9.nsg13_lv_pmos[cgg]
.save @n.x1.xm9.nsg13_lv_pmos[vdss]
.save @n.x1.xm9.nsg13_lv_pmos[ids]
.save @n.x1.xm9.nsg13_lv_pmos[vds]
.save @n.x1.xm9.nsg13_lv_pmos[fug]
.save @n.x1.xm9.nsg13_lv_pmos[vgs]
.save @n.x1.xm9.nsg13_lv_pmos[sid]
.save @n.x1.xm9.nsg13_lv_pmos[gds]

.save @n.x1.xm1.nsg13_lv_nmos[gm]
.save @n.x1.xm1.nsg13_lv_nmos[vth]
.save @n.x1.xm1.nsg13_lv_nmos[cgg]
.save @n.x1.xm1.nsg13_lv_nmos[vdss]
.save @n.x1.xm1.nsg13_lv_nmos[ids]
.save @n.x1.xm1.nsg13_lv_nmos[vds]
.save @n.x1.xm1.nsg13_lv_nmos[fug]
.save @n.x1.xm1.nsg13_lv_nmos[vgs]
.save @n.x1.xm1.nsg13_lv_nmos[sid]
.save @n.x1.xm1.nsg13_lv_nmos[gds]

.save @n.x1.xm2.nsg13_lv_nmos[gm]
.save @n.x1.xm2.nsg13_lv_nmos[vth]
.save @n.x1.xm2.nsg13_lv_nmos[cgg]
.save @n.x1.xm2.nsg13_lv_nmos[vdss]
.save @n.x1.xm2.nsg13_lv_nmos[ids]
.save @n.x1.xm2.nsg13_lv_nmos[vds]
.save @n.x1.xm2.nsg13_lv_nmos[fug]
.save @n.x1.xm2.nsg13_lv_nmos[vgs]
.save @n.x1.xm2.nsg13_lv_nmos[sid]
.save @n.x1.xm2.nsg13_lv_nmos[gds]

.save @n.x1.xm6.nsg13_lv_nmos[gm]
.save @n.x1.xm6.nsg13_lv_nmos[vth]
.save @n.x1.xm6.nsg13_lv_nmos[cgg]
.save @n.x1.xm6.nsg13_lv_nmos[vdss]
.save @n.x1.xm6.nsg13_lv_nmos[ids]
.save @n.x1.xm6.nsg13_lv_nmos[vds]
.save @n.x1.xm6.nsg13_lv_nmos[fug]
.save @n.x1.xm6.nsg13_lv_nmos[vgs]
.save @n.x1.xm6.nsg13_lv_nmos[sid]
.save @n.x1.xm6.nsg13_lv_nmos[gds]

.save @n.x1.xm16.nsg13_lv_nmos[ids]

"}
