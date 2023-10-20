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
lab=VQout}
N 220 10 220 100 {
lab=VQout}
N 340 -20 340 -10 {
lab=#net1}
N 340 -40 340 -30 {
lab=#net4}
N 230 10 240 10 {
lab=VQout}
N 180 10 190 10 {
lab=VQout}
N 190 10 200 10 {
lab=VQout}
N 130 340 300 340 {
lab=#net5}
N 130 400 300 400 {
lab=#net6}
N 300 380 300 400 {
lab=#net6}
N 300 380 350 380 {
lab=#net6}
N 350 400 350 430 {
lab=#net7}
N 90 430 350 430 {
lab=#net7}
N 300 340 350 340 {
lab=#net5}
N 90 310 350 310 {
lab=#net8}
N 350 310 350 320 {
lab=#net8}
N 220 370 240 370 {
lab=Vout}
N 230 370 230 460 {
lab=Vout}
N 350 340 350 350 {
lab=#net5}
N 350 320 350 330 {
lab=#net8}
N 240 370 250 370 {
lab=Vout}
N 190 370 200 370 {
lab=Vout}
N 200 370 210 370 {
lab=Vout}
N 60 540 100 540 {
lab=#net9}
N 80 540 80 580 {
lab=#net9}
N 160 540 230 540 {
lab=Vout}
N 230 460 230 540 {
lab=Vout}
N -120 540 0 540 {
lab=#net10}
N -120 400 -120 540 {
lab=#net10}
N -120 90 220 90 {
lab=VQout}
N 200 10 210 10 {
lab=VQout}
N 210 370 220 370 {
lab=Vout}
N -120 340 -120 400 {
lab=#net10}
N -120 340 30 340 {
lab=#net10}
N -120 -20 20 -20 {
lab=VQout}
N -120 -20 -120 90 {
lab=VQout}
C {/home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym} 80 10 0 0 {name=x1}
C {/home/lxbtlr/MAD/miniproject3/bias_generator.sym} 410 70 0 0 {name=x2}
C {madvlsi/vsource.sym} -220 -170 0 0 {name=Vdd
value=1.8}
C {madvlsi/vdd.sym} -220 -200 0 0 {name=l3 lab=VDD}
C {madvlsi/gnd.sym} -220 -130 0 0 {name=l4 lab=GND}
C {devices/opin.sym} 240 10 0 0 {name=p1 lab=VQout}
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
C {devices/lab_wire.sym} 20 40 0 0 {name=p3 sig_type=std_logic lab=V_1}
C {devices/code_shown.sym} 550 200 0 0 {name=SPICE3 only_toplevel=false value=".param B = 0
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
C {/home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym} 90 370 0 0 {name=x3}
C {/home/lxbtlr/MAD/miniproject3/bias_generator.sym} 420 430 0 0 {name=x4}
C {devices/opin.sym} 250 370 0 0 {name=p4 lab=Vout}
C {devices/lab_wire.sym} 30 400 0 0 {name=p6 sig_type=std_logic lab=V_1}
C {madvlsi/vsource.sym} 30 540 3 0 {name=V_3
value="0 AC \{1-B\}"}
C {madvlsi/vsource.sym} 130 540 3 1 {name=V_4
value="0 AC \{B\}"}
C {madvlsi/depvsrc.sym} 80 610 0 0 {name=B1
func=v(VQout)}
C {madvlsi/gnd.sym} 80 640 0 0 {name=l2 lab=GND}
C {madvlsi/gnd.sym} 230 600 0 0 {name=l5 lab=GND}
C {madvlsi/capacitor.sym} 230 570 0 0 {name=C2
value=2p
m=1}
C {devices/lab_wire.sym} -210 330 0 0 {name=p2 sig_type=std_logic lab=V_1}
C {madvlsi/vsource.sym} -210 360 0 0 {name=V1
value=0.81}
C {madvlsi/gnd.sym} -210 390 0 0 {name=l1 lab=GND}
