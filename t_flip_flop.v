module t_flip_flop(
    input T,
    input clk,
    output Q,
    output Qn
);
    jk_flip_flop storage(.J(T), .K(T), .clk(clk), .Q(Q), .Qn(Qn));//Uses T to control both J and K
endmodule
