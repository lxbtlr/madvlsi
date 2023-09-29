v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 550 250 580 310 {
lab=#net1}
N 550 310 550 340 {
lab=#net2}
N 550 310 580 250 {
lab=#net2}
N 580 220 580 250 {
lab=#net2}
N 630 220 630 310 {
lab=#net3}
N 660 250 690 310 {
lab=Q_not}
N 660 310 660 340 {
lab=Q}
N 660 310 690 250 {
lab=Q}
N 690 220 690 250 {
lab=Q}
N 510 220 510 310 {
lab=VDD}
N 520 10 630 10 {
lab=VDD}
N 630 70 630 110 {
lab=VDD}
N 620 140 620 340 {
lab=CLK}
N 620 140 660 140 {
lab=CLK}
N 660 340 660 370 {
lab=Q}
N 660 370 660 430 {
lab=Q}
N 630 480 660 430 {
lab=Q}
N 630 400 630 430 {
lab=Q_not}
N 630 430 660 480 {
lab=Q_not}
N 660 480 660 510 {
lab=Q_not}
N 630 360 630 400 {
lab=Q_not}
N 630 360 690 360 {
lab=Q_not}
N 690 310 690 360 {
lab=Q_not}
N 630 160 630 220 {
lab=#net3}
N 630 160 690 160 {
lab=#net3}
N 690 110 690 160 {
lab=#net3}
N 630 -10 630 70 {
lab=VDD}
N 580 310 580 360 {
lab=#net1}
N 520 360 580 360 {
lab=#net1}
N 520 360 520 400 {
lab=#net1}
N 520 400 520 430 {
lab=#net1}
N 520 430 550 480 {
lab=#net1}
N 550 480 550 510 {
lab=#net1}
N 550 340 550 430 {
lab=#net2}
N 520 480 550 430 {
lab=#net2}
N 580 400 580 480 {
lab=#net4}
N 690 400 690 480 {
lab=GND}
N 690 460 760 460 {
lab=GND}
N 620 580 620 630 {
lab=CLK}
N 630 480 630 520 {
lab=Q}
N 620 340 620 630 {
lab=CLK}
N 510 10 510 110 {
lab=VDD}
N 510 220 520 220 {
lab=VDD}
N 510 310 520 310 {
lab=VDD}
N 510 10 520 10 {
lab=VDD}
N 550 110 550 180 {
lab=CLK}
N 550 630 620 630 {
lab=CLK}
N 550 70 550 110 {
lab=CLK}
N 550 70 620 70 {
lab=CLK}
N 620 70 620 140 {
lab=CLK}
N 580 150 580 220 {
lab=#net2}
N 580 80 590 80 {
lab=#net1}
N 610 80 610 320 {
lab=#net1}
N 580 320 590 320 {
lab=#net1}
N 430 150 520 150 {
lab=D_NOT}
N 510 110 510 220 {
lab=VDD}
N 430 80 520 80 {
lab=D}
N 520 480 520 530 {
lab=#net2}
N 580 480 580 600 {
lab=#net4}
N 590 320 610 320 {
lab=#net1}
N 590 320 590 550 {
lab=#net1}
N 520 640 760 640 {
lab=GND}
N 690 250 760 250 {
lab=Q}
N 690 310 760 310 {
lab=Q_not}
N 760 460 760 640 {
lab=GND}
N 520 600 520 640 {
lab=GND}
N 590 80 610 80 {
lab=#net1}
N 630 520 650 550 {
lab=Q}
N 660 510 660 600 {
lab=Q_not}
N 650 600 660 600 {
lab=Q_not}
N 650 550 650 580 {
lab=Q}
N 590 550 590 580 {
lab=#net1}
N 520 530 520 550 {
lab=#net2}
N 550 580 650 600 {
lab=Q_not}
N 620 630 620 700 {
lab=CLK}
N 600 700 620 700 {
lab=CLK}
C {madvlsi/pmos3.sym} 550 80 3 0 {name=Q28
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
C {madvlsi/pmos3.sym} 550 150 3 0 {name=Q29
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
C {madvlsi/nmos3.sym} 620 580 3 0 {name=Q30
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
C {madvlsi/nmos3.sym} 550 550 3 0 {name=Q31
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
C {madvlsi/nmos3.sym} 550 600 3 0 {name=Q32
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
C {madvlsi/pmos3.sym} 660 110 3 0 {name=Q33
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
C {madvlsi/pmos3.sym} 550 310 3 0 {name=Q34
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
C {madvlsi/pmos3.sym} 550 220 3 0 {name=Q35
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
C {devices/ipin.sym} 430 80 0 0 {name=p4 lab=D}
C {devices/ipin.sym} 430 150 0 0 {name=p6 lab=D_NOT}
C {madvlsi/pmos3.sym} 660 220 3 0 {name=Q38
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
C {madvlsi/pmos3.sym} 660 310 3 0 {name=Q39
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
C {madvlsi/nmos3.sym} 660 400 3 0 {name=Q40
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
C {madvlsi/nmos3.sym} 660 480 3 0 {name=Q41
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
C {madvlsi/nmos3.sym} 550 480 3 0 {name=Q42
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
C {madvlsi/nmos3.sym} 550 400 3 0 {name=Q43
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
C {madvlsi/vdd.sym} 630 -10 0 0 {name=l8 lab=VDD}
C {madvlsi/gnd.sym} 520 640 0 0 {name=l9 lab=GND}
C {devices/opin.sym} 760 250 0 0 {name=p1 lab=Q}
C {devices/opin.sym} 760 310 0 0 {name=p2 lab=Q_not}
C {devices/ipin.sym} 600 700 0 0 {name=p9 lab=CLK}
