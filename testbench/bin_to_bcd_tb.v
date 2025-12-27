module bin_to_bcd_tb();
    reg [4:0] b_in;
    wire [3:0] tens;
    wire [3:0] ones;

    bin_to_bcd uut (
        .b_in(b_in),
        .tens(tens),
        .ones(ones)
    );

    initial begin
        $dumpfile("bin_to_bcd_tb.vcd");
        $dumpvars(0, bin_to_bcd_tb);

        $display("B_IN   | TENS ONES");
        $display("-------------------");
        $monitor("%b | %b   %b", b_in, tens, ones);

        // Test various binary inputs
        b_in = 5'b00000; #10; // 0
        b_in = 5'b00101; #10; // 5
        b_in = 5'b01010; #10; // 10
        b_in = 5'b01111; #10; // 15
        b_in = 5'b10010; #10; // 18
        b_in = 5'b10100; #10; // 20
        b_in = 5'b11111; #10; // 31

        $finish;
    end

endmodule