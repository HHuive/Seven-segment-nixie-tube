module cnt10_4 (Clk,Reset,Q0,Q1,Q2,Q3);
wire En0,En1,En2,En3;
input Clk,Reset ;
output [3:0] Q0,Q1,Q2,Q3;
assign En0=1;
assign En1=Full0;
assign En2=Full0&Full1;     
assign En3=Full0&Full1&Full2;  
cnt_10 U0 (	.Clk(Clk),.Reset(Reset),.En(En0),.Q(Q0),.Full(Full0)) ; 
cnt_10 U1 (	.Clk(Clk),.Reset(Reset),.En(En1),.Q(Q1),.Full(Full1)) ; 
cnt_10 U2 (	.Clk(Clk),.Reset(Reset),.En(En2),.Q(Q2),.Full(Full2)) ;
cnt_10 U3 (	.Clk(Clk),.Reset(Reset),.En(En3),.Q(Q3),.Full(Full3)) ;
endmodule