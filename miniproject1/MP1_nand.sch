v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -10 140 10 {
lab=Out}
N 260 -10 260 10 {
lab=Out}
N 140 10 260 10 {
lab=Out}
N 180 10 180 30 {
lab=Out}
N 180 90 180 120 {
lab=#net1}
N 140 -100 140 -70 {
lab=VDD}
N 260 -100 260 -70 {
lab=VDD}
N 210 -40 220 -40 {
lab=B}
N 90 -40 100 -40 {
lab=A}
N 260 10 320 10 {
lab=Out}
N 180 180 180 190 {
lab=GND}
N 90 -40 90 60 {
lab=A}
N 90 60 140 60 {
lab=A}
N 40 150 140 150 {
lab=B}
N 40 -150 40 150 {
lab=B}
N 40 -150 210 -150 {
lab=B}
N 210 -150 210 -40 {
lab=B}
N 140 150 150 150 {
lab=B}
N 140 60 150 60 {
lab=A}
N 100 -40 110 -40 {
lab=A}
N 220 -40 230 -40 {
lab=B}
N 80 30 90 30 {
lab=A}
N 40 120 60 120 {
lab=B}
C {madvlsi/nmos3.sym} 180 60 0 0 {name=M3
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/nmos3.sym} 180 150 0 0 {name=M4
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 260 -40 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 140 -40 0 0 {name=M5
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/vdd.sym} 260 -100 0 0 {name=l1 lab=VDD}
C {madvlsi/vdd.sym} 140 -100 0 0 {name=l3 lab=VDD}
C {madvlsi/gnd.sym} 180 190 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 80 30 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 60 120 2 0 {name=p2 lab=B}
C {devices/opin.sym} 320 10 0 0 {name=p3 lab=Out}
