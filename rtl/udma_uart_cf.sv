module udma_uart_cf (
	input  logic            rts_en_i,
	input  logic			rx_ready_i,

	input  logic			cts_en_i,
	input  logic			cts_i,
	input  logic			tx_en_i,

	output logic			rts_o,

	output logic			tx_en_o
	);

    //assign rts_o = ~rx_ready_i & rts_en_i;
    assign rts_o = (rts_en_i == 1) ? ~rx_ready_i : 1'b1;

    assign tx_en_o = (cts_en_i == 1) ? (~cts_i & tx_en_i) : tx_en_i;

endmodule
