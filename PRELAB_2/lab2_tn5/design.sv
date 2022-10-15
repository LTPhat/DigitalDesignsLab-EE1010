module ic138(
       input logic g,
       input logic g2a,g1a,
  	   input logic x,y,z,
  output logic [7:0] y_o,
  output logic y_out);
  reg [2:0] temp;
  assign combine = {x,y,z};
  assign temp ={g,g1a,g2a};
  always_comb
    begin
      if (temp == 3'b100)
        begin
          case (combine)
          3'b111: y_o[7] = 1'b0;
          3'b110: y_o[6] = 1'b0;
          3'b101: y_o[5] = 1'b0;
          3'b100: y_o[4] = 1'b0;
          3'b011: y_o[3] = 1'b0;
          3'b010: y_o[2] = 1'b0;
          3'b001: y_o[1] = 1'b0;
          3'b000: y_o[0] = 1'b0;
         default: y_o = 1'b0;
      endcase
        end
      else
        y_o = 1'b0;
    end
  assign y_out = ~(y_o[0]&y_o[2]&y_o[5]&y_o[7]);
endmodule
