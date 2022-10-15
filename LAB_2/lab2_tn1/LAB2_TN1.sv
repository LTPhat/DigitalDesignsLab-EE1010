// Code your design here
// f(x,y,z) = x'yz+x'y'z+xy
module LAB2_TN1(
	input x,y,z, 
  	output out,a,b,c
);
    
	assign a = x;
	assign b = y;
	assign c = z;
  assign out = (~x&y&z)|(~x&~y&z)|(x&y);
        
endmodule
        