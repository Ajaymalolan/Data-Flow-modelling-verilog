module ebaUfa_tb;

reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] sum;
wire cout;

ebaUfa e (a,b,cin,sum,cout);

initial
begin

$dumpfile("b_ebaUfa.vcd");
$dumpvars(0,ebaUfa_tb);
$monitor(a,b,cin,sum,cout);

#10 
a=8'b00000001;
b=8'b00000001;
cin=1'b0;
#10 
a=8'b11111111;
b=8'b00000000;
cin=1'b1;
#10 
a=8'b11111111;
b=8'b00000001;
cin=1'b0;
#10 
a=8'b00000010;
b=8'b11111011;
cin=1'b1;
#10 
a=8'b00011000;
b=8'b00110000;
cin=1'b0;
#10 
a=8'b00100101;
b=8'b00100010;
cin=1'b1;
#10 
a=8'b10010001;
b=8'b10010000;
cin=1'b1;
#10 
a=8'b00000001;
b=8'b00000001;
cin=1'b1;
#10
a=8'b11111111;
b=8'b11111111;
cin=1'b1;
#10

$finish;
end
endmodule
