module traffic_light_controller (
    input wire clk,
    input wire reset,
    output reg [2:0] lights 
);

    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= RED;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end

    always @(*) begin
        case (current_state)
            RED:    lights = 3'b100; 
            GREEN:  lights = 3'b001; 
            YELLOW: lights = 3'b010; 
            default: lights = 3'b100;
        endcase
    end

endmodule
