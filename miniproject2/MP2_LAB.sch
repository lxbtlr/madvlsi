v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -110 40 -110 {
lab=D}
N -60 -110 -60 -80 {
lab=D}
N 160 -110 180 -110 {
lab=Out}
N 160 -90 180 -90 {
lab=Out_not}
N -60 -70 -60 -50 {
lab=D}
N -60 -80 -60 -70 {
lab=D}
N -120 -140 100 -140 {
lab=CLK}
N 40 -110 60 -110 {
lab=D}
N 10 -80 10 -70 {
lab=#net1}
N 10 -80 60 -80 {
lab=#net1}
N -130 -140 -130 30 {
lab=CLK}
N -130 -140 -120 -140 {
lab=CLK}
C {/home/lxbtlr/MAD/miniproject2/4BIT_SHIFT_REGISTER.sym} 210 -90 0 0 {name=x1}
C {madvlsi/vsource.sym} -60 -20 0 0 {name=Vin_D
value= "pwl(0 0 25n 0 26n 1.8 40n 1.8 41n 0)"}
C {madvlsi/vsource.sym} -130 60 0 0 {name=V_CLK
value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {madvlsi/vsource.sym} -120 -220 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} -120 -190 0 0 {name=l6 lab=GND}
C {madvlsi/vdd.sym} -120 -250 0 0 {name=l7 lab=VDD}
C {devices/code_shown.sym} 0 -220 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n .075u
.saveall"}
C {devices/opin.sym} 180 -110 0 0 {name=p1 lab=Out}
C {devices/opin.sym} 180 -90 0 0 {name=p3 lab=Out_not}
C {/home/lxbtlr/MAD/miniproject1/MP1_inverter.sym} 30 -10 0 0 {name=x2}
C {madvlsi/gnd.sym} -130 90 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} -60 10 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 -140 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -60 -90 0 0 {name=p4 sig_type=std_logic lab=D}
C {madvlsi/tt_models.sym} 200 -260 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
