module ALU_16bits_tb;

    reg [15:0] A, B;
    reg [2:0] ALU_SEL;
    wire [15:0] ALU_OUT;

    ALU_16bits uut (
        .A(A),
        .B(B),
        .ALU_SEL(ALU_SEL),
        .ALU_OUT(ALU_OUT)
    );

    initial begin
      $dumpfile("16_bitsALU_waveform.vcd");
      $dumpvars(0,ALU_16bits_tb);
      $display("A\tB\tSEL\tOUT");

        A = 16'h0009; B = 16'h0001;
        ALU_SEL = 3'b000; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b001; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b010; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b011; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b100; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b101; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b110; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        ALU_SEL = 3'b111; #10; $display("%h\t%h\t%03b\t%h", A, B, ALU_SEL, ALU_OUT);

        $finish;
    end
endmodule

