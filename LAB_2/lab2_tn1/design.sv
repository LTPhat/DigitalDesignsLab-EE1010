// Code your design here
module lab2_tn1(
	input a,b,c, 
  	output out
);
      
  assign out = (!a&b&c)|(!a&!b&c)|(a&b);
        
endmodule
        