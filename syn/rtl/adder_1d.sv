module adder_1d(S,CO,A,B,Cin);

input [3:0] A,B;
input Cin;
output reg [3:0]S;
output reg CO;

always_comb 
{S,CO} = A+B+Cin;

endmodule
