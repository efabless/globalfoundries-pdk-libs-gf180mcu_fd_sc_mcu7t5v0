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

`ifndef GF180MCU_FD_SC_MCU7T5V0__XNOR3_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__XNOR3_FUNC_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__xnor3_func( A2, A1, A3, ZN, VDD, VSS );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__xnor3_func( A2, A1, A3, ZN );
`endif // If not USE_POWER_PINS
input A1, A2, A3;
output ZN;

	wire A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1;

	not MGM_BG_0( A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A3 );

	wire ZN_row1;

	and MGM_BG_1( ZN_row1, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A1, A2 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1;

	not MGM_BG_2( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A2 );

	wire ZN_row2;

	and MGM_BG_3( ZN_row2, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A1, A3 );

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1;

	not MGM_BG_4( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A1 );

	wire ZN_row3;

	and MGM_BG_5( ZN_row3, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A2, A3 );

	wire ZN_row4;

	and MGM_BG_6( ZN_row4, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xnor3_1 );

	or MGM_BG_7( ZN, ZN_row1, ZN_row2, ZN_row3, ZN_row4 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__XNOR3_FUNC_V
