`timescale 1ns / 1ps
module compparator(
    input [3:0] a,
    input [3:0] b,
    output reg gt,
    output reg eq,
    output reg lt
    );
    
    always @(*) begin
        if (a > b) begin
            gt = 1;
            eq = 0;
            lt = 0;
        end else if (a == b) begin
            gt = 0;
            eq = 1;
            lt = 0;
        end else begin
            gt = 0;
            eq = 0;
            lt = 1;
        end
    end
endmodule

module tb_comparator ;
    reg [3:0] a;
    reg [3:0] b;
    wire gt;
    wire eq;
    wire lt;
    
    compparator uut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );
    
    initial begin
        // Test case 1: a > b
        a = 4'b1010; // 10 in decimal
        b = 4'b0101; // 5 in decimal
        #10; // Wait for 10 time units
        
        // Test case 2: a == b
        a = 4'b0110; // 6 in decimal
        b = 4'b0110; // 6 in decimal
        #10; // Wait for 10 time units
        
        // Test case 3: a < b
        a = 4'b0011; // 3 in decimal
        b = 4'b1000; // 8 in decimal
        #10; // Wait for 10 time units
        
        $finish; // End the simulation
    end
endmodule 
