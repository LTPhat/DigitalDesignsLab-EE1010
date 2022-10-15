// Code your design here
module LS151(
input logic G,S2,S1,S0,
input logic D0,D1,D2,D3,D4,D5,D6,D7,
output Y);
	logic[3:0] temp;
	assign temp={G,S2,S1,S0};
always@ (temp) begin
case(temp)
4'b0000:Y=D0;
4'b0001:Y=D1;
4'b0010:Y=D2;
4'b0011:Y=D3;
4'b0100:Y=D4;
4'b0101:Y=D5;
4'b0110:Y=D6;
4'b0111:Y=D7;
endcase
end
endmodule

module LAB2_TN4(res,G,x,y,z,a_show, b_show, c_show);
input x,y,z,G;
output res,a_show, b_show, c_show;
assign a_show = x;
assign b_show = y;
assign c_show = z;
logic [7:0] D;
assign D = 8'b10010110;
LS151	icLS151 (.G(G), .S2(x), .S1(y),.S0(z),.D0(D[0]),.D1(D[1])
,.D2(D[2]),.D3(D[3]),.D4(D[4]),.D5(D[5]),.D6(D[6]),.D7(D[7]),.Y(res));
endmodule
