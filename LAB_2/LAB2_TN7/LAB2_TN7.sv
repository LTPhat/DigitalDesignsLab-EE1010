// Code your design here
// f(x,y,z,w) = sum(1,3,5,7,10,12,14) by 74LS138
module LS138(
input logic G2A,G2B,G1,A,B,C,
output logic[7:0] Y);
	logic[5:0] temp;
	assign temp={G2A,G2B,G1,A,B,C};
always_comb begin
case(temp)
6'b001000:Y=8'b11111110;
6'b001001:Y=8'b11111101;
6'b001010:Y=8'b11111011;
6'b001011:Y=8'b11110111;
6'b001100:Y=8'b11101111;
6'b001101:Y=8'b11011111;
6'b001110:Y=8'b10111111;
6'b001111:Y=8'b01111111;
default: Y=8'b11111111;
endcase
end
endmodule

module LAB2_TN7(res,x,y,z,w,a_show, b_show, c_show,d_show,final_res);
input x,y,z,w;
output a_show, b_show, c_show,final_res,d_show; 
output logic[7:0] res;
assign a_show = x;
assign b_show = y;
assign c_show = z;
assign d_show = w;
LS138	icLS138 (.G2A(1'b0),.G2B(1'b0),.G1(1'b1),.A(x),.B(y),.C(z),.Y(res));
assign final_res = ((~res[0]&w)|(~res[1]&w)|(~res[2]&w)|(~res[3]&w)|(~res[5]&~w)|(~res[6]&~w)|(~res[7]&~w));
endmodule
