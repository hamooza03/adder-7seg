module full_adder_tb();
    reg a, b, cin;
    wire sum, cout;
    
    full_adder dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        $display("A B CIN | SUM COUT");
        $display("-------------------");
        $monitor("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
        #1 $finish;
    end


endmodule