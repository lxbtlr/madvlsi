v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -40 150 -40 {
lab=Q1}
N 250 -40 270 -40 {
lab=Q2}
N 370 -40 390 -40 {
lab=Q3}
N 370 -20 370 0 {
lab=#net1}
N 370 -0 390 0 {
lab=#net1}
N 250 0 270 0 {
lab=#net2}
N 250 -20 250 0 {
lab=#net2}
N 130 0 150 -0 {
lab=#net3}
N 130 -20 130 0 {
lab=#net3}
N 440 -90 440 -70 {
lab=CLK}
N 60 -90 440 -90 {
lab=CLK}
N 80 -90 80 -70 {
lab=CLK}
N 200 -90 200 -70 {
lab=CLK}
N 320 -90 320 -70 {
lab=CLK}
N 10 -90 60 -90 {
lab=CLK}
N 490 -40 510 -40 {
lab=Q}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 70 -20 0 0 {name=x1}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 190 -20 0 0 {name=x2}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 310 -20 0 0 {name=x3}
C {/home/lxbtlr/MAD/miniproject2/CSRL_Latch.sym} 430 -20 0 0 {name=x4}
C {devices/opin.sym} 510 -40 0 0 {name=p1 lab=Q}
C {devices/opin.sym} 490 -20 0 0 {name=p2 lab=Q_not}
C {devices/ipin.sym} 30 -40 0 0 {name=p3 lab=D}
C {devices/ipin.sym} 30 0 0 0 {name=p4 lab=D_NOT}
C {devices/ipin.sym} 10 -90 0 0 {name=p5 lab=CLK}
C {devices/lab_pin.sym} 140 -40 1 0 {name=p6 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 260 -40 1 0 {name=p7 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 380 -40 1 0 {name=p8 sig_type=std_logic lab=Q3}
