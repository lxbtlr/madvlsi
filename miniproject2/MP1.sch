v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 88 -154 88 -64 {
lab=A}
N 128 -124 128 -94 {
lab=Out}
N 128 -114 218 -114 {
lab=Out}
N 68 -114 88 -114 {
lab=A}
N 128 -214 128 -184 {
lab=VCC}
N 128 -34 128 -24 {
lab=GND}
C {devices/ipin.sym} 68 -114 0 0 {name=p1 lab=A
}
C {devices/ipin.sym} 128 -214 0 0 {name=p2 lab=VCC}
C {devices/opin.sym} 218 -114 0 0 {name=p3 lab=Out
}
C {devices/gnd.sym} 128 -24 0 0 {name=l1 lab=GND}
C {devices/pmos.sym} 108 -154 0 0 {name=M2 
model=DMP2035U 
device=DMP2035U 
m=1}
C {devices/nmos.sym} 108 -64 0 0 {name=M1 model=M2N7002 device=2N7002 footprint=SOT23 m=1}
