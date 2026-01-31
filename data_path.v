module datapath (
    input wire [31:0] A,
    input wire [31:0] B,

    input wire arithmic_op,
    input wire sub,
    input wire logic_op,
    input wire [1:0] sel,
    input wire shift_op,
    input wire shift_right,
    input wire mul_op,
    input wire trans_op,
    input wire trans_sel,

    output reg [31:0] Y,
    output wire carry
);
    wire [32:0] arith_out;
    wire [31:0] logic_out,shift_out,mul_out,trans_out;


    arthimatic_unit  AU (A,B,sub,arith_out);
    logical_unit  LU (A,B,sel,logic_out);
    shifter_unit SU (A,shift_right,shift_out);
    multipler MU (A,B,mul_out);
    transfer_unit TU (A,B,trans_sel,trans_out);

    assign carry = arith_out[32];

    always @(*)
    begin
        if (arithmic_op) Y = arith_out[31:0];
        else if (logic_op) Y = logic_out;
        else if (shift_op) Y = shift_out;
        else if (mul_op) Y = mul_out;
        else if (trans_op) Y = trans_out;
        else Y = 0;
    end 

    
endmodule