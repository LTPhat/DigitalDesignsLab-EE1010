// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module testbench;
  reg x,y,z;
  wire f;
  
  lab2_tn2 dut(.a(x),.b(y),.c(z),.out(f));
  
  initial begin
    $dumpfile("dump.vcd");
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