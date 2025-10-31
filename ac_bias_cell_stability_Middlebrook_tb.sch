v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -190 30 50 {lab=vdd_1V5}
N 250 60 250 170 {lab=vf1}
N 560 40 560 90 {lab=#net1}
N 540 220 540 230 {lab=GND}
N 540 230 690 230 {lab=GND}
N 510 150 510 160 {lab=#net2}
N 510 160 560 160 {lab=#net2}
N 560 150 560 160 {lab=#net2}
N 190 10 200 10 {lab=vr1}
N 190 10 190 170 {lab=vr1}
N 250 60 260 60 {lab=vf1}
N 30 -190 320 -190 {lab=vdd_1V5}
N 510 10 510 90 {lab=#net3}
N 570 10 570 40 {lab=#net1}
N 560 40 570 40 {lab=#net1}
N 690 10 690 230 {lab=GND}
N 320 -190 320 -110 {lab=vdd_1V5}
N 630 -190 630 -110 {lab=vdd_1V5}
N 320 -190 630 -190 {lab=vdd_1V5}
N 380 230 540 230 {lab=GND}
N 30 110 30 230 {lab=GND}
N 30 230 380 230 {lab=GND}
N 380 230 380 300 {lab=GND}
N 200 0 200 10 {lab=vr1}
N 260 0 260 60 {lab=vf1}
N 380 0 380 230 {lab=GND}
C {vsource.sym} 30 80 0 0 {name=VDD_1V5 value=1.5 savecurrent=false}
C {devices/code_shown.sym} -450 -545 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_CACE\{corner\}
"
}
C {lab_pin.sym} 30 -90 0 0 {name=p1 sig_type=std_logic lab=vdd_1V5}
C {devices/code_shown.sym} 180 -1940 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp \{CACE\}
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
.param C=5p
.param R=20k

*15f min, 11f sprung
op
*remzerovec

write testbench_ac_bias_cell_stability_Middlebrook.raw
set appendwrite

ac dec 100 0.1 10G
remzerovec
setplot ac1

let s=j(2*pi*frequency)


let gm1 = ac1.@n.x1.xm1.nsg13_lv_nmos[gm]
let gm2 = ac1.@n.x1.xm2.nsg13_lv_nmos[gm]
let gm3 = ac1.@n.x1.xm3.nsg13_lv_pmos[gm]
let gm4 = ac1.@n.x1.xm4.nsg13_lv_pmos[gm]
let gm5 = ac1.@n.x1.xm5.nsg13_lv_pmos[gm]
let gm6 = ac1.@n.x1.xm6.nsg13_lv_nmos[gm]

let gds1 = ac1.@n.x1.xm1.nsg13_lv_nmos[gds]
let gds2 = ac1.@n.x1.xm2.nsg13_lv_nmos[gds]
let gds3 = ac1.@n.x1.xm3.nsg13_lv_pmos[gds]
let gds4 = ac1.@n.x1.xm4.nsg13_lv_pmos[gds]
let gds5 = ac1.@n.x1.xm5.nsg13_lv_pmos[gds]
let gds6 = ac1.@n.x1.xm6.nsg13_lv_nmos[gds]

let cgs1 = 6.633f
let cgs2 = ac1.@n.x1.xm2.nsg13_lv_nmos[cgs]
let cgs3 = ac1.@n.x1.xm3.nsg13_lv_pmos[cgs]
let cgs4 = ac1.@n.x1.xm4.nsg13_lv_pmos[cgs]
let cgs5 = ac1.@n.x1.xm5.nsg13_lv_pmos[cgs]
let cgs6 = 7.316f

let R_DEGEN = 20k
let C_Z = 5p + cgs6
let C_X = cgs3+cgs4+cgs5

let tv=-v(vr1)/v(vf1)
let ti=-i(vir1)/i(vif1)
let tmb=(tv*ti - 1)/(tv + ti + 2)

let phase_deg = 180 / pi * cphase(tmb)
let tmb_db =  db(tmb)
let ext_phase_deg = phase_deg + 180
let phase_mb = 180/pi*cphase(tmb)



let y_in = (gm5+gds5+gds6+s*C_X)
let y_2 = (gds2+s*cgs2)
let y_3 = gds4+s*cgs1
let y_22 = gm2+y_2
let y_out = gds1+gds3+s*(C_Z)


let phi = gm1 *(gm4 * (1+y_22*R_DEGEN)) / (y_22+y_3*(1+y_22*R_DEGEN))
let numerator =  gm6
let denom1 =   y_out*y_in

let H = - (numerator / denom1) * (gm3-phi)


let t_calc_h_db = db(tmb)
let t_calc_phase_deg = 180/pi*cphase(tmb)



meas ac unity_gain_freq find frequency when t_calc_h_db = 0
meas ac phase_at_ugf find t_calc_phase_deg when frequency = unity_gain_freq

let phase_margin = 180 + phase_at_ugf


echo $&phase_margin > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
*write testbench_ac_bias_cell_stability_Middlebrook.raw
*quit
.endc
"}
C {devices/launcher.sym} 1130 -290 0 0 {name=h1
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1130 -330 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} 220 170 1 0 {name=Vtest1 value="dc 0 ac 1" savecurrent=false}
C {lab_pin.sym} 190 80 0 0 {name=p6 sig_type=std_logic lab=vr1}
C {lab_pin.sym} 250 70 2 0 {name=p7 sig_type=std_logic lab=vf1}
C {gnd.sym} 380 300 0 0 {name=l2 lab=GND}
C {isource.sym} 540 190 2 0 {name=Itest1 value="dc 0 ac 1"}
C {ammeter.sym} 510 120 0 0 {name=Vif1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 560 120 2 0 {name=Vir1 savecurrent=true spice_ignore=0}
C {/foss/designs/Nikola Bsc/gm_bias_cell_open_loop.sym} 630 -50 0 0 {name=x2}
C {code.sym} -120 -785 0 0 {name=NGSPICE_SAVE_BLOCK only_toplevel=false value="
.save all
.save v(vr1)
.save v(vf1)
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
"}
C {/foss/designs/Nikola Bsc/gm_bias_cell_open_loop.sym} 320 -60 0 0 {name=x1}
