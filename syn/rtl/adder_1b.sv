

module adder_1b(S,CO,A,B,Cin);

input [3:0] A,B;
input Cin;
output [3:0]S;
output CO;

wire [3:0]W;

adder2 A1(S[0],W[0],A[0],B[0],Cin);
adder2 A2(S[1],W[1],A[1],B[1],W[0]);
adder2 A3(S[2],W[2],A[2],B[2],W[1]);
adder2 A4(S[3],W[3],A[3],B[3],W[2]);

assign CO = W[3];

endmodule



module adder2(S,CO,A,B,Cin);

input A,B;
input Cin;
output S;
output CO;

wire W1,W2,W3;

xor X1(W1,A,B);
and A1(W2,A,B);
and A2(W3,W1,Cin);
or O1(CO,W2,W3);
xor X2(S,W1,Cin);

endmodule
