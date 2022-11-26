module LAB4_TN6(input clk, input rst, input R, input B,  output logic [1:0]Y ,output clk_show, output [2:0] out_state);
    parameter reset = 3'b111, S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4 =3'b100; 
    reg [2:0]  pre_state, next_state; 
	 logic clock;
	 integer i = 0;
	 assign clk_show = clock;
//Các thanh ghi chưa trạng thái
	//Khối chuyển trạng thái	
	always_ff@(posedge clk)
	begin
     i = i + 1;
     if (i == 25000000) begin
           clock = ~ clock;
           i = 0;
     end
	end
always@(posedge clock) begin
		if (rst)	begin
			pre_state <= reset;	
			end
		else 
			pre_state <= next_state;		
	end
	//Khối chuyển trạng thái
	logic [1:0]RB;
	assign RB = {R,B};
	always@(pre_state or RB) begin
		case(pre_state)
				reset: if (RB == 2'b10) 
						next_state <= S0;
						 else if (RB == 2'b01) 
						next_state <= S3;
						 else next_state <= reset;
			   S0: if (RB == 2'b10) 
						next_state <= S1;
					 else if (RB == 2'b01) 
						next_state  <= reset;
					 else 
						next_state <= S0;
					 
			   S1: if (RB == 2'b10) 
						next_state <= S2;
			       else if (RB == 2'b01) 
						next_state <= reset;
					 else 
						next_state <= S1;
					 
            S2:  if ((RB == 2'b10 || RB == 2'b01))
						next_state <= reset;
						else
							next_state <= S2;
            S3: if (RB == 2'b01) 
							next_state <= S4;
			      else if (RB == 2'b10) 
							next_state <= reset;
					else	
							next_state <= S3;
          	S4: if (RB == 2'b10 || RB == 2'b01)
						next_state <= reset;
					 else 
						next_state <= S4;
		endcase;
	end
	//Khối tạo ngõ ra
	always@(*) begin
		case (pre_state)
			reset: Y <= 2'b00;
			S0: Y <= 2'b00;
			S1: Y <= 2'b00;
			S2: Y <= 2'b10;	
			S3: Y <= 2'b00;
         S4: Y <= 2'b01;
		endcase;
	end
	assign out_state = pre_state;
endmodule
