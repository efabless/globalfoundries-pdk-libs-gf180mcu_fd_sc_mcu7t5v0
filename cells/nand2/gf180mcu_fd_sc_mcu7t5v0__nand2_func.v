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

`ifndef GF180MCU_FD_SC_MCU7T5V0__NAND2_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__NAND2_FUNC_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__nand2_func( A1, A2, ZN, VDD, VSS );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__nand2_func( A1, A2, ZN );
`endif // If not USE_POWER_PINS
input A1, A2;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4, A1 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4, A2 );

	or MGM_BG_2( ZN, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand2_4 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__NAND2_FUNC_V
