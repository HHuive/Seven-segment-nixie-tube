module Max4bit_8_1 ( Data0_i , Data1_i,Data2_i, Data3_i,
											Data4_i , Data5_i,Data6_i , Data7_i,
											Data_out,
											Sel ) ;
input [3:0 ] Data0_i,Data1_i,Data2_i,Data3_i,Data4_i,Data5_i,Data6_i,Data7_i;
input [ 2:0] Sel;
output reg [ 3:0] Data_out;
always@(*)
begin
		case (Sel)
		0 : Data_out<=Data0_i;
		1 : Data_out<=Data1_i;
		2 : Data_out<=Data2_i;
		3 : Data_out<=Data3_i;
		4 : Data_out<=Data4_i;
		5 : Data_out<=Data5_i;
		6 : Data_out<=Data6_i;
		7 : Data_out<=Data7_i;
		default Data_out<=4'b1111;
		endcase
end
endmodule
