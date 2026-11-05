module d_latch(// creates module 
    input D,
    input E,
    output reg Q,
    output NotQ
);
    always @(D or E) begin// updates Q whenver D or E chnages 
        if (E)
            Q <= D;// storesd whenevr E is high
    end

    assign NotQ = ~Q;// outputs the oposite of Q
endmodule
