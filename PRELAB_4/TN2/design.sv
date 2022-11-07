// Code your design here
// Code your design here
module FA_ex2(
     input  A,
     input  B,
  	 input  C,
     input  sel, //C0
     output S,
     output Ci);
  logic B_res;
  	assign  B_res = B ^ sel;
	assign  S = A ^ B_res ^ C;
  	assign  Ci=(A&B_res)|(A&C)|(B_res&C);

endmodule 


module LAB4_TN2(
  input logic [3:0] A,
  input logic [3:0] B,
  input logic sel,
  output logic [3:0] S,
  output Ci,Co
);
  assign Co = sel;
  logic C1,C2,C3;
  FA_ex2    FA1(.A(A[0]),.B(B[0]),.C(sel),.sel(sel),.S(S0),.Ci(C1));
  FA_ex2	FA2(.A(A[1]),.B(B[1]),.C(C1),.sel(sel),.S(S1),.Ci(C2));
  FA_ex2	FA3(.A(A[2]),.B(B[2]),.C(C2),.sel(sel),.S(S2),.Ci(C3));
  FA_ex2	FA4(.A(A[3]),.B(B[3]),.C(C3),.sel(sel),.S(S3),.Ci(Ci));
  endmodule