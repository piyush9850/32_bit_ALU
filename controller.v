module controller(
    input wire [3:0] op,

    output reg arithmic_op,
    output reg sub,
    output reg logic_op,
    output reg [1:0] sel,
    output reg shift_op,
    output reg shift_right,
    output reg mul_op,
    output reg trans_op,
    output reg trans_sel
);

always @(*)
begin 
    arithmic_op = 0;sub = 0;
    logic_op = 0; sel = 0;
    shift_op = 0; shift_right = 0;
    mul_op = 0; trans_op = 0;
    trans_sel = 0;
    
    case (op)
    4'd0   : begin arithmic_op = 1; sub = 0; end // ADD
    4'd1 : begin arithmic_op = 1; sub = 1; end // SUB

    4'd2 : begin logic_op = 1; sel = 2'b00 ; end // AND
    4'd3 : begin logic_op = 1; sel = 2'b01 ; end // OR
    4'd4 : begin logic_op = 1; sel = 2'b10 ; end // XOR
    4'd5 : begin logic_op = 1; sel = 2'b11 ; end // NOT

    4'd6 : begin shift_op = 1; shift_right = 0; end // LEFT_SHIFT
    4'd7 : begin shift_op = 1; shift_right = 1; end // RIGHT_SHIFT

    4'd8 : begin mul_op = 1; end // MUL

    4'd9 : begin trans_op = 1; trans_sel = 0; end // MOV A
    4'd10 : begin trans_op = 1; trans_sel = 1; end // MOV B
        
    endcase


end
endmodule

