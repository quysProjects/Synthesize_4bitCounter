/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HD__UDP_DLATCH_LP_PP_PG_N_TB_V
`define SKY130_FD_SC_HD__UDP_DLATCH_LP_PP_PG_N_TB_V

/**
 * udp_dlatch$lP_pp$PG$N: D-latch, gated standard drive / active high
 *                        (Q output UDP)
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none


module top();

    // Inputs are registered
    reg D;
    reg NOTIFIER;
    reg VPWR;
    reg VGND;

    // Outputs are wires
    wire Q;

    initial
    begin
        // Initial state is x for all inputs.
        D        = 1'bX;
        NOTIFIER = 1'bX;
        VGND     = 1'bX;
        VPWR     = 1'bX;

        #20   D        = 1'b0;
        #40   NOTIFIER = 1'b0;
        #60   VGND     = 1'b0;
        #80   VPWR     = 1'b0;
        #100  D        = 1'b1;
        #120  NOTIFIER = 1'b1;
        #140  VGND     = 1'b1;
        #160  VPWR     = 1'b1;
        #180  D        = 1'b0;
        #200  NOTIFIER = 1'b0;
        #220  VGND     = 1'b0;
        #240  VPWR     = 1'b0;
        #260  VPWR     = 1'b1;
        #280  VGND     = 1'b1;
        #300  NOTIFIER = 1'b1;
        #320  D        = 1'b1;
        #340  VPWR     = 1'bx;
        #360  VGND     = 1'bx;
        #380  NOTIFIER = 1'bx;
        #400  D        = 1'bx;
    end

    // Create a clock
    reg GATE;
    initial
    begin
        GATE = 1'b0;
    end

    always
    begin
        #5 GATE = ~GATE;
    end

    sky130_fd_sc_hd__udp_dlatch$lP_pp$PG$N dut (.D(D), .NOTIFIER(NOTIFIER), .VPWR(VPWR), .VGND(VGND), .Q(Q), .GATE(GATE));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HD__UDP_DLATCH_LP_PP_PG_N_TB_V
