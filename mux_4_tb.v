//test bench for 4:1 MUX using 2:1 MUX
module mux_4_tb;

//i/o ports
reg x1,x2,x3,x4;
reg [1:0]c;
wire y;

//instantiate source code
mux_4 m(.x1(x1),.x2(x2),.x3(x3),.x4(x4),.c(c),.y(y));

//initiate simulation
initial 
begin

//dump variables and create wave form file
$dumpfile("b_fm.vcd");
$dumpvars(0,mux_4_tb);

//monitor signals
$monitor(x1,x2,x3,x4,c,y);

//assign different values for simulation
x1=1'b0;
x2=1'b0;
x3=1'b0;
x4=1'b0;
c=2'b00;
#10
x1=1'b0;
x2=1'b0;
x3=1'b0;
x4=1'b0;
c=2'b00;
#10

#10
x1=1'b0;
x2=1'b0;
x3=1'b0;
x4=1'b0;
c=2'b01;
#10
x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b0;
c=2'b01;
#10

#10
x1=1'b0;
x2=1'b0;
x3=1'b1;
x4=1'b0;
c=2'b10;
#10
x1=1'b0;
x2=1'b0;
x3=1'b0;
x4=1'b0;
c=2'b10;
#10

#10
x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b1;
c=2'b11;
#10
x1=1'b0;
x2=1'b0;
x3=1'b0;
x4=1'b1;
c=2'b11;
#10

//end simulation
$finish;
end

//end testbench
endmodule
