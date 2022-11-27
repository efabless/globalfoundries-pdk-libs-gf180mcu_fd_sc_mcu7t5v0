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

`ifndef GF180MCU_FD_SC_MCU7T5V0__DFFNSNQ_V
`define GF180MCU_FD_SC_MCU7T5V0__DFFNSNQ_V

`include "../../models/N_IQ_FF_udp/gf180mcu_fd_sc_mcu7t5v0__N_IQ_FF_udp.v"

`ifdef USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__dffnsnq_func( CLKN, D, SETN, Q, VDD, VSS, notifier );
inout VDD, VSS;
`else // If not USE_POWER_PINS
module gf180mcu_fd_sc_mcu7t5v0__dffnsnq_func( CLKN, D, SETN, Q, notifier );
`endif // If not USE_POWER_PINS
input CLKN, D, SETN, notifier;
output Q;

	not MGM_BG_0( MGM_CLK0, CLKN );

	not MGM_BG_1( MGM_C0, SETN );

	not MGM_BG_2( MGM_D0, D );

	gf180mcu_fd_sc_mcu7t5v0__N_IQ_FF_udp( IQ1, MGM_C0, 1'b0, MGM_CLK0, MGM_D0, notifier );

	not MGM_BG_3( Q, IQ1 );

endmodule
`endif // GF180MCU_FD_SC_MCU7T5V0__DFFNSNQ_V