`timescale 1ns / 1ps
module mem_tb();
reg clk,rst,wr,rd;
reg [7:0]datain;
reg [3:0]address;
//reg [7:0]memory[0:10];
wire [7:0]dataout;
mem U0(.clk(clk),.rst(rst),.wr(wr),.rd(rd),.address(address),.atain(datain),.dataout(dataout));
initial
begin
#10 clk=0;
#10 rst=0;address=4'b0011;wr=1;rd=0;datain=8'b00001111;
#10 rst=0;address=4'b0011;wr=0;rd=1;
#10 rst=0;address=4'b0011;wr=1;rd=1;
#10 rst=0;address=4'b0011;wr=0;rd=0;
#10 rst=0;address=4'b0111;wr=0;rd=1;
#10 rst=0;address=4'b1111;wr=1;rd=0;datain=8'b00011111;
#10 rst=1;
#20 $finish;
end
always #5 clk=~clk;
endmodule

