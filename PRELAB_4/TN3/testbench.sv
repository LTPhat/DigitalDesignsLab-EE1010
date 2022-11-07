// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module testbench;
  reg[3:0] I;
  wire logic [6:0] out;
  
  LAB4_TN3 dut(.I(I),.out(out));
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    I = 4'b0000;
    #5
    I = 4'b0001;
    #5
   	I = 4'b0010;
    #5
    I = 4'b0011;
    #5
    I = 4'b0100;
    #5
    I = 4'b0101;
    #5
    I = 4'b0110;
    #5
    I = 4'b0111;
    #5
    I = 4'b1000;
    #5
    I = 4'b1001;
    #5
    $finish;
  end
    endmodule