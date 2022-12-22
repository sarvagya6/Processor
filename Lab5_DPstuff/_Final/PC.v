module PC(addrin, addrout, clk);

input [31:0] addrin; //32 bit address in
input clk;
output reg [31:0] addrout; //32 bit address out


always@(*) begin
	addrout <= addrin;
end

endmodule