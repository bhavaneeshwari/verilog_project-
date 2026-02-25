# DFF - a memory device 

with behavioral modelling verilog
### synchronous rst 
```v
module dff(
    input clk,
    input rst,
    input din,
    output reg dout
    );
     
    always@(posedge clk )
    begin 
    if(rst)
    dout <= 1'b0;
    else 
    dout<= din;
    end
endmodule
```
## elaborated design
<img width="1054" height="417" alt="image" src="https://github.com/user-attachments/assets/0ac4d666-0e99-4c0c-b64e-7805abc18ee5" />


## synthesized design 
<img width="1131" height="403" alt="image" src="https://github.com/user-attachments/assets/f1bb750e-cdbd-4846-92bb-8155a5c8e027" />

### asynchronous rst

```v
module dff(
    input clk,
    input rst,
    input din,
    output reg dout
    );
     
    always@(posedge clk , posedge rst)
    begin 
    if(rst)
    dout <= 1'b0;
    else 
    dout<= din;
    end
endmodule
```
## elaborated design
<img width="981" height="426" alt="image" src="https://github.com/user-attachments/assets/781d76bd-f482-4508-9742-d35a2121f7a4" />

## synthesized design 
<img width="1164" height="403" alt="image" src="https://github.com/user-attachments/assets/f8d9206f-b583-4098-8f83-1e4457c72f44" />


