`timescale 1ns/100ps
module somador_tb;

    reg a_tb, b_tb, cin_tb;
    wire s_tb; cout_tb;

    somador4b uut (.a(a_tb), .b(b_tb), .cin(cin_tb), .s(s_tb), .cout(cout_tb));

    initial begin
        a_tb = 1;
        b_tb = 1;
        cin_tb = 0;

        #50
        a_tb = 0;

        #20
        a_tb = 3;

        #200
        $stop;

    end
endmodule