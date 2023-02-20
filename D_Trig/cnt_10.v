module cnt_10(Clk,Reset,En,Q,Full);
input Clk, Reset, En ;
output [ 3:0] Q;
output Full;
reg [ 3:0] Qint;
always@(posedge Clk or posedge Reset)
begin
		if (Reset)
				Qint<=0;
		else if(En)
				begin
					if (Qint==9)
						Qint<=0;
					else
							Qint<=Qint+1;
				end
end

assign Q=Qint;
assign Full=(Qint==9)?1:0;
	
endmodule
