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

`ifndef GF180MCU_FD_SC_MCU7T5V0__AOI222_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__AOI222_FUNC_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__aoi222_func( ZN, C2, C1, B1, B2, A2, A1, VDD, VSS );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__aoi222_func( ZN, C2, C1, B1, B2, A2, A1 );
`endif // If not USE_POWER_PINS
input A1, A2, B1, B2, C1, C2;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, A1 );

	wire B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_1( B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B1 );

	wire C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_2( C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C1 );

	wire ZN_row1;

	and MGM_BG_3( ZN_row1, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_4( C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C2 );

	wire ZN_row2;

	and MGM_BG_5( ZN_row2, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_6( B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B2 );

	wire ZN_row3;

	and MGM_BG_7( ZN_row3, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire ZN_row4;

	and MGM_BG_8( ZN_row4, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4;

	not MGM_BG_9( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, A2 );

	wire ZN_row5;

	and MGM_BG_10( ZN_row5, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire ZN_row6;

	and MGM_BG_11( ZN_row6, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire ZN_row7;

	and MGM_BG_12( ZN_row7, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C1_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	wire ZN_row8;

	and MGM_BG_13( ZN_row8, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4, C2_inv_for_gf180mcu_fd_sc_mcu7t5v0__aoi222_4 );

	or MGM_BG_14( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4, ZN_row5, ZN_row6, ZN_row7, ZN_row8 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__AOI222_FUNC_V
