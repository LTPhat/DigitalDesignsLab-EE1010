// Code your design here
// f(x,y,z,w) = sum(2,5,7,9,12,13) by 74LS151
module LS151(
input logic G,S2,S1,S0,
input logic D0,D1,D2,D3,D4,D5,D6,D7,
output Y);
	logic[3:0] temp;
	assign temp={G,S2,S1,S0};
always@(temp) begin
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

module LAB2_TN5(res,G,x,y,z,w,a_show, b_show, c_show,d_show);
input x,y,z,w,G;
output res,a_show, b_show, c_show,d_show;
assign a_show = x;
assign b_show = y;
assign c_show = z;
assign d_show = w;

logic [7:0] D;
assign D[1] = ~w;
assign D[2] = w;
assign D[3] = w;
assign D[4] = w;
assign D[6] = 1'b1;
assign D[7] = 1'b0;
assign D[0] = 1'b0;
LS151	icLS151 (.G(G), .S2(x), .S1(y),.S0(z),.D0(D[0]),.D1(D[1])
,.D2(D[2]),.D3(D[3]),.D4(D[4]),.D5(D[5]),.D6(D[6]),.D7(D[7]),.Y(res));
endmodule
