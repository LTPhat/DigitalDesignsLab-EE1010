// Code your design here
// Code your design here
module LAB4_TN2(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic [1:0] sel,
  output logic [:0] S,
  output logic Ci,Co
);
  always@(sel) begin
    if (sel == 2'b00) begin
      S = A + B;
      Co = 0;
  	end
    else if (sel == 2'b01) begin
      S = A - B;
      Co = 1;
  	 end
    else if (sel == 2'b10) begin 
      S = A & B;
      Co = 0;
  	 end
    else if(sel == 2'b11) begin
      S = A | B;
      Co = 0;
  	 end
  end
    assign Ci = S[4];
  endmodule
