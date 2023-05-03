//test bench for eba.v, 8 bit adder
module eba_tb;

reg a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8;
reg b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8;
reg cin;
wire s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8;
wire cout;

eba e(
.a_1(a_1),
.a_2(a_2),
.a_3(a_3),
.a_4(a_4),
.a_5(a_5),
.a_6(a_6),
.a_7(a_7),
.a_8(a_8),
.b_1(b_1),
.b_2(b_2),
.b_3(b_3),
.b_4(b_4),
.b_5(b_5),
.b_6(b_6),
.b_7(b_7),
.b_8(b_8),
.s_1(s_1),
.s_2(s_2),
.s_3(s_3),
.s_4(s_4),
.s_5(s_5),
.s_6(s_6),
.s_7(s_7),
.s_8(s_8),
.cin(cin),
.cout(cout));

initial
begin

$dumpfile("b_eba.vcd");
$dumpvars(0,eba_tb);
$monitor(a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8,s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,cin,cout);

a_1=1'b0;
a_2=1'b0;
a_3=1'b0;
a_4=1'b0;
a_5=1'b0;
a_6=1'b0;
a_7=1'b0;
a_8=1'b1;
b_1=1'b0;
b_2=1'b0;
b_3=1'b0;
b_4=1'b0;
b_5=1'b0;
b_6=1'b0;
b_7=1'b0;
b_8=1'b1;
cin=1'b1;
#10
a_1=1'b0;
a_2=1'b0;
a_3=1'b0;
a_4=1'b0;
a_5=1'b0;
a_6=1'b0;
a_7=1'b1;
a_8=1'b0;
b_1=1'b0;
b_2=1'b0;
b_3=1'b0;
b_4=1'b0;
b_5=1'b0;
b_6=1'b1;
b_7=1'b0;
b_8=1'b0;
cin=1'b1;
#10


$finish;

end
endmodule
