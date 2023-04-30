//Full adder using half adder

//Include half adder from previous program
`include "halfAdder.v"

//Full adder using half adder
module faUha(a,b,cin,s,c);

input a,b,cin;
output s,c;

wire si,ci,cii;
//first stage
halfAdder H1 (.a(a),.b(b),.c(ci),.s(si));
halfAdder H2 (.a(si),.b(cin),.c(cii),.s(s));

//second stage
assign c= ci|cii;

endmodule
