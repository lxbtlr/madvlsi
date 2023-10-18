v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -300 -230 -300 {
lab=#net23}
N -320 -320 -320 -300 {
lab=VDD}
N -390 -160 -290 -160 {
lab=V_2}
N -370 -110 -270 -110 {
lab=Vbn}
N -210 110 -210 140 {
lab=Vcn}
N -180 80 -150 80 {
lab=#net24}
N -290 -480 -290 -270 {
lab=Vbp}
N -320 -420 -320 -320 {
lab=VDD}
N -200 -480 -200 -330 {
lab=Vcp}
N -350 -190 -320 -190 {
lab=#net25}
N -350 -450 -350 -190 {
lab=#net25}
N -350 -450 -250 -450 {
lab=#net25}
N -250 -450 -250 -390 {
lab=#net25}
N -260 -390 -250 -390 {
lab=#net25}
N -250 -390 -230 -390 {
lab=#net25}
N -180 -240 -180 -190 {
lab=#net23}
N -240 -240 -180 -240 {
lab=#net23}
N -240 -300 -240 -240 {
lab=#net23}
N -260 -190 -240 -190 {
lab=#net26}
N -290 -40 -290 50 {
lab=#net27}
N -320 -10 -320 80 {
lab=GND}
N -330 80 -320 80 {
lab=GND}
N -210 20 -210 110 {
lab=Vcn}
N -170 -40 -170 -10 {
lab=#net27}
N -240 -190 -240 -140 {
lab=#net26}
N -260 -10 -240 -10 {
lab=#net28}
N -260 80 -240 80 {
lab=#net29}
N -290 -40 -170 -40 {
lab=#net27}
N -330 -80 -240 -80 {
lab=GND}
N -330 -80 -330 80 {
lab=GND}
N -180 -10 -170 -10 {
lab=#net27}
N -170 -300 -170 -40 {
lab=#net27}
N -150 -390 -150 80 {
lab=#net24}
N -170 -390 -150 -390 {
lab=#net24}
N -320 -220 -210 -220 {
lab=V_1}
N -380 -220 -320 -220 {
lab=V_1}
N -70 -300 -40 -300 {
lab=#net30}
N 20 -320 20 -300 {
lab=VDD}
N -10 -160 90 -160 {
lab=V_2}
N -30 -110 70 -110 {
lab=Vbn}
N -90 110 -90 140 {
lab=Vcn}
N -150 80 -120 80 {
lab=out}
N -10 -480 -10 -270 {
lab=Vbp}
N 20 -420 20 -320 {
lab=VDD}
N -100 -480 -100 -330 {
lab=Vcp}
N 20 -190 50 -190 {
lab=#net31}
N 50 -450 50 -190 {
lab=#net31}
N -50 -450 50 -450 {
lab=#net31}
N -50 -450 -50 -390 {
lab=#net31}
N -50 -390 -40 -390 {
lab=#net31}
N -70 -390 -50 -390 {
lab=#net31}
N -120 -240 -120 -190 {
lab=#net30}
N -120 -240 -60 -240 {
lab=#net30}
N -60 -300 -60 -240 {
lab=#net30}
N -60 -190 -40 -190 {
lab=#net32}
N -10 -40 -10 50 {
lab=#net33}
N 20 -10 20 80 {
lab=GND}
N 20 80 30 80 {
lab=GND}
N -90 20 -90 110 {
lab=Vcn}
N -130 -40 -130 -10 {
lab=#net33}
N -60 -190 -60 -140 {
lab=#net32}
N -60 -10 -40 -10 {
lab=#net34}
N -60 80 -40 80 {
lab=#net35}
N -130 -40 -10 -40 {
lab=#net33}
N -60 -80 30 -80 {
lab=GND}
N 30 -80 30 80 {
lab=GND}
N -130 -10 -120 -10 {
lab=#net33}
N -130 -300 -130 -40 {
lab=#net33}
N -150 -390 -130 -390 {
lab=out}
N -90 -220 20 -220 {
lab=V_1}
N 20 -220 80 -220 {
lab=V_1}
N -150 -420 -150 -390 {}
C {madvlsi/vdd.sym} -320 -420 0 1 {name=l9 lab=VDD}
C {madvlsi/gnd.sym} -330 80 0 0 {name=l10 lab=GND}
C {devices/ipin.sym} -380 -220 0 0 {name=p20 lab=V_1}
C {devices/ipin.sym} -200 -480 1 0 {name=p21 lab=Vcp}
C {devices/ipin.sym} -210 140 3 0 {name=p22 lab=Vcn}
C {devices/ipin.sym} -290 -480 1 0 {name=p23 lab=Vbp}
C {devices/ipin.sym} -370 -110 0 0 {name=p24 lab=Vbn}
C {madvlsi/nmos3.sym} -240 -110 0 0 {name=M34
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
C {madvlsi/pmos3.sym} -290 -390 1 1 {name=M35
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
C {madvlsi/pmos3.sym} -290 -300 3 0 {name=M36
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
C {madvlsi/pmos3.sym} -200 -390 3 1 {name=M37
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
C {madvlsi/pmos3.sym} -200 -300 1 0 {name=M38
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
C {madvlsi/nmos3.sym} -210 -10 3 0 {name=M39
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
C {madvlsi/nmos3.sym} -210 80 3 0 {name=M40
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
C {madvlsi/nmos3.sym} -290 -10 1 0 {name=M41
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
C {madvlsi/nmos3.sym} -290 80 1 0 {name=M42
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
C {madvlsi/nmos3.sym} -210 -190 3 1 {name=M43
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
C {madvlsi/nmos3.sym} -290 -190 1 1 {name=M44
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
C {devices/ipin.sym} -390 -160 0 0 {name=p25 lab=V_2}
C {madvlsi/vdd.sym} 20 -420 0 0 {name=l11 lab=VDD}
C {madvlsi/gnd.sym} 30 80 0 1 {name=l12 lab=GND}
C {devices/ipin.sym} 80 -220 0 1 {name=p27 lab=V_1}
C {devices/ipin.sym} -100 -480 3 1 {name=p28 lab=Vcp}
C {devices/ipin.sym} -90 140 1 1 {name=p29 lab=Vcn}
C {devices/ipin.sym} -10 -480 3 1 {name=p30 lab=Vbp}
C {devices/ipin.sym} 70 -110 0 1 {name=p31 lab=Vbn}
C {madvlsi/nmos3.sym} -60 -110 0 1 {name=M45
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
C {madvlsi/pmos3.sym} -10 -390 3 0 {name=M46
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
C {madvlsi/pmos3.sym} -10 -300 1 1 {name=M47
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
C {madvlsi/pmos3.sym} -100 -390 1 0 {name=M48
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
C {madvlsi/pmos3.sym} -100 -300 3 1 {name=M49
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
C {madvlsi/nmos3.sym} -90 -10 1 1 {name=M50
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
C {madvlsi/nmos3.sym} -90 80 1 1 {name=M51
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
C {madvlsi/nmos3.sym} -10 -10 3 1 {name=M52
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
C {madvlsi/nmos3.sym} -10 80 3 1 {name=M53
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
C {madvlsi/nmos3.sym} -90 -190 1 0 {name=M54
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
C {madvlsi/nmos3.sym} -10 -190 3 0 {name=M55
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
C {devices/ipin.sym} 90 -160 0 1 {name=p32 lab=V_2}
C {devices/opin.sym} -150 -420 0 1 {name=p33 lab=out}
