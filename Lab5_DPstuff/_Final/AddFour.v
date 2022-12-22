module AddFour (
    addrin, addrout, clk
);

input [31:0] addrin;
input clk;
output reg [31:0] addrout;

initial begin
	addrout = 32'b0;
end

always @(posedge clk) begin
	//if (addrin) begin
		addrout <= addrin + 4;
	 //end
	 //else addrout <=32'b0;
end
    
endmodule