module clk_div (
    input  wire clk_100mhz,
    input  wire rst,
    output reg  clk_1mhz
);

    reg [6:0] count;

    always @(posedge clk_100mhz or posedge rst) begin
        if (rst) begin
            count    <= 7'd0;
            clk_1mhz <= 1'b0;
        end else begin
            if (count == 7'd49) begin
                count    <= 7'd0;
                clk_1mhz <= ~clk_1mhz;
            end else begin
                count <= count + 1'b1;
            end
        end
    end
endmodule
