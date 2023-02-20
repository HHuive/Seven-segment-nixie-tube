module LED_DRV (clk,LED_Bit,LED_Seg) ;
input clk;
output[7:0] LED_Bit,LED_Seg ;
wire clk_400Hz;
wire [ 3:0] scan_cnt;			
wire [ 3:0] Data_BCD;

div U1 (.clk (clk),	//50MHz
					.f0(clk_400Hz)				
					);
					
cnt10_4 U2 (.clk (clk),//fang zhen clk , xia zai clk_400Hz
						.Q0(scan_cnt[0]),
						.Q1(scan_cnt[1]),
						.Q2(scan_cnt[2]),
						.Q3(scan_cnt[3])
					
					);
decode3_8 U3 (.A(scan_cnt),
							.Y(LED_Bit),
							);

Mux4bit_8_1   U4( .Data0_i(1),
									.Data1_i(2),
									.Data2_i(3),
									.Data3_i(4),
									.Data4_i(5),
									.Data5_i(6),
									.Data6_i(7),
									.Data7_i(8),
									.Data_out(Data_BCD),
									.Sel(scan_cnt),
									);
BCD_7Seg U5(.BCD_Data(Data_BCD),
							.SEG7(LED_Seg)
							);
endmodule
