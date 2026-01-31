module arthimatic_unit (
    input wire [31:0] A,
    input wire [31:0] B,
    input wire sub,
    output wire [32:0] Y
);
wire [31:0] B_xor;
assign B_xor = B ^ {32{sub}};

assign Y = A + B_xor + sub;

    
endmodule