v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -190 -150 -160 {
lab=#net1}
N -30 -190 -30 -170 {
lab=#net1}
N -150 -170 -30 -170 {
lab=#net1}
N -30 -300 -30 -250 {
lab=Vcn}
N -150 -300 -150 -250 {
lab=#net2}
N -150 -370 -150 -360 {
lab=VDD}
N -150 -370 -30 -370 {
lab=VDD}
N -30 -370 -30 -360 {
lab=VDD}
N -180 -330 -60 -330 {
lab=Vbp}
N -30 -270 40 -270 {
lab=Vcn}
N 40 -270 40 -220 {
lab=Vcn}
N 0 -220 40 -220 {
lab=Vcn}
N -210 -130 -180 -130 {
lab=#net2}
N -210 -220 -210 -130 {
lab=#net2}
N -210 -220 -180 -220 {
lab=#net2}
N -210 -270 -210 -220 {
lab=#net2}
N -210 -270 -150 -270 {
lab=#net2}
N -150 -100 -150 -70 {
lab=GND}
N -90 -380 -90 -370 {
lab=VDD}
N -150 -70 -150 -60 {
lab=GND}
N -210 -330 -180 -330 {
lab=Vbp}
N 40 -220 70 -220 {
lab=Vcn}
N 180 -370 200 -370 {
lab=#net3}
N 230 -340 230 -300 {
lab=#net4}
N 180 -370 180 -270 {
lab=#net3}
N 180 -270 200 -270 {
lab=#net3}
N 230 -320 370 -320 {
lab=#net4}
N 370 -320 370 -300 {
lab=#net4}
N 230 -240 230 -190 {
lab=#net3}
N 180 -220 230 -220 {
lab=#net3}
N 180 -270 180 -220 {
lab=#net3}
N 370 -240 370 -190 {
lab=Vcp}
N 400 -270 420 -270 {
lab=Vcp}
N 420 -270 420 -220 {
lab=Vcp}
N 370 -220 420 -220 {
lab=Vcp}
N 420 -270 450 -270 {
lab=Vcp}
N 230 -130 230 -110 {
lab=GND}
N 230 -110 370 -110 {
lab=GND}
N 370 -130 370 -110 {
lab=GND}
N 290 -110 290 -100 {
lab=GND}
N 200 -160 340 -160 {
lab=Vbn}
N 150 -160 200 -160 {
lab=Vbn}
N 230 -410 230 -400 {
lab=VDD}
N -30 -570 -30 -540 {
lab=Vbn}
N -30 -480 -30 -470 {
lab=GND}
N 120 -480 120 -470 {
lab=GND}
N 0 -510 90 -510 {
lab=Vbn}
N 20 -550 20 -510 {
lab=Vbn}
N -30 -550 20 -550 {
lab=Vbn}
N 120 -570 120 -540 {
lab=Vbp}
N 80 -560 120 -560 {
lab=Vbp}
N 80 -600 80 -560 {
lab=Vbp}
N 80 -600 90 -600 {
lab=Vbp}
N 90 -600 190 -600 {
lab=Vbp}
N 90 -510 190 -510 {
lab=Vbn}
N -70 -640 -70 -630 {
lab=GND}
N -70 -640 -30 -640 {
lab=GND}
N -30 -640 -30 -630 {
lab=GND}
N 190 -710 190 -600 {
lab=Vbp}
N -210 -710 190 -710 {
lab=Vbp}
N -210 -710 -210 -330 {
lab=Vbp}
N 150 -460 150 -160 {
lab=Vbn}
N 150 -460 190 -460 {
lab=Vbn}
N 190 -510 190 -460 {
lab=Vbn}
N 140 -160 150 -160 {
lab=Vbn}
C {madvlsi/pmos3.sym} -150 -330 0 0 {name=M1
L=0.75
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
C {madvlsi/pmos3.sym} -30 -330 0 0 {name=M2
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
C {madvlsi/nmos3.sym} -150 -220 0 0 {name=M3
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
C {madvlsi/nmos3.sym} -30 -220 2 0 {name=M4
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
C {madvlsi/nmos3.sym} -150 -130 0 0 {name=M5
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
C {madvlsi/vdd.sym} -90 -380 0 0 {name=l1 lab=VDD}
C {madvlsi/gnd.sym} -150 -60 0 0 {name=l2 lab=GND}
C {madvlsi/pmos3.sym} 230 -370 0 0 {name=M6
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
C {madvlsi/pmos3.sym} 230 -270 0 0 {name=M7
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
C {madvlsi/pmos3.sym} 370 -270 2 0 {name=M8
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
C {madvlsi/nmos3.sym} 230 -160 0 0 {name=M9
L=0.75
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
C {madvlsi/nmos3.sym} 370 -160 0 0 {name=M10
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
C {madvlsi/gnd.sym} 290 -100 0 0 {name=l4 lab=GND}
C {madvlsi/vdd.sym} 230 -410 0 0 {name=l3 lab=VDD}
C {devices/opin.sym} -210 -330 2 0 {name=p4 lab=Vbp}
C {devices/opin.sym} 140 -160 2 0 {name=p2 lab=Vbn}
C {devices/opin.sym} 450 -270 0 0 {name=p5 lab=Vcp}
C {devices/opin.sym} 70 -220 0 0 {name=p6 lab=Vcn}
C {madvlsi/isource.sym} -30 -600 0 0 {name=I1
value=1u}
C {madvlsi/nmos3.sym} -30 -510 2 0 {name=M11
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
C {madvlsi/nmos3.sym} 120 -510 0 0 {name=M12
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
C {madvlsi/gnd.sym} -30 -470 0 0 {name=l5 lab=GND}
C {madvlsi/gnd.sym} 120 -470 0 0 {name=l6 lab=GND}
C {madvlsi/pmos3.sym} 120 -600 0 0 {name=M13
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
C {madvlsi/vdd.sym} 120 -630 0 0 {name=l7 lab=VDD}
C {madvlsi/gnd.sym} -70 -630 0 0 {name=l8 lab=GND}
