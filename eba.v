`include "fullAdder.v"
module eba(a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8,s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,cin,cout);

input a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8;
input b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8;
input cin;
output s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8;
output cout;

wire c_1,c_2,c_3,c_4,c_5,c_6,c_7;

fullAdder f1 (a_1,b_1,cin,c_1,s_1);
fullAdder f2 (a_2,b_2,c_1,c_2,s_2);
fullAdder f3 (a_3,b_3,c_2,c_3,s_3);
fullAdder f4 (a_4,b_4,c_3,c_4,s_4);
fullAdder f5 (a_5,b_5,c_4,c_5,s_5);
fullAdder f6 (a_6,b_6,c_5,c_6,s_6);
fullAdder f7 (a_7,b_7,c_6,c_7,s_7);
fullAdder f8 (a_8,b_8,c_7,cout,s_8);

endmodule
