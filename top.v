module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_flip_flop dff(.D(sw[0]), .clk(btnC), .Q(led[0]), .Qn(led[1]));//SW0 controls D, LED0-1 display Q and Qn
    jk_flip_flop jkff(.J(sw[1]), .K(sw[2]), .clk(btnC), .Q(led[2]), .Qn(led[3]));//SW1 is J, SW2 is K, LED2-3 display Q and Qn
    t_flip_flop tff(.T(sw[3]), .clk(btnC), .Q(led[4]), .Qn(led[5]));//SW3 controls toggling, LED4-5 display Q and Qn
endmodule
