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

module gf180mcu_fd_sc_mcu7t5v0__or3_4( A3, A2, A1, Z );
input A1, A2, A3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__or3_4_func gf180mcu_fd_sc_mcu7t5v0__or3_4_behav_inst(.A3(A3),.A2(A2),.A1(A1),.Z(Z));

   `else

	gf180mcu_fd_sc_mcu7t5v0__or3_4_func gf180mcu_fd_sc_mcu7t5v0__or3_4_inst(.A3(A3),.A2(A2),.A1(A1),.Z(Z));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule