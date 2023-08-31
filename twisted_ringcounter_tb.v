`timescale 1ns / 1ps



module twisted_ringcounter_tb;
reg clc,rst;
wire [3:0]out;
 twisted_ringcounter uut(out,clc,rst);
 always #20 clc=~clc;
 initial begin
 rst=1; clc=0;
 #40 rst=0;
 end 
endmodule
