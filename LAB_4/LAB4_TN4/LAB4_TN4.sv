module LAB4_TN4(
  input clk,
  input rst,
  output reg [6:0] seg_0,
  output reg [6:0] seg_1); 
  integer i = 0;
  logic out;
  logic[3:0] bcd;
  logic clock;
  always_ff@(posedge clk)
	begin
     i = i + 1;
     if (i == 25000000) begin
           clock = ~ clock;
           i = 0;
     end
	end
	
  always@(posedge clock or posedge rst)
  begin
  if (rst == 1) 
		begin
			bcd <= 0;
       end
	else
		begin
			bcd <= bcd + 1'b1;
		end
	end
	
   always @(bcd) begin
        case (bcd)
					4'b0000: seg_0 = 7'b1000000; 
					4'b0101: 
						seg_0 = 7'b0010010; 
					4'b0110: 
						seg_0 = 7'b0000010; 
					4'b0111: 
					seg_0 = 7'b1111000; 
					4'b1000: 
					seg_0 = 7'b0000000; 
					4'b1001: 
					seg_0 = 7'b0010000; 
					4'b1010: 
					seg_0 = 7'b0001000; 
					4'b1011: 
					seg_0 = 7'b1111001; 
					4'b1100: 
					seg_0 = 7'b0100100; 
					4'b1101: 
					seg_0 = 7'b0011001; 
					4'b1110: 
					seg_0 = 7'b0000110; 
					default :
					seg_0 = 7'b1111111; 
        endcase
		  end
always @(bcd) begin
case(bcd)
	4'b0000: seg_1 = 7'b1000000;
	4'b0101:	seg_1 = 7'b1000000;
	4'b0110: seg_1 = 7'b1000000;
	4'b0111: seg_1 = 7'b1000000;
	4'b1000:	seg_1 = 7'b1000000;
	4'b1001: seg_1 = 7'b1000000;
	4'b1010: seg_1 = 7'b1111001;
	4'b1011: seg_1 = 7'b1111001;
	4'b1100: seg_1 = 7'b1111001;
	4'b1101: seg_1 = 7'b1111001;
	4'b1110: seg_1 = 7'b1111001;
	default seg_1 = 7'b1111111; 
	endcase
end
endmodule