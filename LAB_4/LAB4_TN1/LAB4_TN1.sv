// Code your design here
module LAB4_TN1(
  input logic [3:0] A,
  output logic [3:0] S
);
  assign sel = A[3];
  always@(sel) begin
    if (sel == 1'b0) begin
      S = A;
  	end
  else begin 
      S = 0 + ~A + 1;
  	 end
  end
  endmodule