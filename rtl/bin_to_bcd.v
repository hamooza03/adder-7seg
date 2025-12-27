module bin_to_bcd(
    input [4:0] b_in,
    output reg [3:0] tens,
    output reg [3:0] ones
);

    always @(*) begin
        tens = b_in / 10;
        ones = b_in % 10;
    end

    

endmodule