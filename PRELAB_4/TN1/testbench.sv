// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module testbench;
  reg: A,B,Ci;
  wire S,Co;
  FA_ex1 dut(.A(A),.B(B),.Ci(Ci),.S(S),.Co(Co));
  
  initial begin
    $dumfile("dum.vcd");
    $dumpvars(1);
    x = 0;
    y = 0;
    z = 0;
    #5
    x = 0;
    y = 0;
    z = 1;
    #5
    x = 0;
    y = 1;
    z = 0;
    #5
    x = 0;
    y = 1;
    z = 1;
    #5
    x = 1;
    y = 0;
    z = 0;
    #5
    x = 1;
    y = 0;
    z = 1;
    #5
    x = 1;
    y = 1;
    z = 0;
    #5
    x = 1;
    y = 1;
    z = 1;
    #5
    x = 0;
    y = 0;
    z = 0;
    #5
    $finish;
  end
    endmodule