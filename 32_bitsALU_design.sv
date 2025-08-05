module ALU_32bits(
  input[31:0] A,
  input[31:0] B,
  input[2:0] ALU_SEL,
  output reg[31:0] ALU_OUT
);
  always @(*)begin
    case(ALU_SEL)
      3'b000: ALU_OUT = A + B;         // Addition
      3'b001: ALU_OUT = A - B;         // Subtraction
      3'b010: ALU_OUT = A & B;         // AND
      3'b011: ALU_OUT = A | B;         // OR
      3'b100: ALU_OUT = A ^ B;         // XOR
      3'b101: ALU_OUT = ~A;            // NOT A
      3'b110: ALU_OUT = A << 1;        // Left Shift A
      3'b111: ALU_OUT = A >> 1;        // Right Shift A
      default:ALU_OUT = 32'b0;
    endcase
  end
endmodule

  
  