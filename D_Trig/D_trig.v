module D_trig(clk,D,Q,nQ);
input clk,D;
output reg Q ,nQ;
always@(posedge clk)
begin
	Q<=D;
	nQ=!D;
end
endmodule
	