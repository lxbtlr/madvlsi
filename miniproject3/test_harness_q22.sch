v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -20 290 -20 {
lab=#net1}
N 120 40 290 40 {
lab=#net2}
N -220 -140 -220 -130 {
lab=GND}
N -230 120 -230 130 {
lab=GND}
N -120 120 -120 130 {
lab=GND}
N -120 40 -120 60 {
lab=V_1}
N -230 -20 -230 60 {
lab=V_2}
N -230 -20 20 -20 {
lab=V_2}
N 290 20 290 40 {
lab=#net2}
N 290 20 340 20 {
lab=#net2}
N 340 40 340 70 {
lab=#net3}
N 80 70 340 70 {
lab=#net3}
N 290 -20 340 -20 {
lab=#net1}
N 80 -50 340 -50 {
lab=#net4}
N 340 -50 340 -40 {
lab=#net4}
N 210 10 230 10 {
lab=out}
N 220 10 220 100 {
lab=out}
N 340 -20 340 -10 {
lab=#net1}
N 340 -40 340 -30 {
lab=#net4}
N 230 10 240 10 {
lab=out}
N 180 10 190 10 {
lab=#net5}
N 140 120 220 10 {
lab=out}
N -60 40 20 40 {
lab=V_1}
N 120 120 140 120 {
lab=out}
N 190 10 200 10 {
lab=#net5}
N -120 40 -60 40 {
lab=V_1}
C {/home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym} 80 10 0 0 {name=x1}
C {/home/lxbtlr/MAD/miniproject3/bias_generator.sym} 410 70 0 0 {name=x2}
C {madvlsi/vsource.sym} -220 -170 0 0 {name=Vdd
value=1.8}
C {madvlsi/vdd.sym} -220 -200 0 0 {name=l3 lab=VDD}
C {madvlsi/gnd.sym} -220 -130 0 0 {name=l4 lab=GND}
C {madvlsi/vsource.sym} -230 90 0 0 {name=V_2
value=0.86}
C {madvlsi/gnd.sym} -230 130 0 0 {name=l6 lab=GND}
C {madvlsi/vsource.sym} -120 90 0 0 {name=V_1
value=1}
C {madvlsi/gnd.sym} -120 130 0 0 {name=l8 lab=GND}
C {devices/opin.sym} 240 10 0 0 {name=p1 lab=out}
C {madvlsi/gnd.sym} 220 160 0 0 {name=l9 lab=GND}
C {madvlsi/capacitor.sym} 220 130 0 0 {name=C1
value=2p
m=1}
C {madvlsi/tt_models.sym} 90 -270 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/lab_wire.sym} -230 -20 0 0 {name=p2 sig_type=std_logic lab=V_2}
C {devices/lab_wire.sym} -120 40 0 0 {name=p3 sig_type=std_logic lab=V_1}
C {madvlsi/vsource.sym} 120 150 0 0 {name=V_3
value=1}
C {madvlsi/gnd.sym} 120 180 0 0 {name=l1 lab=GND}
C {madvlsi/ammeter1.sym} 200 10 3 0 {name=Vmeas}
C {devices/code_shown.sym} 550 70 0 0 {name=SPICE3 only_toplevel=false value=".dc V_1 0 1.8 .001 
.save v(out) v(V_1) v(V_2) i(Vmeas)"}
