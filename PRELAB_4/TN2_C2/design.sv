module LAB4_TN2(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic sel,
  output logic [4:0] S,
  output Ci,Co
);
  assign Co = sel;
  always@(sel) begin
    if (sel == 1'b0) begin
      S = A + B;
  	end
  else begin 
    if (sel == 1'b1) begin
      S = A - B;
  	 end
  	end
  end
  assign Ci = S[4];
  endmodule