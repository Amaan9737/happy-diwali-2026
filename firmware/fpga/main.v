
module main (
    input  wire clk,
    output wire clk_en,
    output wire LED,
    output wire LED_en
);

    // Enable FPGA oscillator
    assign clk_en = 1'b1;

    // Enable LED output
    assign LED_en = 1'b1;

    // 12-bit PWM counter
    reg [11:0] pwm_counter = 12'd0;

    always @(posedge clk) begin
        pwm_counter <= pwm_counter + 1'b1;
    end

    // Lighting effect timer
    // 50 MHz clock: 2,500,000 cycles = 50 ms
    reg [21:0] timer = 22'd0;
    reg [5:0] step = 6'd0;

    always @(posedge clk) begin
        if (timer >= 22'd2499999) begin
            timer <= 22'd0;

            if (step == 6'd39)
                step <= 6'd0;
            else
                step <= step + 1'b1;
        end else begin
            timer <= timer + 1'b1;
        end
    end

    // LED brightness: 0 to 255
    reg [7:0] brightness;

    always @(*) begin
        case (step)
             0: brightness = 0;
             1: brightness = 0;
             2: brightness = 12;
             3: brightness = 35;
             4: brightness = 90;
             5: brightness = 180;
             6: brightness = 255;
             7: brightness = 210;
             8: brightness = 255;
             9: brightness = 145;
            10: brightness = 225;
            11: brightness = 255;
            12: brightness = 170;
            13: brightness = 255;
            14: brightness = 110;
            15: brightness = 45;
            16: brightness = 12;
            17: brightness = 0;
            18: brightness = 0;
            19: brightness = 0;
            20: brightness = 5;
            21: brightness = 25;
            22: brightness = 75;
            23: brightness = 160;
            24: brightness = 255;
            25: brightness = 190;
            26: brightness = 255;
            27: brightness = 130;
            28: brightness = 240;
            29: brightness = 255;
            30: brightness = 200;
            31: brightness = 90;
            32: brightness = 25;
            33: brightness = 0;
            34: brightness = 0;
            35: brightness = 0;
            36: brightness = 0;
            37: brightness = 0;
            38: brightness = 0;
            39: brightness = 0;
            default: brightness = 0;
        endcase
    end

    // PWM output: approximately 12.2 kHz at 50 MHz
    assign LED = (pwm_counter[11:4] < brightness);

endmodule
