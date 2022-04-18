	component nios_qsys is
		port (
			clk_clk                                              : in    std_logic                     := 'X';             -- clk
			led_pio_export                                       : out   std_logic_vector(7 downto 0);                     -- export
			light_i2c_opencores_export_scl_pad_io                : inout std_logic                     := 'X';             -- scl_pad_io
			light_i2c_opencores_export_sda_pad_io                : inout std_logic                     := 'X';             -- sda_pad_io
			light_int_external_connection_export                 : in    std_logic                     := 'X';             -- export
			mm_bridge_for_hps_s0_waitrequest                     : out   std_logic;                                        -- waitrequest
			mm_bridge_for_hps_s0_readdata                        : out   std_logic_vector(31 downto 0);                    -- readdata
			mm_bridge_for_hps_s0_readdatavalid                   : out   std_logic;                                        -- readdatavalid
			mm_bridge_for_hps_s0_burstcount                      : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			mm_bridge_for_hps_s0_writedata                       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			mm_bridge_for_hps_s0_address                         : in    std_logic_vector(17 downto 0) := (others => 'X'); -- address
			mm_bridge_for_hps_s0_write                           : in    std_logic                     := 'X';             -- write
			mm_bridge_for_hps_s0_read                            : in    std_logic                     := 'X';             -- read
			mm_bridge_for_hps_s0_byteenable                      : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			mm_bridge_for_hps_s0_debugaccess                     : in    std_logic                     := 'X';             -- debugaccess
			mpu_i2c_opencores_export_scl_pad_io                  : inout std_logic                     := 'X';             -- scl_pad_io
			mpu_i2c_opencores_export_sda_pad_io                  : inout std_logic                     := 'X';             -- sda_pad_io
			mpu_int_external_connection_export                   : in    std_logic                     := 'X';             -- export
			nios2_gen2_cpu_resetrequest_conduit_cpu_resetrequest : in    std_logic                     := 'X';             -- cpu_resetrequest
			nios2_gen2_cpu_resetrequest_conduit_cpu_resettaken   : out   std_logic;                                        -- cpu_resettaken
			reset_reset_n                                        : in    std_logic                     := 'X';             -- reset_n
			rh_temp_drdy_n_external_connection_export            : in    std_logic                     := 'X';             -- export
			rh_temp_i2c_opencores_export_scl_pad_io              : inout std_logic                     := 'X';             -- scl_pad_io
			rh_temp_i2c_opencores_export_sda_pad_io              : inout std_logic                     := 'X';             -- sda_pad_io
			spi_analog_external_MISO                             : in    std_logic                     := 'X';             -- MISO
			spi_analog_external_MOSI                             : out   std_logic;                                        -- MOSI
			spi_analog_external_SCLK                             : out   std_logic;                                        -- SCLK
			spi_analog_external_SS_n                             : out   std_logic_vector(3 downto 0)                      -- SS_n
		);
	end component nios_qsys;

	u0 : component nios_qsys
		port map (
			clk_clk                                              => CONNECTED_TO_clk_clk,                                              --                                 clk.clk
			led_pio_export                                       => CONNECTED_TO_led_pio_export,                                       --                             led_pio.export
			light_i2c_opencores_export_scl_pad_io                => CONNECTED_TO_light_i2c_opencores_export_scl_pad_io,                --          light_i2c_opencores_export.scl_pad_io
			light_i2c_opencores_export_sda_pad_io                => CONNECTED_TO_light_i2c_opencores_export_sda_pad_io,                --                                    .sda_pad_io
			light_int_external_connection_export                 => CONNECTED_TO_light_int_external_connection_export,                 --       light_int_external_connection.export
			mm_bridge_for_hps_s0_waitrequest                     => CONNECTED_TO_mm_bridge_for_hps_s0_waitrequest,                     --                mm_bridge_for_hps_s0.waitrequest
			mm_bridge_for_hps_s0_readdata                        => CONNECTED_TO_mm_bridge_for_hps_s0_readdata,                        --                                    .readdata
			mm_bridge_for_hps_s0_readdatavalid                   => CONNECTED_TO_mm_bridge_for_hps_s0_readdatavalid,                   --                                    .readdatavalid
			mm_bridge_for_hps_s0_burstcount                      => CONNECTED_TO_mm_bridge_for_hps_s0_burstcount,                      --                                    .burstcount
			mm_bridge_for_hps_s0_writedata                       => CONNECTED_TO_mm_bridge_for_hps_s0_writedata,                       --                                    .writedata
			mm_bridge_for_hps_s0_address                         => CONNECTED_TO_mm_bridge_for_hps_s0_address,                         --                                    .address
			mm_bridge_for_hps_s0_write                           => CONNECTED_TO_mm_bridge_for_hps_s0_write,                           --                                    .write
			mm_bridge_for_hps_s0_read                            => CONNECTED_TO_mm_bridge_for_hps_s0_read,                            --                                    .read
			mm_bridge_for_hps_s0_byteenable                      => CONNECTED_TO_mm_bridge_for_hps_s0_byteenable,                      --                                    .byteenable
			mm_bridge_for_hps_s0_debugaccess                     => CONNECTED_TO_mm_bridge_for_hps_s0_debugaccess,                     --                                    .debugaccess
			mpu_i2c_opencores_export_scl_pad_io                  => CONNECTED_TO_mpu_i2c_opencores_export_scl_pad_io,                  --            mpu_i2c_opencores_export.scl_pad_io
			mpu_i2c_opencores_export_sda_pad_io                  => CONNECTED_TO_mpu_i2c_opencores_export_sda_pad_io,                  --                                    .sda_pad_io
			mpu_int_external_connection_export                   => CONNECTED_TO_mpu_int_external_connection_export,                   --         mpu_int_external_connection.export
			nios2_gen2_cpu_resetrequest_conduit_cpu_resetrequest => CONNECTED_TO_nios2_gen2_cpu_resetrequest_conduit_cpu_resetrequest, -- nios2_gen2_cpu_resetrequest_conduit.cpu_resetrequest
			nios2_gen2_cpu_resetrequest_conduit_cpu_resettaken   => CONNECTED_TO_nios2_gen2_cpu_resetrequest_conduit_cpu_resettaken,   --                                    .cpu_resettaken
			reset_reset_n                                        => CONNECTED_TO_reset_reset_n,                                        --                               reset.reset_n
			rh_temp_drdy_n_external_connection_export            => CONNECTED_TO_rh_temp_drdy_n_external_connection_export,            --  rh_temp_drdy_n_external_connection.export
			rh_temp_i2c_opencores_export_scl_pad_io              => CONNECTED_TO_rh_temp_i2c_opencores_export_scl_pad_io,              --        rh_temp_i2c_opencores_export.scl_pad_io
			rh_temp_i2c_opencores_export_sda_pad_io              => CONNECTED_TO_rh_temp_i2c_opencores_export_sda_pad_io,              --                                    .sda_pad_io
			spi_analog_external_MISO                             => CONNECTED_TO_spi_analog_external_MISO,                             --                 spi_analog_external.MISO
			spi_analog_external_MOSI                             => CONNECTED_TO_spi_analog_external_MOSI,                             --                                    .MOSI
			spi_analog_external_SCLK                             => CONNECTED_TO_spi_analog_external_SCLK,                             --                                    .SCLK
			spi_analog_external_SS_n                             => CONNECTED_TO_spi_analog_external_SS_n                              --                                    .SS_n
		);

