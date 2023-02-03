module top;

reg [3:0] A,B;
reg Cin;
wire [3:0]S;
wire CO;

adder_1d DUT(.S(S),.CO(CO),.A(A),.B(B),.Cin(Cin));

initial begin
$monitor("A=%b B=%b Cin=%b S = %b CO=%b",A,B,Cin,S,CO);
for (int i = 0;i< 512; i++)
begin
  {A,B,Cin} = i;
#5;
end
#10 $finish;
end

endmodule
