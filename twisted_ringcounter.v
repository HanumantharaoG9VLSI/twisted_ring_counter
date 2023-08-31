`timescale 1ns / 1ps


module twisted_ringcounter(out,clc,rst);
output reg [3:0]out;
input clc,rst;
always@(posedge clc or posedge rst)
begin
if (rst)
out=4'b0000;
else
begin
        out[3]<=out[2];
  		out[2]<=out[1];
  		out[1]<=out[0];
   		out[0]<=(~out[3]);
   		end
   end		
endmodule
