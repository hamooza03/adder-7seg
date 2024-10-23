module hex_7seg_decoder

    (input [3:0] in,
     output o_a,
     output o_b,
     output o_c,
     output o_d,
     output o_e,
     output o_f,
     output o_g
    );

    reg a, b, c, d ,e, f, g;

    always @(*) begin
        case(in)
        4'd0: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd1: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd2: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd3: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd4: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd5: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd6: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd7: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd8: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd9: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd10: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd11: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd12: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd13: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd14: {a, b, c, d, e, f, g} = 7'b1111110;
        4'd15: {a, b, c, d, e, f, g} = 7'b1111110;
        default : {a,b,c,d,e,f,g} = 7'b1111110;
        endcase
    end

    assign {o_a, o_b, o_c, o_d, o_e, o_f, o_g} = {a, b, c, d, e, f, g};

endmodule

