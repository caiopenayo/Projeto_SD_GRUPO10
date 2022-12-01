
module acendeled (memoria1,memoria2,acende,led1, led2,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15);
// Esse módulo compara os valores de 0 a 15 com o valor da memória do jogador 1 e faz o mesmo com a memória do jogador 2.
// Se pelo menos uma das saídas desses comparadores for 1, o led deve acender.
input [3:0]memoria1;
input [3:0]memoria2;
input wire [3:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15;
output reg acende;
output reg led1, led2;
wire aeqb01, aeqb02,aeqb11, aeqb12,aeqb21, aeqb22,aeqb31, aeqb32,aeqb41, aeqb42,aeqb51, aeqb52,aeqb61, aeqb62,aeqb71, aeqb72,aeqb81, aeqb82,aeqb91, aeqb92,aeqb101, aeqb102;
wire aeqb111, aeqb112,aeqb121, aeqb122,aeqb131, aeqb132,aeqb141, aeqb142,aeqb151, aeqb152;

assign a0=4'b0000;
assign a1=4'b0001;
assign a2=4'b0010;
assign a3=4'b0011;
assign a4=4'b0100;
assign a5=4'b0101;
assign a6=4'b0110;
assign a7=4'b0111;
assign a8=4'b1000;
assign a9=4'b1001;
assign a10=4'b1010;
assign a11=4'b1011;
assign a12=4'b1100;
assign a13=4'b1101;
assign a14=4'b1110;
assign a15=4'b1111;

comp comp1(a0,memoria1,aeqb01);
comp comp2(a0,memoria2,aeqb02);
comp comp3(a1,memoria1,aeqb11);
comp comp4(a1,memoria2,aeqb12);
comp comp5(a2,memoria1,aeqb21);
comp comp6(a2,memoria2,aeqb22);
comp comp7(a3,memoria1,aeqb31);
comp comp8(a3,memoria2,aeqb32);
comp comp9(a4,memoria1,aeqb41);
comp comp10(a4,memoria2,aeqb42);
comp comp11(a5,memoria1,aeqb51);
comp comp12(a5,memoria2,aeqb52);
comp comp13(a6,memoria1,aeqb61);
comp comp14(a6,memoria2,aeqb62);
comp comp15(a7,memoria1,aeqb71);
comp comp16(a7,memoria2,aeqb72);
comp comp17(a8,memoria1,aeqb81);
comp comp18(a8,memoria2,aeqb82);
comp comp19(a9,memoria1,aeqb91);
comp comp20(a9,memoria2,aeqb92);
comp comp21(a10,memoria1,aeqb101);
comp comp22(a10,memoria2,aeqb102);
comp comp23(a11,memoria1,aeqb111);
comp comp24(a11,memoria2,aeqb112);
comp comp25(a12,memoria1,aeqb121);
comp comp26(a12,memoria2,aeqb122);
comp comp27(a13,memoria1,aeqb131);
comp comp28(a13,memoria2,aeqb132);
comp comp29(a14,memoria1,aeqb141);
comp comp30(a14,memoria2,aeqb142);
comp comp31(a15,memoria1,aeqb151);
comp comp32(a15,memoria2,aeqb152);
always @(*) begin
   acende = 0;

if((aeqb01)==1) begin
    acende = 1;
    led1 = 0;
end

if((aeqb02)==1) begin
    acende = 1;
    led2 = 0;
end

if((aeqb11)==1) begin
    acende = 1;
    led1 = 1;
end

if((aeqb12)==1) begin
    acende = 1;
    led2 = 1;
end

if((aeqb21)==1) begin
    acende = 1;
    led1 = 2;
end

if((aeqb22)==1) begin
    acende = 1;
    led2 = 2;
end

if((aeqb31)==1) begin
    acende = 1;
    led1= 3;
end

if((aeqb32)==1) begin
    acende = 1;
    led2= 3;
end

if((aeqb41)==1) begin
    acende = 1;
    led1 = 4;
end

if((aeqb42)==1) begin
    acende = 1;
    led2 = 4;
end

if((aeqb51)==1) begin
    acende = 1;
    led1 = 5;
end

if((aeqb52)==1) begin
    acende = 1;
    led2 = 5;
end

if((aeqb61)==1) begin
    acende = 1;
    led1 = 6;
end

if((aeqb62)==1) begin
    acende = 1;
    led2 = 6;
end

if((aeqb71)==1) begin
    acende = 1;
    led1 = 7;
end

if((aeqb72)==1) begin
    acende = 1;
    led2 = 7;
end

if((aeqb81)==1) begin
    acende = 1;
    led1 = 8;
end

if((aeqb82)==1) begin
    acende = 1;
    led2 = 8;
end

if((aeqb91)==1) begin
    acende = 1;
    led1 = 9;
end

if((aeqb92)==1) begin
    acende = 1;
    led2 = 9;
end

if((aeqb101)==1) begin
    acende = 1;
    led1 = 10;
end

if((aeqb102)==1) begin
    acende = 1;
    led2 = 10;
end

if((aeqb111)==1) begin
    acende = 1;
    led1 = 11;
end

if((aeqb112)==1) begin
    acende = 1;
    led2 = 11;
end

if((aeqb121)==1) begin
    acende = 1;
    led1 = 12;
end

if((aeqb122)==1) begin
    acende = 1;
    led2 = 12;
end

if((aeqb131)==1) begin
    acende = 1;
    led1 = 13;
end

if((aeqb132)==1) begin
    acende = 1;
    led2 = 13;
end

if((aeqb141)==1) begin
    acende = 1;
    led1 = 14;
end

if((aeqb142)==1) begin
    acende = 1;
    led2 = 14;
end

if((aeqb151)==1) begin
    acende = 1;
    led1 = 15;
end

if((aeqb152)==1) begin
    acende = 1;
    led2 = 15;
end

end

endmodule


module Botao3(SinalBotao3, posicaofinal, posicaoadversaria);
    input SinalBotao3;
    output posicaofinal, posicaoadversaria;
    wire turno, posicao, soma, cout, borrowout,comparacao;
    reg zero, um, guarda;

    initial begin
        guarda = 2'b01;
        zero = 2'b00;
        um = 2'b01;
       
    end

        ContaTurno contaturnos1(.turno(turno));
        Posicao1 posicaoprimeirojogador1(.comparador(guarda), .din(zero), .dout(posicao));
        somador4b soma1(.a(turno), .b(posicao), .cin(zero), .s(soma), .cout(cout));
        sub_4bit subtrador1(.d(posicao), .bo(borrowout), .a(posicao), .b(um), .bin(zero));
        Posicao2 posicaosegundojogador1(.comparador(guarda), .din(zero), .dout(posicaoadversaria));
        comp comparador2(.a(posicao1), .b(posicaoadversaria), .aeqb(comparacao));
        Posicao1 posicaoprimeirojogador2(.comparador(comparacao), .din(soma), .dout(posicaofinal));

endmodule

module comp(a,b,aeqb); //comparador que retorna 1 na saída se os numeros são iguais e 0 se são distintos

output aeqb;
input[3:0]a,b;

wire x3,x2,x1,x0;

assign x3 = ~(a[3] ^ b[3]);
assign x2 = ~(a[2] ^ b[2]);
assign x1 = ~(a[1] ^ b[1]);
assign x0 = ~(a[0] ^ b[0]);

assign aeqb = x3 & x2 & x1 & x0;


endmodule

module ContaTurno(turno);//devolve o turno do jogo que varia no seguinte intervalo: (1,2,3,3,2,1,0)
    output reg [2:0] turno;
    reg [1:0] ciclo1;

    initial begin
        turno = 3'b000;
        ciclo1 = 2'b01;
    end
    always @ (*)begin
        if(ciclo1)begin
            turno = turno + 3'b001;
            if(turno == 3'b100)
                ciclo1 = 0;
        end
        if(!ciclo1) begin
            turno = turno - 3'b001;
            if(turno == 3'b000)
                ciclo1 = 1;
        end
    end
endmodule

module full_3(s,co,a,b,c); //modulo necessario pra fazer o subtrador
input a,b,c;
output reg s,co;
always @ (*)
begin
 s=a^b^c;
 co=(a&b) | (b&c) | (a&c);
 end
endmodule

module Posicao1(comparador, din, dout); // modulo que devolve a posição do primeiro jogador
    input comparador;
    input[3:0] din;
    output reg [3:0] dout;
    
    initial begin
        dout = 4'b0000;
    end
    always @(*) if(!comparador)begin
        dout <= din;
    end
endmodule

module Posicao1(comparador, din, dout); // modulo que devolve a posição do primeiro jogador
    input comparador;
    input[3:0] din;
    output reg [3:0] dout;
    
    initial begin
        dout = 4'b0000;
    end
    always @(*) if(!comparador)begin
        dout <= din;
    end
endmodule

module Posicao2(comparador, din, dout); // modulo que devolve a posição do segundo jogador
    input comparador;
    input[3:0] din;
    output reg [3:0] dout;
    
    initial begin
        dout = 4'b1111;
    end
   always @(*) if(!comparador)begin
        dout <= din;
    end
endmodule

module somador4b (a,b,cin,s,cout); // somador de 4 bits
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

wire c1, c2, c3;

somadorcompleto fa0 (.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
somadorcompleto fa1 (.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
somadorcompleto fa2 (.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
somadorcompleto fa3 (.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));

endmodule

module somadorcompleto (a,b,cin,s,cout);  //modulo necessario para fazer o somador de 4 bits
input a,b,cin;
output s,cout;

assign s = a ^ b ^ cin;
assign cout = a&b | a&cin | b&cin;

endmodule

module sub_4bit(d,bo,a,b,bin); //subtrador de 4 bits
output [3:0]d;
output bo;
input [3:0]a,b;
input bin;
wire [2:0]bi;
full_3 sub1(d[0],bi[0],a[0],~b[0],1);
full_3 sub2(d[1],bi[1],a[1],~b[1],bi[0]);
full_3 sub3(d[2],bi[2],a[2],~b[2],bi[1]);
full_3 sub4(d[3],bo,a[3],~b[3],bi[2]);
endmodule

module Botao4(SinalBotao4, posicaofinal1)
    input SinalBotao4;
    output posicaofinal1;
    wire turno, posicao, soma, cout, borrowout, posicaoadversaria, comparacao;
    reg zero, um, guarda;

    initial begin
        guarda = 2'b01;
        zero = 2'b00;
        um = 2'b01;
    end

    ContaTurno contaturnos2(.turno(turno));
    Posicao1 posicaoprimeirojogador2(.comparador(guarda), .din(zero), .dout(posicao));
    somador4b soma2(.a(turno), .b(posicao), .cin(zero), .s(soma), .cout(cout));
    Posicao2 posicaosegundojogador2(.comparador(guarda), .din(zero), .dout(posicaoadversaria));
    comp comparador2(.a(posicao), .b(posicaoadversaria), .aeqb(comparacao));
 
endmodule

module botoes_jogador2(SinalBotao1, SinalBotao2, posicaofinal, posicaoadversaria);
    input reg SinalBotao1, SinalBotao2;
    input wire posicaoadversaria;
    output posicaofinal;
    wire turno, posicao, soma,cout, borrowout, comparacao;
    reg zero, um, guarda;

    initial begin
        guarda = 2'b01;
        zero = 2'b00;
        um = 2'b01;
    end

     if(SinalBotao1)begin
        ContaTurno contaturnos3(.turno(turno));
        Posicao2 posicaosegundojogador3(.comparador(guarda), .din(zero), .dout(posicao));
        somador4b soma3(.a(turno), .b(um), .cin(zero), .s(soma), .cout(cout));
        sub_4bit subtrador3(.d(posicao), .bo(borrowout), .a(posicao), .b(soma), .bin(zero));
        Posicao1 posicaoprimeirojogador3(.comparador(guarda), .din(zero), .dout(posicaoadversaria));
        comp comparador3(.a(posicao), .b(posicaoadversaria), .aeqb(comparacao));
        Posicao2 posicaosegundojogador6(.comparador(comparacao), .din(soma), .dout(posicaofinal));
        end

        else begin
        ContaTurno contaturnos4(.turno(turno));
        Posicao2 posicaosegundojogador4(.comparador(guarda), .din(zero), .dout(posicao));
        somador4b soma4(.a(turno), .b(um), .cin(zero), .s(soma), .cout(cout));
        sub_4bit subtrador4(.d(posicao), .bo(borrowout), .a(posicao), .b(soma), .bin(zero));
        Posicao1 posicaoprimeirojogador4(.comparador(guarda), .din(zero), .dout(posicaoadversaria));
        somador4b soma44(.a(posicao), .b(um), .cin(zero), .s(soma), .cout(cout));
        comp comparador4(.a(posicao), .b(posicaoadversaria), .aeqb(comparacao));
        Posicao2 posicaosegundojogador5(.comparador(comparacao), .din(soma), .dout(posicaofinal));
        end

endmodule
