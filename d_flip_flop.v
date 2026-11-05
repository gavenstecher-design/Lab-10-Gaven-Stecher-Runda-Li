module d_flip_flop(
    input D,
    input clk,
    output reg Q,
    output Qn
);
    initial Q = 1'b0;//Starts with Q set to 0

    always @(posedge clk)//stores D only to the riseing clock edge
        Q <= D;

    assign Qn = ~Q;//Qn is awlays the opposite of Q
endmodule
