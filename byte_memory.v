module byte_memory(
    input [7:0] data,// 8 bit input
    input store,
    output reg [7:0] memory// stores it 
);
    always @(data or store) begin // update memory when data chages 
        if (store)
            memory <= data;// stores all 8 bti when on
    end
endmodule
