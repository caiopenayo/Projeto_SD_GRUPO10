`timescale 1ns/100ps;
module comparador_tb;

    reg a_tb, b_tb;
    wire aeqb_tb;

    comp uut (.a(a_tb), .b(b_tb), .aeqb(aeqb_tb));

    initial begin
        a_tb = 1;
        b_tb = 0;

        #200
        b_tb = 1;

        #200
        $stop;
    end

endmodule