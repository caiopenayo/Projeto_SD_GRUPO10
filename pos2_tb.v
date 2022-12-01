`timescale 1ns/100ps;
module posicao2_tb;

    reg comparador_tb, din_tb;
    wire dout_tb;

    Posicao2 uut (.comparador(comparador_tb), .din(din_tb), .dout(dout_tb));

    initial begin
        comparador_tb = 1;
        din_tb = 0

        #200
        din_tb = 4;

        #20
        comparador_tb = 0;

        #20
        $stop;
        
    end

endmodule