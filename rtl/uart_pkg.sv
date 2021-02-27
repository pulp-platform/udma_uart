package uart_pkg;
	// uart structure
	typedef struct packed {
		logic tx_o;
		logic tx_oe;
	} uart_to_pad_t;
	typedef struct packed {
		logic rx_i;
	} pad_to_uart_t;
endpackage