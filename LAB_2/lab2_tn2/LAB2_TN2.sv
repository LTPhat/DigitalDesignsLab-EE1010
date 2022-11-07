// Code your design here
// f(x,y,z) = x'y'+y'z'+yz
module LAB2_TN2(
	input x,y,z, 
  	output out
); 
	

	assign out = (~x&~y)|(~y&~z)|(y&z);
			  
endmodule