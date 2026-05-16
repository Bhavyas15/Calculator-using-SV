module tb;

    logic [7:0] operand1;
    logic [7:0] operand2;
    logic [3:0] opcode;

    logic [15:0] result;

    // Instantiate DUT

    calculator dut(
        .operand1(operand1),
        .operand2(operand2),
        .opcode(opcode),
        .result(result)
    );

    initial begin

      $dumpfile("dump.vcd");
      $dumpvars(0,tb);
        operand1 = 8'd20;
        operand2 = 8'd5;

        for(opcode = 0; opcode <= 9; opcode++) begin

            #5;

            $display("--------------------------------");
            $display("Opcode = %0d", opcode);
            $display("Decimal Result = %0d", result);
            $display("Hex Result     = %0h", result);
            $display("Binary Result  = %016b", result);

        end
#10;
  $finish;
    end
  

endmodule