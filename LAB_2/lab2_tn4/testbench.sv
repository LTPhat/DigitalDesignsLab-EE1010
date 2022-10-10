// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module TestModule;
// Inputs
reg d0;
reg d1;
reg d2;
reg d3;
reg d4;
reg d5;
reg d6;
reg d7;
reg x,y,z,w;
// Outputs
wire f;

// Instantiate the Unit Under Test (UUT)
Mulitplexer uut (
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7),
.x(x),
.y(y),
.z(z),
.w(w),
.out(f)
);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
d0 = 0;d1 = 1;d2 = 0;d3 = 0;d4 = 0;d5 = 0; d6 = 1;d7 = 0;
x=0;y=0;z=1;
w=0;
#10;

d0 = 0;
d1 = 0;
d2 = 1;
d3 = 1;
d4 = 1;
d5 = 1;
d6 = 0;
d7 = 0;
x=0;
y=1;
z=0;
w=1;
#10;
d0 = 0;
d1 = 0;
d2 = 1;
d3 = 1;
d4 = 1;
d5 = 1;
d6 = 0;
d7 = 1;
x=0;
y=1;
z=1;
w=1;
#10;
d0 = 0;
d1 = 0;
d2 = 1;
d3 = 1;
d4 = 1;
d5 = 1;
d6 = 0;
d7 = 1;
x=1;
y=0;
z=0;
w=1;
 #10;
d0 = 0;
d1 = 1;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 0;
d6 = 1;
d7 = 1;
x=1;
y=1;
z=0;
w=0;
 #10
  $finish;
end
endmodule