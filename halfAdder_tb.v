module halfAdder_tb;

wire c_o,s_o;
reg a_i,b_i;

halfAdder half(
.a(a_i), 
.b(b_i), 
.c(c_o), 
.s(s_o)
);
initial

begin

$display(a_i,b_i,c_o,s_o);
$dumpfile("behavioral_halfAdder.vcd");
$dumpvars(0,halfAdder_tb);

a_i=1'b0;
b_i=1'b0;
#10
a_i=1'b0;
b_i=1'b1;
#10
a_i=1'b1;
b_i=1'b0;
#10
a_i=1'b1;
b_i=1'b1;
#10

#10

$finish;

end
endmodule
