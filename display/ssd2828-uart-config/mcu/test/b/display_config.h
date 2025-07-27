#ifndef _DISPLAY_CONFIG_H_
#define _DISPLAY_CONFIG_H_



#define DISP_VSA 3
#define DISP_HSA 6
#define DISP_VBP 4
#define DISP_HBP 0
#define DISP_VFP 540
#define DISP_HFP 2
#define DISP_HACT 750
#define DISP_VACT 1334

// 

// VCIR6 , p32
#define CBM 0 // Continuous burst mode
#define NVB 0 // non video at any BLLP
#define NVD 0 // Non video data using HS mode.
// #define VM 0b01 // Non burst mode with sync events
#define VM 0b00
#define VPF 0b11 // Pixel Format 24 bit
#define VICR6_VAL ((CBM<<8) | (NVB << 7) | (NVD << 6) | (VM << 2) | (VPF))

// CFGR , p33
#define TXD (1<<11) 
#define LPE (1<<10)
#define EOT (1<<9)
#define ECD (1<<8)
#define REN (1<<7)
#define DCS (1<<6)
#define CSS (1<<5)
#define HCLK (1<<4)
#define VEN (1<<3)
#define SLP (1<<2)
#define CKE (1<<1)
#define HS (1<<0)

#define CFGR_VAL (EOT | HCLK | CKE)

// // PCR , p36, pll control register
// // clk div 00->1, 01->2, 10->4, 11->8
// #define SYSD 0b00
// #define SYS_DIS 0

// PLCR , p37, PLL config reg
// xtal= 20Mhz, fout = 20Mhz * NS / MS = 840bps

#define FR 0b11
#define MS 0
#define NS 42
#define PLCR_VAL ((FR << 14) | (MS << 8) | (NS)) // 0x8015

// CCR , p38, Clock Control Register lp div
// #define LPD 41 // div by 42
#define LPD 15 // div by 42
#define CCR_VAL (LPD)


#define VBIST_SRT 1<<10
#define VBIST_EN 1<<9


// DAR1
#define HZD 22
#define HPD 15
#define DAR1_VAL ((HZD << 8) | (HPD))

// DAR2
#define CZD 63
#define CPD 12
#define DAR2_VAL ((CZD << 8) | (CPD))

// DAR3
#define CPED 8
#define CPTD 39
#define DAR3_VAL ((CPED << 8) | (CPTD))

// DAR4
#define CTD 13
#define HTD 15
#define DAR4_VAL ((CTD << 8) | (HTD))



#endif