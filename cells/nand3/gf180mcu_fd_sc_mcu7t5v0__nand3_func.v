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

`ifndef GF180MCU_FD_SC_MCU7T5V0__NAND3_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__NAND3_FUNC_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__nand3_func( ZN, A3, A2, A1, VDD, VSS );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__nand3_func( ZN, A3, A2, A1 );
`endif // If not USE_POWER_PINS
input A1, A2, A3;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2, A1 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2, A2 );

	wire A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2;

	not MGM_BG_2( A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2, A3 );

	or MGM_BG_3( ZN, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_2 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__NAND3_FUNC_V
