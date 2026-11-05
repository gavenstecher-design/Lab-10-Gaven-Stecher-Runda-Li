module jk_flip_flop(
    input J,
    input K,
    input clk,
    output Q,
    output Qn
);
    wire D;
    assign D = (J & Qn) | (~K & Q);// Determines the D input useing J K the Q

    d_flip_flop storage(.D(D), .clk(clk), .Q(Q), .Qn(Qn));// used the D flip[ flop to store the next state
endmodule
