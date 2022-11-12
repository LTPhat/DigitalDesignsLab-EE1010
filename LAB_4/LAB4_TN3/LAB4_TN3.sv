
module LAB4_TN3(
  input clk,
  input rst,
  output reg [6:0] seg); 
  integer i = 0;
  logic out;
  logic[2:0] bcd;
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
	
   always @(bcd)
    begin
        case (bcd) 
		      3'b000: seg = 7'b1000000;
					3'b001: seg = 7'b1111001;
					3'b010: seg = 7'b0100100;
					3'b011: seg = 7'b0110000;
					3'b100: seg = 7'b0011001;
					3'b101: seg = 7'b0010010;
					3'b110: seg = 7'b0000010;
					3'b111: seg = 7'b1111000;
					default : seg = 7'b1111111; 
        endcase
		  end
endmodule