module calculator(

    input  logic [7:0] operand1,
    input  logic [7:0] operand2,
    input  logic [3:0] opcode,

    output logic [15:0] result

);

always_comb begin

    case(opcode)

        4'd0: result = operand1 + operand2;   // +
        4'd1: result = operand1 - operand2;   // -
        4'd2: result = operand1 * operand2;   // *
        4'd3: result = operand1 / operand2;   // /
        4'd4: result = operand1 % operand2;   // %
        4'd5: result = operand1 & operand2;   // &
        4'd6: result = operand1 | operand2;   // |
        4'd7: result = operand1 ^ operand2;   // ^
        4'd8: result = operand1 << 1;         // <<
        4'd9: result = operand1 >> 1;         // >>

        default: result = 16'hXXXX;

    endcase

end

endmodule