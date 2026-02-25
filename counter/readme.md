# counter \
the harware part of counter consists of FF and adder with input as 1 as the ouput of FF is feedback into into ip of FF with increment of 1.\
with the behavioral modelling verilog code,
we can write the verilog code as

```v
module counter(
    input clk,
    input rst,
  
    output reg [7:0] dout
    );
    always@(posedge clk)
    begin
    if(rst)
    dout <= 8'd0;
    else 
    dout <= dout + 1'b1; 
    end
endmodule
```
## so the elaborated design
<img width="1121" height="419" alt="image" src="https://github.com/user-attachments/assets/0403c186-16e5-43d5-80fd-dd31c4da79f6" />

## synthesized design 
here the LUT and FF are used/
<img width="1554" height="514" alt="image" src="https://github.com/user-attachments/assets/c9d064f6-a01b-4e0a-a1b9-abd7c5b550db" />
