// Code your design here
module lab2_tn2(
	input a,b,c, 
  	output out
); 
  assign out = !((!(a&!b))|(!(a|(b&c))));
        
endmodule