module shifter_unit (
        input wire [31:0] A,
        input wire shift,
        output wire [31:0] Y


);

assign Y = (shift) ? A>>1 : A<<1;
endmodule