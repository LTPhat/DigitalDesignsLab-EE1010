// Code your design here
module LAB2_TN2(
	input x,y,z, 
  	output out
); 
	

	assign out = (~x&~y)|(~y&~z)|(y&z);
			  
endmodule