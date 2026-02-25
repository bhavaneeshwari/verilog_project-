# FREQ DIVIDER 
the clk source of bexys 4 DDR is 100MHZ -> 10 ns \
by connecting the q bar to din of DFF the frequency is divide by 2 -> 50MHZ -> 20ns

```v
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 11:27:50
// Design Name: 
// Module Name: freq_div
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


module freq_div(
    input clk,
    input rst,
   output led
    );
    wire [7:0] din;
    wire[7:0] clkdiv;
    
    
    dff dff_i0(
     .clk(clk),
     .rst(rst),
     .din(din[0]),
     .dout(clkdiv[0])
     );
     
     genvar i;
     generate
     for(i=1;i<8;i=i+1)
     begin: dff_gen
       dff dff_i(
       .clk(clkdiv[i-1]),
       .rst(rst),
       .din(din[i]),
       .dout(clkdiv[i])
       );
     end
     endgenerate
     assign din = ~ clkdiv;
    assign led = clkdiv[7];
endmodule

```
## output 
<img width="1575" height="656" alt="image" src="https://github.com/user-attachments/assets/a452eafe-0f71-4fee-8aa1-bc230adb4f48" />
