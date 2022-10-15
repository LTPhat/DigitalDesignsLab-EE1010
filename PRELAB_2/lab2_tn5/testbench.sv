`timescale 1ns/1ns
module testbench;
  reg g;
  reg g2a;
  reg g1a;
  reg x,y,z;
  wire y_o;
  wire y_out;
  ic138 dut(.g(g),.g2a(g2a),.g1a(g1a),.x(x),
            .y(y),.z(z),.y_o(y_o),.y_out(y_out));
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
  g = 1; g2a = 0; g1a = 0;
  x = 0; y = 0;z = 0;
     #5
  g = 1; g2a = 0; g1a = 0;
  x = 0; y = 0;z = 1;
  	#5
  g = 1; g2a = 0; g1a = 0;
  x = 0; y = 1;z = 0;
       #5
  g = 1; g2a = 0; g1a = 0;
  x = 0; y = 1;z = 1;
       #5
  g = 1; g2a = 0; g1a = 0;
  x = 1; y = 0;z = 0;
    #5
  g = 1; g2a = 0; g1a = 0;
  x = 1; y = 0;z = 1;
    #5
  g = 1; g2a = 0; g1a = 0;
  x = 1; y = 1;z = 0;
    #5
  g = 1; g2a = 0; g1a = 0;
  x = 1; y = 1;z = 1;

  #5
  $finish;
end
endmodule
