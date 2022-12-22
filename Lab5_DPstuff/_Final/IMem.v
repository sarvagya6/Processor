module IMem (
    input [31:0] addr,
    input clk,
    output reg[31:0] dout,
    output reg[4:0] rd_out,
    output reg[4:0] rs1_out,
    output reg[4:0] rs2_out
);
    
    reg [7:0] mem [0:255];
    integer i;
    
    initial begin

			mem[0]<=8'b10010011;
			mem[1]<=8'b00000010;
			mem[2]<=8'b10000010;
			mem[3]<=8'b00000000;
			mem[4]<=8'b00010011;
			mem[5]<=8'b10000011;
			mem[6]<=8'b01000010;
			mem[7]<=8'b00000000;
			mem[8]<=8'b10010011;
			mem[9]<=8'b00000010;
			mem[10]<=8'b01110011;
			mem[11]<=8'b00000000;
			mem[12]<=8'b10110011;
			mem[13]<=8'b10000011;
			mem[14]<=8'b01100010;
			mem[15]<=8'b00000000;
			mem[16]<=8'b01100011;
			mem[17]<=8'b01001100;
			mem[18]<=8'b00110001;
			mem[19]<=8'b00000000;
			mem[20]<=8'b10000011;
			mem[21]<=8'b00100010;
			mem[22]<=8'b10000011;
			mem[23]<=8'b00000001;

			//read from instructions.dat
    end

    always @(posedge clk) begin
        //read instructions
        dout <= {mem[addr + 3], mem[addr + 2], mem[addr + 1], mem[addr]};
        rd_out <= dout[11:7];
        rs1_out <= dout[19:15];
        rs2_out <= dout[24:20];
    end
    
    
endmodule