module logical_unit (
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [1:0] sel,
    output reg [31:0] Y
    
);

always @(*)
    begin
        case (sel)
           2'b00 : Y = ( A & B);
           2'b01 : Y = ( A | B);
           2'b10 : Y = (A ^ B);
           2'b11 : Y = ~A; 
            default: Y = 0;
        endcase
    end

    
endmodule