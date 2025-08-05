module ALU_32bits_tb;
  reg [31:0] A;
  reg [31:0] B;
  reg [2:0] ALU_SEL;
  wire [31:0] ALU_OUT;
  
  ALU_32bits uut (
    .A(A),
    .B(B),
    .ALU_SEL(ALU_SEL),
    .ALU_OUT(ALU_OUT)
  );
  
  initial begin
    $dumpfile("32_bitALU_waveform.vcd");
    $dumpvars(0, ALU_32bits_tb);
    $display("A\t\tB\t\tSEL\tOUT");

    A = 32'h00000008; 
    B = 32'h00000001;
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

