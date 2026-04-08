module buzzer (
    input  wire clk_1mhz,
    input  wire rst,
    input  wire [1:0] mode,
    output reg  buzzer_out
);

    reg [15:0] count;
    reg [15:0] toggle_val;

    // Tone selection
    always @(*) begin
        case (mode)
            2'b01: toggle_val = 16'd625; // 800 Hz
            2'b10: toggle_val = 16'd250; // 2 kHz
            2'b11: toggle_val = 16'd125; // 4 kHz
            default: toggle_val = 16'd0; // OFF
        endcase
    end

    always @(posedge clk_1mhz or posedge rst) begin
        if (rst) begin
            count      <= 16'd0;
            buzzer_out <= 1'b0;
        end else if (mode == 2'b00) begin
            count      <= 16'd0;
            buzzer_out <= 1'b0;
        end else begin
            if (count == toggle_val - 1) begin
                count      <= 16'd0;
                buzzer_out <= ~buzzer_out;
            end else begin
                count <= count + 1'b1;
            end
        end
    end
endmodule
