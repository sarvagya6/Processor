module Immsinext(in, immOut, immSel);
   input [31:0] in;
   input immSel;
   output[31:0] immOut;
   reg[31:0] IMM_OUT;
   wire[6:0] opcode;

   assign immOut = IMM_OUT;
   assign opcode = in[6:0];
   always @(posedge immSel)
   casex(opcode)
        7'b0010011: IMM_OUT <= { {21{in[31]}}, in[30:25], in[24:21], in[20]};   // ADDI     -> I-Type
        7'b0100011: IMM_OUT <= { {21{in[31]}}, in[30:25], in[11:8], in[7]};     // SW       -> S-Type
        7'b0010111: IMM_OUT <= { in[31], in[30:20], in[19:12], {12{1'b0}} };             // AUIPC    -> U-Type
        7'b0000011: IMM_OUT <= { {21{in[31]}}, in[30:25], in[24:21], in[20]};   // LW       -> I-Type
        7'b1101111: IMM_OUT <= { {12{in[31]}}, in[19:12], in[20], in[30:25], in[24:21], {1{1'b0}}};  // JAL -> J-Type
        7'b1100011: IMM_OUT <= { {20{in[31]}}, in[7], in[30:25], in[11:8], {1{1'b0}}};  // BRANCH -> B-Type
        default: IMM_OUT <= 32'bx;
    endcase
endmodule