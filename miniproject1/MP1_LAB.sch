v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -30 130 -30 {
lab=Out}
N 130 -30 150 -30 {
lab=Out}
N -60 -40 -60 30 {
lab=A}
N -60 -40 20 -40 {
lab=A}
N 10 -20 10 30 {
lab=B}
N 10 -20 20 -20 {
lab=B}
N 10 30 10 100 {
lab=B}
N 130 -30 130 -20 {
lab=Out}
C {/home/lxbtlr/MAD/MP1_and.sym} 170 -30 0 0 {name=x1}
C {madvlsi/vsource.sym} 270 90 0 0 {name=Vdd
value=1.8}
C {madvlsi/vsource.sym} -60 60 0 0 {name=Vin_a
value="pulse(0 1.8 1ns 1ns 1ns 4ns 12ns)"
}
C {devices/capa.sym} 130 10 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {madvlsi/vsource.sym} 10 130 0 0 {name=Vin_b
value="pulse(0 1.8 1ns 1ns 2ns 6ns 12ns)"
}
C {madvlsi/tt_models.sym} 240 -130 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/opin.sym} 150 -30 0 0 {name=p1 sig_type=std_logic lab=Out}
C {devices/code_shown.sym} -50 -90 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 1u
.saveall"}
C {madvlsi/gnd.sym} 130 40 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} 10 160 0 0 {name=l2 lab=GND}
C {madvlsi/gnd.sym} -60 90 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 270 60 0 0 {name=l4 lab=VDD}
C {madvlsi/gnd.sym} 270 120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -60 -40 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 10 -20 0 0 {name=p3 sig_type=std_logic lab=B}
