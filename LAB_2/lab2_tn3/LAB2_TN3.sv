// Code your design here
module LAB2_TN3(
	input x,y,z,
  	output out,a,b,c
); 
	
	assign a = x;
	assign b = y;
	assign c = z;
	assign out = ~(~(x&~y)|~(x|(y&z)));
			  
endmodule