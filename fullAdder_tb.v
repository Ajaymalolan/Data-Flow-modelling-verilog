module fullAdder_tb;

reg a_i,b_i,cin_i;
wire cout_o,s_o;

fullAdder f (.a(a_i), .b(b_i), .cin(cin_i), .cout(cout_o), .s(s_o));

initial
begin

$dumpfile("b_fa.vcd");
$dumpvars(0,fullAdder_tb);
$monitor(a_i,b_i,cin_i,s_o,cout_o);

a_i=1'b0;
b_i=1'b0;
cin_i=1'b0;
#10
a_i=1'b0;
b_i=1'b0;
cin_i=1'b1;
#10
a_i=1'b0;
b_i=1'b1;
cin_i=1'b0;
#10
a_i=1'b0;
b_i=1'b1;
cin_i=1'b1;
#10
a_i=1'b1;
b_i=1'b0;
cin_i=1'b0;
#10
a_i=1'b1;
b_i=1'b0;
cin_i=1'b1;
#10
a_i=1'b1;
b_i=1'b1;
cin_i=1'b0;
#10
a_i=1'b1;
b_i=1'b1;
cin_i=1'b1;
#10
a_i=1'b0;
b_i=1'b0;
cin_i=1'b0;
#10
$finish;
end
endmodule

