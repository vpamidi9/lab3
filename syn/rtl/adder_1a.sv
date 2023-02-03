

module adder_1a(S,CO,A,B,Cin);

input [3:0] A,B;
input Cin;
output reg [3:0]S;
output reg CO;

wire [3:0]W;

adder1 A1(S[0],W[0],A[0],B[0],Cin);
adder1 A2(S[1],W[1],A[1],B[1],W[0]);
adder1 A3(S[2],W[2],A[2],B[2],W[1]);
adder1 A4(S[3],W[3],A[3],B[3],W[2]);

assign CO = W[3];


endmodule




module adder1(S,CO,A,B,C);

input A,B,C;
output S,CO;

assign S = A ^ B^C;
assign CO = A&B | B&C | C&A;

endmodule
