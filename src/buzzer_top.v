module buzzer_top (
    input  wire clk_100mhz,
    input  wire rst,
    input  wire [1:0] mode,
    output wire buzzer_out
);

    wire clk_1mhz;

    // Clock divider
    clk_div u1 (
        .clk_100mhz(clk_100mhz),
        .rst(rst),
        .clk_1mhz(clk_1mhz)
    );

    // Buzzer module
    buzzer u2 (
        .clk_1mhz(clk_1mhz),
        .rst(rst),
        .mode(mode),
        .buzzer_out(buzzer_out)
    );

endmodule
