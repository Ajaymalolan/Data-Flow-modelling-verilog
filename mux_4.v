//behavioral modelling
//4:1 MUX using 2:1 MUX

//include 2:1 mux
`include "mux_2.v"
//start module
module mux_4(x1,x2,x3,x4,c,y);

//i/o ports
input x1,x2,x3,x4;
input [1:0]c;
output y;

//interconnecting wire
wire i1,i2;

//instantiate 2:1 MUX
//stage one
mux_2 m1(.x1(x1),.x2(x2),.c(c[0]),.y(i1));
mux_2 m2(.x1(x3),.x2(x4),.c(c[0]),.y(i2));
//stage two
mux_2 m3(.x1(i1),.x2(i2),.c(c[1]),.y(y));

//end module
endmodule
