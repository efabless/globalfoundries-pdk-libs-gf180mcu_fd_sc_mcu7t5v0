// Copyright 2022 GlobalFoundries PDK Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

`ifndef GF180MCU_FD_SC_MCU7T5V0__SDFFRSNQ_V
`define GF180MCU_FD_SC_MCU7T5V0__SDFFRSNQ_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_func( SE, SI, D, CLK, SETN, RN, Q, VDD, VSS, notifier );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_func( SE, SI, D, CLK, SETN, RN, Q, notifier );
`endif // If not USE_POWER_PINS
input CLK, D, RN, SE, SETN, SI, notifier;
output Q;

	not MGM_BG_0( MGM_P0, RN );

	not MGM_BG_1( MGM_C0, SETN );

	wire D_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1;

	not MGM_BG_2( D_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, D );

	wire SE_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1;

	not MGM_BG_3( SE_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, SE );

	wire MGM_D0_row1;

	and MGM_BG_4( MGM_D0_row1, D_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, SE_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1 );

	wire SI_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1;

	not MGM_BG_5( SI_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, SI );

	wire MGM_D0_row2;

	and MGM_BG_6( MGM_D0_row2, D_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, SI_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1 );

	wire MGM_D0_row3;

	and MGM_BG_7( MGM_D0_row3, SI_inv_for_gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_1, SE );

	or MGM_BG_8( MGM_D0, MGM_D0_row1, MGM_D0_row2, MGM_D0_row3 );

	UDP_GF018hv5v_mcu_sc7_TT_1P8V_25C_verilog_nonpg_MGM_HN_IQ_FF_UDP( IQ1, MGM_C0, MGM_P0, CLK, MGM_D0, notifier );

	not MGM_BG_9( Q, IQ1 );

endmodule
`endif
