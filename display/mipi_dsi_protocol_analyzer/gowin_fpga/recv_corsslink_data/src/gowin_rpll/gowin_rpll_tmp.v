//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1NR-LV9LQ144PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Mon Jul 21 23:46:34 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_rPLL your_instance_name(
        .clkout(clkout), //output clkout
        .lock(lock), //output lock
        .clkoutp(clkoutp), //output clkoutp
        .clkin(clkin) //input clkin
    );

//--------Copy end-------------------
