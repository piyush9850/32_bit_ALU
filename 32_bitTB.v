module tb_32_bit;


reg [31:0] A,B;
reg [3:0] op;
wire [31:0] Y;
wire carry;

top_alu DUT (A,B,op,Y,carry);

initial begin
    A = 32'd56; B = 32'd32;

 $dumpfile("alu.vcd");
        $dumpvars(0, tb_32_bit);

    #10    op = 4'd0;  // ADD
     #10    op = 4'd1;  // SUB
     #10    op = 4'd2;  // AND
     #10    op = 4'd3;  // OR
     #10    op = 4'd4;  // XOR
     #10    op = 4'd5;  // NOT
     #10    op = 4'd6;  // LSHIFT
     #10    op = 4'd7;  // RSHIFT
     #10    op = 4'd8;  // MUL
     #10    op = 4'd9;  // MOV A
     #10    op = 4'd10; // MOV B
     $finish;
end


endmodule
