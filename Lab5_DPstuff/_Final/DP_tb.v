module DP_tb;

    reg clk;

    // Instantiate the Unit Under Test (UUT)
    DP uut (.clk(clk));

    // Initial block
    initial begin
        clk = 0;
        #200 $stop;
    end

    // Always block
    always #5 clk = ~clk;


endmodule
