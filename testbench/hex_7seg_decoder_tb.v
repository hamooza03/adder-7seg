module tb_hex_7seg_decoder();
    reg [3:0] in;
    wire o_a, o_b, o_c, o_d, o_e, o_f, o_g;

    hex_7seg_decoder uut (
        .in(in),
        .o_a(o_a),
        .o_b(o_b),
        .o_c(o_c),
        .o_d(o_d),
        .o_e(o_e),
        .o_f(o_f),
        .o_g(o_g)
    );

    initial begin
        $dumpfile("hex_7seg_decoder_tb.vcd");
        $dumpvars(0, tb_hex_7seg_decoder);
        
        $display("IN  | A B C D E F G");
        $display("-------------------");
        $monitor("%b | %b %b %b %b %b %b %b", in, o_a, o_b, o_c, o_d, o_e, o_f, o_g);

        // Test all hexadecimal inputs from 0 to 15
        for (in = 0; in < 16; in = in + 1) begin
            #10; // Wait for 10 time units
        end
        #10;
        $finish;
    end

endmodule