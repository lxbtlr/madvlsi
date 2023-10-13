-- sch_path: /home/lxbtlr/MAD/miniproject3/test_harness.sch
entity test_harness is
port(
  out : out std_logic
);
end test_harness ;

architecture arch_test_harness of test_harness is

component f_cascode_diff_amp 
port (
  Vbp : in std_logic ;
  Vcp : in std_logic ;
  V_2 : in std_logic ;
  out : out std_logic ;
  V_1 : in std_logic ;
  Vcn : in std_logic ;
  Vbn : in std_logic
);
end component ;

component bias_generator 
port (
  Vbp : in std_logic ;
  Vcp : out std_logic ;
  Vcn : out std_logic ;
  Vbn : in std_logic
);
end component ;


signal VDD : std_logic ;
signal Vbn : std_logic ;
signal Vbp : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal GND : std_logic ;
begin
x1 : f_cascode_diff_amp
port map (
   Vbp => Vbp ,
   Vcp => net1 ,
   V_2 => net4 ,
   out => out ,
   V_1 => net3 ,
   Vcn => net2 ,
   Vbn => Vbn
);

x2 : bias_generator
port map (
   Vbp => Vbp ,
   Vcp => net1 ,
   Vcn => net2 ,
   Vbn => Vbn
);

Vdd : vsource
generic map (
   value => 1.8
)
port map (
   pos => VDD ,
   neg => GND
);

V_2 : vsource
generic map (
   value => 1.1
)
port map (
   pos => net4 ,
   neg => GND
);

V_1 : vsource
generic map (
   value => 1
)
port map (
   pos => net3 ,
   neg => GND
);

I1 : isource
generic map (
   value => 1M
)
port map (
   pos => GND ,
   neg => Vbn
);

M1 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => GND ,
   G => Vbn ,
   B => Vbn
);

M2 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => Vbp ,
   G => Vbn ,
   B => GND
);

M3 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => Vbp ,
   G => Vbp ,
   S => VDD
);

C1 : capacitor
generic map (
   value => 1.0e-12 ,
   m => 1
)
port map (
   pos => out ,
   neg => GND
);

.tran 0.01n .1u
.saveall
end arch_test_harness ;


-- expanding   symbol:  /home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym # of pins=7
-- sym_path: /home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sym
-- sch_path: /home/lxbtlr/MAD/miniproject3/f_cascode_diff_amp.sch
entity f_cascode_diff_amp is
port (
  Vbp : in std_logic ;
  Vcp : in std_logic ;
  V_2 : in std_logic ;
  out : out std_logic ;
  V_1 : in std_logic ;
  Vcn : in std_logic ;
  Vbn : in std_logic
);
end f_cascode_diff_amp ;

architecture arch_f_cascode_diff_amp of f_cascode_diff_amp is


signal VDD : std_logic ;
signal B : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal b_1 : std_logic ;
signal b_2 : std_logic ;
signal GND : std_logic ;
begin
M1 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => B ,
   G => Vbn ,
   B => GND
);

M4 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => b_2 ,
   G => Vbp ,
   S => VDD
);

M3 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => b_1 ,
   G => Vbp ,
   S => VDD
);

M6 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => out ,
   G => Vcp ,
   S => b_2
);

M5 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => Vcp ,
   S => b_1
);

M2 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => Vcn ,
   B => net1
);

M7 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => out ,
   G => Vcn ,
   B => net3
);

M8 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => GND ,
   G => net2 ,
   B => net1
);

M9 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net2 ,
   B => GND
);

M10 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => b_1 ,
   G => V_1 ,
   B => B
);

M11 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => b_2 ,
   G => V_2 ,
   B => B
);

end arch_f_cascode_diff_amp ;


-- expanding   symbol:  /home/lxbtlr/MAD/miniproject3/bias_generator.sym # of pins=4
-- sym_path: /home/lxbtlr/MAD/miniproject3/bias_generator.sym
-- sch_path: /home/lxbtlr/MAD/miniproject3/bias_generator.sch
entity bias_generator is
port (
  Vbp : in std_logic ;
  Vcp : out std_logic ;
  Vcn : out std_logic ;
  Vbn : in std_logic
);
end bias_generator ;

architecture arch_bias_generator of bias_generator is


signal VDD : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal GND : std_logic ;
begin
M1 : pmos3
generic map (
   L => 0.15 ,
   W => 1/4 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => Vbp ,
   S => VDD
);

M2 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => Vcn ,
   G => Vbp ,
   S => VDD
);

M3 : nmos3
generic map (
   L => 0.15 ,
   W => 5 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net2 ,
   B => net1
);

M4 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => Vcn ,
   B => Vcn
);

M5 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => net2 ,
   B => GND
);

M6 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net4 ,
   G => net3 ,
   S => VDD
);

M7 : pmos3
generic map (
   L => 0.15 ,
   W => 5 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net3 ,
   S => net4
);

M8 : pmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => VDD ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net4 ,
   G => Vcp ,
   S => Vcp
);

M9 : nmos3
generic map (
   L => 0.15 ,
   W => 1/4 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => Vbn ,
   B => GND
);

M10 : nmos3
generic map (
   L => 0.15 ,
   W => 1 ,
   body => GND ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8 ,
   spiceprefix => X
)
port map (
   D => Vcp ,
   G => Vbn ,
   B => GND
);

end arch_bias_generator ;

