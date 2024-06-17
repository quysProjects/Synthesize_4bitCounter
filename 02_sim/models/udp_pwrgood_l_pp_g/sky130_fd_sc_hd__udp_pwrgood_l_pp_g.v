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

`ifndef SKY130_FD_SC_HD__UDP_PWRGOOD_L_PP_G_V
`define SKY130_FD_SC_HD__UDP_PWRGOOD_L_PP_G_V

/**

 *   UDP_OUT :=x when VGND!=0
 *   UDP_OUT :=UDP_IN when VGND==0
 *
 * Verilog primitive definition.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef NO_PRIMITIVES
`else
primitive sky130_fd_sc_hd__udp_pwrgood$l_pp$G (
    UDP_OUT,
    UDP_IN ,
    VGND
);

    output UDP_OUT;
    input  UDP_IN ;
    input  VGND   ;

    table
     // UDP_IN VGND : out
          0     0   :  0   ;
          1     0   :  1   ;
          x     0   :  x   ;
          ?     1   :  x   ;
          ?     x   :  x   ;
    endtable
endprimitive
`endif // NO_PRIMITIVES

`default_nettype wire
`endif  // SKY130_FD_SC_HD__UDP_PWRGOOD_L_PP_G_V
