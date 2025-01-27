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

`ifndef GF180MCU_FD_SC_MCU7T5V0__DFFRSNQ_FUNC_V
`define GF180MCU_FD_SC_MCU7T5V0__DFFRSNQ_FUNC_V

`include "../../models/udp_hn_iq_ff/gf180mcu_fd_sc_mcu7t5v0__udp_hn_iq_ff.v"

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__dffrsnq_func( CLK, D, SETN, RN, Q, VDD, VSS, notifier );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__dffrsnq_func( CLK, D, SETN, RN, Q, notifier );
`endif // If not USE_POWER_PINS
input CLK, D, RN, SETN, notifier;
output Q;

	not MGM_BG_0( MGM_P0, RN );

	not MGM_BG_1( MGM_C0, SETN );

	not MGM_BG_2( MGM_D0, D );

	gf180mcu_fd_sc_mcu7t5v0__udp_hn_iq_ff( IQ1, MGM_C0, MGM_P0, CLK, MGM_D0, notifier );

	not MGM_BG_3( Q, IQ1 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__DFFRSNQ_FUNC_V
