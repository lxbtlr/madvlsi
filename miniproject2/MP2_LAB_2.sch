v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 740 -160 1540 240 {flags=graph

y2=2.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Q
Q_not
Q1
Q2
Q3
D
CLK"
color="4 5 6 10 8 9 15"
dataset=-1
unitx=1
logx=0
logy=0
y1=0
digital=0}
N -90 -80 -70 -80 {
lab=Q1}
N 30 -80 50 -80 {
lab=Q2}
N 150 -80 170 -80 {
lab=Q3}
N 150 -60 150 -40 {
lab=#net1}
N 150 -40 170 -40 {
lab=#net1}
N 30 -40 50 -40 {
lab=#net2}
N 30 -60 30 -40 {
lab=#net2}
N -90 -40 -70 -40 {
lab=#net3}
N -90 -60 -90 -40 {
lab=#net3}
N 220 -130 220 -110 {
lab=CLK}
N -160 -130 220 -130 {
lab=CLK}
N -140 -130 -140 -110 {
lab=CLK}
N -20 -130 -20 -110 {
lab=CLK}
N 100 -130 100 -110 {
lab=CLK}
N -210 -130 -160 -130 {
lab=CLK}
N 270 -80 290 -80 {
lab=Q}
N -270 -40 -190 -40 {
lab=D_NOT}
N -340 -80 -190 -80 {
lab=D}
N -340 -80 -340 -40 {
lab=D}
N -390 -40 -390 0 {
lab=D}
N -390 -40 -340 -40 {
lab=D}
N -470 -130 -210 -130 {
lab=CLK}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} -150 -60 0 0 {name=x1}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} -30 -60 0 0 {name=x2}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 90 -60 0 0 {name=x3}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 210 -60 0 0 {name=x4}
C {devices/opin.sym} 290 -80 0 0 {name=p1 lab=Q}
C {devices/opin.sym} 270 -60 0 0 {name=p2 lab=Q_NOT}
C {devices/lab_pin.sym} -80 -80 1 0 {name=p6 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 40 -80 1 0 {name=p7 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 160 -80 1 0 {name=p8 sig_type=std_logic lab=Q3}
C {madvlsi/vsource.sym} -390 30 0 0 {name=Vin_D
value= "pwl(0 0 25n 0 26n 1.8 40n 1.8 41n 0)"}
C {madvlsi/vsource.sym} -470 -100 0 0 {name=V_CLK
value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {madvlsi/vsource.sym} -470 40 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} -470 70 0 0 {name=l6 lab=GND}
C {madvlsi/vdd.sym} -470 10 0 0 {name=l7 lab=VDD}
C {devices/code_shown.sym} 10 50 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n .075u
.ic V(Q)=0 V(Q1)=0 V(Q2)=0 V(Q3)=0
.saveall"}
C {/home/lxbtlr/MAD/miniproject1/MP1_inverter.sym} -250 20 0 0 {name=x5}
C {madvlsi/gnd.sym} -470 -70 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} -390 60 0 0 {name=l2 lab=GND}
C {madvlsi/tt_models.sym} -130 30 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/launcher.sym} -100 250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/MP2_LAB_2.raw tran"
}
C {devices/lab_wire.sym} -260 -130 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -240 -80 0 0 {name=p4 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} -220 -40 0 0 {name=p5 sig_type=std_logic lab=D_NOT}
