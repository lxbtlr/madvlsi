v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 -50 20 -50 {
lab=A}
N 0 -30 20 -30 {
lab=B}
N 200 -40 210 -40 {
lab=Out}
N 110 -40 130 -40 {
lab=#net1}
C {/home/lxbtlr/MAD/miniproject1/MP1_nand.sym} 40 -40 0 0 {name=x1}
C {devices/ipin.sym} 0 -50 0 0 {name=p1 lab=A
}
C {devices/ipin.sym} 0 -30 0 0 {name=p2 lab=B
}
C {devices/opin.sym} 210 -40 0 0 {name=p3 lab=Out
}
C {/home/lxbtlr/MAD/miniproject1/MP1_inverter.sym} 220 20 0 0 {name=x2}
