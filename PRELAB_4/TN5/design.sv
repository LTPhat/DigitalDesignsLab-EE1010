// Code your design here
input X;                        //Khai báo ngõ vào 1 bit
input clk;                      //Khai báo clock
output reg Y;        //Khai báo ngõ ra 1 bit
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110; //Định nghĩa các trạng thái
reg [1:0]pre_state, next_state;   //Các thanh ghi chứa
	//Khối chuyển trạng thái	
	always@(posedge clk) begin
		if (rst)	begin
			pre_state <= S0;	
			end
		else 
			pre_state <= next_state;		
	end
	//Khối chuyển trạng thái
	always@(pre_state or X) begin
		case(pre_state)
			S0: if (X) next_state <= S1;
			      else next_state <= S6;
            S1: if (X) next_state <= S3;
			       else next_state <= S2;
          	S2: if (X) next_state <= S4;
		           else next_state <= S1;
          	S3: if (X) next_state <= S5;
			 else next_state <= S4;
          	S4: if (X) next_state <= S6;
			  else next_state <= S3;
          	S5: if (X) next_state <= S1;
			  else next_state <= S6;
          	S6: if (X) next_state <= S2;
			   else next_state <= S5;
		endcase;
	end
	//Khối tạo ngõ ra
	always@(*) begin
		case (pre_state)
			S0: Y <= 3'b000;
			S1: Y <= 3'b001;
			S2: Y <= 3'b010;	
			S3: Y <= 3'b011;
          	S4: Y <= 3'b100;
			S5: Y <= 3'b101;
			S6: Y <= 3'b110;	
		endcase;
	end
