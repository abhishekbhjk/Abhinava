`timescale 1ns / 1ps
module mem(clk,rst,wr,rd,,address,datain,dataout);
input clk,rst,wr,rd;
  input [7:0]datain;
input [3:0]address;
reg [7:0] memory[0:10];
output reg[7:0]dataout;
always@(posedge clk)
begin
if(rst)
begin
memory[address]=8'b0;
end
else
begin
case({wr,rd})
2'b10:memory[address]=datain;
2'b01:dataout=memory[address];
default:dataout=8'bz;
endcase
end
end
endmodule
