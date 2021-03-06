module lab12_3_2(clk,a);
input clk;
output [3:0]a;
lab11_2 st0(1,clk,0,a[0]);
lab11_2 st1(a[0],clk,0,a[1]);
lab11_2 st2((a[0]&a[1]),clk,0,a[2]);
lab11_2 st3((a[0]&a[1]&a[2]),clk,0,a[3]);
endmodule

module lab11_2(t,clk,reset,q);
input t,clk,reset;
output q;
reg q;
always@(negedge clk)
if(reset==1)
q<=0;
else if(t==0)
q<=q;
else if(t==1)
q<=~q;
endmodule

