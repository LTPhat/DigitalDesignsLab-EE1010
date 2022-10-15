// Code your design here
module Mulitplexer(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z,w,out);
input d0,d1,d2,d3,d4,d5,d6,d7;
input x,y,z,w;
  output reg out;
  
  logic [2:0] sel;
  assign sel[0] = z;
  assign sel[1] = y;
  assign sel[2] = x;
  
  assign d1 = !w;
  assign d6 = !w;
  assign d2 = w;
  assign d3 = w;
  assign d4 = w;
  assign d5 = w;
always@(sel)
begin
case(sel)
3'b000:out=d0;
3'b001:out=d1;
3'b010:out=d2;
3'b011:out=d3;
3'b100:out=d4;
3'b101:out=d5;
3'b110:out=d6;
3'b111:out=d7;
endcase
end
endmodule
