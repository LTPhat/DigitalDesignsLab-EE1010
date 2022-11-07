// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module testbench;
  reg [3:0] A;
  reg [3:0] B;
  reg  sel;
  reg [4:0] S;
  wire Ci,Co;
  
  LAB4_TN2 dut(.A(A),.B(B),.sel(sel),.S(S),.Ci(Ci),.Co(Co));
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    A = 4'b1000;
    B = 4'b0001;
    sel = 1'b0;
    #5
    A = 4'b0101;
    B = 4'b0010;
    sel = 1'b0;
    #5
   	A = 4'b0001;
    B = 4'b0111;
    sel = 1'b0;
    #5
    A = 4'b0001;
    B = 4'b0101;
    sel = 1'b0;
   	A = 4'b0001;
    B = 4'b0111;
    sel = 1'b0;
    #5
    A = 4'b1101;
    B = 4'b0001;
    sel = 1'b1;
    #5
    A = 4'b1111;
    B = 4'b0011;
    sel = 1'b1;
    #5
    A = 4'b1001;
    B = 4'b0011;
    sel = 1'b1;
    #5
    $finish;
  end
    endmodule