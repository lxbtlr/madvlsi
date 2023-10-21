v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 40 -310 50 {
lab=GND}
N 130 -240 300 -240 {
lab=#net1}
N 130 -180 300 -180 {
lab=#net2}
N 300 -200 300 -180 {
lab=#net2}
N 300 -200 350 -200 {
lab=#net2}
N 350 -180 350 -150 {
lab=#net3}
N 90 -150 350 -150 {
lab=#net3}
N 300 -240 350 -240 {
lab=#net1}
N 90 -270 350 -270 {
lab=#net4}
N 350 -270 350 -260 {
lab=#net4}
N 220 -210 240 -210 {
lab=Vout}
N 230 -210 230 -120 {
lab=Vout}
N 350 -240 350 -230 {
lab=#net1}
N 350 -260 350 -250 {
lab=#net4}
N 240 -210 250 -210 {
lab=Vout}
N 190 -210 200 -210 {
lab=Vout}
N 200 -210 210 -210 {
lab=Vout}
N 60 -40 100 -40 {
lab=#net5}
N 80 -40 80 0 {
lab=#net5}
N 160 -40 230 -40 {
lab=Vout}
N 230 -120 230 -40 {
lab=Vout}
N -120 -40 0 -40 {
lab=#net6}
N -120 -180 -120 -40 {
lab=#net6}
N 210 -210 220 -210 {
lab=Vout}
N -120 -240 -120 -180 {
lab=#net6}
N -120 -240 30 -240 {
lab=#net6}
N 80 0 80 60 {}
C {madvlsi/vsource.sym} -310 10 0 0 {name=Vdd
value=1.8}
C {madvlsi/vdd.sym} -310 -20 0 0 {name=l3 lab=VDD}
C {madvlsi/gnd.sym} -310 50 0 0 {name=l4 lab=GND}
C {madvlsi/tt_models.sym} -400 -230 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/code_shown.sym} 540 -210 0 0 {name=SPICE3 only_toplevel=false value=".param B = 0
.control
ac dec 20 1 1e9
alterparam B = 1
reset
ac dec 20 1 1e9
setplot new
setcurplottitle=Loopgain
let frequency = ac1.frequency
let T = (ac1.i(V_4) + ac2.i(V_3)) / (ac1.i(V_3) + ac2.i(V_4))
let Tmag = db(T)
let Tphase = 180 * cph(T)/pi
plot Tmag Tphase xlog 
.endc"}
C {/home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym} 90 -210 0 0 {name=x3}
C {/home/lxbtlr/MAD/miniproject3/bias_generator.sym} 420 -150 0 0 {name=x4}
C {devices/opin.sym} 250 -210 0 0 {name=p4 lab=Vout}
C {devices/lab_wire.sym} 30 -180 0 0 {name=p6 sig_type=std_logic lab=V_1}
C {madvlsi/vsource.sym} 30 -40 3 0 {name=V_3
value="0 AC \{1-B\}"}
C {madvlsi/vsource.sym} 130 -40 3 1 {name=V_4
value="0 AC \{B\}"}
C {madvlsi/gnd.sym} 80 60 0 0 {name=l2 lab=GND}
C {madvlsi/gnd.sym} 230 20 0 0 {name=l5 lab=GND}
C {madvlsi/capacitor.sym} 230 -10 0 0 {name=C2
value=2p
m=1}
C {devices/lab_wire.sym} -210 -250 0 0 {name=p2 sig_type=std_logic lab=V_1}
C {madvlsi/vsource.sym} -210 -220 0 0 {name=V1
value=0.81}
C {madvlsi/gnd.sym} -210 -190 0 0 {name=l1 lab=GND}
