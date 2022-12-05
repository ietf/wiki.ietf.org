---
title: IETF Codec WG Codec Matrix
description: This page is a stub. When updated, this page will provide technical information about a number of codecs that might be considered for re-use by the Codec WG.
published: true
date: 2022-12-05T21:52:21.104Z
tags: 
editor: markdown
dateCreated: 2022-12-05T21:52:21.104Z
---

Work in progress table below:
(note: the information on BV16 and BV32 has not been verified)

|Codec|Sampling rate|Bit-rate (per channel)|Algorithmic delay|Complexity|RAM|ROM
| ---- || ---- || ---- || ---- || ---- || ---- | ---- |
|CELT| 32-48 kHz | 32-128 kb/s | 2 ms to 13.33 ms (8 ms typical) | 15-20 WMOPS | ~7 kByte |  |
|SILK| 8, 12, 16, 24 kHz | 8-40 kb/s | 25, 45, 65, 85 or 105 ms | | | |
|BV16| 8 kHz | 16 kb/s | 5 ms | | | |
|BV32| 16 kHz | 32 kb/s | 5 ms | | | |

Continued:

|Codec|VBR|Frame size (ms)|Lookahead (ms)|Inter-frame dependency|Signal domain|Channel coupling|
|CELT| Fundamentally CBR, with VBR supported. Could be changed to be fundamentally VBR | 1.33 ms to 10.67 ms (5.3 ms typical) | 0.67 ms to 2.67 ms (2.67 ms typical) | configurable (independent frames are possible) | sub-band (MDCT) | normalised mid-side |
|SILK| Fundamentally VBR, CBR can be supported | 20, 40, 60, 80, 100 | 5 | configurable (by scaling back long-term prediction) | time (linear prediction) | no | 
|BV16| CBR only | 5 | 0 | uses pitch prediction | time (linear prediction) | no |
|BV32| CBR only | 5 | 0 | uses pitch prediction | time (linear prediction) | no |

Options:

| Codec | DTX | In-band FEC | Layered Coding | PLC |
| CELT | No (planned) | No | No (possible) | Yes |
| SILK | Yes | Yes | No | Yes |
| BV16 | ? | No | No | Yes |
| BV32 | ? | No | No | Yes |

Strengths/Limitations:

|Codec |Strengths | Limitations |
| CELT | Scales to very high quality. Works for speech and music. Very low delay | Does not scale well to bit-rates below 32 kb/s or sampling rates below 32 kHz. Does not make full use of pitch correlation |
| SILK | Good quality at low bitrates. Configurable sampling rate, bitrate, complexity. | Highest sampling rate is 24 kHz. |
| BV16 | Very low delay | CBR only |
| BV32 | Very low delay | CBR only |

== Resources ==
### CELT
 * Website: [http://www.celt-codec.org/]

 * J.-M. Valin, T. B. Terriberry, C. Montgomery, G. Maxwell, [http://jmvalin.ca/papers/celt_tasl.pdf A High-Quality Speech and Audio Codec With Less Than 10 ms delay, IEEE Transactions on Audio, Speech and Language Processing], Vol. 18, No. 1, pp. 58-67, 2010. 

 * J.-M. Valin, T. B. Terriberry, G. Maxwell, [http://jmvalin.ca/papers/celt_eusipco2009.pdf A Full-Bandwidth Audio Codec with Low Complexity and Very Low Delay], Proc. EUSIPCO, 2009.

 * Video: [http://www.celt-codec.org/presentations/ Linux.conf.au presentation]

### SILK

 * Website: [https://developer.skype.com/silk]

 * Source code: http://tools.ietf.org/html/draft-vos-silk-01

### Broadvoice (BV16 & BV32)
 * Website: http://www.broadcom.com/support/broadvoice/

 * Juin-Hwey Chen, [http://www.broadcom.com/docs/support/broadvoice/Chen_ICASSP-2006.pdf Novel Codec Structures For Noise Feedback Coding of Speech], Proceedings of 2006 IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP 2006), Volume 1, May 2006.

 * Juin-Hwey Chen and Jes Thyssen, [http://www.broadcom.com/docs/support/broadvoice/Chen_Thyssen_ICASSP-2007.pdf The Broadvoice Speech Coding Algorithm], Proceedings of 2007 IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP 2007), Volume 4, April 2007.

### List other codecs here
