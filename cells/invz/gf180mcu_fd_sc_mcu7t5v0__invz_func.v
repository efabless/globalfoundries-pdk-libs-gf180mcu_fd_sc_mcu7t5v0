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

`ifndef GF180MCU_FD_SC_MCU7T5V0__INVZ_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__INVZ_FUNC_V

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__invz_func( EN, ZN, I, VDD, VSS );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__invz_func( EN, ZN, I );
`endif // If not USE_POWER_PINS
input EN, I;
output ZN;

	wire MGM_WB_0;

	wire MGM_WB_1;

	wire I_inv_for_gf180mcu_fd_sc_mcu7t5v0__invz_2;

	not MGM_BG_0( I_inv_for_gf180mcu_fd_sc_mcu7t5v0__invz_2, I );

	and MGM_BG_1( MGM_WB_0, I_inv_for_gf180mcu_fd_sc_mcu7t5v0__invz_2, EN );

	not MGM_BG_2( MGM_WB_1, EN );

	bufif0 MGM_BG_3( ZN, MGM_WB_0,MGM_WB_1 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__INVZ_FUNC_V
