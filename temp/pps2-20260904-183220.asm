; Professor Pac-Man program ROM PPS2
; Fixed CPU address $2000-$3FFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $2000

        db      $27,$CB,$27                                                     ; $2000
        bit 6,(iy+24)                   ; $2003
        jp z,L200C                      ; $2007
        sla a                           ; $200A
L200C:
        ld b,a                          ; $200C
        ld c,$00                        ; $200D
        sra b                           ; $200F
        rr c                            ; $2011
        sra b                           ; $2013
        rr c                            ; $2015
        ld h,(iy+28)                    ; $2017
        ld l,(iy+27)                    ; $201A
        push hl                         ; $201D
        or a                            ; $201E
        sbc hl,bc                       ; $201F
        call $1f8a                      ; $2021
        pop hl                          ; $2024
        ld (iy+28),h                    ; $2025
        ld (iy+27),l                    ; $2028
        pop de                          ; $202B
        ld a,($fdaa)                    ; $202C
        or a                            ; $202F
        jp nz,L2035                     ; $2030
        dec de                          ; $2033
        ld a,(de)                       ; $2034
L2035:
        bit 7,(iy+24)                   ; $2035
        jp z,L2040                      ; $2039
        sla a                           ; $203C
        sla a                           ; $203E
L2040:
        bit 6,(iy+24)                   ; $2040
        jp z,L2049                      ; $2044
        sla a                           ; $2047
L2049:
        ld e,a                          ; $2049
        ld d,$00                        ; $204A
        ld a,($fda9)                    ; $204C
        ld l,a                          ; $204F
        ld h,$00                        ; $2050
        add hl,de                       ; $2052
        ld h,l                          ; $2053
        ld l,$00                        ; $2054
        sra h                           ; $2056
        rr l                            ; $2058
        sra h                           ; $205A
        rr l                            ; $205C
        ld d,(iy+26)                    ; $205E
        ld e,(iy+25)                    ; $2061
        add hl,de                       ; $2064
        ld (iy+26),h                    ; $2065
        ld (iy+25),l                    ; $2068
        pop hl                          ; $206B
        ex af,af'                       ; $206C
        dec a                           ; $206D
        jp nz,$1fd5                     ; $206E
        pop hl                          ; $2071
        ld (iy+29),l                    ; $2072
        ld (iy+30),h                    ; $2075
        pop ix                          ; $2078
        pop bc                          ; $207A
        pop iy                          ; $207B
        ret                             ; $207D
        db      $CD,$C4,$1F,$FD,$E9                                             ; $207E
NATIVE_2083:
        push iy                         ; $2083
        ld iy,($fe8f)                   ; $2085
        ld h,(iy+26)                    ; $2089
        ld l,(iy+25)                    ; $208C
        push hl                         ; $208F
        call $1fc4                      ; $2090
        ld iy,($fe8f)                   ; $2093
        pop hl                          ; $2097
        ld (iy+26),h                    ; $2098
        ld (iy+25),l                    ; $209B
        pop iy                          ; $209E
        jp (iy)                         ; $20A0
NATIVE_20A2:
        pop hl                          ; $20A2
        ld e,(hl)                       ; $20A3
        inc hl                          ; $20A4
        ld d,(hl)                       ; $20A5
        push de                         ; $20A6
        inc hl                          ; $20A7
        ld e,(hl)                       ; $20A8
        inc hl                          ; $20A9
        ld d,(hl)                       ; $20AA
        push de                         ; $20AB
        jp (iy)                         ; $20AC
NATIVE_20AE:
        pop de                          ; $20AE
        pop hl                          ; $20AF
        ex (sp),hl                      ; $20B0
        ex de,hl                        ; $20B1
        ld (hl),e                       ; $20B2
        inc hl                          ; $20B3
        ld (hl),d                       ; $20B4
        inc hl                          ; $20B5
        pop de                          ; $20B6
        ld (hl),e                       ; $20B7
        inc hl                          ; $20B8
        ld (hl),d                       ; $20B9
        jp (iy)                         ; $20BA
NATIVE_20BC:
        pop de                          ; $20BC
        exx                             ; $20BD
        pop de                          ; $20BE
        exx                             ; $20BF
        pop hl                          ; $20C0
        exx                             ; $20C1
        pop hl                          ; $20C2
        exx                             ; $20C3
        exx                             ; $20C4
        add hl,de                       ; $20C5
        exx                             ; $20C6
        adc hl,de                       ; $20C7
        exx                             ; $20C9
        push hl                         ; $20CA
        exx                             ; $20CB
        push hl                         ; $20CC
        jp (iy)                         ; $20CD
NATIVE_20CF:
        pop de                          ; $20CF
        exx                             ; $20D0
        pop de                          ; $20D1
        exx                             ; $20D2
        pop hl                          ; $20D3
        exx                             ; $20D4
        pop hl                          ; $20D5
        exx                             ; $20D6
        exx                             ; $20D7
        or a                            ; $20D8
        sbc hl,de                       ; $20D9
        exx                             ; $20DB
        sbc hl,de                       ; $20DC
        exx                             ; $20DE
        push hl                         ; $20DF
        exx                             ; $20E0
        push hl                         ; $20E1
        jp (iy)                         ; $20E2
        db      $01,$00,$00,$00,$0A,$00,$00,$00,$64,$00,$00,$00,$E8,$03,$00,$00 ; $20E4
        db      $10,$27,$00,$00,$A0,$86,$01,$00,$40,$42,$0F,$00,$80,$96,$98,$00 ; $20F4
        db      $00,$E1,$F5,$05,$00,$CA,$9A,$3B,$AF,$84,$3E,$2B,$F2,$28,$21,$11 ; $2104
        db      $00,$00,$D9,$11,$00,$00,$D9,$EB,$D9,$EB,$D9,$D9,$B7,$ED,$52,$D9 ; $2114
        db      $ED,$52,$3E,$2D,$FD,$77,$00,$FD,$23,$11,$E0,$20,$C5,$DD,$E1,$DD ; $2124
        db      $29,$DD,$29,$DD,$19,$DD,$56,$03,$DD,$5E,$02,$D9,$DD,$56,$01,$DD ; $2134
        db      $5E,$00,$D9,$3E,$30,$06,$0A,$D9,$B7,$ED,$52,$D9,$ED,$52,$FA,$59 ; $2144
        db      $21,$3C,$10,$F3,$3D,$D9,$19,$D9,$ED,$5A,$FD,$77,$00,$FD,$23,$11 ; $2154
        db      $FC,$FF,$DD,$19,$0D,$C2,$39,$21,$C9,$D9,$C1,$D1,$E1,$D9,$E1,$C5 ; $2164
        db      $DD,$E5,$FD,$E5,$D9,$D5,$FD,$E1,$CD,$0C,$21,$FD,$E1,$DD,$E1,$C1 ; $2174
        db      $FD,$E9                                                         ; $2184
NATIVE_2186:
        pop hl                          ; $2186
        ld e,(hl)                       ; $2187
        inc hl                          ; $2188
L2189:
        ld a,e                          ; $2189
        cp $01                          ; $218A
        jp z,L219D                      ; $218C
        ld a,(hl)                       ; $218F
        cp $30                          ; $2190
        jp nz,L219C                     ; $2192
        ld (hl),$20                     ; $2195
        inc hl                          ; $2197
        dec e                           ; $2198
        jp L219D                        ; $2199
L219C:
        xor a                           ; $219C
L219D:
        jp nz,L2189                     ; $219D
        jp (iy)                         ; $21A0
NATIVE_21A2:
        exx                             ; $21A2
        pop bc                          ; $21A3
        pop hl                          ; $21A4
        pop de                          ; $21A5
L21A6:
        ld (hl),e                       ; $21A6
        cpi                             ; $21A7
        jp pe,L21A6                     ; $21A9
        exx                             ; $21AC
        jp (iy)                         ; $21AD
TERSE_COLON_21AF:
        rst     $08                             ; $21AF colon entry
        dw      XT_LIT                  ; $21B0 _LIT
        dw      $FE8F                ; $21B2 inline word
        dw      XT_at                   ; $21B4 _at
        dw      XT_LITbyte              ; $21B6 _LITbyte
        db      $44                  ; $21B8 inline byte
        dw      XT_plus                 ; $21B9 _plus
        dw      XT_RETURN               ; $21BB _RETURN
NATIVE_21BD:
        ld de,($fe8f)                   ; $21BD
        ld hl,$0044                     ; $21C1
        add hl,de                       ; $21C4
        ld a,(hl)                       ; $21C5
        ret                             ; $21C6
NATIVE_21C7:
        ld a,($fd85)                    ; $21C7
        and a                           ; $21CA
        jr nz,L21D2                     ; $21CB
        ld hl,$fd88                     ; $21CD
        jr L21D5                        ; $21D0
L21D2:
        ld hl,$fd87                     ; $21D2
L21D5:
        ret                             ; $21D5
        db      $D9,$AF,$32,$85,$FD,$3E,$09,$32,$86,$FD,$CD,$C7,$21,$7E,$A7,$06 ; $21D6
        db      $08,$1F,$38,$0A,$78,$ED,$44,$C6,$08,$32,$86,$FD,$06,$01,$10,$F1 ; $21E6
        db      $3A,$86,$FD,$A7,$DE,$09,$28,$2F,$3A,$85,$FD,$A7,$28,$07,$3A,$86 ; $21F6
        db      $FD,$C6,$08,$18,$03,$3A,$86,$FD,$11,$00,$00,$5F,$21,$89,$FD,$19 ; $2206
        db      $19,$5E,$23,$56,$D5,$CD,$C7,$21,$11,$00,$00,$3A,$86,$FD,$5F,$CD ; $2216
        db      $77,$1A,$B6,$77,$D9,$FD,$E9,$21,$85,$FD,$34,$20,$AD             ; $2226
NATIVE_2233:
        call NATIVE_21BD                ; $2233
        ld de,$0000                     ; $2236
        and a                           ; $2239
        sbc a,$08                       ; $223A
        jp m,L2249                      ; $223C
        ld e,a                          ; $223F
        ld hl,$fd87                     ; $2240
        call $1a77                      ; $2243
        jp L2253                        ; $2246
L2249:
        call NATIVE_21BD                ; $2249
        ld e,a                          ; $224C
        ld hl,$fd88                     ; $224D
        call $1a77                      ; $2250
L2253:
        ret                             ; $2253
        db      $CD,$33,$22,$EE,$FF,$A6,$77,$FD,$E9                             ; $2254
NATIVE_225D:
        call NATIVE_2233                ; $225D
        or (hl)                         ; $2260
        ld (hl),a                       ; $2261
        jp (iy)                         ; $2262
NATIVE_2264:
        exx                             ; $2264
        xor a                           ; $2265
        ld ($fd84),a                    ; $2266
        ld ($fd85),a                    ; $2269
L226C:
        call NATIVE_21C7                ; $226C
        ld a,(hl)                       ; $226F
        and a                           ; $2270
        ld b,$08                        ; $2271
L2273:
        rra                             ; $2273
        jr c,L227A                      ; $2274
        ld hl,$fd84                     ; $2276
        inc (hl)                        ; $2279
L227A:
        djnz L2273                      ; $227A
        ld hl,$fd85                     ; $227C
        inc (hl)                        ; $227F
        ld a,(hl)                       ; $2280
        cp $02                          ; $2281
        jr nz,L226C                     ; $2283
        ld de,$0000                     ; $2285
        ld a,($fd84)                    ; $2288
        ld e,a                          ; $228B
        push de                         ; $228C
        exx                             ; $228D
        jp (iy)                         ; $228E
TERSE_COLON_2290:
        rst     $08                             ; $2290 colon entry
        dw      XT_DUP                  ; $2291 _DUP
        dw      XT_LITbyte              ; $2293 _LITbyte
        db      $44                  ; $2295 inline byte
        dw      XT_plus                 ; $2296 _plus
        dw      XT_DUP                  ; $2298 _DUP
        dw      XT_Bat                  ; $229A _Bat
        dw      XT_ROT                  ; $229C _ROT
        dw      XT_0                    ; $229E _0
        dw      XT_SWAP                 ; $22A0 _SWAP
        dw      XT_LITbyte              ; $22A2 _LITbyte
        db      $51                  ; $22A4 inline byte
        dw      NATIVE_21A2          ; $22A5 NATIVE_21A2
        dw      XT_Bbang                ; $22A7 _Bbang
        dw      XT_RETURN               ; $22A9 _RETURN
        db      $CF,$64,$22,$EA,$03,$B8,$22,$D6,$21,$36,$01,$90,$22,$FD,$00     ; $22AB
_EXECUTE:
        ret                             ; $22BA
; Start every action named by a PPQ action-list descriptor.  The descriptor is
; a byte count followed by that many word-sized execution tokens.  The current
; task's byte at +$47 is increased by the count; the loop then prepares and
; EXECUTEs each list member. ( list -- )
START_COUNTED_ACTION_LIST:
        rst     $08                             ; $22BB colon entry
        dw      XT_DUP                  ; $22BC _DUP
        dw      XT_Bat                  ; $22BE _Bat
        dw      $1F0E                ; $22C0 execution token $1F0E
        dw      XT_LITbyte              ; $22C2 _LITbyte
        db      $47                  ; $22C4 inline byte
        dw      XT_plus                 ; $22C5 _plus
        dw      XT_2DUP                 ; $22C7 _2DUP
        dw      XT_plusBbang            ; $22C9 _plusBbang
        dw      XT_SWAP                 ; $22CB _SWAP
        dw      XT_LITbyte              ; $22CD _LITbyte
        db      $02                  ; $22CF inline byte
        dw      XT_star                 ; $22D0 _star
        dw      XT_LITbyte              ; $22D2 _LITbyte
        db      $03                  ; $22D4 inline byte
        dw      XT_PICK                 ; $22D5 _PICK
        dw      XT_plus                 ; $22D7 _plus
        dw      XT_1plus                ; $22D9 _1plus
        dw      XT_ROT                  ; $22DB _ROT
        dw      XT_1plus                ; $22DD _1plus
        dw      XT_DO                   ; $22DF _DO
        dw      $22AB                ; $22E1 execution token $22AB
        dw      XT_DUP                  ; $22E3 _DUP
        dw      XT_LITbyte              ; $22E5 _LITbyte
        db      $45                  ; $22E7 inline byte
        dw      XT_plus                 ; $22E8 _plus
        dw      XT_LITbyte              ; $22EA _LITbyte
        db      $03                  ; $22EC inline byte
        dw      XT_PICK                 ; $22ED _PICK
        dw      XT_SWAP                 ; $22EF _SWAP
        dw      XT_bang                 ; $22F1 _bang
        dw      XT_I                    ; $22F3 _I
        dw      XT_at                   ; $22F5 _at
        dw      _EXECUTE             ; $22F7 _EXECUTE
        dw      XT_LITbyte              ; $22F9 _LITbyte
        db      $02                  ; $22FB inline byte
        dw      XT_plusLOOP             ; $22FC _plusLOOP
        dw      XT_DROP                 ; $22FE _DROP
        dw      XT_RETURN               ; $2300 _RETURN
        db      $CF,$0E,$1F,$12,$01,$45,$5A,$01,$4C,$01,$36,$01,$36,$01,$44,$05 ; $2302
        db      $53,$01,$47,$02,$EA,$03,$25,$23,$12,$01,$47,$60,$01,$08,$16,$E2 ; $2312
        db      $03,$27,$23,$43,$01,$FD,$00                                     ; $2322
TERSE_COLON_2329:
        rst     $08                             ; $2329 colon entry
        dw      $1F0E                ; $232A execution token $1F0E
        dw      XT_LITbyte              ; $232C _LITbyte
        db      $47                  ; $232E inline byte
        dw      XT_plus                 ; $232F _plus
        dw      XT_Bat                  ; $2331 _Bat
        dw      XT_zeroequal            ; $2333 _zeroequal
        dw      XT_RETURN               ; $2335 _RETURN
NATIVE_2337:
        ld hl,($fe8f)                   ; $2337
        ld de,$0048                     ; $233A
        add hl,de                       ; $233D
        ld a,(hl)                       ; $233E
        ld (hl),c                       ; $233F
        ld c,a                          ; $2340
        inc hl                          ; $2341
        ld a,(hl)                       ; $2342
        ld (hl),b                       ; $2343
        ld b,a                          ; $2344
        jp (iy)                         ; $2345
TERSE_COLON_2347:
        rst     $08                             ; $2347 colon entry
        dw      $1C0A                ; $2348 execution token $1C0A
        dw      $1C83                ; $234A execution token $1C83
        dw      XT_OR                   ; $234C _OR
        dw      XT_RETURN               ; $234E _RETURN
TERSE_COLON_2350:
        rst     $08                             ; $2350 colon entry
        dw      $1C30                ; $2351 execution token $1C30
        dw      XT_RETURN               ; $2353 _RETURN
TERSE_COLON_2355:
        rst     $08                             ; $2355 colon entry
        dw      XT_LITbyte              ; $2356 _LITbyte
        db      $03                  ; $2358 inline byte
        dw      $1F0E                ; $2359 execution token $1F0E
        dw      XT_LITbyte              ; $235B _LITbyte
        db      $11                  ; $235D inline byte
        dw      XT_plus                 ; $235E _plus
        dw      $1A90                ; $2360 execution token $1A90
        dw      XT_RETURN               ; $2362 _RETURN
TERSE_COLON_2364:
        rst     $08                             ; $2364 colon entry
        dw      XT_LITbyte              ; $2365 _LITbyte
        db      $03                  ; $2367 inline byte
        dw      $1F0E                ; $2368 execution token $1F0E
        dw      XT_LITbyte              ; $236A _LITbyte
        db      $11                  ; $236C inline byte
        dw      XT_plus                 ; $236D _plus
        dw      $1A99                ; $236F execution token $1A99
        dw      XT_RETURN               ; $2371 _RETURN
TERSE_COLON_2373:
        rst     $08                             ; $2373 colon entry
        dw      $1F0E                ; $2374 execution token $1F0E
        dw      XT_LITbyte              ; $2376 _LITbyte
        db      $11                  ; $2378 inline byte
        dw      XT_plus                 ; $2379 _plus
        dw      XT_BZERO                ; $237B _BZERO
        dw      $1F0E                ; $237D execution token $1F0E
        dw      XT_LITbyte              ; $237F _LITbyte
        db      $12                  ; $2381 inline byte
        dw      XT_plus                 ; $2382 _plus
        dw      XT_BZERO                ; $2384 _BZERO
        dw      XT_RETURN               ; $2386 _RETURN
NATIVE_2388:
        exx                             ; $2388
        pop hl                          ; $2389
        ld l,(hl)                       ; $238A
        ld a,l                          ; $238B
        rla                             ; $238C
        ld a,$00                        ; $238D
        sbc a,$00                       ; $238F
        ld h,a                          ; $2391
        push hl                         ; $2392
        exx                             ; $2393
        jp (iy)                         ; $2394
TERSE_COLON_2396:
        rst     $08                             ; $2396 colon entry
        dw      XT_DUP                  ; $2397 _DUP
        dw      XT_1plus                ; $2399 _1plus
        dw      XT_SWAP                 ; $239B _SWAP
        dw      XT_Bat                  ; $239D _Bat
        dw      XT_RETURN               ; $239F _RETURN
TERSE_COLON_23A1:
        rst     $08                             ; $23A1 colon entry
        dw      XT_DUP                  ; $23A2 _DUP
        dw      XT_1plus                ; $23A4 _1plus
        dw      XT_SWAP                 ; $23A6 _SWAP
        dw      NATIVE_2388          ; $23A8 NATIVE_2388
        dw      XT_RETURN               ; $23AA _RETURN
TERSE_COLON_23AC:
        rst     $08                             ; $23AC colon entry
        dw      XT_DUP                  ; $23AD _DUP
        dw      XT_2plus                ; $23AF _2plus
        dw      XT_SWAP                 ; $23B1 _SWAP
        dw      XT_at                   ; $23B3 _at
        dw      XT_RETURN               ; $23B5 _RETURN
TERSE_COLON_23B7:
        rst     $08                             ; $23B7 colon entry
        dw      XT_1minus               ; $23B8 _1minus
        dw      XT_DUP                  ; $23BA _DUP
        dw      XT_Bat                  ; $23BC _Bat
        dw      XT_RETURN               ; $23BE _RETURN
TERSE_COLON_23C0:
        rst     $08                             ; $23C0 colon entry
        dw      XT_2minus               ; $23C1 _2minus
        dw      XT_DUP                  ; $23C3 _DUP
        dw      XT_at                   ; $23C5 _at
        dw      XT_RETURN               ; $23C7 _RETURN
        db      $CF,$0E,$1F,$65,$1A,$96,$23,$36,$01,$EA,$03,$B4,$24,$6B,$1A,$5F ; $23C9
        db      $1A,$73,$23,$0E,$1F,$65,$1A,$AC,$23,$36,$01,$FD,$1B,$46,$01,$96 ; $23D9
        db      $23,$D4,$1B,$5F,$1A,$E0,$1D,$EA,$03,$0C,$24,$F2,$1B,$E9,$19,$47 ; $23E9
        db      $23,$EA,$03,$04,$24,$30,$01,$E2,$03,$08,$24,$37,$23,$2A,$01,$EA ; $23F9
        db      $03,$F4,$23,$0E,$1F,$65,$1A,$AC,$23,$0E,$1F,$9B,$1D,$5A,$01,$5F ; $2409
        db      $1C,$AC,$23,$0E,$1F,$AA,$1D,$5A,$01,$71,$1C,$AC,$23,$36,$01,$5B ; $2419
        db      $1D,$46,$01,$AC,$23,$36,$01,$6B,$1D,$46,$01,$5F,$1A,$88,$01,$EA ; $2429
        db      $03,$84,$24,$50,$23,$EA,$03,$46,$24,$64,$23,$37,$23,$73,$23,$0E ; $2439
        db      $1F,$B9,$1D,$B3,$01,$0E,$1F,$C7,$1D,$B3,$01,$1C,$02,$EA,$03,$60 ; $2449
        db      $24,$43,$1C,$E2,$03,$62,$24,$51,$1C,$E9,$19,$47,$23,$EA,$03,$7C ; $2459
        db      $24,$0E,$1F,$96,$1C,$0E,$1F,$A5,$1C,$54,$1D,$34,$1E,$30,$01,$E2 ; $2469
        db      $03,$80,$24,$37,$23,$2A,$01,$EA,$03,$48,$24,$0E,$1F,$71,$1A,$30 ; $2479
        db      $01,$E5,$01,$50,$23,$79,$01,$EA,$03,$9A,$24,$64,$23,$37,$23,$73 ; $2489
        db      $23,$0E,$1F,$71,$1A,$90,$01,$36,$01,$6B,$1A,$E3,$01,$EA,$03,$DA ; $2499
        db      $23,$55,$23,$37,$23,$73,$23,$E2,$03,$CA,$23,$FB,$02,$55,$23,$37 ; $24A9
        db      $23,$2A,$01,$EA,$03,$B6,$24,$FD,$00,$CF,$12,$01,$08,$5A,$01,$5F ; $24B9
        db      $1A,$09,$01,$C9,$23,$95,$01,$59,$1A,$FD,$00,$CF,$36,$01,$12,$01 ; $24C9
        db      $03,$5A,$01,$4C,$01,$24,$1D,$36,$01,$12,$01,$05,$5A,$01,$4C,$01 ; $24D9
        db      $3C,$1D,$36,$01,$12,$01,$07,$5A,$01,$53,$01,$D4,$1B,$12,$01,$08 ; $24E9
        db      $5A,$01,$5F,$1A,$09,$01,$C9,$23,$95,$01,$59,$1A,$FD,$00,$A7,$ED ; $24F9
        db      $52,$F5,$30,$07,$7C,$2F,$67,$7D,$2F,$6F,$23,$AF,$29,$17,$29,$17 ; $2509
        db      $6C,$67,$F1,$C9,$38,$07,$08,$30,$07,$01,$B0,$FF,$C9,$08,$30,$F9 ; $2519
        db      $01,$50,$00,$C9,$D5,$29,$E5,$A7,$ED,$52,$E5,$A7,$ED,$52,$EB,$E1 ; $2529
        db      $C1,$D9,$E1,$23,$FD,$7E,$18,$E6,$0F,$F6,$10,$D3,$C3,$3E,$40,$57 ; $2539
        db      $08,$5F,$FD,$7E,$17,$CB,$67,$28,$0C,$CB,$6F,$28,$04,$3E,$3F,$18 ; $2549
        db      $02,$3E,$2F,$18,$0A,$CB,$6F,$28,$04,$3E,$1F,$18,$02,$3E,$0F,$D3 ; $2559
        db      $C5,$AF,$08,$C9,$7B,$08,$B3,$D3,$0C,$E6,$30,$08,$DD,$72,$00,$D9 ; $2569
        db      $CB,$7C,$20,$0B,$3C,$FE,$04,$38,$03,$AF,$DD,$23,$19,$18,$01,$09 ; $2579
        db      $D9,$5F,$DD,$09,$2B,$7C,$B5,$20,$DB,$C9,$7B,$08,$B3,$D3,$0C,$E6 ; $2589
        db      $30,$08,$DD,$72,$00,$D9,$CB,$7C,$20,$07,$D9,$DD,$09,$D9,$19,$18 ; $2599
        db      $01,$09,$D9,$3C,$FE,$04,$38,$03,$DD,$23,$AF,$5F,$2B,$7C,$B5,$20 ; $25A9
        db      $D9,$C9,$F3,$C5,$FD,$E5,$FD,$2A,$8F,$FE,$FD,$66,$37,$FD,$6E,$36 ; $25B9
        db      $FD,$56,$1C,$FD,$5E,$1B,$D9,$FD,$66,$35,$FD,$6E,$34,$FD,$56,$1A ; $25C9
        db      $FD,$5E,$19,$D9,$DD,$E5,$7D,$E6,$C0,$6F,$7B,$E6,$C0,$5F,$E5,$CD ; $25D9
        db      $07,$25,$E3,$D9,$08,$7D,$E6,$C0,$6F,$7B,$E6,$C0,$5F,$E5,$CD,$07 ; $25E9
        db      $25,$E3,$D9,$CD,$1D,$25,$08,$38,$01,$EB,$E5,$D9,$30,$01,$EB,$E1 ; $25F9
        db      $CD,$A1,$0D,$08,$E5,$DD,$E1,$D1,$E1,$E5,$A7,$ED,$52,$E1,$38,$09 ; $2609
        db      $EB,$CD,$2D,$25,$CD,$6D,$25,$18,$06,$CD,$2D,$25,$CD,$93,$25,$DD ; $2619
        db      $E1,$FD,$E1,$C1,$FB,$FD,$E9,$CF,$BB,$25,$0E,$1F,$96,$1C,$0E,$1F ; $2629
        db      $A5,$1C,$54,$1D,$FD,$00                                         ; $2639
NATIVE_263F:
        ld ($fe8d),iy                   ; $263F
        jp (iy)                         ; $2643
TERSE_COLON_2645:
        rst     $08                             ; $2645 colon entry
        dw      $0C95                ; $2646 execution token $0C95
        dw      XT_LIT                  ; $2648 _LIT
        dw      $0D32                ; $264A inline word
        dw      XT_LIT                  ; $264C _LIT
        dw      $FE83                ; $264E inline word
        dw      XT_bang                 ; $2650 _bang
        dw      XT_LIT                  ; $2652 _LIT
        dw      $FE8F                ; $2654 inline word
        dw      XT_ZERO                 ; $2656 _ZERO
        dw      NATIVE_263F          ; $2658 NATIVE_263F
        dw      XT_LIT                  ; $265A _LIT
        dw      $12B6                ; $265C inline word
        dw      XT_LIT                  ; $265E _LIT
        dw      $FEA4                ; $2660 inline word
        dw      XT_bang                 ; $2662 _bang
        dw      XT_LIT                  ; $2664 _LIT
        dw      $006C                ; $2666 inline word
        dw      XT_LIT                  ; $2668 _LIT
        dw      $FEA1                ; $266A inline word
        dw      XT_SBbang               ; $266C _SBbang
        dw      XT_LIT                  ; $266E _LIT
        dw      $FE97                ; $2670 inline word
        dw      XT_BZERO                ; $2672 _BZERO
        dw      XT_LIT                  ; $2674 _LIT
        dw      $FE96                ; $2676 inline word
        dw      XT_BZERO                ; $2678 _BZERO
        dw      XT_LIT                  ; $267A _LIT
        dw      $1405                ; $267C inline word
        dw      XT_LIT                  ; $267E _LIT
        dw      $FEA8                ; $2680 inline word
        dw      XT_bang                 ; $2682 _bang
        dw      XT_LIT                  ; $2684 _LIT
        dw      $00D0                ; $2686 inline word
        dw      XT_LIT                  ; $2688 _LIT
        dw      $FEA3                ; $268A inline word
        dw      XT_SBbang               ; $268C _SBbang
        dw      XT_LIT                  ; $268E _LIT
        dw      $FE98                ; $2690 inline word
        dw      XT_BZERO                ; $2692 _BZERO
        dw      XT_LIT                  ; $2694 _LIT
        dw      $FE95                ; $2696 inline word
        dw      XT_BZERO                ; $2698 _BZERO
        dw      XT_LIT                  ; $269A _LIT
        dw      $14AB                ; $269C inline word
        dw      XT_LIT                  ; $269E _LIT
        dw      $FEA6                ; $26A0 inline word
        dw      XT_bang                 ; $26A2 _bang
        dw      XT_LITbyte              ; $26A4 _LITbyte
        db      $3A                  ; $26A6 inline byte
        dw      XT_LIT                  ; $26A7 _LIT
        dw      $FEA2                ; $26A9 inline word
        dw      XT_SBbang               ; $26AB _SBbang
        dw      XT_LIT                  ; $26AD _LIT
        dw      $FE93                ; $26AF inline word
        dw      XT_BZERO                ; $26B1 _BZERO
        dw      XT_LITbyte              ; $26B3 _LITbyte
        db      $19                  ; $26B5 inline byte
        dw      XT_LIT                  ; $26B6 _LIT
        dw      $FE99                ; $26B8 inline word
        dw      XT_SBbang               ; $26BA _SBbang
        dw      XT_LIT                  ; $26BC _LIT
        dw      $FEA0                ; $26BE inline word
        dw      XT_BZERO                ; $26C0 _BZERO
        dw      XT_LIT                  ; $26C2 _LIT
        dw      $FE92                ; $26C4 inline word
        dw      XT_BZERO                ; $26C6 _BZERO
        dw      XT_LIT                  ; $26C8 _LIT
        dw      $FE91                ; $26CA inline word
        dw      XT_BZERO                ; $26CC _BZERO
        dw      XT_LIT                  ; $26CE _LIT
        dw      $0D3A                ; $26D0 inline word
        dw      $0C3F                ; $26D2 execution token $0C3F
        dw      XT_LIT                  ; $26D4 _LIT
        dw      $0D3E                ; $26D6 inline word
        dw      $0C3F                ; $26D8 execution token $0C3F
        dw      XT_LIT                  ; $26DA _LIT
        dw      $0D42                ; $26DC inline word
        dw      $0C3F                ; $26DE execution token $0C3F
        dw      XT_LIT                  ; $26E0 _LIT
        dw      $0D46                ; $26E2 inline word
        dw      $0C3F                ; $26E4 execution token $0C3F
        dw      XT_1                    ; $26E6 _1
        dw      XT_LITbyte              ; $26E8 _LITbyte
        db      $08                  ; $26EA inline byte
        dw      XT_OUTP                 ; $26EB _OUTP
        dw      $1F69                ; $26ED execution token $1F69
        dw      XT_LITbyte              ; $26EF _LITbyte
        db      $02                  ; $26F1 inline byte
        dw      XT_LIT                  ; $26F2 _LIT
        dw      $FDA9                ; $26F4 inline word
        dw      XT_SBbang               ; $26F6 _SBbang
        dw      XT_LIT                  ; $26F8 _LIT
        dw      $FE9C                ; $26FA inline word
        dw      XT_BZERO                ; $26FC _BZERO
        dw      XT_LIT                  ; $26FE _LIT
        dw      $FE9F                ; $2700 inline word
        dw      XT_BZERO                ; $2702 _BZERO
        dw      XT_LIT                  ; $2704 _LIT
        dw      $FE86                ; $2706 inline word
        dw      XT_BZERO                ; $2708 _BZERO
        dw      XT_LIT                  ; $270A _LIT
        dw      $FE9E                ; $270C inline word
        dw      XT_BZERO                ; $270E _BZERO
        dw      XT_LIT                  ; $2710 _LIT
        dw      $FE9D                ; $2712 inline word
        dw      XT_BZERO                ; $2714 _BZERO
        dw      XT_LIT                  ; $2716 _LIT
        dw      $FE9A                ; $2718 inline word
        dw      XT_BZERO                ; $271A _BZERO
        dw      XT_LIT                  ; $271C _LIT
        dw      $FE9B                ; $271E inline word
        dw      XT_BZERO                ; $2720 _BZERO
        dw      XT_LIT                  ; $2722 _LIT
        dw      $00C8                ; $2724 inline word
        dw      XT_LITbyte              ; $2726 _LITbyte
        db      $0A                  ; $2728 inline byte
        dw      XT_OUTP                 ; $2729 _OUTP
        dw      $1F52                ; $272B execution token $1F52
        dw      XT_0                    ; $272D _0
        dw      XT_LIT                  ; $272F _LIT
        dw      $00BF                ; $2731 inline word
        dw      XT_OUTP                 ; $2733 _OUTP
        dw      XT_LITbyte              ; $2735 _LITbyte
        db      $07                  ; $2737 inline byte
        dw      XT_0                    ; $2738 _0
        dw      XT_OUTP                 ; $273A _OUTP
        dw      XT_LITbyte              ; $273C _LITbyte
        db      $35                  ; $273E inline byte
        dw      XT_LITbyte              ; $273F _LITbyte
        db      $09                  ; $2741 inline byte
        dw      XT_OUTP                 ; $2742 _OUTP
        dw      XT_LITbyte              ; $2744 _LITbyte
        db      $0F                  ; $2746 inline byte
        dw      XT_LIT                  ; $2747 _LIT
        dw      $00C5                ; $2749 inline word
        dw      XT_OUTP                 ; $274B _OUTP
        dw      XT_0                    ; $274D _0
        dw      XT_LITbyte              ; $274F _LITbyte
        db      $0C                  ; $2751 inline byte
        dw      XT_OUTP                 ; $2752 _OUTP
        dw      XT_LITbyte              ; $2754 _LITbyte
        db      $07                  ; $2756 inline byte
        dw      XT_LITbyte              ; $2757 _LITbyte
        db      $04                  ; $2759 inline byte
        dw      XT_OUTP                 ; $275A _OUTP
        dw      XT_0                    ; $275C _0
        dw      XT_LIT                  ; $275E _LIT
        dw      $00C4                ; $2760 inline word
        dw      XT_OUTP                 ; $2762 _OUTP
        dw      XT_0                    ; $2764 _0
        dw      XT_LIT                  ; $2766 _LIT
        dw      $00C3                ; $2768 inline word
        dw      XT_OUTP                 ; $276A _OUTP
        dw      XT_INSTALL_INTERRUPT_HANDLER ; $276C INSTALL_INTERRUPT_HANDLER
        dw      XT_RETURN               ; $276E _RETURN
TERSE_COLON_2770:
        rst     $08                             ; $2770 colon entry
        dw      XT_RETURN               ; $2771 _RETURN
TERSE_COLON_2773:
        rst     $08                             ; $2773 colon entry
        dw      XT_RETURN               ; $2774 _RETURN
TERSE_COLON_2776:
        rst     $08                             ; $2776 colon entry
        dw      XT_RETURN               ; $2777 _RETURN
        db      $CF,$73,$27,$DA,$13,$D6,$14,$76,$27,$FD,$00                     ; $2779
TERSE_COLON_2784:
        rst     $08                             ; $2784 colon entry
        dw      $2779                ; $2785 execution token $2779
        dw      XT_RETURN               ; $2787 _RETURN
TERSE_COLON_2789:
        rst     $08                             ; $2789 colon entry
        dw      XT_LIT                  ; $278A _LIT
        dw      $FE91                ; $278C inline word
        dw      XT_BONE                 ; $278E _BONE
        dw      XT_RETURN               ; $2790 _RETURN
        db      $FD,$E5,$E1,$19,$35,$C2,$2D,$28,$23,$7E,$2B,$77,$23,$23,$CB,$46 ; $2792
        db      $C8,$4E,$23,$CB,$51,$20,$61,$CB,$59,$28,$39,$23,$23,$23,$AF,$BE ; $27A2
        db      $28,$19,$35,$20,$16,$CB,$81,$11,$06,$00,$B7,$ED,$52,$36,$00,$CB ; $27B2
        db      $69,$28,$04,$FD,$36,$13,$01,$23,$23,$71,$C9,$2B,$2B,$2B,$CB,$99 ; $27C2
        db      $CB,$49,$20,$05,$AF,$96,$77,$18,$0B,$2B,$71,$CB,$61,$23,$23,$28 ; $27D2
        db      $01,$23,$46,$C9,$78,$86,$47,$23,$BE,$30,$06,$CB,$E1,$CB,$D9,$18 ; $27E2
        db      $11,$20,$06,$CB,$E1,$CB,$D9,$18,$09,$23,$BE,$38,$04,$CB,$A1,$CB ; $27F2
        db      $D9,$2B,$2B,$2B,$71,$C9,$18,$20,$23,$E5,$7E,$23,$96,$ED,$44,$3C ; $2802
        db      $5F,$16,$00,$CD,$23,$1B,$7D,$E1,$86,$47,$2B,$5E,$1D,$28,$09,$1C ; $2812
        db      $93,$30,$FD,$83,$90,$ED,$44,$47,$C3,$30,$28,$23,$23,$4E,$C9,$AF ; $2822
        db      $FD,$BE,$13,$C2,$FB,$28,$FD,$BE,$12,$C2,$FB,$28,$FD,$34,$12,$FD ; $2832
        db      $6E,$10,$FD,$66,$11,$7D,$B4,$28,$11,$11,$01,$00,$ED,$52,$20,$04 ; $2842
        db      $FD,$36,$13,$01,$FD,$74,$11,$FD,$75,$10,$AF,$FD,$BE,$E4,$28,$0D ; $2852
        db      $FD,$46,$07,$11,$E4,$FF,$CD,$92,$27,$FD,$70,$07,$AF,$FD,$BE,$F9 ; $2862
        db      $28,$44,$3C,$FD,$BE,$F9,$20,$31,$FD,$7E,$0F,$B7,$28,$2B,$FD,$7E ; $2872
        db      $FA,$07,$07,$07,$07,$E6,$0F,$3C,$FD,$77,$F3,$FD,$7E,$01,$3D,$FD ; $2882
        db      $7E,$F7,$28,$06,$5F,$0F,$0F,$0F,$0F,$B3,$FD,$77,$08,$FD,$36,$F8 ; $2892
        db      $01,$FD,$36,$F2,$01,$FD,$36,$F4,$03,$FD,$46,$0E,$11,$F9,$FF,$CD ; $28A2
        db      $92,$27,$FD,$70,$0E,$AF,$FD,$BE,$F2,$28,$28,$FD,$7E,$08,$E6,$0F ; $28B2
        db      $47,$11,$F2,$FF,$CD,$92,$27,$FD,$6E,$01,$2D,$78,$28,$05,$0F,$0F ; $28C2
        db      $0F,$0F,$B0,$FD,$77,$08,$2C,$20,$09,$FD,$7E,$09,$E6,$F0,$B0,$FD ; $28D2
        db      $77,$09,$AF,$FD,$BE,$EB,$28,$0D,$FD,$46,$0A,$11,$EB,$FF,$CD,$92 ; $28E2
        db      $27,$FD,$70,$0A,$AF,$AF,$FD,$77,$12,$FD,$4E,$00,$FD,$E5,$E1,$11 ; $28F2
        db      $07,$00,$19,$06,$08,$ED,$B3,$C9,$D5,$21,$00,$00,$19,$4E,$06,$08 ; $2902
        db      $C5,$21,$06,$00,$19,$01,$0C,$00,$E5,$E5,$D1,$36,$00,$13,$ED,$B0 ; $2912
        db      $E1,$C1,$ED,$B3,$E1,$2B,$E5,$D1,$1B,$01,$1B,$00,$36,$00,$ED,$B8 ; $2922
        db      $D9,$C9,$21,$00,$00,$19,$77,$21,$04,$00,$19,$AF,$77,$23,$77,$C3 ; $2932
        db      $0A,$29,$3E,$18,$D9,$11,$6D,$FD,$18,$E8,$3E,$58,$D9,$11,$3D,$FD ; $2942
        db      $18,$E0,$CD,$44,$29,$CD,$4C,$29,$FD,$E9,$3A,$FF,$E1,$B7,$28,$0A ; $2952
        db      $E5,$21,$E7,$E1,$5E,$1C,$CD,$EA,$05,$E1,$EB,$2A,$EB,$E1,$19,$08 ; $2962
        db      $3E,$09,$BC,$30,$03,$21,$00,$09,$EB,$21,$EB,$E1,$CD,$DD,$05,$1E ; $2972
        db      $0A,$21,$EA,$E1,$C3,$EA,$05,$E6,$77,$EE,$77,$28,$03,$32,$83,$FD ; $2982
        db      $C9,$2E,$00,$ED,$78,$67,$A2,$BB,$28,$03,$2C,$06,$01,$10,$F4,$7D ; $2992
        db      $B7,$C9,$0E,$14,$3A,$EA,$E1,$B7,$20,$05,$05,$ED,$78,$AF,$C9,$FE ; $29A2
        db      $0A,$20,$02,$ED,$40,$B7,$C9,$3A,$FF,$E1,$B7,$28,$0B,$3A,$83,$FD ; $29B2
        db      $B7,$20,$05,$DB,$11,$CD,$89,$29,$DB,$10,$CB,$5F,$20,$18,$CD,$73 ; $29C2
        db      $06,$21,$EC,$E1,$7E,$B7,$28,$01,$3D,$5F,$CD,$EA,$05,$F3,$3E,$A0 ; $29D2
        db      $ED,$B1,$3D,$20,$FB,$C7,$CB,$57,$20,$02,$18,$F1,$01,$10,$00,$3A ; $29E2
        db      $E6,$E1,$EE,$FF,$F5,$16,$01,$A2,$5F,$CD,$93,$29,$20,$24,$21,$E6 ; $29F2
        db      $E1,$7E,$CB,$43,$20,$08,$CB,$87,$5F,$CD,$EA,$05,$18,$14,$CB,$C7 ; $2A02
        db      $5F,$CD,$EA,$05,$2A,$F6,$E1,$CD,$5C,$29,$21,$E9,$E1,$5E,$1C,$CD ; $2A12
        db      $EA,$05,$01,$10,$00,$F1,$16,$02,$A2,$5F,$CD,$93,$29,$20,$41,$21 ; $2A22
        db      $E6,$E1,$7E,$CB,$4B,$20,$08,$CB,$8F,$5F,$CD,$EA,$05,$18,$31,$CB ; $2A32
        db      $CF,$5F,$CD,$EA,$05,$D9,$2A,$F6,$E1,$ED,$5B,$F4,$E1,$ED,$52,$D9 ; $2A42
        db      $28,$10,$2A,$F4,$E1,$CD,$5C,$29,$21,$E8,$E1,$5E,$1C,$CD,$EA,$05 ; $2A52
        db      $18,$0E,$2A,$F6,$E1,$CD,$5C,$29,$21,$E9,$E1,$5E,$1C,$CD,$EA,$05 ; $2A62
        db      $06,$00,$21,$E9,$E1,$7E,$B7,$28,$0C,$06,$01,$CD,$A4,$29,$20,$05 ; $2A72
        db      $5E,$1D,$CD,$EA,$05,$21,$E8,$E1,$7E,$B7,$28,$0E,$78,$F6,$02,$47 ; $2A82
        db      $CD,$A4,$29,$20,$05,$5E,$1D,$CD,$EA,$05,$21,$EA,$E1,$5E,$1D,$CD ; $2A92
        db      $EA,$05,$3A,$F8,$FE,$3C,$FE,$3C,$20,$08,$2A,$F9,$FE,$23,$22,$F9 ; $2AA2
        db      $FE,$AF,$21,$F8,$FE,$77,$C9,$F5,$C5,$D5,$E5,$D9,$08,$F5,$C5,$D5 ; $2AB2
        db      $E5,$FD,$E5,$DD,$E5,$3A,$83,$FD,$B7,$28,$0E,$FD,$21,$6D,$FD,$CD ; $2AC2
        db      $31,$28,$FD,$21,$3D,$FD,$CD,$31,$28,$CD,$B9,$29,$C3,$C5,$12     ; $2AD2
WRITE_INDEXED_IO_REGISTER:
        ld de,($fd81)                   ; $2AE1
        ld c,l                          ; $2AE5
        ld hl,$0000                     ; $2AE6
        add hl,de                       ; $2AE9
        ld a,(hl)                       ; $2AEA
        sub b                           ; $2AEB
        ld l,c                          ; $2AEC
        ld c,a                          ; $2AED
        ld a,l                          ; $2AEE
        out (c),a                       ; $2AEF
        ret                             ; $2AF1
        db      $D9,$E1,$06,$08,$CD,$E1,$2A,$21,$0E,$00,$19,$77,$D9,$FD,$E9     ; $2AF2
NATIVE_2B01:
        exx                             ; $2B01
        pop hl                          ; $2B02
        ld b,$01                        ; $2B03
        call WRITE_INDEXED_IO_REGISTER  ; $2B05
        ld hl,$0007                     ; $2B08
        add hl,de                       ; $2B0B
        ld (hl),a                       ; $2B0C
        exx                             ; $2B0D
        jp (iy)                         ; $2B0E
NATIVE_2B10:
        exx                             ; $2B10
        pop hl                          ; $2B11
        ld b,$02                        ; $2B12
        call WRITE_INDEXED_IO_REGISTER  ; $2B14
        ld hl,$0008                     ; $2B17
        add hl,de                       ; $2B1A
        ld (hl),a                       ; $2B1B
        exx                             ; $2B1C
        jp (iy)                         ; $2B1D
NATIVE_2B1F:
        exx                             ; $2B1F
        pop hl                          ; $2B20
        ld b,$03                        ; $2B21
        call WRITE_INDEXED_IO_REGISTER  ; $2B23
        ld hl,$0009                     ; $2B26
        add hl,de                       ; $2B29
        ld (hl),a                       ; $2B2A
        exx                             ; $2B2B
        jp (iy)                         ; $2B2C
TERSE_COLON_2B2E:
        rst     $08                             ; $2B2E colon entry
        dw      NATIVE_2B10          ; $2B2F NATIVE_2B10
        dw      NATIVE_2B1F          ; $2B31 NATIVE_2B1F
        dw      XT_RETURN               ; $2B33 _RETURN
NATIVE_2B35:
        exx                             ; $2B35
        pop hl                          ; $2B36
        ld b,$04                        ; $2B37
        call WRITE_INDEXED_IO_REGISTER  ; $2B39
        ld hl,$000a                     ; $2B3C
        add hl,de                       ; $2B3F
        ld (hl),a                       ; $2B40
        exx                             ; $2B41
        jp (iy)                         ; $2B42
NATIVE_2B44:
        exx                             ; $2B44
        pop hl                          ; $2B45
        ld b,$07                        ; $2B46
        call WRITE_INDEXED_IO_REGISTER  ; $2B48
        ld hl,$000d                     ; $2B4B
        add hl,de                       ; $2B4E
        ld (hl),a                       ; $2B4F
        exx                             ; $2B50
        jp (iy)                         ; $2B51
NATIVE_2B53:
        exx                             ; $2B53
        pop hl                          ; $2B54
        ld b,$06                        ; $2B55
        call WRITE_INDEXED_IO_REGISTER  ; $2B57
        ld hl,$000c                     ; $2B5A
        add hl,de                       ; $2B5D
        ld (hl),a                       ; $2B5E
        exx                             ; $2B5F
        jp (iy)                         ; $2B60
NATIVE_2B62:
        exx                             ; $2B62
        pop hl                          ; $2B63
        ld b,$05                        ; $2B64
        call WRITE_INDEXED_IO_REGISTER  ; $2B66
        ld hl,$000b                     ; $2B69
        add hl,de                       ; $2B6C
        ld (hl),a                       ; $2B6D
        exx                             ; $2B6E
        jp (iy)                         ; $2B6F
TERSE_COLON_2B71:
        rst     $08                             ; $2B71 colon entry
        dw      NATIVE_2B62          ; $2B72 NATIVE_2B62
        dw      NATIVE_2B53          ; $2B74 NATIVE_2B53
        dw      NATIVE_2B44          ; $2B76 NATIVE_2B44
        dw      XT_RETURN               ; $2B78 _RETURN
NATIVE_2B7A:
        ld hl,$0002                     ; $2B7A
        ld de,($fd81)                   ; $2B7D
        add hl,de                       ; $2B81
        ld (hl),c                       ; $2B82
        inc hl                          ; $2B83
        ld (hl),b                       ; $2B84
        ld hl,$0013                     ; $2B85
        add hl,de                       ; $2B88
        ld (hl),$00                     ; $2B89
        ret                             ; $2B8B
        db      $CD,$7A,$2B,$CD,$0A,$29,$11,$04,$00,$2A,$81,$FD,$19,$4E,$23,$46 ; $2B8C
        db      $78,$B1,$28,$05,$CD,$7A,$2B,$36,$01,$C1,$FD,$E9                 ; $2B9C
NATIVE_2BA8:
        exx                             ; $2BA8
        pop bc                          ; $2BA9
        ld hl,($fd81)                   ; $2BAA
        ld de,$0010                     ; $2BAD
        add hl,de                       ; $2BB0
        ld (hl),c                       ; $2BB1
        inc hl                          ; $2BB2
        ld (hl),b                       ; $2BB3
        exx                             ; $2BB4
        call NATIVE_2B7A                ; $2BB5
        pop bc                          ; $2BB8
        jp (iy)                         ; $2BB9
NATIVE_2BBB:
        pop de                          ; $2BBB
        ld hl,($fd81)                   ; $2BBC
        add hl,de                       ; $2BBF
        ld de,$0005                     ; $2BC0
        add hl,de                       ; $2BC3
        ld a,$06                        ; $2BC4
L2BC6:
        pop de                          ; $2BC6
        ld (hl),e                       ; $2BC7
        dec hl                          ; $2BC8
        dec a                           ; $2BC9
        jr nz,L2BC6                     ; $2BCA
        jp (iy)                         ; $2BCC
        db      $FD,$E5,$D5,$FD,$E1,$7D,$FD,$BE,$06,$38,$13,$D5,$D9,$D1,$CD,$0A ; $2BCE
        db      $29,$FD,$36,$13,$01,$FD,$75,$06,$FD,$71,$02,$FD,$70,$03,$FD,$E1 ; $2BDE
        db      $C9,$D1,$E1,$CD,$CE,$2B,$DD,$4E,$00,$DD,$23,$DD,$46,$00,$DD,$23 ; $2BEE
        db      $FD,$E9,$CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$8C,$2B,$FD,$00,$CF ; $2BFE
        db      $2A,$01,$09,$01,$3D,$FD,$EF,$2B,$8C,$2B,$FD,$00,$CF,$54,$29,$00 ; $2C0E
        db      $2C,$0D,$2C,$FD,$00                                             ; $2C1E
NATIVE_2C23:
        ld a,($fd80)                    ; $2C23
        or a                            ; $2C26
        jr z,L2C34                      ; $2C27
        push bc                         ; $2C29
        ld bc,($fd6f)                   ; $2C2A
        ld hl,$fd6d                     ; $2C2E
        ld ($fd81),hl                   ; $2C31
L2C34:
        jp (iy)                         ; $2C34
NATIVE_2C36:
        ld a,($fd50)                    ; $2C36
        or a                            ; $2C39
        jr z,L2C47                      ; $2C3A
        push bc                         ; $2C3C
        ld bc,($fd3f)                   ; $2C3D
        ld hl,$fd3d                     ; $2C41
        ld ($fd81),hl                   ; $2C44
L2C47:
        jp (iy)                         ; $2C47
        db      $CF,$99,$15,$09,$01,$83,$FD,$53,$01,$EA,$03,$5A,$2C,$23,$2C,$36 ; $2C49
        db      $2C,$E7,$15,$2A,$01,$EA,$03,$4C,$2C,$FD,$00,$CF,$09,$01,$B9,$2A ; $2C59
        db      $09,$01,$A4,$FE,$61,$05,$2A,$01,$09,$01,$0A,$FD,$12,$01,$17,$A2 ; $2C69
        db      $21,$09,$01,$0A,$FD,$49,$2C,$54,$29,$00,$2C,$0D,$2C,$32,$0C,$FD ; $2C79
        db      $00                                                             ; $2C89
TERSE_COLON_2C8A:
        rst     $08                             ; $2C8A colon entry
        dw      XT_LIT                  ; $2C8B _LIT
        dw      $FDA9                ; $2C8D inline word
        dw      XT_SBbang               ; $2C8F _SBbang
        dw      XT_RETURN               ; $2C91 _RETURN
TERSE_COLON_2C93:
        rst     $08                             ; $2C93 colon entry
        dw      $1E72                ; $2C94 execution token $1E72
        dw      XT_0                    ; $2C96 _0
        dw      XT_DUP                  ; $2C98 _DUP
        dw      XT_LIT                  ; $2C9A _LIT
        dw      $00C3                ; $2C9C inline word
        dw      XT_OUTP                 ; $2C9E _OUTP
        dw      $1E5C                ; $2CA0 execution token $1E5C
        dw      XT_RETURN               ; $2CA2 _RETURN
TERSE_COLON_2CA4:
        rst     $08                             ; $2CA4 colon entry
        dw      XT_LIT                  ; $2CA5 _LIT
        dw      $FDA9                ; $2CA7 inline word
        dw      XT_DUP                  ; $2CA9 _DUP
        dw      XT_Bat                  ; $2CAB _Bat
        dw      XT_SWAP                 ; $2CAD _SWAP
        dw      XT_BONE                 ; $2CAF _BONE
        dw      $1EA8                ; $2CB1 execution token $1EA8
        dw      NATIVE_2083          ; $2CB3 NATIVE_2083
        dw      TERSE_COLON_2C8A     ; $2CB5 TERSE_COLON_2C8A
        dw      XT_RETURN               ; $2CB7 _RETURN
NATIVE_2CB9:
        pop hl                          ; $2CB9
        ld a,l                          ; $2CBA
        rrca                            ; $2CBB
        rrca                            ; $2CBC
        rrca                            ; $2CBD
        rrca                            ; $2CBE
        ld l,a                          ; $2CBF
        push hl                         ; $2CC0
        jp (iy)                         ; $2CC1
; Return true when the player's selected answer slot matches the randomized
; correct slot established by the PPQ presentation. ( -- flag )
IS_SELECTED_ANSWER_CORRECT:
        rst     $08                             ; $2CC3 colon entry
        dw      XT_LIT                  ; $2CC4 _LIT
        dw      QUESTION_SELECTED_SLOT_ADDR ; $2CC6 inline word
        dw      XT_Bat                  ; $2CC8 _Bat
        dw      XT_LIT                  ; $2CCA _LIT
        dw      QUESTION_CORRECT_SLOT_ADDR ; $2CCC inline word
        dw      XT_Bat                  ; $2CCE _Bat
        dw      XT_equal                ; $2CD0 _equal
        dw      XT_RETURN               ; $2CD2 _RETURN
TERSE_COLON_2CD4:
        rst     $08                             ; $2CD4 colon entry
        dw      XT_LIT                  ; $2CD5 _LIT
        dw      $F727                ; $2CD7 inline word
        dw      XT_Bat                  ; $2CD9 _Bat
        dw      XT_RETURN               ; $2CDB _RETURN
TERSE_COLON_2CDD:
        rst     $08                             ; $2CDD colon entry
        dw      XT_1plus                ; $2CDE _1plus
        dw      $1F0E                ; $2CE0 execution token $1F0E
        dw      XT_LITbyte              ; $2CE2 _LITbyte
        db      $48                  ; $2CE4 inline byte
        dw      XT_plus                 ; $2CE5 _plus
        dw      XT_bang                 ; $2CE7 _bang
        dw      XT_RETURN               ; $2CE9 _RETURN
TERSE_COLON_2CEB:
        rst     $08                             ; $2CEB colon entry
        dw      $1CB4                ; $2CEC execution token $1CB4
        dw      $1E0C                ; $2CEE execution token $1E0C
        dw      XT_RETURN               ; $2CF0 _RETURN
TERSE_COLON_2CF2:
        rst     $08                             ; $2CF2 colon entry
        dw      TERSE_COLON_2CEB     ; $2CF3 TERSE_COLON_2CEB
        dw      XT_RETURN               ; $2CF5 _RETURN
; Fetch the PPQ initializer's per-question variant byte. ( -- variant )
GET_QUESTION_VARIANT_BYTE:
        rst     $08                             ; $2CF7 colon entry
        dw      XT_LIT                  ; $2CF8 _LIT
        dw      QUESTION_VARIANT_ADDR ; $2CFA inline word
        dw      XT_Bat                  ; $2CFC _Bat
        dw      XT_RETURN               ; $2CFE _RETURN
TERSE_COLON_2D00:
        rst     $08                             ; $2D00 colon entry
        dw      $1E8E                ; $2D01 execution token $1E8E
        dw      TERSE_COLON_2CA4     ; $2D03 TERSE_COLON_2CA4
        dw      XT_RETURN               ; $2D05 _RETURN
NATIVE_2D07:
        ld d,l                          ; $2D07
        di                              ; $2D08
        pop hl                          ; $2D09
        ld a,$10                        ; $2D0A
        or l                            ; $2D0C
        out (PORT_SCREEN_INTERCEPT),a   ; $2D0D
        pop hl                          ; $2D0F
        ld d,l                          ; $2D10
        pop hl                          ; $2D11
        ld e,l                          ; $2D12
        pop hl                          ; $2D13
        push bc                         ; $2D14
        push ix                         ; $2D15
        ld ix,$2d07                     ; $2D17
        ld bc,$0006                     ; $2D1B
        ld a,$0f                        ; $2D1E
        out (PORT_SCREEN_WRITE_MASK),a  ; $2D20
        call $0e48                      ; $2D22
        pop ix                          ; $2D25
        pop bc                          ; $2D27
        ei                              ; $2D28
        jp (iy)                         ; $2D29
        db      $CF,$2A,$01,$12,$01,$4F,$09,$01,$C8,$00,$2A,$01,$08,$2D,$FD,$00 ; $2D2B
        db      $CF,$08,$2D,$FD,$00,$CF,$09,$01,$E1,$10,$12,$01,$4C,$09,$01,$90 ; $2D3B
        db      $00,$2A,$01,$08,$2D,$FD,$00                                     ; $2D4B
TERSE_COLON_2D52:
        rst     $08                             ; $2D52 colon entry
        dw      XT_DO                   ; $2D53 _DO
        dw      XT_DUP                  ; $2D55 _DUP
        dw      XT_Bat                  ; $2D57 _Bat
        dw      XT_I                    ; $2D59 _I
        dw      XT_LIT                  ; $2D5B _LIT
        dw      $FDB0                ; $2D5D inline word
        dw      XT_plus                 ; $2D5F _plus
        dw      XT_SBbang               ; $2D61 _SBbang
        dw      XT_1plus                ; $2D63 _1plus
        dw      XT_LOOP                 ; $2D65 _LOOP
        dw      XT_DROP                 ; $2D67 _DROP
        dw      XT_RETURN               ; $2D69 _RETURN
TERSE_COLON_2D6B:
        rst     $08                             ; $2D6B colon entry
        dw      XT_LITbyte              ; $2D6C _LITbyte
        db      $0C                  ; $2D6E inline byte
        dw      XT_LITbyte              ; $2D6F _LITbyte
        db      $03                  ; $2D71 inline byte
        dw      TERSE_COLON_2D52     ; $2D72 TERSE_COLON_2D52
        dw      XT_LIT                  ; $2D74 _LIT
        dw      $FDAF                ; $2D76 inline word
        dw      XT_BONE                 ; $2D78 _BONE
        dw      XT_RETURN               ; $2D7A _RETURN
TERSE_COLON_2D7C:
        rst     $08                             ; $2D7C colon entry
        dw      XT_LITbyte              ; $2D7D _LITbyte
        db      $30                  ; $2D7F inline byte
        dw      XT_0                    ; $2D80 _0
        dw      TERSE_COLON_2D52     ; $2D82 TERSE_COLON_2D52
        dw      XT_LIT                  ; $2D84 _LIT
        dw      $FDAF                ; $2D86 inline word
        dw      XT_BONE                 ; $2D88 _BONE
        dw      XT_RETURN               ; $2D8A _RETURN
        db      $0D,$00,$00,$00,$00,$0C,$0F,$0D,$00,$00,$00,$00,$0D,$06,$06,$0F ; $2D8C
        db      $03,$07,$00,$0F,$00,$04,$04,$04,$08,$08,$08,$00,$00,$00,$06,$00 ; $2D9C
        db      $00,$08,$00,$06,$00,$0A,$0F,$0D,$00,$00,$00,$0A,$00,$00,$00,$0B ; $2DAC
        db      $0F,$0D,$00,$0F,$07,$00,$0F,$0F,$0F,$00,$00,$04,$0D,$1E,$2A,$3F ; $2DBC
        db      $00,$00,$05,$00,$00,$01,$54,$00,$00,$04,$10,$00,$0A,$10,$10,$00 ; $2DCC
        db      $2E,$08,$40,$00,$AA,$A0,$40,$00,$AA,$88,$28,$00,$AA,$2E,$AA,$00 ; $2DDC
        db      $AA,$2A,$AA,$00,$2A,$2A,$AA,$00,$0A,$2A,$AA,$00,$00,$0A,$A8,$00 ; $2DEC
        db      $00,$02,$A0,$00,$00,$00,$04,$0D,$1B,$2A,$3F,$00,$14,$00,$00,$01 ; $2DFC
        db      $92,$40,$00,$04,$44,$60,$00,$24,$64,$98,$00,$2E,$AA,$AC,$00,$2A ; $2E0C
        db      $BA,$E8,$00,$2B,$AA,$A8,$00,$0A,$AE,$B0,$00,$0A,$EA,$A0,$00,$02 ; $2E1C
        db      $AA,$C0,$00,$00,$BA,$00,$00,$00,$AA,$00,$00,$00,$2C,$00,$00,$00 ; $2E2C
        db      $00,$04,$0D,$1B,$2E,$3D,$15,$08,$54,$00,$45,$48,$50,$00,$05,$48 ; $2E3C
        db      $A8,$00,$2E,$10,$BE,$00,$BF,$AA,$FF,$80,$BF,$FF,$FF,$80,$BF,$FF ; $2E4C
        db      $FF,$80,$BF,$FF,$FF,$80,$BF,$FF,$FF,$80,$3F,$FF,$FE,$00,$2F,$FF ; $2E5C
        db      $FA,$00,$0B,$FF,$E8,$00,$00,$AB,$80,$00,$00,$00,$04,$0D,$1B,$2A ; $2E6C
        db      $3F,$15,$24,$28,$00,$45,$44,$56,$00,$2A,$10,$AA,$80,$AA,$AA,$AA ; $2E7C
        db      $80,$AA,$AA,$AA,$80,$AA,$AA,$AA,$80,$AA,$AA,$AA,$80,$AA,$AA,$AA ; $2E8C
        db      $80,$AA,$AA,$AA,$80,$2A,$AA,$AA,$00,$2A,$AA,$AA,$00,$0A,$AA,$A8 ; $2E9C
        db      $00,$02,$E2,$E0,$00,$00,$00,$04,$0D,$1E,$2B,$3F,$11,$54,$82,$C0 ; $2EAC
        db      $00,$12,$BA,$80,$02,$06,$A2,$00,$0A,$C0,$80,$80,$22,$20,$2C,$C0 ; $2EBC
        db      $AC,$AE,$A8,$00,$A8,$A8,$C2,$00,$22,$22,$A3,$00,$0A,$C0,$2C,$00 ; $2ECC
        db      $0A,$88,$A8,$00,$02,$2B,$20,$00,$00,$2A,$00,$00,$00,$08,$00,$00 ; $2EDC
        db      $00,$00,$03,$0D,$1E,$2D,$3F,$14,$00,$00,$51,$00,$00,$08,$B4,$00 ; $2EEC
        db      $CA,$2A,$40,$86,$C2,$A0,$86,$A4,$68,$61,$AA,$05,$28,$5A,$80,$1A ; $2EFC
        db      $06,$E0,$06,$81,$64,$01,$64,$19,$00,$59,$00,$00,$06,$90,$00,$00 ; $2F0C
        db      $04,$0D,$1D,$2E,$3F,$00,$56,$80,$00,$01,$55,$A0,$00,$07,$55,$68 ; $2F1C
        db      $00,$05,$55,$68,$00,$07,$55,$58,$00,$07,$55,$68,$00,$05,$55,$68 ; $2F2C
        db      $00,$07,$55,$98,$00,$1A,$AA,$AA,$00,$DD,$DD,$56,$80,$00,$00,$00 ; $2F3C
        db      $00,$01,$A0,$00,$00,$00,$80,$00,$00,$00,$00,$04,$0D,$19,$2A,$3D ; $2F4C
        db      $10,$08,$01,$00,$14,$2A,$05,$00,$14,$AA,$85,$00,$1E,$AA,$AD,$00 ; $2F5C
        db      $1F,$BB,$BD,$00,$17,$FB,$F5,$00,$05,$CC,$D4,$00,$01,$4C,$50,$00 ; $2F6C
        db      $00,$4C,$40,$00,$00,$0C,$00,$00,$00,$0C,$00,$00,$00,$0C,$00,$00 ; $2F7C
        db      $00,$0C,$00,$00,$00,$00,$04,$0D,$19,$2F,$30,$00,$55,$00,$00,$05 ; $2F8C
        db      $41,$50,$00,$15,$41,$54,$00,$15,$55,$54,$00,$05,$55,$50,$00,$00 ; $2F9C
        db      $8A,$00,$00,$00,$88,$00,$00,$00,$82,$00,$00,$00,$88,$00,$00,$00 ; $2FAC
        db      $82,$00,$00,$00,$88,$00,$00,$00,$22,$00,$00,$00,$08,$00,$00,$00 ; $2FBC
        db      $00,$04,$0D,$1A,$2D,$3E,$00,$00,$00,$00,$1B,$C0,$BD,$00,$60,$73 ; $2FCC
        db      $43,$40,$C0,$33,$00,$C0,$D0,$3F,$01,$C0,$F0,$11,$03,$C0,$70,$2E ; $2FDC
        db      $03,$40,$34,$3F,$07,$00,$01,$C0,$D0,$00,$1F,$0C,$35,$00,$2C,$33 ; $2FEC
        db      $0E,$00,$03,$C0,$F0,$00,$00,$00,$00,$00,$00,$FF,$03,$0B,$1E,$2B ; $2FFC
        db      $3A,$15,$55,$54,$55,$55,$55,$55,$55,$55,$00,$00,$00,$99,$29,$8A ; $300C
        db      $00,$00,$00,$DD,$DD,$DD,$CC,$CC,$F3,$00,$00,$00,$55,$55,$55,$37 ; $301C
        db      $77,$74,$00,$00,$04,$0D,$1E,$2D,$3A,$06,$66,$64,$00,$A4,$00,$06 ; $302C
        db      $40,$40,$DB,$C0,$80,$0F,$BF,$58,$00,$3E,$DD,$BF,$00,$07,$FD,$D8 ; $303C
        db      $00,$0F,$9F,$7C,$00,$02,$F5,$F0,$00,$03,$DE,$70,$00,$00,$FD,$C0 ; $304C
        db      $00,$00,$1F,$00,$00,$00,$3F,$00,$00,$00,$0C,$00,$00,$00,$00,$04 ; $305C
        db      $0C,$1E,$2F,$3A,$00,$65,$90,$00,$0E,$56,$E7,$00,$05,$99,$96,$00 ; $306C
        db      $39,$90,$19,$00,$25,$C0,$09,$80,$16,$00,$06,$40,$25,$00,$05,$80 ; $307C
        db      $16,$C0,$39,$40,$27,$B0,$E6,$C0,$09,$65,$59,$00,$01,$96,$64,$00 ; $308C
        db      $00,$59,$90,$00,$00,$00,$04,$0D,$1D,$2E,$3C,$00,$04,$00,$00,$00 ; $309C
        db      $60,$00,$00,$06,$01,$00,$00,$10,$16,$80,$00,$41,$A2,$60,$00,$06 ; $30AC
        db      $26,$28,$00,$26,$58,$AA,$00,$20,$29,$99,$40,$2F,$00,$00,$00,$2C ; $30BC
        db      $CC,$CC,$C0,$2F,$33,$33,$00,$0A,$0F,$FF,$C0,$00,$AA,$AA,$80,$00 ; $30CC
        db      $00,$04,$0D,$1F,$2D,$3E,$00,$55,$40,$00,$01,$55,$50,$00,$02,$66 ; $30DC
        db      $60,$00,$05,$55,$54,$00,$00,$00,$00,$00,$02,$BB,$B0,$00,$00,$CF ; $30EC
        db      $C0,$00,$02,$EE,$E0,$00,$00,$03,$00,$00,$00,$EF,$C0,$00,$00,$FF ; $30FC
        db      $C0,$00,$00,$EF,$C0,$00,$00,$FF,$C0,$00,$00,$00,$04,$0D,$1F,$2E ; $310C
        db      $3D,$00,$11,$00,$00,$00,$00,$00,$00,$02,$7F,$60,$00,$0B,$00,$38 ; $311C
        db      $00,$0C,$33,$00,$00,$0B,$22,$00,$00,$02,$7F,$60,$00,$00,$00,$38 ; $312C
        db      $00,$00,$33,$0C,$00,$0F,$22,$38,$00,$02,$7F,$60,$00,$00,$00,$00 ; $313C
        db      $00,$00,$22,$00,$00,$00,$00,$04,$0C,$1A,$20,$30,$15,$40,$55,$00 ; $314C
        db      $55,$51,$55,$40,$55,$55,$55,$40,$55,$55,$55,$40,$55,$55,$55,$40 ; $315C
        db      $15,$55,$55,$00,$15,$55,$55,$00,$05,$55,$54,$00,$01,$55,$50,$00 ; $316C
        db      $00,$55,$40,$00,$00,$15,$00,$00,$00,$04,$00,$00,$C5,$2D,$00,$2E ; $317C
        db      $3B,$2E,$76,$2E,$B1,$2E,$EC,$2E,$CB,$2F,$06,$30,$2E,$30,$69,$30 ; $318C
        db      $A0,$30,$DB,$30,$1A,$2F,$55,$2F,$90,$2F,$16,$31,$51,$31,$00,$00 ; $319C
        db      $06,$15,$1A,$2C,$3D,$00,$00,$29,$40,$00,$00,$00,$00,$A0,$50,$00 ; $31AC
        db      $00,$00,$00,$8F,$10,$00,$00,$00,$02,$8F,$14,$00,$00,$00,$02,$3F ; $31BC
        db      $C4,$00,$00,$00,$0A,$3F,$C5,$00,$00,$00,$08,$FF,$F1,$00,$00,$00 ; $31CC
        db      $28,$FF,$F1,$40,$00,$00,$23,$FF,$FC,$40,$00,$00,$A3,$FF,$FC,$50 ; $31DC
        db      $00,$00,$8F,$F0,$FF,$10,$00,$02,$8F,$F0,$FF,$14,$00,$02,$3F,$F0 ; $31EC
        db      $FF,$C4,$00,$0A,$3F,$FF,$FC,$C5,$00,$08,$FF,$FF,$FF,$31,$00,$28 ; $31FC
        db      $FF,$FF,$FF,$31,$40,$23,$FF,$FF,$FF,$CC,$40,$A3,$FF,$FF,$C0,$0C ; $320C
        db      $50,$8F,$FF,$FF,$FF,$FF,$10,$00,$00,$00,$00,$00,$10,$01,$55,$55 ; $321C
        db      $55,$55,$50,$00,$00,$05,$14,$1A,$2C,$3D,$AA,$AA,$AA,$80,$00,$80 ; $322C
        db      $00,$00,$00,$40,$8F,$FF,$FF,$FC,$14,$8F,$FF,$FF,$FF,$C5,$8F,$FF ; $323C
        db      $FF,$FF,$F1,$8F,$FF,$0F,$FF,$F1,$8F,$FF,$0F,$FF,$F1,$8F,$FF,$FF ; $324C
        db      $FF,$C5,$8F,$FF,$FF,$FF,$14,$8F,$FF,$FF,$F0,$40,$8F,$FF,$FF,$FF ; $325C
        db      $14,$8F,$FF,$FF,$FF,$C5,$8F,$FF,$0F,$FF,$F1,$8F,$FF,$0F,$FC,$F1 ; $326C
        db      $8F,$FF,$FF,$FC,$F1,$8F,$FF,$FF,$F3,$F1,$8F,$FF,$F0,$0F,$C5,$0F ; $327C
        db      $FF,$FF,$FC,$14,$00,$00,$00,$00,$50,$01,$55,$55,$55,$00,$00,$00 ; $328C
        db      $06,$16,$1A,$2C,$3D,$00,$00,$2A,$AA,$00,$00,$00,$02,$80,$00,$A0 ; $329C
        db      $00,$00,$28,$3F,$FF,$00,$00,$00,$83,$FF,$FF,$F0,$00,$02,$3F,$FF ; $32AC
        db      $FF,$FF,$00,$08,$FF,$FF,$FF,$FF,$C0,$23,$FF,$FF,$FF,$FC,$00,$23 ; $32BC
        db      $FF,$FF,$FF,$C1,$40,$8F,$FF,$FF,$F0,$14,$00,$8F,$FF,$FF,$01,$40 ; $32CC
        db      $00,$0F,$FF,$F0,$14,$00,$00,$0F,$FF,$FF,$00,$00,$00,$0F,$FF,$FF ; $32DC
        db      $F0,$00,$00,$0F,$FF,$FC,$3F,$C0,$00,$03,$FF,$FF,$C0,$FC,$00,$03 ; $32EC
        db      $FF,$FF,$FF,$03,$C0,$00,$FF,$FF,$FF,$CF,$00,$00,$3F,$FF,$FC,$3C ; $32FC
        db      $50,$00,$0F,$FF,$FF,$C1,$40,$00,$00,$FF,$FC,$15,$00,$00,$05,$00 ; $330C
        db      $01,$50,$00,$00,$00,$55,$55,$00,$00,$03,$00,$00,$01,$05,$40,$A0 ; $331C
        db      $A0,$A0,$40,$01,$00,$00,$01,$05,$40,$40,$40,$40,$40,$03,$00,$00 ; $332C
        db      $01,$05,$E0,$20,$E0,$80,$E0,$03,$00,$00,$01,$05,$E0,$20,$60,$20 ; $333C
        db      $E0,$03,$00,$00,$01,$05,$A0,$A0,$E0,$20,$20,$03,$00,$00,$01,$05 ; $334C
        db      $E0,$80,$C0,$20,$C0,$03,$00,$00,$01,$05,$E0,$80,$E0,$A0,$E0,$03 ; $335C
        db      $00,$00,$01,$05,$E0,$20,$40,$40,$40,$03,$00,$00,$01,$05,$E0,$A0 ; $336C
        db      $E0,$A0,$E0,$03,$00,$00,$01,$05,$E0,$A0,$E0,$20,$E0,$03,$50,$47 ; $337C
        db      $47,$03,$4F,$47,$47,$03,$4E,$47,$47,$03,$4D,$47,$47,$03,$4C,$47 ; $338C
        db      $47,$03,$4B,$47,$47,$03,$4A,$47,$47,$03,$49,$47,$47,$03,$48,$47 ; $339C
        db      $47,$01,$47,$01,$2E                                             ; $33AC
TERSE_COLON_33B1:
        rst     $08                             ; $33B1 colon entry
        dw      $1F0E                ; $33B2 execution token $1F0E
        dw      $1D9B                ; $33B4 execution token $1D9B
        dw      XT_plus                 ; $33B6 _plus
        dw      $1D24                ; $33B8 execution token $1D24
        dw      XT_RETURN               ; $33BA _RETURN
TERSE_COLON_33BC:
        rst     $08                             ; $33BC colon entry
        dw      XT_LITbyte              ; $33BD _LITbyte
        db      $0F                  ; $33BF inline byte
        dw      $1E7D                ; $33C0 execution token $1E7D
        dw      $1E9B                ; $33C2 execution token $1E9B
        dw      XT_LIT                  ; $33C4 _LIT
        dw      $FF70                ; $33C6 inline word
        dw      XT_LITbyte              ; $33C8 _LITbyte
        db      $32                  ; $33CA inline byte
        dw      $1D54                ; $33CB execution token $1D54
        dw      XT_LIT                  ; $33CD _LIT
        dw      $F6EA                ; $33CF inline word
        dw      XT_BZERO                ; $33D1 _BZERO
L33D3:
        dw      XT_LIT                  ; $33D3 _LIT
        dw      $F6EA                ; $33D5 inline word
        dw      XT_Bat                  ; $33D7 _Bat
        dw      XT_DUP                  ; $33D9 _DUP
        dw      XT_LIT                  ; $33DB _LIT
        dw      $3389                ; $33DD inline word
        dw      XT_plus                 ; $33DF _plus
        dw      $1E8E                ; $33E1 execution token $1E8E
        dw      NATIVE_2083          ; $33E3 NATIVE_2083
        dw      XT_LITbyte              ; $33E5 _LITbyte
        db      $0A                  ; $33E7 inline byte
        dw      TERSE_COLON_33B1     ; $33E8 TERSE_COLON_33B1
        dw      XT_LITbyte              ; $33EA _LITbyte
        db      $24                  ; $33EC inline byte
        dw      XT_less                 ; $33ED _less
        dw      XT_0BRANCH              ; $33EF _0BRANCH
        dw      L3407                ; $33F1 branch target
        dw      XT_LITbyte              ; $33F3 _LITbyte
        db      $08                  ; $33F5 inline byte
        dw      TERSE_COLON_33B1     ; $33F6 TERSE_COLON_33B1
        dw      XT_LIT                  ; $33F8 _LIT
        dw      $33AF                ; $33FA inline word
        dw      $1E8E                ; $33FC execution token $1E8E
        dw      NATIVE_2083          ; $33FE NATIVE_2083
        dw      XT_LITbyte              ; $3400 _LITbyte
        db      $08                  ; $3402 inline byte
        dw      TERSE_COLON_33B1     ; $3403 TERSE_COLON_33B1
        dw      NATIVE_2083          ; $3405 NATIVE_2083
L3407:
        dw      XT_LITbyte              ; $3407 _LITbyte
        db      $06                  ; $3409 inline byte
        dw      TERSE_COLON_33B1     ; $340A TERSE_COLON_33B1
        dw      XT_LITbyte              ; $340C _LITbyte
        db      $04                  ; $340E inline byte
        dw      XT_LIT                  ; $340F _LIT
        dw      $F6EA                ; $3411 inline word
        dw      XT_plusBbang            ; $3413 _plusBbang
        dw      XT_LIT                  ; $3415 _LIT
        dw      $F6EA                ; $3417 inline word
        dw      XT_Bat                  ; $3419 _Bat
        dw      XT_LITbyte              ; $341B _LITbyte
        db      $27                  ; $341D inline byte
        dw      XT_gt                   ; $341E _gt
        dw      XT_0BRANCH              ; $3420 _0BRANCH
        dw      L33D3                ; $3422 branch target
        dw      XT_RETURN               ; $3424 _RETURN
        db      $06,$00,$00,$01,$0A,$78,$FC,$CC,$0C,$3C,$38,$30,$30,$00,$30,$06 ; $3426
        db      $00,$00,$01,$0A,$E4,$A4,$EC,$18,$30,$60,$C0,$DC,$94,$9C,$08,$00 ; $3436
        db      $00,$01,$0A,$0F,$09,$1A,$14,$28,$30,$60,$00,$C0,$C0,$02,$00,$02 ; $3446
        db      $01,$05,$C0,$C0,$00,$C0,$C0,$02,$00,$FF,$01,$03,$C0,$C0,$80,$05 ; $3456
        db      $00,$07,$01,$03,$D8,$D8,$D8,$06,$00,$00,$01,$0A,$60,$90,$90,$90 ; $3466
        db      $60,$60,$94,$98,$9C,$74,$02,$00,$07,$01,$03,$40,$C0,$80,$05,$00 ; $3476
        db      $00,$01,$0A,$00,$00,$00,$F8,$00,$F8,$00,$00,$00,$00,$02,$00,$FF ; $3486
        db      $01,$07,$C0,$C0,$00,$C0,$C0,$80,$80                         ; $3496
; PPQ selection uses this application-local copy of TERSE -DUP.  Zero is left
; once; a nonzero value is left twice. ( x -- x [x] )
QUESTION_MINUS_DUP:
        pop     hl                          ; $349F
        ld      a,l                         ; $34A0
        or      h                           ; $34A1
        jr      z,L34A5                     ; $34A2
        push    hl                          ; $34A4
L34A5:
        push    hl                          ; $34A5
        jp      (iy)                        ; $34A6
TERSE_COLON_34A8:
        rst     $08                             ; $34A8 colon entry
        dw      XT_LIT                  ; $34A9 _LIT
        dw      $E147                ; $34AB inline word
        dw      XT_Bat                  ; $34AD _Bat
        dw      XT_RETURN               ; $34AF _RETURN
TERSE_COLON_34B1:
        rst     $08                             ; $34B1 colon entry
        dw      TERSE_COLON_2645     ; $34B2 TERSE_COLON_2645
        dw      XT_LITbyte              ; $34B4 _LITbyte
        db      $15                  ; $34B6 inline byte
        dw      $1F4B                ; $34B7 execution token $1F4B
        dw      XT_LIT                  ; $34B9 _LIT
        dw      $2D95                ; $34BB inline word
        dw      TERSE_COLON_2D7C     ; $34BD TERSE_COLON_2D7C
        dw      $2C64                ; $34BF execution token $2C64
        dw      XT_RETURN               ; $34C1 _RETURN
TERSE_COLON_34C3:
        rst     $08                             ; $34C3 colon entry
        dw      XT_LIT                  ; $34C4 _LIT
        dw      $F758                ; $34C6 inline word
        dw      XT_LITbyte              ; $34C8 _LITbyte
        db      $10                  ; $34CA inline byte
        dw      XT_0                    ; $34CB _0
        dw      XT_DO                   ; $34CD _DO
        dw      XT_DUP                  ; $34CF _DUP
        dw      XT_DUP                  ; $34D1 _DUP
        dw      XT_I                    ; $34D3 _I
        dw      XT_ARRAY                ; $34D5 _ARRAY
        dw      $FD89                ; $34D7 inline word
        dw      XT_bang                 ; $34D9 _bang
        dw      XT_LITbyte              ; $34DB _LITbyte
        db      $44                  ; $34DD inline byte
        dw      XT_plus                 ; $34DE _plus
        dw      XT_I                    ; $34E0 _I
        dw      XT_Bbang                ; $34E2 _Bbang
        dw      XT_LITbyte              ; $34E4 _LITbyte
        db      $51                  ; $34E6 inline byte
        dw      XT_plus                 ; $34E7 _plus
        dw      XT_LOOP                 ; $34E9 _LOOP
        dw      XT_DROP                 ; $34EB _DROP
        dw      XT_LIT                  ; $34ED _LIT
        dw      $FD87                ; $34EF inline word
        dw      XT_BZERO                ; $34F1 _BZERO
        dw      XT_LIT                  ; $34F3 _LIT
        dw      $FD88                ; $34F5 inline word
        dw      XT_BZERO                ; $34F7 _BZERO
        dw      XT_RETURN               ; $34F9 _RETURN
TERSE_COLON_34FB:
        rst     $08                             ; $34FB colon entry
        dw      XT_LIT                  ; $34FC _LIT
        dw      $F726                ; $34FE inline word
        dw      XT_Bat                  ; $3500 _Bat
        dw      XT_LITbyte              ; $3502 _LITbyte
        db      $04                  ; $3504 inline byte
        dw      XT_less                 ; $3505 _less
        dw      XT_RETURN               ; $3507 _RETURN
        db      $CF,$12,$01,$03,$2A,$01,$6F,$02,$B8,$02,$25,$01,$F4,$F6,$4C,$01 ; $3509
        db      $B8,$02,$09,$01,$26,$F7,$53,$01,$CF,$01,$EA,$03,$2D,$35,$08,$16 ; $3519
        db      $E2,$03,$52,$35,$12,$01,$44,$5A,$01,$53,$01,$36,$01,$12,$01,$08 ; $3529
        db      $08,$02,$EA,$03,$47,$35,$09,$01,$88,$FD,$E2,$03,$50,$35,$12,$01 ; $3539
        db      $08,$60,$01,$09,$01,$87,$FD,$99,$1A,$8A,$02,$FB,$34,$E3,$01,$EA ; $3549
        db      $03,$62,$35,$09,$01,$FA,$F6,$3A,$05,$FD,$00,$CF,$09,$01,$FB,$F6 ; $3559
        db      $4C,$01,$FB,$34,$EA,$03,$77,$35,$08,$16,$E2,$03,$9D,$35,$12,$01 ; $3569
        db      $44,$5A,$01,$53,$01,$36,$01,$12,$01,$08,$08,$02,$EA,$03,$91,$35 ; $3579
        db      $09,$01,$88,$FD,$E2,$03,$95,$35,$09,$01,$87,$FD,$99,$1A,$09,$01 ; $3589
        db      $FA,$F6,$3A,$05,$FD,$00,$CF,$12,$01,$4A,$3C,$1D,$93,$2C,$DC,$1E ; $3599
        db      $D4,$2C,$EA,$03,$BF,$35,$09,$01,$41,$E1,$09,$01,$23,$F7,$09,$01 ; $35A9
        db      $8C,$00,$E2,$03,$CB,$35,$09,$01,$40,$E1,$09,$01,$22,$F7,$09,$01 ; $35B9
        db      $67,$FF,$24,$1D,$53,$01,$36,$01,$12,$01,$10,$1C,$02,$EA,$03,$DF ; $35C9
        db      $35,$43,$01,$12,$01,$10,$25,$01,$88,$31,$4C,$01,$8E,$1E,$0C,$1E ; $35D9
        db      $12,$01,$4E,$3C,$1D,$09,$01,$FD,$F6,$36,$01,$B4,$1C,$46,$01,$53 ; $35E9
        db      $01,$2A,$01,$12,$01,$03,$F1,$02,$12,$01,$02,$6D,$21,$12,$01,$02 ; $35F9
        db      $CA,$02,$32,$05,$86,$21,$12,$01,$0D,$7D,$1E,$83,$20,$93,$2C,$FD ; $3609
        db      $00,$CF,$30,$01,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00 ; $3619
        db      $2E,$2B,$12,$01,$10,$A8,$2B,$09,$01,$88,$00,$35,$2B,$12,$01,$0F ; $3629
        db      $12,$01,$00,$2E,$2B,$12,$01,$40,$F2,$2A,$09,$01,$80,$00,$12,$01 ; $3639
        db      $40,$12,$01,$60,$71,$2B,$12,$01,$03,$12,$01,$02,$12,$01,$03,$09 ; $3649
        db      $01,$F9,$FF,$12,$01,$00,$12,$01,$60,$09,$01,$F9,$FF,$BB,$2B,$12 ; $3659
        db      $01,$10,$A8,$2B,$8C,$2B,$FD,$00,$CF,$30,$01,$09,$01,$3D,$FD,$EF ; $3669
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$16,$A8,$2B,$09,$01 ; $3679
        db      $88,$00,$35,$2B,$12,$01,$0F,$12,$01,$00,$2E,$2B,$12,$01,$40,$F2 ; $3689
        db      $2A,$09,$01,$80,$00,$12,$01,$40,$12,$01,$60,$71,$2B,$12,$01,$03 ; $3699
        db      $12,$01,$02,$12,$01,$03,$09,$01,$F9,$FF,$12,$01,$00,$12,$01,$60 ; $36A9
        db      $09,$01,$F9,$FF,$BB,$2B,$12,$01,$10,$A8,$2B,$8C,$2B,$FD,$00     ; $36B9
TERSE_COLON_36C8:
        rst     $08                             ; $36C8 colon entry
        dw      XT_LIT                  ; $36C9 _LIT
        dw      $FD83                ; $36CB inline word
        dw      XT_BONE                 ; $36CD _BONE
        dw      $361A                ; $36CF execution token $361A
        dw      $3671                ; $36D1 execution token $3671
        dw      XT_RETURN               ; $36D3 _RETURN
TERSE_COLON_36D5:
        rst     $08                             ; $36D5 colon entry
        dw      $1EA8                ; $36D6 execution token $1EA8
        dw      XT_LITbyte              ; $36D8 _LITbyte
        db      $0D                  ; $36DA inline byte
        dw      $1E5C                ; $36DB execution token $1E5C
        dw      XT_LIT                  ; $36DD _LIT
        dw      $FF64                ; $36DF inline word
        dw      $1D24                ; $36E1 execution token $1D24
        dw      XT_LIT                  ; $36E3 _LIT
        dw      $FF9C                ; $36E5 inline word
        dw      $1D3C                ; $36E7 execution token $1D3C
        dw      XT_LIT                  ; $36E9 _LIT
        dw      $009C                ; $36EB inline word
        dw      $1C5F                ; $36ED execution token $1C5F
        dw      XT_LIT                  ; $36EF _LIT
        dw      $FF9C                ; $36F1 inline word
        dw      $1C71                ; $36F3 execution token $1C71
        dw      $2630                ; $36F5 execution token $2630
        dw      XT_LIT                  ; $36F7 _LIT
        dw      $009C                ; $36F9 inline word
        dw      XT_DUP                  ; $36FB _DUP
        dw      $1D24                ; $36FD execution token $1D24
        dw      $1C5F                ; $36FF execution token $1C5F
        dw      XT_LITbyte              ; $3701 _LITbyte
        db      $2D                  ; $3703 inline byte
        dw      $1C71                ; $3704 execution token $1C71
        dw      $2630                ; $3706 execution token $2630
        dw      XT_LITbyte              ; $3708 _LITbyte
        db      $2E                  ; $370A inline byte
        dw      $1D3C                ; $370B execution token $1D3C
        dw      XT_LITbyte              ; $370D _LITbyte
        db      $2E                  ; $370F inline byte
        dw      $1C71                ; $3710 execution token $1C71
        dw      XT_LIT                  ; $3712 _LIT
        dw      $FF64                ; $3714 inline word
        dw      $1C5F                ; $3716 execution token $1C5F
        dw      $2630                ; $3718 execution token $2630
        dw      XT_LIT                  ; $371A _LIT
        dw      $FF63                ; $371C inline word
        dw      $1D24                ; $371E execution token $1D24
        dw      XT_LIT                  ; $3720 _LIT
        dw      $FF63                ; $3722 inline word
        dw      $1C5F                ; $3724 execution token $1C5F
        dw      XT_LIT                  ; $3726 _LIT
        dw      $FF9C                ; $3728 inline word
        dw      $1C71                ; $372A execution token $1C71
        dw      $2630                ; $372C execution token $2630
        dw      TERSE_COLON_2C93     ; $372E TERSE_COLON_2C93
        dw      XT_RETURN               ; $3730 _RETURN
        db      $07,$00,$03,$0A,$0F,$00,$00,$3F,$C0,$00,$7F,$E0,$00,$FF,$F0,$00 ; $3732
        db      $FF,$F0,$00,$FF,$F0,$00,$FF,$F0,$00,$7F,$E0,$00,$3F,$C0,$00,$0F ; $3742
        db      $00,$00,$06,$00,$03,$0A,$1E,$00,$00,$7F,$80,$00,$1F,$C0,$00,$0F ; $3752
        db      $E0,$00,$07,$E0,$00,$07,$E0,$00,$0F,$E0,$00,$1F,$C0,$00,$7F,$80 ; $3762
        db      $00,$1E,$00,$00,$06,$00,$03,$0A,$1E,$00,$00,$7F,$80,$00,$FF,$C0 ; $3772
        db      $00,$1F,$E0,$00,$03,$E0,$00,$03,$E0,$00,$1F,$E0,$00,$FF,$C0,$00 ; $3782
        db      $7F,$80,$00,$1E,$00,$00,$03,$00,$81,$04,$54,$37,$03,$76,$37,$03 ; $3792
        db      $32,$37,$00,$9B,$37,$20,$F8,$08,$20,$1E,$2A,$3B,$00,$40,$00,$00 ; $37A2
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$05,$50,$00,$00 ; $37B2
        db      $00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55,$05,$55,$55,$55 ; $37C2
        db      $55,$55,$55,$55,$05,$2A,$AA,$AA,$AA,$AA,$AA,$AA,$05,$80,$00,$00 ; $37D2
        db      $00,$00,$00,$00,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $37E2
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $37F2
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $3802
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $3812
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $3822
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $3832
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$8F,$FF,$FF ; $3842
        db      $FF,$FF,$FF,$FF,$05,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$05,$80,$00,$00 ; $3852
        db      $00,$00,$00,$00,$05,$2A,$AA,$AA,$AA,$AA,$AA,$AA,$05,$55,$55,$55 ; $3862
        db      $55,$55,$55,$55,$05,$55,$55,$55,$55,$55,$55,$55,$05,$00,$00,$00 ; $3872
        db      $00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00 ; $3882
        db      $00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $3892
        db      $00,$00,$00,$00,$55,$50,$00,$00,$00,$00,$00,$00,$1A,$00,$0D,$0A ; $38A2
        db      $1F,$20,$30,$15,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54 ; $38B2
        db      $55,$00,$01,$41,$54,$10,$00,$14,$10,$55,$55,$41,$55,$55,$05,$50 ; $38C2
        db      $41,$54,$10,$55,$04,$10,$55,$55,$01,$55,$55,$05,$50,$41,$54,$10 ; $38D2
        db      $55,$04,$10,$55,$55,$41,$55,$55,$05,$50,$41,$54,$10,$55,$04,$10 ; $38E2
        db      $55,$55,$41,$55,$55,$00,$01,$41,$54,$10,$00,$14,$10,$55,$55,$41 ; $38F2
        db      $55,$55,$05,$55,$41,$54,$10,$55,$54,$10,$55,$55,$41,$55,$55,$05 ; $3902
        db      $55,$41,$54,$10,$55,$54,$10,$55,$55,$41,$55,$55,$05,$55,$50,$00 ; $3912
        db      $50,$55,$54,$10,$00,$55,$41,$55,$15,$55,$55,$55,$55,$55,$55,$55 ; $3922
        db      $55,$55,$55,$55,$54,$1A,$00,$0D,$0A,$1F,$20,$30,$15,$55,$55,$55 ; $3932
        db      $55,$55,$55,$55,$55,$55,$55,$55,$54,$55,$00,$01,$41,$54,$10,$00 ; $3942
        db      $14,$10,$55,$54,$00,$55,$55,$05,$50,$41,$54,$10,$55,$04,$10,$55 ; $3952
        db      $50,$54,$15,$55,$05,$50,$41,$54,$10,$55,$04,$10,$55,$50,$54,$15 ; $3962
        db      $55,$05,$50,$41,$54,$10,$55,$04,$10,$55,$55,$54,$15,$55,$00,$01 ; $3972
        db      $41,$54,$10,$00,$14,$10,$55,$54,$00,$55,$55,$05,$55,$41,$54,$10 ; $3982
        db      $55,$54,$10,$55,$50,$55,$55,$55,$05,$55,$41,$54,$10,$55,$54,$10 ; $3992
        db      $55,$50,$55,$55,$55,$05,$55,$50,$00,$50,$55,$54,$10,$00,$50,$00 ; $39A2
        db      $15,$15,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$12,$FF ; $39B2
        db      $0A,$0E,$1E,$2C,$3D,$55,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00 ; $39C2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55 ; $39D2
        db      $55,$54,$00,$05,$55,$55,$55,$55,$55,$55,$55,$54,$00,$05,$55,$55 ; $39E2
        db      $55,$55,$55,$55,$55,$54,$00,$05,$55,$55,$55,$55,$55,$55,$55,$54 ; $39F2
        db      $00,$05,$55,$55,$55,$55,$55,$55,$55,$54,$00,$05,$55,$55,$55,$55 ; $3A02
        db      $55,$55,$55,$54,$00,$05,$55,$55,$55,$55,$55,$55,$55,$54,$00,$05 ; $3A12
        db      $55,$55,$55,$55,$55,$55,$55,$54,$00,$05,$55,$55,$55,$55,$55,$55 ; $3A22
        db      $55,$54,$00,$05,$55,$55,$55,$55,$55,$55,$55,$54,$00,$05,$40,$00 ; $3A32
        db      $00,$00,$00,$00,$00,$54,$00,$05,$40,$00,$00,$00,$00,$00,$00,$54 ; $3A42
        db      $00,$1C,$14,$0D,$15,$AF,$11,$01,$00,$00,$00,$00,$00,$00,$05,$40 ; $3A52
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$14,$00,$00,$00 ; $3A62
        db      $00,$00,$00,$00,$00,$00,$00,$05,$00,$01,$40,$00,$00,$00,$00,$00 ; $3A72
        db      $00,$00,$00,$00,$50,$00,$00,$14,$04,$00,$00,$00,$80,$00,$00,$00 ; $3A82
        db      $05,$01,$55,$55,$01,$41,$40,$00,$00,$20,$00,$00,$00,$50,$14,$00 ; $3A92
        db      $00,$50,$14,$10,$00,$00,$08,$00,$00,$05,$00,$45,$59,$95,$44,$01 ; $3AA2
        db      $00,$03,$C0,$02,$00,$00,$50,$01,$14,$15,$50,$51,$00,$10,$01,$40 ; $3AB2
        db      $00,$83,$45,$00,$04,$53,$C5,$4F,$14,$40,$01,$41,$40,$03,$F3,$D0 ; $3AC2
        db      $00,$12,$4C,$31,$30,$C6,$10,$10,$00,$34,$0F,$01,$70,$00,$06,$4C ; $3AD2
        db      $31,$30,$C6,$40,$00,$10,$0F,$1C,$FC,$70,$00,$25,$8C,$31,$30,$C9 ; $3AE2
        db      $60,$54,$17,$FF,$1F,$C0,$74,$00,$15,$60,$01,$00,$25,$50,$10,$41 ; $3AF2
        db      $40,$0F,$3F,$34,$00,$15,$1F,$F4,$7F,$D1,$51,$00,$17,$FD,$07,$F0 ; $3B02
        db      $30,$00,$15,$65,$55,$55,$65,$51,$01,$01,$40,$01,$FD,$C0,$01,$25 ; $3B12
        db      $55,$58,$95,$55,$61,$05,$17,$F4,$00,$57,$05,$05,$25,$05,$55,$55 ; $3B22
        db      $41,$62,$56,$05,$50,$00,$00,$09,$16,$05,$40,$00,$00,$05,$40,$58 ; $3B32
        db      $00,$00,$00,$00,$02,$58,$09,$50,$2A,$A0,$15,$80,$20,$00,$00,$00 ; $3B42
        db      $00,$02,$60,$02,$56,$00,$02,$56,$00,$00,$00,$00,$00,$00,$00,$80 ; $3B52
        db      $00,$95,$55,$55,$58,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A ; $3B62
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AF,$E8,$00,$00 ; $3B72
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0A,$FF,$FE,$80,$00,$00,$00,$00 ; $3B82
        db      $00,$00,$00,$00,$00,$AF,$FF,$FF,$E8,$38,$00,$00,$00,$C0,$00,$00 ; $3B92
        db      $00,$0A,$FE,$AA,$AA,$FE,$8E,$B0,$00,$00,$30,$00,$00,$00,$AF,$EB ; $3BA2
        db      $FF,$FF,$AF,$E8,$20,$00,$00,$0C,$00,$00,$0A,$FF,$BF,$FF,$FF,$FB ; $3BB2
        db      $FE,$30,$03,$C0,$03,$00,$00,$AF,$FE,$FC,$3F,$F0,$FE,$FF,$20,$02 ; $3BC2
        db      $80,$00,$C3,$8A,$FF,$FB,$F3,$CF,$CF,$3F,$BF,$32,$82,$80,$03,$F3 ; $3BD2
        db      $E3,$FF,$EF,$CC,$33,$30,$CF,$E3,$23,$03,$38,$0F,$42,$B0,$3F,$3F ; $3BE2
        db      $CC,$33,$30,$CF,$F3,$30,$20,$0F,$2D,$FC,$B0,$03,$FF,$CC,$33,$30 ; $3BF2
        db      $CF,$FC,$A8,$2B,$FF,$2F,$C0,$B8,$00,$3F,$F0,$03,$00,$3F,$F0,$2C ; $3C02
        db      $82,$83,$0F,$3F,$38,$00,$3F,$EF,$FB,$BF,$EF,$F3,$30,$2B,$FE,$0B ; $3C12
        db      $F0,$30,$00,$3F,$FA,$AF,$EA,$BF,$F3,$03,$02,$83,$02,$FE,$C0,$03 ; $3C22
        db      $3F,$FF,$FC,$FF,$FF,$F3,$0F,$2B,$F8,$00,$AB,$0F,$0F,$3F,$0F,$FF ; $3C32
        db      $FF,$C3,$F3,$FF,$0A,$A0,$00,$00,$0F,$3F,$0F,$C0,$00,$00,$0F,$C0 ; $3C42
        db      $FC,$00,$00,$00,$00,$03,$FC,$0F,$F0,$2A,$A0,$3F,$C0,$30,$00,$00 ; $3C52
        db      $00,$00,$03,$F0,$03,$FF,$00,$03,$FF,$00,$00,$00,$00,$00,$00,$00 ; $3C62
        db      $C0,$00,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$1A,$00,$0D,$07,$1B,$20 ; $3C72
        db      $30,$15,$01,$01,$05,$54,$05,$40,$55,$41,$01,$50,$10,$10,$40,$41 ; $3C82
        db      $01,$04,$00,$10,$10,$04,$01,$04,$04,$14,$10,$40,$41,$01,$04,$00 ; $3C92
        db      $10,$00,$04,$01,$04,$04,$14,$10,$40,$41,$01,$05,$54,$05,$40,$04 ; $3CA2
        db      $01,$04,$04,$11,$10,$40,$41,$01,$04,$00,$00,$10,$04,$01,$04,$04 ; $3CB2
        db      $10,$50,$41,$41,$01,$04,$00,$10,$10,$04,$01,$04,$04,$10,$50,$15 ; $3CC2
        db      $40,$54,$05,$54,$05,$40,$04,$01,$01,$50,$10,$10                 ; $3CD2
TERSE_COLON_3CDE:
        rst     $08                             ; $3CDE colon entry
        dw      XT_LIT                  ; $3CDF _LIT
        dw      $37A7                ; $3CE1 inline word
        dw      $1CB4                ; $3CE3 execution token $1CB4
        dw      $1E0C                ; $3CE5 execution token $1E0C
        dw      $1ECF                ; $3CE7 execution token $1ECF
        dw      $1E0C                ; $3CE9 execution token $1E0C
        dw      $1EF6                ; $3CEB execution token $1EF6
        dw      XT_RETURN               ; $3CED _RETURN
TERSE_COLON_3CEF:
        rst     $08                             ; $3CEF colon entry
        dw      $1F4B                ; $3CF0 execution token $1F4B
        dw      XT_LITbyte              ; $3CF2 _LITbyte
        db      $0B                  ; $3CF4 inline byte
        dw      $1BDF                ; $3CF5 execution token $1BDF
        dw      XT_RETURN               ; $3CF7 _RETURN
TERSE_COLON_3CF9:
        rst     $08                             ; $3CF9 colon entry
        dw      XT_LIT                  ; $3CFA _LIT
        dw      $F6E2                ; $3CFC inline word
        dw      XT_at                   ; $3CFE _at
        dw      XT_plus                 ; $3D00 _plus
        dw      XT_at                   ; $3D02 _at
        dw      XT_LIT                  ; $3D04 _LIT
        dw      $F6DF                ; $3D06 inline word
        dw      XT_Bat                  ; $3D08 _Bat
        dw      XT_2splat               ; $3D0A _2splat
        dw      XT_plus                 ; $3D0C _plus
        dw      XT_at                   ; $3D0E _at
        dw      XT_LIT                  ; $3D10 _LIT
        dw      $F6E5                ; $3D12 inline word
        dw      XT_Bat                  ; $3D14 _Bat
        dw      XT_plus                 ; $3D16 _plus
        dw      XT_Bat                  ; $3D18 _Bat
        dw      XT_RETURN               ; $3D1A _RETURN
TERSE_COLON_3D1C:
        rst     $08                             ; $3D1C colon entry
        dw      XT_LITbyte              ; $3D1D _LITbyte
        db      $03                  ; $3D1F inline byte
        dw      TERSE_COLON_3CF9     ; $3D20 TERSE_COLON_3CF9
        dw      XT_LITbyte              ; $3D22 _LITbyte
        db      $05                  ; $3D24 inline byte
        dw      TERSE_COLON_3CF9     ; $3D25 TERSE_COLON_3CF9
        dw      XT_LITbyte              ; $3D27 _LITbyte
        db      $07                  ; $3D29 inline byte
        dw      TERSE_COLON_3CF9     ; $3D2A TERSE_COLON_3CF9
        dw      TERSE_COLON_2B71     ; $3D2C TERSE_COLON_2B71
        dw      XT_RETURN               ; $3D2E _RETURN
TERSE_COLON_3D30:
        rst     $08                             ; $3D30 colon entry
        dw      XT_LIT                  ; $3D31 _LIT
        dw      $F6E0                ; $3D33 inline word
        dw      XT_at                   ; $3D35 _at
        dw      XT_plus                 ; $3D37 _plus
        dw      XT_at                   ; $3D39 _at
        dw      XT_LIT                  ; $3D3B _LIT
        dw      $F6DE                ; $3D3D inline word
        dw      XT_Bat                  ; $3D3F _Bat
        dw      XT_2splat               ; $3D41 _2splat
        dw      XT_plus                 ; $3D43 _plus
        dw      XT_at                   ; $3D45 _at
        dw      XT_LIT                  ; $3D47 _LIT
        dw      $F6E4                ; $3D49 inline word
        dw      XT_Bat                  ; $3D4B _Bat
        dw      XT_plus                 ; $3D4D _plus
        dw      XT_Bat                  ; $3D4F _Bat
        dw      XT_RETURN               ; $3D51 _RETURN
TERSE_COLON_3D53:
        rst     $08                             ; $3D53 colon entry
        dw      XT_LITbyte              ; $3D54 _LITbyte
        db      $03                  ; $3D56 inline byte
        dw      TERSE_COLON_3D30     ; $3D57 TERSE_COLON_3D30
        dw      XT_LITbyte              ; $3D59 _LITbyte
        db      $05                  ; $3D5B inline byte
        dw      TERSE_COLON_3D30     ; $3D5C TERSE_COLON_3D30
        dw      XT_LITbyte              ; $3D5E _LITbyte
        db      $07                  ; $3D60 inline byte
        dw      TERSE_COLON_3D30     ; $3D61 TERSE_COLON_3D30
        dw      TERSE_COLON_2B71     ; $3D63 TERSE_COLON_2B71
        dw      XT_RETURN               ; $3D65 _RETURN
        db      $CF,$09,$01,$E2,$F6,$61,$05,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$09 ; $3D67
        db      $01,$DD,$F6,$3F,$05,$09,$01,$E2,$F6,$4C,$01,$12,$01,$09,$5A,$01 ; $3D77
        db      $53,$01,$F2,$2A,$09,$01,$E2,$F6,$4C,$01,$95,$01,$36,$01,$53,$01 ; $3D87
        db      $46,$01,$95,$01,$53,$01,$2E,$2B,$09,$01,$DF,$F6,$3F,$05,$09,$01 ; $3D97
        db      $E5,$F6,$3F,$05,$1C,$3D,$12,$01,$04,$A8,$2B,$09,$01,$E5,$F6,$36 ; $3DA7
        db      $01,$49,$05,$53,$01,$12,$01,$0F,$1C,$02,$EA,$03,$AB,$3D,$09,$01 ; $3DB7
        db      $DF,$F6,$36,$01,$49,$05,$53,$01,$09,$01,$E2,$F6,$4C,$01,$53,$01 ; $3DC7
        db      $CF,$01,$EA,$03,$A5,$3D,$09,$01,$DD,$F6,$3A,$05,$8C,$2B,$FD,$00 ; $3DD7
        db      $CF,$09,$01,$E0,$F6,$61,$05,$2A,$01,$09,$01,$3D,$FD,$EF,$2B,$09 ; $3DE7
        db      $01,$DC,$F6,$3F,$05,$12,$01,$00,$12,$01,$00,$2E,$2B,$30,$01,$A8 ; $3DF7
        db      $2B,$09,$01,$E0,$F6,$4C,$01,$12,$01,$09,$5A,$01,$53,$01,$F2,$2A ; $3E07
        db      $09,$01,$E0,$F6,$4C,$01,$95,$01,$36,$01,$53,$01,$46,$01,$95,$01 ; $3E17
        db      $53,$01,$2E,$2B,$09,$01,$DE,$F6,$3F,$05,$09,$01,$E4,$F6,$3F,$05 ; $3E27
        db      $53,$3D,$12,$01,$04,$A8,$2B,$09,$01,$E4,$F6,$36,$01,$49,$05,$53 ; $3E37
        db      $01,$12,$01,$0F,$1C,$02,$EA,$03,$37,$3E,$09,$01,$DE,$F6,$36,$01 ; $3E47
        db      $49,$05,$53,$01,$09,$01,$E0,$F6,$4C,$01,$53,$01,$CF,$01,$EA,$03 ; $3E57
        db      $31,$3E,$09,$01,$DC,$F6,$3A,$05,$8C,$2B,$FD,$00                 ; $3E67
TERSE_COLON_3E73:
        rst     $08                             ; $3E73 colon entry
        dw      XT_0                    ; $3E74 _0
        dw      XT_0                    ; $3E76 _0
        dw      XT_LITbyte              ; $3E78 _LITbyte
        db      $03                  ; $3E7A inline byte
        dw      XT_0                    ; $3E7B _0
        dw      XT_0                    ; $3E7D _0
        dw      XT_LIT                  ; $3E7F _LIT
        dw      $00FF                ; $3E81 inline word
        dw      XT_LIT                  ; $3E83 _LIT
        dw      $FFF9                ; $3E85 inline word
        dw      NATIVE_2BBB          ; $3E87 NATIVE_2BBB
        dw      XT_RETURN               ; $3E89 _RETURN
        db      $CF,$12,$01,$4A,$F2,$2A,$09,$01,$FE,$00,$01,$2B,$09,$01,$88,$00 ; $3E8B
        db      $35,$2B,$09,$01,$87,$00,$09,$01,$88,$00,$09,$01,$89,$00,$71,$2B ; $3E9B
        db      $FD,$00,$CF,$09,$01,$80,$00,$12,$01,$40,$12,$01,$20,$71,$2B,$12 ; $3EAB
        db      $01,$0F,$09,$01,$FF,$00,$2E,$2B,$09,$01,$80,$00,$35,$2B,$12,$01 ; $3EBB
        db      $30,$F2,$2A,$12,$01,$00,$01,$2B,$30,$01,$12,$01,$03,$12,$01,$03 ; $3ECB
        db      $30,$01,$12,$01,$00,$09,$01,$FF,$00,$09,$01,$F9,$FF,$BB,$2B,$FD ; $3EDB
        db      $00,$CF,$09,$01,$80,$00,$12,$01,$40,$12,$01,$60,$71,$2B,$12,$01 ; $3EEB
        db      $30,$F2,$2A,$12,$01,$0F,$12,$01,$00,$2E,$2B,$30,$01,$12,$01,$02 ; $3EFB
        db      $12,$01,$03,$09,$01,$FC,$FF,$2A,$01,$09,$01,$FF,$00,$09,$01,$F9 ; $3F0B
        db      $FF,$BB,$2B,$FD,$00                                             ; $3F1B
TERSE_COLON_3F20:
        rst     $08                             ; $3F20 colon entry
        dw      XT_0                    ; $3F21 _0
        dw      XT_0                    ; $3F23 _0
        dw      XT_LITbyte              ; $3F25 _LITbyte
        db      $03                  ; $3F27 inline byte
        dw      XT_0                    ; $3F28 _0
        dw      XT_0                    ; $3F2A _0
        dw      XT_LIT                  ; $3F2C _LIT
        dw      $00FF                ; $3F2E inline word
        dw      XT_LIT                  ; $3F30 _LIT
        dw      $FFEB                ; $3F32 inline word
        dw      NATIVE_2BBB          ; $3F34 NATIVE_2BBB
        dw      XT_RETURN               ; $3F36 _RETURN
        db      $CF,$12,$01,$00,$12,$01,$0F,$2E,$2B,$12,$01,$30,$F2,$2A,$09,$01 ; $3F38
        db      $80,$00,$09,$01,$80,$00,$09,$01,$80,$00,$71,$2B,$FD,$00,$CF,$09 ; $3F48
        db      $01,$80,$00,$12,$01,$40,$12,$01,$60,$71,$2B,$12,$01,$30,$F2,$2A ; $3F58
        db      $09,$01,$88,$00,$35,$2B,$12,$01,$0F,$12,$01,$0F,$2E,$2B,$FD,$00 ; $3F68
TERSE_COLON_3F78:
        rst     $08                             ; $3F78 colon entry
        dw      XT_LIT                  ; $3F79 _LIT
        dw      $00A0                ; $3F7B inline word
        dw      NATIVE_2B35          ; $3F7D NATIVE_2B35
        dw      XT_LITbyte              ; $3F7F _LITbyte
        db      $0F                  ; $3F81 inline byte
        dw      XT_LITbyte              ; $3F82 _LITbyte
        db      $0F                  ; $3F84 inline byte
        dw      TERSE_COLON_2B2E     ; $3F85 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3F87 _RETURN
        db      $CF,$12,$01,$30,$F2,$2A,$09,$01,$80,$00,$12,$01,$60,$12,$01,$40 ; $3F89
        db      $71,$2B,$12,$01,$0F,$09,$01,$FF,$00,$2E,$2B,$FD,$00             ; $3F99
TERSE_COLON_3FA6:
        rst     $08                             ; $3FA6 colon entry
        dw      XT_LITbyte              ; $3FA7 _LITbyte
        db      $17                  ; $3FA9 inline byte
        dw      XT_LIT                  ; $3FAA _LIT
        dw      $00DD                ; $3FAC inline word
        dw      TERSE_COLON_2B2E     ; $3FAE TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FB0 _RETURN
TERSE_COLON_3FB2:
        rst     $08                             ; $3FB2 colon entry
        dw      XT_LITbyte              ; $3FB3 _LITbyte
        db      $0F                  ; $3FB5 inline byte
        dw      XT_DUP                  ; $3FB6 _DUP
        dw      TERSE_COLON_2B2E     ; $3FB8 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FBA _RETURN
TERSE_COLON_3FBC:
        rst     $08                             ; $3FBC colon entry
        dw      XT_LITbyte              ; $3FBD _LITbyte
        db      $00                  ; $3FBF inline byte
        dw      XT_LIT                  ; $3FC0 _LIT
        dw      $00F0                ; $3FC2 inline word
        dw      TERSE_COLON_2B2E     ; $3FC4 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FC6 _RETURN
TERSE_COLON_3FC8:
        rst     $08                             ; $3FC8 colon entry
        dw      XT_LITbyte              ; $3FC9 _LITbyte
        db      $0F                  ; $3FCB inline byte
        dw      XT_LIT                  ; $3FCC _LIT
        dw      $00F0                ; $3FCE inline word
        dw      TERSE_COLON_2B2E     ; $3FD0 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FD2 _RETURN
TERSE_COLON_3FD4:
        rst     $08                             ; $3FD4 colon entry
        dw      XT_LITbyte              ; $3FD5 _LITbyte
        db      $00                  ; $3FD7 inline byte
        dw      XT_LITbyte              ; $3FD8 _LITbyte
        db      $0F                  ; $3FDA inline byte
        dw      TERSE_COLON_2B2E     ; $3FDB TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FDD _RETURN
TERSE_COLON_3FDF:
        rst     $08                             ; $3FDF colon entry
        dw      XT_LITbyte              ; $3FE0 _LITbyte
        db      $0F                  ; $3FE2 inline byte
        dw      XT_LITbyte              ; $3FE3 _LITbyte
        db      $00                  ; $3FE5 inline byte
        dw      TERSE_COLON_2B2E     ; $3FE6 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FE8 _RETURN
TERSE_COLON_3FEA:
        rst     $08                             ; $3FEA colon entry
        dw      XT_LITbyte              ; $3FEB _LITbyte
        db      $00                  ; $3FED inline byte
        dw      XT_DUP                  ; $3FEE _DUP
        dw      TERSE_COLON_2B2E     ; $3FF0 TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FF2 _RETURN
TERSE_COLON_3FF4:
        rst     $08                             ; $3FF4 colon entry
        dw      XT_LITbyte              ; $3FF5 _LITbyte
        db      $0F                  ; $3FF7 inline byte
        dw      XT_LIT                  ; $3FF8 _LIT
        dw      $00FF                ; $3FFA inline word
        dw      TERSE_COLON_2B2E     ; $3FFC TERSE_COLON_2B2E
        dw      XT_RETURN               ; $3FFE _RETURN
