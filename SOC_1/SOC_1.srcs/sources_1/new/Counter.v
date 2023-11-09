`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/10/19 14:38:05
// Design Name:
// Module Name: Counter
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module Counter(led_0,led_1,clk,rst,up_down_0,up_down_1);

input clk,rst;
input up_down_0,up_down_1;
output [3:0] led_0,led_1;


wire clkout;
wire [3:0] in;


div div_1(clkout,clk,rst);
led_display led_display_1(led_0,led_1,clkout,rst,up_down_0,up_down_1);
endmodule


    module div(clkout,clk,rst);
input clk,rst;
output clkout;

reg [24:0] counter;

assign clkout = counter[23];//counter [2*i]

always@(posedge clk or negedge rst)
begin
    if(!rst)
        counter = 0;
    else
        counter = counter + 1;
end

endmodule



    module led_display(led_0,led_1,clk,rst,up_down_0,up_down_1);

input clk,rst,up_down_0,up_down_1;
output [3:0] led_0,led_1;



parameter length_up_0 = 9;
parameter length_down_0 = 0;

parameter length_up_1 = 15;
parameter length_down_1 = 0;

reg [3:0] count_0,count_1;


always@(posedge clk or negedge rst)
begin
    if(!rst)
        count_0 <= 4'b000;
    else
        //reset
        if(up_down_0 == 1)
            if(count_0 == length_up_0)
                count_0 <= length_down_0 ;
            else
                count_0 <= count_0 + 1;
    //up
        else if (up_down_0 == length_down_0 )
            if(count_0 == length_down_0 )
                count_0 <= length_up_0;
            else
                count_0 <= count_0 - 1;
    //down
end
assign led_0 = count_0 ;//outupt
///////////////////////////////////////////////////////////////////////////////////
always@(posedge clk or negedge rst)
begin
    if(!rst)
        count_1 <= 4'b000;
    else
        //reset
        if(up_down_1 == 1)
            if(count_1 == length_up_1)
                count_1 <= length_down_1;
            else
                count_1 <= count_1 + 1;
    //up
        else if (up_down_1 == length_down_1)
            if(count_1 == length_down_1)
                count_1 <= length_up_1;
            else
                count_1 <= count_1 - 1;
    //down
end
assign led_1 = count_1;//outupt

endmodule
