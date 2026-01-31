module top_alu (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [3:0]  op,
    output wire [31:0] Y,
    output wire        carry
);

    wire arithmetic_op, sub, logic_op, shift_op, shift_right;
    wire mul_op, trans_op, trans_sel;
    wire [1:0] sel;

    controller CTRL (
        .op(op),
        .arithmic_op(arithmetic_op),
        .sub(sub),
        .logic_op(logic_op),
        .sel(sel),
        .shift_op(shift_op),
        .shift_right(shift_right),
        .mul_op(mul_op),
        .trans_op(trans_op),
        .trans_sel(trans_sel)
    );

    datapath DP (
        .A(A), .B(B),
        .arithmic_op(arithmetic_op),
        .sub(sub),
        .logic_op(logic_op),
        .sel(sel),
        .shift_op(shift_op),
        .shift_right(shift_right),
        .mul_op(mul_op),
        .trans_op(trans_op),
        .trans_sel(trans_sel),
        .Y(Y),
        .carry(carry)
    );

endmodule
