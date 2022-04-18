
module nios_qsys (
	clk_clk,
	led_pio_export,
	light_i2c_opencores_export_scl_pad_io,
	light_i2c_opencores_export_sda_pad_io,
	light_int_external_connection_export,
	mm_bridge_for_hps_s0_waitrequest,
	mm_bridge_for_hps_s0_readdata,
	mm_bridge_for_hps_s0_readdatavalid,
	mm_bridge_for_hps_s0_burstcount,
	mm_bridge_for_hps_s0_writedata,
	mm_bridge_for_hps_s0_address,
	mm_bridge_for_hps_s0_write,
	mm_bridge_for_hps_s0_read,
	mm_bridge_for_hps_s0_byteenable,
	mm_bridge_for_hps_s0_debugaccess,
	mpu_i2c_opencores_export_scl_pad_io,
	mpu_i2c_opencores_export_sda_pad_io,
	mpu_int_external_connection_export,
	nios2_gen2_cpu_resetrequest_conduit_cpu_resetrequest,
	nios2_gen2_cpu_resetrequest_conduit_cpu_resettaken,
	reset_reset_n,
	rh_temp_drdy_n_external_connection_export,
	rh_temp_i2c_opencores_export_scl_pad_io,
	rh_temp_i2c_opencores_export_sda_pad_io,
	spi_analog_external_MISO,
	spi_analog_external_MOSI,
	spi_analog_external_SCLK,
	spi_analog_external_SS_n);	

	input		clk_clk;
	output	[7:0]	led_pio_export;
	inout		light_i2c_opencores_export_scl_pad_io;
	inout		light_i2c_opencores_export_sda_pad_io;
	input		light_int_external_connection_export;
	output		mm_bridge_for_hps_s0_waitrequest;
	output	[31:0]	mm_bridge_for_hps_s0_readdata;
	output		mm_bridge_for_hps_s0_readdatavalid;
	input	[0:0]	mm_bridge_for_hps_s0_burstcount;
	input	[31:0]	mm_bridge_for_hps_s0_writedata;
	input	[17:0]	mm_bridge_for_hps_s0_address;
	input		mm_bridge_for_hps_s0_write;
	input		mm_bridge_for_hps_s0_read;
	input	[3:0]	mm_bridge_for_hps_s0_byteenable;
	input		mm_bridge_for_hps_s0_debugaccess;
	inout		mpu_i2c_opencores_export_scl_pad_io;
	inout		mpu_i2c_opencores_export_sda_pad_io;
	input		mpu_int_external_connection_export;
	input		nios2_gen2_cpu_resetrequest_conduit_cpu_resetrequest;
	output		nios2_gen2_cpu_resetrequest_conduit_cpu_resettaken;
	input		reset_reset_n;
	input		rh_temp_drdy_n_external_connection_export;
	inout		rh_temp_i2c_opencores_export_scl_pad_io;
	inout		rh_temp_i2c_opencores_export_sda_pad_io;
	input		spi_analog_external_MISO;
	output		spi_analog_external_MOSI;
	output		spi_analog_external_SCLK;
	output	[3:0]	spi_analog_external_SS_n;
endmodule
