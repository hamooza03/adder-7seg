module 4bit_rca_tb();
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    rca uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("4bit_rca_tb.vcd");
        $dumpvars(0, 4bit_rca_tb);

        $display("A       B       CIN | SUM     COUT");
        $display("-------------------------------");
        $monitor("%b %b %b | %b %b", a, b, cin, sum, cout);

        // Test various combinations of inputs
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0001; b = 4'b0010; cin = 0; #10;
        a = 4'b0101; b = 4'b0011; cin = 1; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        $finish;
    end

endmodule