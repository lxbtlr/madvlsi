v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -80 -160 -80 {
lab=D}
N -170 10 -160 10 {
lab=D_NOT}
N 380 -250 380 -240 {
lab=VDD}
N 110 -200 110 -150 {
lab=VDD}
N -10 -200 -10 -150 {
lab=VDD}
N -130 70 -130 120 {
lab=CLK}
N -130 120 -130 140 {
lab=CLK}
N -130 140 10 140 {
lab=CLK}
N 40 170 40 200 {
lab=GND}
N 430 80 430 100 {
lab=GND}
N 340 80 340 100 {
lab=GND}
N 10 140 230 140 {
lab=CLK}
N 230 -210 350 -210 {
lab=CLK}
N -10 80 110 80 {
lab=#net1}
N 40 80 40 110 {
lab=#net1}
N -10 -90 -10 20 {
lab=#net2}
N 110 -90 110 20 {
lab=#net3}
N 140 -120 140 50 {
lab=#net2}
N -40 -120 -40 50 {
lab=#net3}
N -100 10 -10 10 {
lab=#net2}
N -10 10 140 10 {
lab=#net2}
N 140 10 200 10 {
lab=#net2}
N 230 -210 230 -110 {
lab=CLK}
N 230 -110 230 -20 {
lab=CLK}
N 230 -20 230 140 {
lab=CLK}
N -100 -80 -40 -80 {
lab=#net3}
N -40 -80 110 -80 {
lab=#net3}
N 110 -80 200 -80 {
lab=#net3}
N -130 40 -130 70 {
lab=CLK}
N -130 -50 -130 40 {
lab=CLK}
N 340 -120 340 20 {
lab=Q_NOT}
N 310 -150 310 50 {
lab=Q}
N 430 -80 430 20 {
lab=Q}
N 430 -180 430 -140 {
lab=#net4}
N 380 -180 430 -180 {
lab=#net4}
N 340 -180 380 -180 {
lab=#net4}
N 460 -110 460 50 {
lab=Q_NOT}
N 260 10 340 10 {
lab=Q_NOT}
N 340 10 460 10 {
lab=Q_NOT}
N 460 10 570 10 {
lab=Q_NOT}
N 260 -80 310 -80 {
lab=Q}
N 310 -80 430 -80 {
lab=Q}
N 430 -80 570 -80 {
lab=Q}
C {madvlsi/gnd.sym} 40 200 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} 340 100 0 0 {name=l2 lab=GND}
C {madvlsi/gnd.sym} 430 100 0 0 {name=l3 lab=GND}
C {madvlsi/pmos3.sym} -10 -120 0 0 {name=Q8
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
C {madvlsi/pmos3.sym} 110 -120 2 0 {name=Q9
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
C {madvlsi/pmos3.sym} -130 -80 3 0 {name=Q1
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
C {madvlsi/pmos3.sym} -130 10 3 0 {name=Q2
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
C {madvlsi/nmos3.sym} 40 140 0 0 {name=Q5
L=0.15
W=4
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
C {madvlsi/nmos3.sym} 230 10 1 0 {name=Q4
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
C {madvlsi/nmos3.sym} 230 -80 1 0 {name=Q3
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
C {madvlsi/nmos3.sym} -10 50 0 0 {name=Q6
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
C {madvlsi/nmos3.sym} 110 50 2 0 {name=Q7
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
C {madvlsi/nmos3.sym} 340 50 0 0 {name=Q13
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
C {madvlsi/nmos3.sym} 430 50 2 0 {name=Q14
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
C {madvlsi/pmos3.sym} 340 -150 0 0 {name=Q11
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
C {madvlsi/pmos3.sym} 430 -110 2 0 {name=Q12
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
C {madvlsi/pmos3.sym} 380 -210 0 0 {name=Q10
L=0.15
W=4
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
C {madvlsi/vdd.sym} -10 -200 0 0 {name=l4 lab=VDD}
C {madvlsi/vdd.sym} 110 -200 0 0 {name=l5 lab=VDD}
C {madvlsi/vdd.sym} 380 -250 0 0 {name=l6 lab=VDD}
C {devices/ipin.sym} -170 -80 0 0 {name=p10 lab=D}
C {devices/ipin.sym} -170 10 0 0 {name=p3 lab=D_NOT}
C {devices/opin.sym} 570 -80 0 0 {name=p2 lab=Q}
C {devices/opin.sym} 570 10 0 0 {name=p5 lab=Q_NOT}
C {devices/ipin.sym} -130 110 0 0 {name=p1 lab=CLK}
