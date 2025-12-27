module wrapper(
    input[3:0] sw_a,
    input[3:0] sw_b,
    input sw_cin,
    output[6:0] segA,
    output[6:0] segB
);

    wire [3:0] sum;
    wire cout;
    wire [3:0] tens;
    wire [3:0] ones;

    rca my_rca (
        .a(sw_a),
        .b(sw_b),
        .cin(sw_cin),
        .sum(sum),
        .cout(cout)
    );

    bin_to_bcd my_bin_to_bcd (
        .b_in({cout, sum}),
        .tens(tens),
        .ones(ones)
    );

    hex_7seg_decoder my_hex_7seg_decoder_A (
        .in(tens),
        .o_a(segA[6]),
        .o_b(segA[5]),
        .o_c(segA[4]),
        .o_d(segA[3]),
        .o_e(segA[2]),
        .o_f(segA[1]),
        .o_g(segA[0])
    );

    hex_7seg_decoder my_hex_7seg_decoder_B (
        .in(ones),
        .o_a(segB[6]),
        .o_b(segB[5]),
        .o_c(segB[4]),
        .o_d(segB[3]),
        .o_e(segB[2]),
        .o_f(segB[1]),
        .o_g(segB[0])
    );

endmodule