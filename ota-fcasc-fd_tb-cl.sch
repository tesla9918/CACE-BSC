v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1440 -1460 2240 -1060 {flags=graph
ypos1=0.15
ypos2=1.95
divy=10
unity=1
x2=1.3096055e-06
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="Settling Accuracy (dB);settle"
color=4
unitx=1
logx=0
logy=0
hilight_wave=1
digital=0
legend=1
linewidth_mult=2
dataset=-1
subdivy=4
y1=38
x1=-1.5806624e-07
y2=118
divx=10
rainbow=1}
B 2 1460 -800 2260 -400 {flags=graph
ypos1=0.15
ypos2=1.95
divy=10
unity=1
x2=1.3096055e-06
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="Vop;voutp
Von;voutn
Vip;vi_p
Vin;vi_n"
color="6 7 12 5"
unitx=1
logx=0
logy=0
hilight_wave=-1
digital=0
legend=1
linewidth_mult=2
dataset=-1
subdivy=4
y1=0.6
x1=-1.5806624e-07
y2=2.1
divx=10
rainbow=1}
B 4 20 -1550 640 -970 {fill=no}
B 4 740 -1550 1360 -970 {fill=no}
B 4 20 -880 640 -300 {fill=no}
B 4 740 -880 1360 -300 {fill=no}
P 4 1 1220 -1550 {}
T {STIMULUS} 40 -1530 0 0 0.4 0.4 {}
T {AMPLIFIER} 770 -1530 0 0 0.4 0.4 {}
T {IDEAL CMFB} 40 -860 0 0 0.4 0.4 {}
T {Feedback Network (Phase 2)} 770 -860 0 0 0.4 0.4 {}
T {Provide NMOS bias directly
} 1290 -1300 1 0 0.2 0.2 {}
T {Draw dc currents from 
outputs to adjust Vcmo} 60 -360 0 0 0.3 0.3 {}
T {Large Resistors provide 
same gain for dc
Simulation only!} 1080 -600 0 0 0.3 0.3 {}
T {Single 2 Diff} 50 -1020 0 0 0.3 0.3 {}
T {0V sources 
for current sensing} 450 -1400 0 0 0.3 0.3 {}
T {UE Design of Complex Integrated Circuits} 150 -1910 0 0 1 1 {}
T {OTA Testbench} 480 -1770 0 0 0.75 0.75 {}
T {Judge settling based on the virtual ground node [Klaas Bult]
Plot 20*log10(Vout(t>>tau)/abs(Vvgn))
Starts at 20*log10(beta) ~ -2dB
Ends at 20*log10(A0)
Determine tau: slope of linear settling is 8.6dB/tau} 1420 -1590 0 0 0.4 0.4 {}
T {Nikola Mihaljevic k12037732
} 370 -1830 0 0 0.75 0.75 {}
N 780 -1100 780 -1030 {
lab=GND}
N 780 -1200 780 -1160 {
lab=VDD}
N 360 -1310 360 -1240 {
lab=vcmi}
N 440 -1240 440 -1220 {
lab=vcmi}
N 440 -1160 440 -1140 {
lab=GND}
N 360 -1110 360 -1040 {
lab=vin_n}
N 360 -1440 360 -1370 {
lab=vin_p}
N 300 -1320 320 -1320 {
lab=GND}
N 300 -1320 300 -1120 {
lab=GND}
N 300 -1120 320 -1120 {
lab=GND}
N 280 -1160 320 -1160 {
lab=#net1}
N 280 -1360 280 -1160 {
lab=#net1}
N 280 -1360 320 -1360 {
lab=#net1}
N 240 -1360 240 -1270 {
lab=#net1}
N 240 -1360 280 -1360 {
lab=#net1}
N 240 -1120 240 -1090 {
lab=GND}
N 240 -1120 300 -1120 {
lab=GND}
N 200 -1220 200 -1190 {
lab=GND}
N 200 -1190 240 -1190 {
lab=GND}
N 140 -1260 140 -1220 {
lab=vids}
N 140 -1260 200 -1260 {
lab=vids}
N 140 -1160 140 -1090 {
lab=GND}
N 360 -1240 360 -1170 {
lab=vcmi}
N 360 -1240 440 -1240 {
lab=vcmi}
N 990 -1180 990 -1150 {
lab=GND}
N 1250 -1030 1250 -1000 {
lab=GND}
N 1180 -400 1180 -380 {
lab=GND}
N 1180 -790 1180 -770 {
lab=GND}
N 1180 -500 1180 -460 {
lab=voutn}
N 1180 -710 1180 -670 {
lab=voutp}
N 1180 -1040 1210 -1040 {
lab=voutn}
N 1180 -1080 1210 -1080 {
lab=voutp}
N 1250 -1130 1250 -1090 {
lab=vout}
N 1250 -1130 1300 -1130 {
lab=vout}
N 240 -1190 240 -1120 {
lab=GND}
N 240 -1210 240 -1190 {
lab=GND}
N 990 -1440 990 -1340 {lab=VDD}
N 1030 -1440 1030 -1420 {lab=VDD}
N 1030 -1360 1030 -1340 {lab=#net2}
N 890 -1290 910 -1290 {lab=vvg_n}
N 890 -1230 910 -1230 {lab=vvg_p}
N 1090 -1210 1190 -1210 {lab=vfb}
N 1090 -1190 1190 -1190 {lab=vbn}
N 360 -1440 400 -1440 {lab=vin_p}
N 360 -1040 400 -1040 {lab=vin_n}
N 460 -1440 490 -1440 {lab=vi_p}
N 460 -1040 490 -1040 {lab=vi_n}
N 350 -410 350 -370 {lab=GND}
N 350 -510 350 -470 {lab=GND}
N 260 -560 310 -560 {lab=GND}
N 260 -460 310 -460 {lab=GND}
N 260 -490 290 -490 {lab=GND}
N 290 -520 290 -490 {lab=GND}
N 290 -520 310 -520 {lab=GND}
N 290 -490 290 -420 {lab=GND}
N 290 -420 310 -420 {lab=GND}
N 350 -680 390 -680 {lab=GND}
N 350 -680 350 -570 {lab=GND}
N 270 -680 350 -680 {lab=GND}
N 230 -610 230 -600 {lab=GND}
N 230 -610 290 -610 {lab=GND}
N 230 -630 230 -610 {lab=GND}
N 290 -640 290 -610 {lab=GND}
N 270 -640 290 -640 {lab=GND}
N 430 -610 430 -600 {lab=GND}
N 360 -640 390 -640 {lab=GND}
N 360 -640 360 -610 {lab=GND}
N 360 -610 430 -610 {lab=GND}
N 430 -630 430 -610 {lab=GND}
N 230 -730 230 -690 {lab=GND}
N 430 -730 430 -690 {lab=GND}
N 230 -830 230 -790 {lab=GND}
N 430 -830 430 -790 {lab=GND}
N 960 -630 1000 -630 {lab=vvg_n}
N 1000 -670 1000 -630 {lab=vvg_n}
N 1000 -670 1040 -670 {lab=vvg_n}
N 960 -540 1000 -540 {lab=vvg_p}
N 1000 -540 1000 -500 {lab=vvg_p}
N 1000 -500 1040 -500 {lab=vvg_p}
N 1120 -670 1180 -670 {lab=voutp}
N 1120 -500 1180 -500 {lab=voutn}
N 880 -630 900 -630 {lab=vi_p}
N 880 -540 900 -540 {lab=vi_n}
N 880 -430 900 -430 {lab=vi_n}
N 880 -540 880 -430 {lab=vi_n}
N 880 -730 880 -630 {lab=vi_p}
N 880 -730 900 -730 {lab=vi_p}
N 1000 -730 1040 -730 {lab=vvg_n}
N 1100 -730 1120 -730 {lab=voutp}
N 1120 -730 1120 -670 {lab=voutp}
N 1000 -430 1040 -430 {lab=vvg_p}
N 1100 -430 1120 -430 {lab=voutn}
N 1120 -500 1120 -430 {lab=voutn}
N 1000 -500 1000 -430 {lab=vvg_p}
N 960 -430 1000 -430 {lab=vvg_p}
N 1000 -730 1000 -670 {lab=vvg_n}
N 960 -730 1000 -730 {lab=vvg_n}
N 1090 -1240 1160 -1240 {lab=voutn}
N 1090 -1280 1160 -1280 {lab=voutp}
N 1100 -670 1120 -670 {lab=voutp}
N 1100 -500 1120 -500 {lab=voutn}
N 1190 -1230 1190 -1210 {lab=vfb}
N 1190 -1230 1230 -1230 {lab=vfb}
N 1230 -1230 1230 -1220 {lab=vfb}
N 1190 -1190 1190 -1150 {lab=vbn}
N 1190 -1150 1230 -1150 {lab=vbn}
N 1230 -1160 1230 -1150 {lab=vbn}
N 1030 -1060 1030 -1030 {lab=GND}
N 1030 -1180 1030 -1120 {
lab=ena}
N 820 -630 880 -630 {lab=vi_p}
N 820 -540 880 -540 {lab=vi_n}
C {devices/vsource.sym} 780 -1130 0 0 {name=V3 value=1.5
}
C {devices/gnd.sym} 780 -1030 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -950 -1880 0 0 {name=STIMULI
only_toplevel=false
value="
.include ota-fcasc-fd_tb-cl.save
.options savecurrents sparse
.temp 27
.param ibias=0.2u
.param ci=500f
.param fanout=1
.param cload=fanout*ci
.param cf=1.125p

.save all
.control
option numdgt = 3
set doAmpSim = 1

let fb = 128
let osr = 512
let fs = 2*fb*osr
let c1 = 500e-15
let tsettle = 1/fs/2
let vrefp = 1.5
let vrefn = 0
let tau = 119n
let t1 = 1.6u
let t2 = t1+tau


if $doAmpSim eq 1
	setplot const

	let f_min_noise = 1
	let f_max_noise = 1G

	let Acl = 0.444
	let v_step_i = (vrefp-vrefn)
	let v_step_o = -Acl*v_step_i

	let t_rf = 0.0001/fs
	let t_step = 0
	let t_delay = 0
	let t_per = 0

	let tstep = 0.001/fs
	let tstop = 1/fs/2+t_delay
	let tstart = t_delay

	alter @VIN[DC] = 0.0
	alter @VIN[PULSE] = [ 0 $&v_step_i $&t_delay $&t_rf $&t_rf $&t_step $&t_per 0 ]

	noise v(vout) vin dec 100 $&const.f_min_noise $&const.f_max_noise
	tran $&tstep $&tstop $&tstart

	setplot noise1
	plot onoise_spectrum ylog xlog ylabel 'Output Noise'

	setplot tran2
	let vo = v(vout)
	let vcmo = (v(voutp)+v(voutn))/2
	let vvg = v(vvg_p)-v(vvg_n)
	let settle = 20*log10(abs(const.v_step_o)/(abs(vvg)+1u))
	meas tran settle_acc find settle when time=const.tsettle
	meas tran settle_acc_t1 find settle when time=const.t1
	let settle_acc_p8db6 = settle_acc_t1+8.6
	meas tran t_8db6 find time when settle=settle_acc_p8db6
	let t_beta = const.tstart+const.tstep
	meas tran beta_db find settle when time=t_beta

	let tau_meas = t_8db6 - const.t1
	print tau_meas

	let beta_meas = 10^(beta_db/20)
	print beta_meas

	let dcgain_meas_db = settle_acc
	print dcgain_meas_db


	let vod = v(voutp) - v(voutn)
	let e_d_vec = abs(vod-const.v_step_o)

	meas tran err_d find e_d_vec when time=const.t2
	write ota-fcasc-fd_tb-cl.raw
end

reset
op
remzerovec
set appendwrite
write ota-fcasc-fd_tb-cl.raw
.endc"}
C {devices/vdd.sym} 780 -1200 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 440 -1190 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 360 -1140 0 0 {name=E1 value=0.5}
C {devices/vcvs.sym} 360 -1340 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 140 -1190 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 140 -1090 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 440 -1140 0 0 {name=l18 lab=GND}
C {devices/vcvs.sym} 240 -1240 0 0 {name=E3 value=1}
C {devices/gnd.sym} 240 -1090 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 430 -1440 3 0 {name=VIINP value=0
}
C {devices/vsource.sym} 430 -1040 3 0 {name=VIINN value=0
}
C {devices/vsource.sym} 1030 -1090 0 0 {name=V4 value=1.5
}
C {devices/gnd.sym} 1030 -1030 0 0 {name=l33 lab=GND}
C {devices/title.sym} 200 -80 0 0 {name=l3 author="Nikola Mihaljevic"}
C {devices/gnd.sym} 990 -1150 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 530 -220 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidsden_texts 1; xschem annotate_op"}
C {devices/vcvs.sym} 1250 -1060 0 0 {name=E7 value=1}
C {devices/gnd.sym} 1250 -1000 0 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} 1180 -1080 0 0 {name=l53 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} 1180 -1040 2 1 {name=l54 sig_type=std_logic lab=voutn
}
C {devices/capa.sym} 1180 -430 0 0 {name=CL2
m=1
value=\{cload\}
footprint=1206
device="ceramic capacitor"
}
C {devices/capa.sym} 1180 -740 2 1 {name=CL1
m=1
value=\{cload\}
footprint=1206
device="ceramic capacitor"
}
C {devices/gnd.sym} 1180 -790 2 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1180 -380 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1300 -1130 0 1 {name=p2 sig_type=std_logic lab=vout
}
C {devices/launcher.sym} 530 -170 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {isource.sym} 1030 -1390 0 0 {name=I0 value=\{ibias\}}
C {devices/vdd.sym} 990 -1440 0 0 {name=l10 lab=VDD}
C {devices/vdd.sym} 1030 -1440 0 0 {name=l11 lab=VDD}
C {lab_wire.sym} 180 -1260 0 0 {name=p5 sig_type=std_logic lab=vids}
C {lab_wire.sym} 360 -1440 0 0 {name=p8 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 360 -1040 0 0 {name=p9 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 410 -1240 0 0 {name=p10 sig_type=std_logic lab=vcmi}
C {lab_wire.sym} 480 -1440 0 1 {name=p11 sig_type=std_logic lab=vi_p}
C {lab_wire.sym} 480 -1040 0 1 {name=p12 sig_type=std_logic lab=vi_n}
C {lab_wire.sym} 1160 -1280 0 0 {name=p6 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 1160 -1240 0 0 {name=p7 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 1130 -1210 0 0 {name=p15 sig_type=std_logic lab=vfb}
C {vccs_limit.sym} 430 -660 0 0 {name=alimit1 gain=100u lower_limit=-100u upper_limit=100u
spice_ignore=short}
C {vcvs_limit.sym} 350 -540 0 0 {name=alimit2 gain=1 lower_limit=-5.0 upper_limit=5.0
spice_ignore=short}
C {vccs_limit.sym} 230 -660 0 1 {name=alimit3 gain=100u lower_limit=-100u upper_limit=100u
spice_ignore=short}
C {vcvs_limit.sym} 350 -440 0 0 {name=alimit4 gain=1 lower_limit=-5.0 upper_limit=5.0
spice_ignore=short}
C {devices/gnd.sym} 350 -370 0 0 {name=l6 lab=GND
spice_ignore=short}
C {lab_wire.sym} 260 -490 0 0 {name=p16 sig_type=std_logic lab=vcmi
spice_ignore=short}
C {lab_wire.sym} 260 -560 0 0 {name=p17 sig_type=std_logic lab=voutp
spice_ignore=short}
C {lab_wire.sym} 260 -460 0 0 {name=p18 sig_type=std_logic lab=voutn
spice_ignore=short}
C {devices/gnd.sym} 230 -600 0 0 {name=l8 lab=GND
spice_ignore=short}
C {devices/gnd.sym} 430 -600 0 0 {name=l9 lab=GND
spice_ignore=short}
C {lab_wire.sym} 230 -830 0 0 {name=p19 sig_type=std_logic lab=voutp
spice_ignore=short}
C {lab_wire.sym} 430 -830 0 0 {name=p20 sig_type=std_logic lab=voutn
spice_ignore=short}
C {lab_wire.sym} 330 -680 0 0 {name=p21 sig_type=std_logic lab=verr
spice_ignore=short}
C {devices/vsource.sym} 230 -760 0 0 {name=VIINP1 value=0
spice_ignore=short}
C {devices/vsource.sym} 430 -760 0 0 {name=VIINP2 value=0
spice_ignore=short}
C {lab_wire.sym} 1130 -1190 0 0 {name=p3 sig_type=std_logic lab=vbn}
C {devices/capa.sym} 1070 -670 3 1 {name=C2P
m=1
value=\{cf\}
footprint=1206
device="ceramic capacitor"
}
C {devices/capa.sym} 1070 -500 3 1 {name=C2N
m=1
value=\{cf\}
footprint=1206
device="ceramic capacitor"
}
C {devices/capa.sym} 930 -630 3 1 {name=C1P
m=1
value=\{ci\}
footprint=1206
device="ceramic capacitor"
}
C {devices/capa.sym} 930 -540 3 1 {name=C1N
m=1
value=\{ci\}
footprint=1206
device="ceramic capacitor"
}
C {lab_wire.sym} 850 -630 0 0 {name=p22 sig_type=std_logic lab=vi_p}
C {lab_wire.sym} 850 -540 0 0 {name=p23 sig_type=std_logic lab=vi_n}
C {lab_wire.sym} 1130 -670 0 1 {name=p24 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 1130 -500 0 1 {name=p25 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 890 -1290 0 0 {name=p26 sig_type=std_logic lab=vvg_n}
C {lab_wire.sym} 1000 -630 0 0 {name=p27 sig_type=std_logic lab=vvg_n}
C {lab_wire.sym} 1000 -540 0 0 {name=p28 sig_type=std_logic lab=vvg_p}
C {lab_wire.sym} 890 -1230 0 0 {name=p29 sig_type=std_logic lab=vvg_p}
C {res.sym} 930 -730 3 0 {name=R4
value=\{1G*\{cf\}/\{ci\}\}
footprint=1206
device=resistor
m=1
noisy=0
}
C {res.sym} 930 -430 3 1 {name=R5
value=\{1G*\{cf\}/\{ci\}\}
footprint=1206
device=resistor
m=1
noisy=0
}
C {res.sym} 1070 -730 3 0 {name=R6
value=1G
footprint=1206
device=resistor
m=1
noisy=0
}
C {res.sym} 1070 -430 3 1 {name=R7
value=1G
footprint=1206
device=resistor
m=1
noisy=0
}
C {lab_wire.sym} 1030 -1160 1 1 {name=p1 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 1230 -1190 0 0 {name=V1 value=0
}
C {devices/launcher.sym} 810 -220 0 0 {name=h3
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/[file rootname [xschem get current_name]].raw tran"}
C {simulator_commands_shown.sym} -50 -230 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"}
C {/foss/designs/lab1_homework/xschem/ota-fcasc-fd.sym} 910 -1290 0 0 {name=x1}
