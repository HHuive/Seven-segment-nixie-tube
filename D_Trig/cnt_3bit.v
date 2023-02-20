module cnt_3bit ( clk,Q0,Q1,Q2) ;
input clk;
 
output Q0,Q1,Q2;

wire nQ0 , nQ1 , nQ2; 

//D_trig D0 (clk   , nQ0 , Q0  , nQ0);
//D_trig D1 (nQ0 , nQ1 , Q1  , nQ1);
//D_trig D2 (nQ1 , nQ2 , Q2  , nQ2);
D_trig D0(.clk(clk),
					.D(nQ0),
					.Q(Q0),
					.nQ(nQ0)
					);
D_trig D1(.clk(nQ0),
					.D(nQ1),
					.Q(Q1),
					.nQ(nQ1)
					);
D_trig D2(.clk(nQ1),
					.D(nQ2),
					.Q(Q2),
					.nQ(nQ2)
					);
endmodule
