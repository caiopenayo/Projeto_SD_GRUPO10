`timescale 1ns/100ps
module Botao2_tb;

    reg SinalBotao1_tb, SinalBotao2_tb;
    wire posicaofinal_tb;

    Botao2 uut(.SinalBotao1(SinalBotao1_tb), .SinalBotao2(SinalBotao2_tb), .posicaofinal(posicaofinal_tb));

    initial begin
        SinalBotao1_tb = 0;
        SinalBotao2_tb = 0;

        #50
        SinalBotao1_tb = 1;

        #50
        #SinalBotao1_tb = 0;

        #50
        SinalBotao2_tb = 1;

        #50
        SinalBotao2_tb = 0;

        #100
        $stop;
    end
endmodule
