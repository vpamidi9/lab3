module adder3(S,CO,A,B,Cin);

input A,B;
input Cin;
output reg S;
output reg CO;

always_comb 
begin
case({A,B,Cin})
 3'd0 : begin S = 0; CO =0; end
 3'd1 : begin S = 1; CO =0; end
 3'd2 : begin S = 1; CO =0; end 
 3'd3 : begin S = 0; CO =1; end
 3'd4 : begin S = 1; CO =0; end
 3'd5 : begin S = 0; CO =1; end
 3'd6 : begin S = 0; CO =1; end
 3'd7 : begin S = 1; CO =1; end
 default : {S,CO} = 2'd0;

endcase
end

endmodule

module adder_1c(S,CO,A,B,Cin);

input [3:0] A,B;
input Cin;
output [3:0]S;
output CO;

wire [3:0]W;

adder3 A1(S[0],W[0],A[0],B[0],Cin);
adder3 A2(S[1],W[1],A[1],B[1],W[0]);
adder3 A3(S[2],W[2],A[2],B[2],W[1]);
adder3 A4(S[3],W[3],A[3],B[3],W[2]);

assign CO = W[3];

endmodule
