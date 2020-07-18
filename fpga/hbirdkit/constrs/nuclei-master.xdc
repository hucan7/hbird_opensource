set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####               create clock              #####



set_property -dict { PACKAGE_PIN W19    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];

set_property -dict { PACKAGE_PIN Y18    IOSTANDARD LVCMOS33 } [get_ports { CLK32768KHZ }]; 
create_clock -add -name sys_clk_pin -period 30517.58 -waveform {0 15258.79} [get_ports {CLK32768KHZ}];


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets dut_io_pads_jtag_TCK_i_ival]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets IOBUF_jtag_TCK/O]


#####            rst define           #####

set_property PACKAGE_PIN T6  [get_ports fpga_rst  ]
set_property PACKAGE_PIN P20 [get_ports mcu_rst   ]

#####                spi0 define               #####
set_property PACKAGE_PIN W16 [get_ports  qspi0_cs    ]
set_property PACKAGE_PIN W15 [get_ports  qspi0_sck   ]
set_property PACKAGE_PIN U16 [get_ports {qspi0_dq[3]}]
set_property PACKAGE_PIN T16 [get_ports {qspi0_dq[2]}]
set_property PACKAGE_PIN T14 [get_ports {qspi0_dq[1]}]
set_property PACKAGE_PIN T15 [get_ports {qspi0_dq[0]}]

#####               MCU JTAG define           #####
set_property PACKAGE_PIN N17 [get_ports mcu_TDO]
set_property PACKAGE_PIN P15 [get_ports mcu_TCK]
set_property PACKAGE_PIN T18 [get_ports mcu_TDI]
set_property PACKAGE_PIN P17 [get_ports mcu_TMS]

#####                PMU define               #####
set_property PACKAGE_PIN U15 [get_ports pmu_paden ]
set_property PACKAGE_PIN V15 [get_ports pmu_padrst]
set_property PACKAGE_PIN N15 [get_ports mcu_wakeup]

#####                UART0 define             #####
set_property PACKAGE_PIN R17 [get_ports uart0_txd]
set_property PACKAGE_PIN P16 [get_ports uart0_rxd]

#####                spi1 define               #####
set_property PACKAGE_PIN J22  [get_ports  qspi1_cs    ]
set_property PACKAGE_PIN K18  [get_ports  qspi1_sck   ]
set_property PACKAGE_PIN M18  [get_ports {qspi1_dq[3]}]
set_property PACKAGE_PIN K17  [get_ports {qspi1_dq[2]}]
set_property PACKAGE_PIN L19  [get_ports {qspi1_dq[1]}]
set_property PACKAGE_PIN K21  [get_ports {qspi1_dq[0]}]

#####                I2C0 define             #####
set_property PACKAGE_PIN L16  [get_ports i2c0_scl]
set_property PACKAGE_PIN J15  [get_ports i2c0_sda]

#####                PWM define             #####
set_property PACKAGE_PIN H13  [get_ports pwm0_ch[0]]
set_property PACKAGE_PIN J14  [get_ports pwm0_ch[1]]
set_property PACKAGE_PIN G15  [get_ports pwm0_ch[2]]
set_property PACKAGE_PIN G17  [get_ports pwm0_ch[3]]

set_property PACKAGE_PIN H17  [get_ports pwm1_ch[0]]
set_property PACKAGE_PIN H20  [get_ports pwm1_ch[1]]
set_property PACKAGE_PIN J19  [get_ports pwm1_ch[2]]
set_property PACKAGE_PIN J20  [get_ports pwm1_ch[3]]

set_property PACKAGE_PIN G13  [get_ports pwm2_ch[0]]
set_property PACKAGE_PIN H14  [get_ports pwm2_ch[1]]
set_property PACKAGE_PIN G16  [get_ports pwm2_ch[2]]
set_property PACKAGE_PIN G18  [get_ports pwm2_ch[3]]

set_property PACKAGE_PIN H18  [get_ports pwm3_ch[0]]
set_property PACKAGE_PIN G20  [get_ports pwm3_ch[1]]
set_property PACKAGE_PIN H19  [get_ports pwm3_ch[2]]
set_property PACKAGE_PIN J21  [get_ports pwm3_ch[3]]

#####                gpio define              #####
set_property PACKAGE_PIN W17  [get_ports {gpio[31]}]
set_property PACKAGE_PIN AA18 [get_ports {gpio[30]}]
set_property PACKAGE_PIN AB18 [get_ports {gpio[29]}]
set_property PACKAGE_PIN U17  [get_ports {gpio[28]}]
set_property PACKAGE_PIN U18  [get_ports {gpio[27]}]
set_property PACKAGE_PIN P14  [get_ports {gpio[26]}]
set_property PACKAGE_PIN R14  [get_ports {gpio[25]}]
set_property PACKAGE_PIN R18  [get_ports {gpio[24]}]
set_property PACKAGE_PIN V20  [get_ports {gpio[23]}]
set_property PACKAGE_PIN W20  [get_ports {gpio[22]}]
set_property PACKAGE_PIN Y19  [get_ports {gpio[21]}]
set_property PACKAGE_PIN V18  [get_ports {gpio[20]}]
set_property PACKAGE_PIN V19  [get_ports {gpio[19]}]
set_property PACKAGE_PIN AA19 [get_ports {gpio[18]}]

set_property PACKAGE_PIN Y16  [get_ports {gpio[17]}]  
set_property PACKAGE_PIN AB16 [get_ports {gpio[16]}]  

set_property PACKAGE_PIN V22  [get_ports {gpio[15]}]
set_property PACKAGE_PIN T21  [get_ports {gpio[14]}]
set_property PACKAGE_PIN U21  [get_ports {gpio[13]}]
set_property PACKAGE_PIN P19  [get_ports {gpio[12]}]
set_property PACKAGE_PIN R19  [get_ports {gpio[11]}]
set_property PACKAGE_PIN N13  [get_ports {gpio[10]}]
set_property PACKAGE_PIN T20  [get_ports {gpio[9]}]
set_property PACKAGE_PIN W21  [get_ports {gpio[8]}]
set_property PACKAGE_PIN U20  [get_ports {gpio[7]}]
set_property PACKAGE_PIN AB22 [get_ports {gpio[6]}]
set_property PACKAGE_PIN AB21 [get_ports {gpio[5]}]
set_property PACKAGE_PIN Y22  [get_ports {gpio[4]}]
set_property PACKAGE_PIN Y21  [get_ports {gpio[3]}]
set_property PACKAGE_PIN AA21 [get_ports {gpio[2]}]
set_property PACKAGE_PIN AA20 [get_ports {gpio[1]}]
set_property PACKAGE_PIN W22  [get_ports {gpio[0]}]



#####            clock & rst define           #####

set_property IOSTANDARD LVCMOS15 [get_ports fpga_rst  ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_rst   ]


#####                spi0 define               #####
set_property IOSTANDARD LVCMOS33 [get_ports  qspi0_cs    ]
set_property IOSTANDARD LVCMOS33 [get_ports  qspi0_sck   ]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[0]}]


#####               MCU JTAG define           #####
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDO]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TMS]

#####                PMU define               #####
set_property IOSTANDARD LVCMOS33 [get_ports pmu_paden ]
set_property IOSTANDARD LVCMOS33 [get_ports pmu_padrst]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_wakeup]

#####                UART0 define             #####
set_property IOSTANDARD LVCMOS33 [get_ports uart0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart0_rxd]

#####                spi1 define               #####
set_property IOSTANDARD LVCMOS33 [get_ports  qspi1_cs    ]
set_property IOSTANDARD LVCMOS33 [get_ports  qspi1_sck   ]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi1_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi1_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi1_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi1_dq[0]}]

#####                I2C0 define             #####
set_property IOSTANDARD LVCMOS33 [get_ports i2c0_scl]
set_property IOSTANDARD LVCMOS33 [get_ports i2c0_sda]

#####                PWM define             #####
set_property IOSTANDARD LVCMOS33 [get_ports pwm0_ch[0]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm0_ch[1]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm0_ch[2]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm0_ch[3]]

set_property IOSTANDARD LVCMOS33 [get_ports pwm1_ch[0]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm1_ch[1]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm1_ch[2]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm1_ch[3]]

set_property IOSTANDARD LVCMOS33 [get_ports pwm2_ch[0]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm2_ch[1]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm2_ch[2]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm2_ch[3]]

set_property IOSTANDARD LVCMOS33 [get_ports pwm3_ch[0]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm3_ch[1]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm3_ch[2]]
set_property IOSTANDARD LVCMOS33 [get_ports pwm3_ch[3]]

#####                gpio define              #####
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[0]}]


#####         SPI Configurate Setting        #######
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]




