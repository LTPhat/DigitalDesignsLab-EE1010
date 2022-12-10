module bai4 (
	input logic re,
	input logic clk,
	output logic [6:0] o1,o2
);
logic out;
integer k = 0;
always_ff@(posedge clk) begin
	k = k+1;
	if ( k == 25000000) begin
		out = ~out;
		k = 0;
	end
end
logic [3:0] i;
always @(posedge out or posedge re) begin
if (re == '1)
     i <= 4'b0000;
else
if (i == 4'b1110 || i == 4'b0000)
     i <= 4'b0101;
else
     i <= i + 4'b0001;
end
seg sus (
	.i(i),
	.o1(o1),
	.o2(o2)
);
endmodule: bai4

module seg (
	input  logic [3:0] i,
	output logic [6:0] o1,o2
);
always_comb begin
case(i)
4'b0101: begin
 o1 = 7'b1000000;
 o2 = 7'b0010010;
  end
4'b0110: begin
 o1 = 7'b1000000;
 o2 = 7'b0000010;
  end
4'b0111: begin 
 o1 = 7'b1000000;  
 o2 = 7'b1111000; 
  end
4'b1000: begin 
 o1 = 7'b1000000;  
 o2 = 7'b0000000; 
  end
4'b1001: begin 
 o1 = 7'b1000000;  
 o2 = 7'b0010000; 
  end
4'b1010: begin 
 o1 = 7'b1111001;  
 o2 = 7'b1000000; 
  end
4'b1011: begin 
 o1 = 7'b1111001;  
 o2 = 7'b1111011; 
  end
4'b1100: begin 
 o1 = 7'b1111001;  
 o2 = 7'b0100100; 
  end
4'b1101: begin 
 o1 = 7'b1111001;  
 o2 = 7'b0110000; 
  end
4'b1110: begin 
 o1 = 7'b1111001;  
 o2 = 7'b1111000; 
  end
4'b0000: begin
 o1 = 7'b1000000;
 o2 = 7'b1000000;
  end
  default: begin o1 = 7'b1111111; o2 = 7'b1111111; end
endcase
end
endmodule: seg