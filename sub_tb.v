`timescale 1ns/100ps
module sub_tb;

    reg a_tb, b_tb, bin_tb;
    wire d_tb, bo_tb;

    sub_4bit uut (.d(d_tb), .bo(bo_tb), .a(a_tb), .b(b_tb), .bin(bin_tb));

    initial begin
        a_tb = 2;
        b_tb = 1;
        bin_tb = 0;

        #50
        a_tb = 3;

        #40
        b_tb = 2;

        #200
        $stop;
    end
endmodule
