v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -120 200 -100 {
lab=Out}
N 200 -110 290 -110 {
lab=Out}
N 170 -150 170 -70 {
lab=A}
N 150 -110 170 -110 {
lab=A}
C {madvlsi/pmos3.sym} 200 -150 0 0 {name=M1
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
C {madvlsi/nmos3.sym} 200 -70 0 0 {name=M2
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
C {madvlsi/vdd.sym} 200 -180 0 0 {name=l3 lab=VDD}
C {madvlsi/gnd.sym} 200 -40 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 150 -110 0 0 {name=p1 lab=A}
C {devices/opin.sym} 290 -110 0 0 {name=p2 lab=Out}
