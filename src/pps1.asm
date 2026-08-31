; Professor Pac-Man program ROM PPS1
; Fixed CPU address $0000-$1FFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $0000

RESET_ENTRY:
        nop                             ; $0000
        nop                             ; $0001
        di                              ; $0002
        jp COLD_START                   ; $0003
        db      $25,$00                                                         ; $0006
TERSE_COLON_ENTRY:
        dec ix                          ; $0008
        ld (ix+0),b                     ; $000A
        dec ix                          ; $000D
        ld (ix+0),c                     ; $000F
        pop bc                          ; $0012
        jp (iy)                         ; $0013
COLD_START:
        di                              ; $0015
        im 0                            ; $0016
        ld bc,$00f4                     ; $0018
L001B:
        out (c),b                       ; $001B
        ld a,c                          ; $001D
        sub $01                         ; $001E
        ld c,a                          ; $0020
        jp nc,L001B                     ; $0021
        ld a,$01                        ; $0024
        out (PORT_VIDEO_MODE),a         ; $0026
        ld bc,$0015                     ; $0028
        in a,(c)                        ; $002B
        ld c,$14                        ; $002D
        in a,(c)                        ; $002F
        ld a,$f0                        ; $0031
        out ($f8),a                     ; $0033
        ld a,$40                        ; $0035
        out ($f9),a                     ; $0037
        ld a,$0f                        ; $0039
        out ($fa),a                     ; $003B
        ld a,$0f                        ; $003D
        out ($fb),a                     ; $003F
        ld a,$03                        ; $0041
        out ($ff),a                     ; $0043
        ld ix,$ef50                     ; $0045
        ld sp,$f000                     ; $0049
        ld a,$a5                        ; $004C
        ld c,$10                        ; $004E
        ld hl,$e280                     ; $0050
L0053:
        ld de,$0000                     ; $0053
COLD_RAM_PROBE:
        in b,(c)                        ; $0056
        ld (hl),a                       ; $0058
        cp (hl)                         ; $0059
        jr z,COLD_RAM_COMPLEMENT        ; $005A
        dec e                           ; $005C
        jp nz,COLD_RAM_PROBE            ; $005D
        dec d                           ; $0060
        jp nz,COLD_RAM_PROBE            ; $0061
        jp SCREEN_CONTROL_1_FAILURE     ; $0064
COLD_RAM_COMPLEMENT:
        cpl                             ; $0067
        cp $a5                          ; $0068
        jp nz,L0053                     ; $006A
CHECK_SERVICE_SWITCH:
        in a,(PORT_INPUT_PRIMARY)       ; $006D
        bit 2,a                         ; $006F
        jp nz,SERVICE_THREAD_ENTRY      ; $0071
        ld a,$20                        ; $0074
        out (PORT_BANK_SELECT),a        ; $0076
        jr CHECK_FIXED_ROM              ; $0078
SCREEN_CONTROL_FAILURE:
        ld c,$c0                        ; $007A
SCREEN_CONTROL_LOCK:
        ld de,$000f                     ; $007C
        ld a,$07                        ; $007F
        out ($04),a                     ; $0081
        ld a,$28                        ; $0083
        out (PORT_VIDEO_COLOR),a        ; $0085
L0087:
        out (c),e                       ; $0087
        out (c),d                       ; $0089
        jr L0087                        ; $008B
SCREEN_CONTROL_2_FAILURE:
        ld c,$c2                        ; $008D
        jr SCREEN_CONTROL_LOCK          ; $008F
SCREEN_CONTROL_1_FAILURE:
        ld c,$c1                        ; $0091
        jr SCREEN_CONTROL_LOCK          ; $0093
CHECK_BANKED_ROM:
        ld bc,$4000                     ; $0095
        jp CHECKSUM_SELECTED_ROM        ; $0098
CHECK_FIXED_ROM:
        ld hl,$0000                     ; $009B
        ld de,$0000                     ; $009E
        xor a                           ; $00A1
        ld bc,$2000                     ; $00A2
CHECKSUM_SELECTED_ROM:
        out (PORT_BANK_SELECT),a        ; $00A5
        ld a,d                          ; $00A7
        or a                            ; $00A8
        push af                         ; $00A9
        push de                         ; $00AA
        ld de,$0000                     ; $00AB
CHECKSUM_BYTE_LOOP:
        ld a,(hl)                       ; $00AE
        add a,e                         ; $00AF
        ld e,a                          ; $00B0
        ld a,$00                        ; $00B1
        adc a,d                         ; $00B3
        ld d,a                          ; $00B4
        cpi                             ; $00B5
        jp pe,CHECKSUM_BYTE_LOOP        ; $00B7
        pop bc                          ; $00BA
        ex de,hl                        ; $00BB
        add hl,bc                       ; $00BC
        inc hl                          ; $00BD
        ld a,$20                        ; $00BE
        out (PORT_BANK_SELECT),a        ; $00C0
        ld a,d                          ; $00C2
        cp $20                          ; $00C3
        jp z,L00CD                      ; $00C5
        pop af                          ; $00C8
L00C9:
        pop bc                          ; $00C9
        push hl                         ; $00CA
        jp (iy)                         ; $00CB
L00CD:
        pop af                          ; $00CD
        jr nz,L00C9                     ; $00CE
        ld a,l                          ; $00D0
        or a                            ; $00D1
        jp nz,SCREEN_CONTROL_FAILURE    ; $00D2
INITIALIZE_WORK_RAM:
        ld a,$01                        ; $00D5
        ld d,$09                        ; $00D7
WORK_RAM_FILL_PASS:
        ld bc,$0100                     ; $00D9
        ld hl,$efff                     ; $00DC
WORK_RAM_FILL_BYTE:
        ld (hl),a                       ; $00DF
        cpd                             ; $00E0
        jp pe,WORK_RAM_FILL_BYTE        ; $00E2
        rla                             ; $00E5
        dec d                           ; $00E6
        jr nz,WORK_RAM_FILL_PASS        ; $00E7
        ld bc,$6dd2                     ; $00E9
        jp TERSE_INIT                   ; $00EC
SERVICE_THREAD_ENTRY:
        ld bc,$debe                     ; $00EF
TERSE_INIT:
        ld iy,$00f6                     ; $00F2
TERSE_NEXT:
        ld a,(bc)                       ; $00F6
        inc bc                          ; $00F7
        ld l,a                          ; $00F8
        ld a,(bc)                       ; $00F9
        inc bc                          ; $00FA
        ld h,a                          ; $00FB
        jp (hl)                         ; $00FC
_RETURN:
        ld c,(ix+0)                     ; $00FD
        inc ix                          ; $0100
        ld b,(ix+0)                     ; $0102
        inc ix                          ; $0105
        jp (iy)                         ; $0107
_LIT:
        ld a,(bc)                       ; $0109
        inc bc                          ; $010A
        ld l,a                          ; $010B
        ld a,(bc)                       ; $010C
        inc bc                          ; $010D
        ld h,a                          ; $010E
        push hl                         ; $010F
        jp (iy)                         ; $0110
_LITbyte:
        ld a,(bc)                       ; $0112
        inc bc                          ; $0113
        ld l,a                          ; $0114
        ld h,$00                        ; $0115
        push hl                         ; $0117
        jp (iy)                         ; $0118
_BARRAY:
        pop hl                          ; $011A
L011B:
        ld a,(bc)                       ; $011B
        inc bc                          ; $011C
        ld e,a                          ; $011D
        ld a,(bc)                       ; $011E
        inc bc                          ; $011F
        ld d,a                          ; $0120
        add hl,de                       ; $0121
        push hl                         ; $0122
        jp (iy)                         ; $0123
_ARRAY:
        pop hl                          ; $0125
        add hl,hl                       ; $0126
        jp L011B                        ; $0127
_0:
        ld hl,$0000                     ; $012A
        push hl                         ; $012D
        jp (iy)                         ; $012E
_1:
        ld hl,$0001                     ; $0130
        push hl                         ; $0133
        jp (iy)                         ; $0134
_DUP:
        pop hl                          ; $0136
        push hl                         ; $0137
        push hl                         ; $0138
        jp (iy)                         ; $0139
_2DUP:
        pop hl                          ; $013B
        pop de                          ; $013C
        push de                         ; $013D
        push hl                         ; $013E
        push de                         ; $013F
        push hl                         ; $0140
        jp (iy)                         ; $0141
_DROP:
        pop hl                          ; $0143
        jp (iy)                         ; $0144
_SWAP:
        pop hl                          ; $0146
        pop de                          ; $0147
        push hl                         ; $0148
        push de                         ; $0149
        jp (iy)                         ; $014A
_at:
        pop hl                          ; $014C
        ld e,(hl)                       ; $014D
        inc hl                          ; $014E
        ld d,(hl)                       ; $014F
        push de                         ; $0150
        jp (iy)                         ; $0151
_Bat:
        pop hl                          ; $0153
        ld e,(hl)                       ; $0154
        ld d,$00                        ; $0155
        push de                         ; $0157
        jp (iy)                         ; $0158
_plus:
        pop de                          ; $015A
        pop hl                          ; $015B
        add hl,de                       ; $015C
        push hl                         ; $015D
        jp (iy)                         ; $015E
_minussign:
        pop de                          ; $0160
        pop hl                          ; $0161
L0162:
        xor a                           ; $0162
        sbc hl,de                       ; $0163
        push hl                         ; $0165
        jp (iy)                         ; $0166
_MINUS:
        pop de                          ; $0168
L0169:
        ld hl,$0000                     ; $0169
        jr L0162                        ; $016C
_COM:
        pop de                          ; $016E
        inc de                          ; $016F
        jr L0169                        ; $0170
and16:
        ld a,e                          ; $0172
        and l                           ; $0173
        ld e,a                          ; $0174
        ld a,d                          ; $0175
        and h                           ; $0176
        ld d,a                          ; $0177
        ret                             ; $0178
_AND:
        pop de                          ; $0179
        pop hl                          ; $017A
        call and16                      ; $017B
        push de                         ; $017E
        jp (iy)                         ; $017F
or16:
        ld a,e                          ; $0181
        or l                            ; $0182
        ld e,a                          ; $0183
        ld a,d                          ; $0184
        or h                            ; $0185
        ld d,a                          ; $0186
        ret                             ; $0187
_OR:
        pop de                          ; $0188
        pop hl                          ; $0189
        call or16                       ; $018A
        push de                         ; $018D
        jp (iy)                         ; $018E
_1minus:
        pop hl                          ; $0190
        dec hl                          ; $0191
        push hl                         ; $0192
        jp (iy)                         ; $0193
_1plus:
        pop hl                          ; $0195
        inc hl                          ; $0196
        push hl                         ; $0197
        jp (iy)                         ; $0198
_2plus:
        pop hl                          ; $019A
        inc hl                          ; $019B
        inc hl                          ; $019C
        push hl                         ; $019D
        jp (iy)                         ; $019E
_2minus:
        pop hl                          ; $01A0
        dec hl                          ; $01A1
        dec hl                          ; $01A2
        push hl                         ; $01A3
        jp (iy)                         ; $01A4
_2splat:
        pop hl                          ; $01A6
        add hl,hl                       ; $01A7
        push hl                         ; $01A8
        jp (iy)                         ; $01A9
_2slash:
        pop hl                          ; $01AB
        sra h                           ; $01AC
        rr l                            ; $01AE
        push hl                         ; $01B0
        jp (iy)                         ; $01B1
_ABS:
        pop hl                          ; $01B3
        bit 7,h                         ; $01B4
        jp p,L01C0                      ; $01B6
        ex de,hl                        ; $01B9
        ld hl,$0000                     ; $01BA
        xor a                           ; $01BD
        sbc hl,de                       ; $01BE
L01C0:
        push hl                         ; $01C0
        jp (iy)                         ; $01C1
_Bat_inc7:
        pop hl                          ; $01C3
        ld a,(hl)                       ; $01C4
        inc hl                          ; $01C5
        push hl                         ; $01C6
        ld l,a                          ; $01C7
        res 7,l                         ; $01C8
        ld h,$00                        ; $01CA
        push hl                         ; $01CC
        jp (iy)                         ; $01CD
_equal:
        pop de                          ; $01CF
L01D0:
        pop hl                          ; $01D0
        xor a                           ; $01D1
        sbc hl,de                       ; $01D2
        ld hl,$0000                     ; $01D4
        jp nz,L01DB                     ; $01D7
        inc hl                          ; $01DA
L01DB:
        push hl                         ; $01DB
        jp (iy)                         ; $01DC
_zeroequal:
        ld de,$0000                     ; $01DE
        jr L01D0                        ; $01E1
_NOT:
        jr _zeroequal                   ; $01E3
_not_equal:
        pop de                          ; $01E5
L01E6:
        pop hl                          ; $01E6
        xor a                           ; $01E7
        sbc hl,de                       ; $01E8
        ld hl,$0000                     ; $01EA
        jp z,L01F1                      ; $01ED
        inc hl                          ; $01F0
L01F1:
        push hl                         ; $01F1
        jp (iy)                         ; $01F2
_0notequal:
        ld de,$0000                     ; $01F4
        jr L01E6                        ; $01F7
_Uless:
        pop de                          ; $01F9
        pop hl                          ; $01FA
        xor a                           ; $01FB
        sbc hl,de                       ; $01FC
        ld hl,$0000                     ; $01FE
        jp nc,L0205                     ; $0201
        inc hl                          ; $0204
L0205:
        push hl                         ; $0205
        jp (iy)                         ; $0206
_less:
        pop de                          ; $0208
L0209:
        pop hl                          ; $0209
L020A:
        xor a                           ; $020A
        sbc hl,de                       ; $020B
        ld de,$0000                     ; $020D
        push af                         ; $0210
        pop hl                          ; $0211
        ld a,l                          ; $0212
        and $84                         ; $0213
        jp pe,L0219                     ; $0215
        inc de                          ; $0218
L0219:
        push de                         ; $0219
        jp (iy)                         ; $021A
_gt:
        pop hl                          ; $021C
L021D:
        pop de                          ; $021D
        jr L020A                        ; $021E
_0less:
        ld de,$0000                     ; $0220
        jr L0209                        ; $0223
_0gt:
        ld hl,$0000                     ; $0225
        jr L021D                        ; $0228
_gt_equal:
        pop de                          ; $022A
L022B:
        pop hl                          ; $022B
L022C:
        xor a                           ; $022C
        sbc hl,de                       ; $022D
        ld de,$0000                     ; $022F
        push af                         ; $0232
        pop hl                          ; $0233
        ld a,l                          ; $0234
        and $84                         ; $0235
        jp po,L023B                     ; $0237
        inc de                          ; $023A
L023B:
        push de                         ; $023B
        jp (iy)                         ; $023C
_0gtequal:
        ld de,$0000                     ; $023E
        jr L022B                        ; $0241
_less_equal:
        pop hl                          ; $0243
L0244:
        pop de                          ; $0244
        jr L022C                        ; $0245
_0lessequal:
        ld hl,$0000                     ; $0247
        jr L0244                        ; $024A
_minusDUP:
        pop hl                          ; $024C
        push hl                         ; $024D
        ld a,h                          ; $024E
        or l                            ; $024F
        jp z,L0254                      ; $0250
        push hl                         ; $0253
L0254:
        jp (iy)                         ; $0254
_XOR:
        pop de                          ; $0256
        pop hl                          ; $0257
        ld a,l                          ; $0258
        xor e                           ; $0259
        ld l,a                          ; $025A
        ld a,h                          ; $025B
        xor d                           ; $025C
        ld h,a                          ; $025D
        push hl                         ; $025E
        jp (iy)                         ; $025F
_BMOVE:
        exx                             ; $0261
        pop bc                          ; $0262
        pop de                          ; $0263
        pop hl                          ; $0264
        ld a,b                          ; $0265
        or c                            ; $0266
        jp z,L026C                      ; $0267
        ldir                            ; $026A
L026C:
        exx                             ; $026C
        jp (iy)                         ; $026D
_DO:
        ld de,$fffa                     ; $026F
        add ix,de                       ; $0272
        pop hl                          ; $0274
        pop de                          ; $0275
        ld (ix+0),l                     ; $0276
        ld (ix+1),h                     ; $0279
        ld (ix+2),e                     ; $027C
        ld (ix+3),d                     ; $027F
        ld (ix+4),c                     ; $0282
        ld (ix+5),b                     ; $0285
        jp (iy)                         ; $0288
_LOOP:
        ld l,(ix+0)                     ; $028A
        ld h,(ix+1)                     ; $028D
        inc hl                          ; $0290
        ld (ix+0),l                     ; $0291
        ld (ix+1),h                     ; $0294
        ld e,(ix+2)                     ; $0297
        ld d,(ix+3)                     ; $029A
        xor a                           ; $029D
        sbc hl,de                       ; $029E
        push af                         ; $02A0
        pop hl                          ; $02A1
        ld a,l                          ; $02A2
        and $84                         ; $02A3
        jp po,L02B0                     ; $02A5
        ld de,$0006                     ; $02A8
        add ix,de                       ; $02AB
        jp L02B6                        ; $02AD
L02B0:
        ld c,(ix+4)                     ; $02B0
        ld b,(ix+5)                     ; $02B3
L02B6:
        jp (iy)                         ; $02B6
_I:
        ld l,(ix+0)                     ; $02B8
        ld h,(ix+1)                     ; $02BB
        push hl                         ; $02BE
        jp (iy)                         ; $02BF
_J:
        ld l,(ix+6)                     ; $02C1
        ld h,(ix+7)                     ; $02C4
        push hl                         ; $02C7
        jp (iy)                         ; $02C8
_OVER:
        pop hl                          ; $02CA
        pop de                          ; $02CB
        push de                         ; $02CC
        push hl                         ; $02CD
        push de                         ; $02CE
        jp (iy)                         ; $02CF
_SWAB:
        pop hl                          ; $02D1
        ld e,l                          ; $02D2
        ld l,h                          ; $02D3
        ld h,e                          ; $02D4
        push hl                         ; $02D5
        jp (iy)                         ; $02D6
_OUTP:
        exx                             ; $02D8
        pop bc                          ; $02D9
        pop hl                          ; $02DA
        out (c),l                       ; $02DB
        exx                             ; $02DD
        jp (iy)                         ; $02DE
_INP:
        exx                             ; $02E0
        pop bc                          ; $02E1
        in l,(c)                        ; $02E2
        ld h,$00                        ; $02E4
        push hl                         ; $02E6
        exx                             ; $02E7
        jp (iy)                         ; $02E8
_ROT:
        pop de                          ; $02EA
        pop hl                          ; $02EB
        ex (sp),hl                      ; $02EC
        push de                         ; $02ED
        push hl                         ; $02EE
        jp (iy)                         ; $02EF
_PICK:
        pop hl                          ; $02F1
        dec hl                          ; $02F2
        add hl,hl                       ; $02F3
        add hl,sp                       ; $02F4
        ld e,(hl)                       ; $02F5
        inc hl                          ; $02F6
        ld d,(hl)                       ; $02F7
        push de                         ; $02F8
        jp (iy)                         ; $02F9
_2DROP:
        pop hl                          ; $02FB
        pop hl                          ; $02FC
        jp (iy)                         ; $02FD
_star:
        exx                             ; $02FF
        pop de                          ; $0300
        pop bc                          ; $0301
        ld hl,$0000                     ; $0302
L0305:
        srl b                           ; $0305
        rr c                            ; $0307
        jp nc,L030D                     ; $0309
        add hl,de                       ; $030C
L030D:
        ld a,b                          ; $030D
        or c                            ; $030E
        jp z,L0319                      ; $030F
        sla e                           ; $0312
        rl d                            ; $0314
        jp L0305                        ; $0316
L0319:
        push hl                         ; $0319
        exx                             ; $031A
        jp (iy)                         ; $031B
divmod16:
        ld a,b                          ; $031D
        xor h                           ; $031E
        push af                         ; $031F
        xor h                           ; $0320
        bit 7,a                         ; $0321
        jp z,L032D                      ; $0323
        ld a,b                          ; $0326
        cpl                             ; $0327
        ld b,a                          ; $0328
        ld a,c                          ; $0329
        cpl                             ; $032A
        ld c,a                          ; $032B
        inc bc                          ; $032C
L032D:
        bit 7,h                         ; $032D
        jp z,L0339                      ; $032F
        ld a,h                          ; $0332
        cpl                             ; $0333
        ld h,a                          ; $0334
        ld a,l                          ; $0335
        cpl                             ; $0336
        ld l,a                          ; $0337
        inc hl                          ; $0338
L0339:
        ld a,$01                        ; $0339
        ld de,$0000                     ; $033B
L033E:
        bit 7,b                         ; $033E
        jp nz,L034B                     ; $0340
        sla c                           ; $0343
        rl b                            ; $0345
        inc a                           ; $0347
        jp L033E                        ; $0348
L034B:
        or a                            ; $034B
        sbc hl,bc                       ; $034C
        jp nc,L0353                     ; $034E
        add hl,bc                       ; $0351
        dec de                          ; $0352
L0353:
        inc de                          ; $0353
        dec a                           ; $0354
        jp z,L0363                      ; $0355
        sla e                           ; $0358
        rl d                            ; $035A
        srl b                           ; $035C
        rr c                            ; $035E
        jp L034B                        ; $0360
L0363:
        pop af                          ; $0363
        bit 7,a                         ; $0364
        jp z,L0377                      ; $0366
        ld a,h                          ; $0369
        cpl                             ; $036A
        ld h,a                          ; $036B
        ld a,l                          ; $036C
        cpl                             ; $036D
        ld l,a                          ; $036E
        inc hl                          ; $036F
        ld a,d                          ; $0370
        cpl                             ; $0371
        ld d,a                          ; $0372
        ld a,e                          ; $0373
        cpl                             ; $0374
        ld e,a                          ; $0375
        inc de                          ; $0376
L0377:
        ret                             ; $0377
_slashMOD:
        exx                             ; $0378
        pop bc                          ; $0379
        pop hl                          ; $037A
        call divmod16                   ; $037B
        push hl                         ; $037E
        push de                         ; $037F
        exx                             ; $0380
        jp (iy)                         ; $0381
_MOD:
        exx                             ; $0383
        pop bc                          ; $0384
        pop hl                          ; $0385
        call divmod16                   ; $0386
        push hl                         ; $0389
        exx                             ; $038A
        jp (iy)                         ; $038B
_slash:
        exx                             ; $038D
        pop bc                          ; $038E
        pop hl                          ; $038F
        call divmod16                   ; $0390
        push de                         ; $0393
        exx                             ; $0394
        jp (iy)                         ; $0395
_plusLOOP:
        pop hl                          ; $0397
        ld a,h                          ; $0398
        ld e,(ix+0)                     ; $0399
        ld d,(ix+1)                     ; $039C
        add hl,de                       ; $039F
        ld (ix+0),l                     ; $03A0
        ld (ix+1),h                     ; $03A3
        ld e,(ix+2)                     ; $03A6
        ld d,(ix+3)                     ; $03A9
        or a                            ; $03AC
        sbc hl,de                       ; $03AD
        push af                         ; $03AF
        pop hl                          ; $03B0
        bit 7,a                         ; $03B1
        ld a,l                          ; $03B3
        jp z,L03CD                      ; $03B4
        and $84                         ; $03B7
        jp pe,L03C4                     ; $03B9
        ld de,$0006                     ; $03BC
        add ix,de                       ; $03BF
        jp L03CA                        ; $03C1
L03C4:
        ld c,(ix+4)                     ; $03C4
        ld b,(ix+5)                     ; $03C7
L03CA:
        jp L03E0                        ; $03CA
L03CD:
        and $84                         ; $03CD
        jp po,L03DA                     ; $03CF
        ld de,$0006                     ; $03D2
        add ix,de                       ; $03D5
        jp L03E0                        ; $03D7
L03DA:
        ld c,(ix+4)                     ; $03DA
        ld b,(ix+5)                     ; $03DD
L03E0:
        jp (iy)                         ; $03E0
_BRANCH:
        ld a,(bc)                       ; $03E2
        ld e,a                          ; $03E3
        inc bc                          ; $03E4
        ld a,(bc)                       ; $03E5
        ld b,a                          ; $03E6
        ld c,e                          ; $03E7
        jp (iy)                         ; $03E8
_0BRANCH:
        pop hl                          ; $03EA
        ld a,h                          ; $03EB
        or l                            ; $03EC
        jp z,branch_true                ; $03ED
        inc bc                          ; $03F0
        inc bc                          ; $03F1
        jp (iy)                         ; $03F2
branch_true:
        jp _BRANCH                      ; $03F4
_LEAVE:
        ld a,(ix+0)                     ; $03F7
        ld (ix+2),a                     ; $03FA
        ld a,(ix+1)                     ; $03FD
        ld (ix+3),a                     ; $0400
        jp (iy)                         ; $0403
_Aquote:
        push bc                         ; $0405
        ld a,(bc)                       ; $0406
        inc bc                          ; $0407
        ld l,a                          ; $0408
        ld h,$00                        ; $0409
        add hl,bc                       ; $040B
        ld b,h                          ; $040C
        ld c,l                          ; $040D
        jp (iy)                         ; $040E
_OF:
        pop hl                          ; $0410
        pop de                          ; $0411
        or a                            ; $0412
        sbc hl,de                       ; $0413
        jp nz,of_false                  ; $0415
        inc bc                          ; $0418
        inc bc                          ; $0419
        jp (iy)                         ; $041A
of_false:
        ld a,(bc)                       ; $041C
        ld l,a                          ; $041D
        inc bc                          ; $041E
        ld a,(bc)                       ; $041F
        ld b,a                          ; $0420
        ld c,l                          ; $0421
        push de                         ; $0422
        jp (iy)                         ; $0423
_MAX:
        exx                             ; $0425
        pop bc                          ; $0426
        pop de                          ; $0427
        ld l,c                          ; $0428
        ld h,b                          ; $0429
        or a                            ; $042A
        sbc hl,de                       ; $042B
        jp nc,L0432                     ; $042D
        ld e,c                          ; $0430
        ld d,b                          ; $0431
L0432:
        push de                         ; $0432
        exx                             ; $0433
        jp (iy)                         ; $0434
_CASES:
        ld a,(bc)                       ; $0436
        ld e,a                          ; $0437
        inc bc                          ; $0438
        ld a,(bc)                       ; $0439
        ld d,a                          ; $043A
        inc bc                          ; $043B
        pop hl                          ; $043C
        sla l                           ; $043D
        rl h                            ; $043F
        add hl,bc                       ; $0441
        ld b,d                          ; $0442
        ld c,e                          ; $0443
        ex de,hl                        ; $0444
        or a                            ; $0445
        sbc hl,de                       ; $0446
        jp c,L0454                      ; $0448
        jp z,L0454                      ; $044B
        ld a,(de)                       ; $044E
        ld l,a                          ; $044F
        inc de                          ; $0450
        ld a,(de)                       ; $0451
        ld h,a                          ; $0452
        jp (hl)                         ; $0453
L0454:
        jp (iy)                         ; $0454
frame_open:
        ld hl,($fefd)                   ; $0456
        push hl                         ; $0459
        ld ($fefd),sp                   ; $045A
        ld hl,($fefd)                   ; $045E
        add hl,de                       ; $0461
        ld sp,hl                        ; $0462
        jp (iy)                         ; $0463
_0lessFRAME:
        ld hl,($fefd)                   ; $0465
        push hl                         ; $0468
        ld ($fefd),sp                   ; $0469
        jp (iy)                         ; $046D
_1lessFRAME:
        ld de,$fffe                     ; $046F
        jr frame_open                   ; $0472
_2lessFRAME:
        ld de,$fffc                     ; $0474
        jr frame_open                   ; $0477
frame_close:
        ld sp,($fefd)                   ; $0479
        pop hl                          ; $047D
        ld ($fefd),hl                   ; $047E
        ex de,hl                        ; $0481
        add hl,sp                       ; $0482
        ld sp,hl                        ; $0483
        jp (iy)                         ; $0484
_0FRAMEgt:
        ld de,$0000                     ; $0486
        jr frame_close                  ; $0489
_1FRAMEgt:
        ld de,$0002                     ; $048B
        jr frame_close                  ; $048E
_2FRAMEgt:
        ld de,$0004                     ; $0490
        jr frame_close                  ; $0493
frame_addr:
        ld hl,($fefd)                   ; $0495
        add hl,de                       ; $0498
        push hl                         ; $0499
        jp (iy)                         ; $049A
_1PARAM:
        ld de,$0002                     ; $049C
        jp frame_addr                   ; $049F
_2PARAM:
        ld de,$0004                     ; $04A2
        jp frame_addr                   ; $04A5
_3PARAM:
        ld de,$0006                     ; $04A8
        jr frame_addr                   ; $04AB
_1LOCAL:
        ld de,$fffe                     ; $04AD
        jr frame_addr                   ; $04B0
_2LOCAL:
        ld de,$fffc                     ; $04B2
        jr frame_addr                   ; $04B5
frame_fetch:
        ld hl,($fefd)                   ; $04B7
        add hl,de                       ; $04BA
        ld e,(hl)                       ; $04BB
        inc hl                          ; $04BC
        ld d,(hl)                       ; $04BD
        push de                         ; $04BE
        jp (iy)                         ; $04BF
_1LOCALat:
        ld de,$fffe                     ; $04C1
        jr frame_fetch                  ; $04C4
_2LOCALat:
        ld de,$fffc                     ; $04C6
        jr frame_fetch                  ; $04C9
_3PARAMat:
        ld de,$0006                     ; $04CB
        jr frame_fetch                  ; $04CE
_1PARAMat:
        ld de,$0002                     ; $04D0
        jp frame_fetch                  ; $04D3
_2PARAMat:
        ld de,$0004                     ; $04D6
        jp frame_fetch                  ; $04D9
protected_addr:
        push de                         ; $04DC
        ex de,hl                        ; $04DD
        ld hl,$e200                     ; $04DE
        or a                            ; $04E1
        sbc hl,de                       ; $04E2
        ex de,hl                        ; $04E4
        pop de                          ; $04E5
        ret                             ; $04E6
protected_page:
        push de                         ; $04E7
        or a                            ; $04E8
        ld de,$00ff                     ; $04E9
        sbc hl,de                       ; $04EC
        pop de                          ; $04EE
        ret                             ; $04EF
protected_store:
        di                              ; $04F0
        ld a,$a5                        ; $04F1
        out ($5b),a                     ; $04F3
        ld (hl),e                       ; $04F5
        inc hl                          ; $04F6
        out ($5b),a                     ; $04F7
        ld (hl),d                       ; $04F9
        ret                             ; $04FA
protected_bstore:
        di                              ; $04FB
        ld a,$a5                        ; $04FC
        out ($5b),a                     ; $04FE
        ld (hl),e                       ; $0500
        ret                             ; $0501
store_word:
        call protected_addr             ; $0502
        jp c,L0517                      ; $0505
        push hl                         ; $0508
        call protected_store            ; $0509
        dec hl                          ; $050C
        call protected_page             ; $050D
        call protected_store            ; $0510
        pop hl                          ; $0513
        jp L051B                        ; $0514
L0517:
        ld (hl),e                       ; $0517
        inc hl                          ; $0518
        ld (hl),d                       ; $0519
        dec hl                          ; $051A
L051B:
        ret                             ; $051B
store_byte:
        call protected_addr             ; $051C
        jp c,L0530                      ; $051F
        push hl                         ; $0522
        call protected_bstore           ; $0523
        call protected_page             ; $0526
        call protected_bstore           ; $0529
        pop hl                          ; $052C
        jp L0531                        ; $052D
L0530:
        ld (hl),e                       ; $0530
L0531:
        ret                             ; $0531
_SBbang:
        pop hl                          ; $0532
        pop de                          ; $0533
L0534:
        call store_byte                 ; $0534
        ei                              ; $0537
        jp (iy)                         ; $0538
_BONE:
        pop hl                          ; $053A
        ld e,$01                        ; $053B
        jr L0534                        ; $053D
_BZERO:
        pop hl                          ; $053F
        ld e,$00                        ; $0540
        jr L0534                        ; $0542
_1minusBbang:
        pop hl                          ; $0544
        ld e,(hl)                       ; $0545
        dec e                           ; $0546
        jr L0534                        ; $0547
_1plusBbang:
        pop hl                          ; $0549
        ld e,(hl)                       ; $054A
        inc e                           ; $054B
        jr L0534                        ; $054C
_plusBbang:
        pop hl                          ; $054E
        ld a,(hl)                       ; $054F
        pop de                          ; $0550
        add a,e                         ; $0551
        ld e,a                          ; $0552
        jr L0534                        ; $0553
_minusBbang:
        pop hl                          ; $0555
        ld a,(hl)                       ; $0556
        pop de                          ; $0557
        sub e                           ; $0558
        ld e,a                          ; $0559
        jr L0534                        ; $055A
_Bbang:
        pop de                          ; $055C
        pop hl                          ; $055D
        jp L0534                        ; $055E
_bang:
        pop hl                          ; $0561
        pop de                          ; $0562
L0563:
        call store_word                 ; $0563
        ei                              ; $0566
        jp (iy)                         ; $0567
_ZERO:
        pop hl                          ; $0569
        ld de,$0000                     ; $056A
        jr L0563                        ; $056D
_ONE:
        pop hl                          ; $056F
        ld de,$0001                     ; $0570
        jr L0563                        ; $0573
_1minusbang:
        pop hl                          ; $0575
        ld e,(hl)                       ; $0576
        inc hl                          ; $0577
        ld d,(hl)                       ; $0578
        dec hl                          ; $0579
        dec de                          ; $057A
        jr L0563                        ; $057B
_plusbang:
        pop hl                          ; $057D
        ld e,(hl)                       ; $057E
        inc hl                          ; $057F
        ld d,(hl)                       ; $0580
        dec hl                          ; $0581
        ex (sp),hl                      ; $0582
        add hl,de                       ; $0583
        ex de,hl                        ; $0584
        pop hl                          ; $0585
        jr L0563                        ; $0586
_1plusbang:
        pop hl                          ; $0588
        ld e,(hl)                       ; $0589
        inc hl                          ; $058A
        ld d,(hl)                       ; $058B
        dec hl                          ; $058C
        inc de                          ; $058D
        jr L0563                        ; $058E
_minusbang:
        pop hl                          ; $0590
        ld e,(hl)                       ; $0591
        inc hl                          ; $0592
        ld d,(hl)                       ; $0593
        dec hl                          ; $0594
        ex (sp),hl                      ; $0595
        ex de,hl                        ; $0596
        or a                            ; $0597
        sbc hl,de                       ; $0598
        ex de,hl                        ; $059A
        pop hl                          ; $059B
        jr L0563                        ; $059C
_Sbang:
        pop de                          ; $059E
        pop hl                          ; $059F
        jp L0563                        ; $05A0
_MOVE:
        exx                             ; $05A3
        pop bc                          ; $05A4
        pop hl                          ; $05A5
        pop de                          ; $05A6
L05A7:
        ld a,(de)                       ; $05A7
        inc de                          ; $05A8
        push de                         ; $05A9
        ld e,a                          ; $05AA
        call store_byte                 ; $05AB
        pop de                          ; $05AE
        cpi                             ; $05AF
        jp pe,L05A7                     ; $05B1
        exx                             ; $05B4
        ei                              ; $05B5
        jp (iy)                         ; $05B6
        db      $10,$27,$E8,$03,$64,$00,$0A,$00,$01,$00                         ; $05B8
nvram_page:
        push de                         ; $05C2
        or a                            ; $05C3
        ld de,$00ff                     ; $05C4
        sbc hl,de                       ; $05C7
        pop de                          ; $05C9
        ret                             ; $05CA
nvram_store:
        di                              ; $05CB
        ld a,$a5                        ; $05CC
        out ($5b),a                     ; $05CE
        ld (hl),e                       ; $05D0
        inc hl                          ; $05D1
        out ($5b),a                     ; $05D2
        ld (hl),d                       ; $05D4
        ret                             ; $05D5
nvram_bstore:
        di                              ; $05D6
        ld a,$a5                        ; $05D7
        out ($5b),a                     ; $05D9
        ld (hl),e                       ; $05DB
        ret                             ; $05DC
nvram_store_word:
        push hl                         ; $05DD
        call nvram_store                ; $05DE
        dec hl                          ; $05E1
        call nvram_page                 ; $05E2
        call nvram_store                ; $05E5
        pop hl                          ; $05E8
        ret                             ; $05E9
nvram_store_byte:
        push hl                         ; $05EA
        call nvram_bstore               ; $05EB
        call nvram_page                 ; $05EE
        call nvram_bstore               ; $05F1
        pop hl                          ; $05F4
        ret                             ; $05F5
READ_DIP_CONFIGURATION:
        in a,(PORT_INPUT_DIP)           ; $05F6
        ld e,a                          ; $05F8
        ld hl,$e1d4                     ; $05F9
        call nvram_store_byte           ; $05FC
        ld hl,$e14e                     ; $05FF
        ld de,$f00f                     ; $0602
        call nvram_store_word           ; $0605
        ld hl,$e14c                     ; $0608
        ld de,$a55a                     ; $060B
        call nvram_store_word           ; $060E
        ld hl,$e1f6                     ; $0611
        ld de,$0100                     ; $0614
        call nvram_store_word           ; $0617
        ld hl,$e1f4                     ; $061A
        ld de,$0100                     ; $061D
        call nvram_store_word           ; $0620
        ld hl,$e1fb                     ; $0623
        ld e,$01                        ; $0626
        call nvram_store_byte           ; $0628
        ld hl,$e1fa                     ; $062B
        ld e,$01                        ; $062E
        call nvram_store_byte           ; $0630
        ld hl,$e1f9                     ; $0633
        ld e,$01                        ; $0636
        call nvram_store_byte           ; $0638
        ld hl,$e1f8                     ; $063B
        ld e,$01                        ; $063E
        call nvram_store_byte           ; $0640
        ld hl,$e1f2                     ; $0643
        ld e,$03                        ; $0646
        call nvram_store_byte           ; $0648
        ld hl,$e1f1                     ; $064B
        ld e,$03                        ; $064E
        call nvram_store_byte           ; $0650
        ld hl,$e1f3                     ; $0653
        ld e,$03                        ; $0656
        call nvram_store_byte           ; $0658
        ld hl,$e1f0                     ; $065B
        ld e,$00                        ; $065E
        call nvram_store_byte           ; $0660
        ld hl,$e1ef                     ; $0663
        ld e,$00                        ; $0666
        call nvram_store_byte           ; $0668
        ld hl,$e1ee                     ; $066B
        ld e,$03                        ; $066E
        jp nvram_store_byte             ; $0670
NATIVE_0673:
        ld hl,$e1ff                     ; $0673
        ld e,$01                        ; $0676
        call nvram_store_byte           ; $0678
        ld hl,$e1eb                     ; $067B
        ld e,$00                        ; $067E
        call nvram_store_byte           ; $0680
        ld hl,$e1fd                     ; $0683
        ld e,$00                        ; $0686
        jp nvram_store_byte             ; $0688
READ_AND_VALIDATE_CONFIGURATION:
        call READ_DIP_CONFIGURATION     ; $068B
        call NATIVE_0673                ; $068E
        jp (iy)                         ; $0691
VALIDATE_BATTERY_RAM:
        di                              ; $0693
        push bc                         ; $0694
        in a,(PORT_INPUT_DIP)           ; $0695
        bit 1,a                         ; $0697
        jp z,L073B                      ; $0699
L069C:
        in a,(PORT_INPUT_PRIMARY)       ; $069C
        ld hl,($e14e)                   ; $069E
        ld de,$f00f                     ; $06A1
        or a                            ; $06A4
        sbc hl,de                       ; $06A5
        jp nz,L073B                     ; $06A7
        ld hl,($e14c)                   ; $06AA
        ld de,$a55a                     ; $06AD
        or a                            ; $06B0
        sbc hl,de                       ; $06B1
        jp nz,L073B                     ; $06B3
        ld a,($e1ec)                    ; $06B6
        cp $0a                          ; $06B9
        jp nc,L073B                     ; $06BB
        ld hl,$0000                     ; $06BE
        ld de,$0000                     ; $06C1
        exx                             ; $06C4
        ld bc,$00ff                     ; $06C5
        ld hl,$e101                     ; $06C8
        ld de,$e002                     ; $06CB
L06CE:
        ld a,(de)                       ; $06CE
        cp (hl)                         ; $06CF
        jp z,L06E9                      ; $06D0
        exx                             ; $06D3
        cp $ff                          ; $06D4
        jp nz,L06DD                     ; $06D6
        inc de                          ; $06D9
        jp L06DE                        ; $06DA
L06DD:
        inc hl                          ; $06DD
L06DE:
        exx                             ; $06DE
        ld a,$a5                        ; $06DF
        push hl                         ; $06E1
        ld l,(hl)                       ; $06E2
        ex de,hl                        ; $06E3
        out ($5b),a                     ; $06E4
        ld (hl),e                       ; $06E6
        ex de,hl                        ; $06E7
        pop hl                          ; $06E8
L06E9:
        inc de                          ; $06E9
        cpi                             ; $06EA
        jp pe,L06CE                     ; $06EC
        exx                             ; $06EF
        in a,(PORT_INPUT_PRIMARY)       ; $06F0
        push hl                         ; $06F2
        or a                            ; $06F3
        ex de,hl                        ; $06F4
        ld de,$0007                     ; $06F5
        sbc hl,de                       ; $06F8
        pop hl                          ; $06FA
        jp nc,L073B                     ; $06FB
        or a                            ; $06FE
        ld de,$0002                     ; $06FF
        sbc hl,de                       ; $0702
        jp nc,L073B                     ; $0704
        ld bc,$00fe                     ; $0707
        ld de,$0000                     ; $070A
        ld hl,$e001                     ; $070D
        exx                             ; $0710
        ld de,$e000                     ; $0711
L0714:
        exx                             ; $0714
        push hl                         ; $0715
        exx                             ; $0716
        pop hl                          ; $0717
        push hl                         ; $0718
        or a                            ; $0719
        sbc hl,de                       ; $071A
        ld c,l                          ; $071C
        ld b,h                          ; $071D
        pop hl                          ; $071E
        ld a,(hl)                       ; $071F
        dec hl                          ; $0720
        cpdr                            ; $0721
        jp z,L0729                      ; $0723
        exx                             ; $0726
        inc de                          ; $0727
        exx                             ; $0728
L0729:
        exx                             ; $0729
        cpi                             ; $072A
        exx                             ; $072C
        jp pe,L0714                     ; $072D
        exx                             ; $0730
        ex de,hl                        ; $0731
        ld de,$0004                     ; $0732
        or a                            ; $0735
        sbc hl,de                       ; $0736
        jp nc,L075F                     ; $0738
L073B:
        in a,(PORT_INPUT_PRIMARY)       ; $073B
        ld bc,$0200                     ; $073D
        ld hl,$e000                     ; $0740
        ld a,$a5                        ; $0743
L0745:
        out ($5b),a                     ; $0745
        ld (hl),$00                     ; $0747
        cpi                             ; $0749
        jp pe,L0745                     ; $074B
        ld hl,$e1fc                     ; $074E
        ld e,$01                        ; $0751
        call nvram_store_byte           ; $0753
        call NATIVE_0673                ; $0756
        call READ_DIP_CONFIGURATION     ; $0759
        jp L069C                        ; $075C
L075F:
        in a,(PORT_INPUT_PRIMARY)       ; $075F
        ld a,($e1ff)                    ; $0761
        or a                            ; $0764
        jp nz,L077C                     ; $0765
        ld hl,$e1fd                     ; $0768
        ld a,(hl)                       ; $076B
        inc a                           ; $076C
        ld e,a                          ; $076D
        cp $03                          ; $076E
        jp nz,L0779                     ; $0770
        call NATIVE_0673                ; $0773
        jp L077C                        ; $0776
L0779:
        call nvram_store_byte           ; $0779
L077C:
        ld a,($e1fc)                    ; $077C
        or a                            ; $077F
        jp nz,L078E                     ; $0780
        ld hl,$e1d5                     ; $0783
        ld de,($e1d5)                   ; $0786
        inc de                          ; $078A
        call nvram_store_word           ; $078B
L078E:
        pop bc                          ; $078E
        jp (iy)                         ; $078F
NATIVE_0791:
        ld b,$0a                        ; $0791
        ld a,b                          ; $0793
        ld de,($fef6)                   ; $0794
L0798:
        or a                            ; $0798
        sbc hl,de                       ; $0799
        jr c,L07A0                      ; $079B
        djnz L0798                      ; $079D
        inc b                           ; $079F
L07A0:
        sub b                           ; $07A0
        rlca                            ; $07A1
        ld c,a                          ; $07A2
        ld b,$00                        ; $07A3
        ld hl,($fef4)                   ; $07A5
        add hl,bc                       ; $07A8
        ld e,(hl)                       ; $07A9
        inc hl                          ; $07AA
        ld d,(hl)                       ; $07AB
        dec hl                          ; $07AC
        inc de                          ; $07AD
        jp nvram_store_word             ; $07AE
        push bc                         ; $07B1
        exx                             ; $07B2
        pop de                          ; $07B3
        ld b,a                          ; $07B4
L07B5:
        add hl,de                       ; $07B5
        djnz L07B5                      ; $07B6
        exx                             ; $07B8
        ret                             ; $07B9
        ld c,(hl)                       ; $07BA
        inc hl                          ; $07BB
        ld b,(hl)                       ; $07BC
        inc hl                          ; $07BD
        ret                             ; $07BE
NATIVE_07BF:
        xor a                           ; $07BF
        ld hl,($e196)                   ; $07C0
        sbc hl,de                       ; $07C3
        jp nc,L07CE                     ; $07C5
        ld hl,$e196                     ; $07C8
        call nvram_store_word           ; $07CB
L07CE:
        ret                             ; $07CE
NATIVE_07CF:
        push bc                         ; $07CF
        ex de,hl                        ; $07D0
        call NATIVE_07BF                ; $07D1
        ld hl,$1388                     ; $07D4
        ld ($fef6),hl                   ; $07D7
        ld hl,$e198                     ; $07DA
        ld ($fef4),hl                   ; $07DD
        ex de,hl                        ; $07E0
        call NATIVE_0791                ; $07E1
        exx                             ; $07E4
        pop bc                          ; $07E5
        ret                             ; $07E6
NATIVE_07E7:
        push bc                         ; $07E7
        ld hl,($e1e2)                   ; $07E8
        call NATIVE_07CF                ; $07EB
        ld a,($e1dd)                    ; $07EE
        cp $02                          ; $07F1
        jp nz,L07FC                     ; $07F3
        ld hl,($e1de)                   ; $07F6
        call NATIVE_07CF                ; $07F9
L07FC:
        pop bc                          ; $07FC
        ret                             ; $07FD
NATIVE_07FE:
        exx                             ; $07FE
        ld hl,$005a                     ; $07FF
        ld ($fef6),hl                   ; $0802
        ld hl,$e1c0                     ; $0805
        ld ($fef4),hl                   ; $0808
        ld hl,($fef9)                   ; $080B
        call NATIVE_0791                ; $080E
        exx                             ; $0811
        ret                             ; $0812
NATIVE_0813:
        exx                             ; $0813
        ld hl,$00b4                     ; $0814
        ld ($fef6),hl                   ; $0817
        ld hl,$e1ac                     ; $081A
        ld ($fef4),hl                   ; $081D
        ld hl,($fef9)                   ; $0820
        call NATIVE_0791                ; $0823
        exx                             ; $0826
        ret                             ; $0827
NATIVE_0828:
        ld e,a                          ; $0828
        and $03                         ; $0829
        ld l,a                          ; $082B
        rla                             ; $082C
        rla                             ; $082D
        add a,l                         ; $082E
        ld l,a                          ; $082F
        rla                             ; $0830
        rla                             ; $0831
        rla                             ; $0832
        rla                             ; $0833
        add a,l                         ; $0834
        ld l,a                          ; $0835
        ld a,e                          ; $0836
        and $0c                         ; $0837
        ld h,a                          ; $0839
        rra                             ; $083A
        rra                             ; $083B
        add a,h                         ; $083C
        ld h,a                          ; $083D
        rla                             ; $083E
        rla                             ; $083F
        rla                             ; $0840
        rla                             ; $0841
        add a,h                         ; $0842
        ld h,a                          ; $0843
        ex de,hl                        ; $0844
        ret                             ; $0845
FETCH_BANKED_WORD:
        pop hl                          ; $0846
        pop de                          ; $0847
        ld a,e                          ; $0848
        out (PORT_BANK_SELECT),a        ; $0849
        ld e,(hl)                       ; $084B
        inc hl                          ; $084C
        ld d,(hl)                       ; $084D
L084E:
        ld a,$20                        ; $084E
        out (PORT_BANK_SELECT),a        ; $0850
        push de                         ; $0852
        jp (iy)                         ; $0853
FETCH_BANK_ZERO_BYTE:
        xor a                           ; $0855
        out (PORT_BANK_SELECT),a        ; $0856
        pop hl                          ; $0858
        ld e,(hl)                       ; $0859
        ld d,$00                        ; $085A
        jp L084E                        ; $085C
COMPARE_SCREEN_AND_BANK:
        xor a                           ; $085F
        out (PORT_BANK_SELECT),a        ; $0860
        ld hl,$fee3                     ; $0862
        exx                             ; $0865
        pop de                          ; $0866
        ld a,e                          ; $0867
        call NATIVE_0828                ; $0868
        ld hl,$4000                     ; $086B
        ld bc,$4000                     ; $086E
        ld a,$10                        ; $0871
        out (PORT_SCREEN_WRITE_MODE),a  ; $0873
        in a,(PORT_INPUT_PRIMARY)       ; $0875
L0877:
        ld a,d                          ; $0877
        xor (hl)                        ; $0878
        jp z,L0880                      ; $0879
        exx                             ; $087C
        or (hl)                         ; $087D
        ld (hl),a                       ; $087E
        exx                             ; $087F
L0880:
        cpi                             ; $0880
        jp pe,L0877                     ; $0882
        in a,(PORT_INPUT_PRIMARY)       ; $0885
        xor a                           ; $0887
        out (PORT_SCREEN_WRITE_MODE),a  ; $0888
        dec hl                          ; $088A
        ld bc,$4000                     ; $088B
        exx                             ; $088E
        ld hl,$fee2                     ; $088F
        exx                             ; $0892
L0893:
        ld a,e                          ; $0893
        xor (hl)                        ; $0894
        jp z,L089C                      ; $0895
        exx                             ; $0898
        or (hl)                         ; $0899
        ld (hl),a                       ; $089A
        exx                             ; $089B
L089C:
        cpd                             ; $089C
        jp pe,L0893                     ; $089E
        exx                             ; $08A1
        ld a,$20                        ; $08A2
        out (PORT_BANK_SELECT),a        ; $08A4
        jp (iy)                         ; $08A6
READ_SCREEN_WINDOW_BYTE:
        xor a                           ; $08A8
L08A9:
        out (PORT_SCREEN_WRITE_MODE),a  ; $08A9
        xor a                           ; $08AB
        out (PORT_BANK_SELECT),a        ; $08AC
        ld a,($5f68)                    ; $08AE
        ld l,a                          ; $08B1
        ld h,$00                        ; $08B2
        push hl                         ; $08B4
        ld a,$20                        ; $08B5
        out (PORT_BANK_SELECT),a        ; $08B7
        jp (iy)                         ; $08B9
READ_SCREEN_WINDOW_MODE_10:
        ld a,$10                        ; $08BB
        jp L08A9                        ; $08BD
        db      $BD,$0B,$45,$34,$66,$34,$07,$0C,$00,$00,$36,$34,$6E,$34,$7D,$34 ; $08C0
        db      $00,$00,$00,$00,$00,$00,$DB,$0B,$5E,$34,$24,$0C,$CC,$0B,$EA,$0B ; $08D0
        db      $9F,$0B,$27,$0B,$36,$0B,$45,$0B,$54,$0B,$63,$0B,$72,$0B,$81,$0B ; $08E0
        db      $AE,$0B,$90,$0B,$54,$34,$94,$34,$00,$00,$85,$34,$F9,$0B,$27,$34 ; $08F0
        db      $00,$00,$A4,$40,$B3,$40,$C2,$40,$D1,$40,$E0,$40,$EF,$40,$26,$33 ; $0900
        db      $30,$33,$3A,$33,$44,$33,$4E,$33,$58,$33,$62,$33,$6C,$33,$76,$33 ; $0910
        db      $80,$33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0920
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$45,$34,$24,$0C,$CC,$0B ; $0930
        db      $BD,$0B,$B7,$09,$C3,$09,$D2,$09,$DE,$09,$ED,$09,$F9,$09,$08,$0A ; $0940
        db      $17,$0A,$26,$0A,$35,$0A,$47,$0A,$56,$0A,$65,$0A,$78,$0A,$84,$0A ; $0950
        db      $90,$0A,$9F,$0A,$AE,$0A,$BA,$0A,$C6,$0A,$D5,$0A,$E1,$0A,$ED,$0A ; $0960
        db      $00,$0B,$0C,$0B,$1B,$0B,$00,$00,$15,$0C,$00,$00,$D3,$0B,$00,$00 ; $0970
TERSE_COLON_0980:
        rst     $08                             ; $0980 colon entry
        dw      _DUP                 ; $0981 _DUP
        dw      _LIT                 ; $0983 _LIT
        dw      $0080                ; $0985 inline word
        dw      _gt                  ; $0987 _gt
        dw      _OVER                ; $0989 _OVER
        dw      _LITbyte             ; $098B _LITbyte
        db      $20                  ; $098D inline byte
        dw      _less                ; $098E _less
        dw      _OR                  ; $0990 _OR
        dw      _0BRANCH             ; $0992 _0BRANCH
        dw      L099B                ; $0994 branch target
        dw      _DROP                ; $0996 _DROP
        dw      _LITbyte             ; $0998 _LITbyte
        db      $20                  ; $099A inline byte
L099B:
        dw      _LITbyte             ; $099B _LITbyte
        db      $20                  ; $099D inline byte
        dw      _minussign           ; $099E _minussign
        dw      _ARRAY               ; $09A0 _ARRAY
        dw      $08C0                ; $09A2 inline word
        dw      _at                  ; $09A4 _at
        dw      _DUP                 ; $09A6 _DUP
        dw      _NOT                 ; $09A8 _NOT
        dw      _0BRANCH             ; $09AA _0BRANCH
        dw      L09B4                ; $09AC branch target
        dw      _ARRAY               ; $09AE _ARRAY
        dw      $08C0                ; $09B0 inline word
        dw      _at                  ; $09B2 _at
L09B4:
        dw      _RETURN              ; $09B4 _RETURN
        db      $06,$00,$00,$01,$07,$78,$CC,$0C,$FC,$CC,$CC,$7C,$06,$00,$00,$01 ; $09B6
        db      $0A,$C0,$C0,$C0,$F8,$CC,$CC,$CC,$CC,$CC,$F8,$06,$00,$00,$01,$07 ; $09C6
        db      $78,$CC,$C0,$C0,$C0,$CC,$78,$06,$00,$00,$01,$0A,$0C,$0C,$0C,$7C ; $09D6
        db      $CC,$CC,$CC,$CC,$CC,$7C,$06,$00,$00,$01,$07,$78,$CC,$CC,$F8,$C0 ; $09E6
        db      $CC,$78,$05,$00,$00,$01,$0A,$38,$68,$60,$F8,$60,$60,$60,$60,$60 ; $09F6
        db      $60,$06,$00,$FD,$01,$0A,$78,$CC,$CC,$CC,$CC,$CC,$7C,$0C,$CC,$78 ; $0A06
        db      $06,$00,$00,$01,$0A,$C0,$C0,$C0,$F8,$CC,$CC,$CC,$CC,$CC,$CC,$02 ; $0A16
        db      $00,$00,$01,$0A,$C0,$C0,$00,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$04,$00 ; $0A26
        db      $FD,$01,$0D,$30,$30,$00,$30,$30,$30,$30,$30,$30,$30,$30,$30,$E0 ; $0A36
        db      $06,$00,$00,$01,$0A,$C0,$C0,$C0,$CC,$CC,$D8,$F0,$D8,$CC,$CC,$02 ; $0A46
        db      $00,$00,$01,$0A,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$0A,$00 ; $0A56
        db      $00,$02,$07,$FB,$80,$CC,$C0,$CC,$C0,$CC,$C0,$CC,$C0,$CC,$C0,$CC ; $0A66
        db      $C0,$06,$00,$00,$01,$07,$F8,$CC,$CC,$CC,$CC,$CC,$CC,$06,$00,$00 ; $0A76
        db      $01,$07,$78,$CC,$CC,$CC,$CC,$CC,$78,$06,$00,$FD,$01,$0A,$F8,$CC ; $0A86
        db      $CC,$CC,$CC,$CC,$F8,$C0,$C0,$C0,$06,$00,$FD,$01,$0A,$7C,$CC,$CC ; $0A96
        db      $CC,$CC,$CC,$7C,$0C,$0C,$0C,$05,$00,$00,$01,$07,$D8,$F8,$C0,$C0 ; $0AA6
        db      $C0,$C0,$C0,$06,$00,$00,$01,$07,$78,$CC,$C0,$78,$0C,$CC,$F8,$06 ; $0AB6
        db      $00,$00,$01,$0A,$20,$60,$60,$FC,$60,$60,$60,$60,$64,$38,$06,$00 ; $0AC6
        db      $00,$01,$07,$CC,$CC,$CC,$CC,$CC,$CC,$7C,$06,$00,$00,$01,$07,$CC ; $0AD6
        db      $CC,$CC,$CC,$CC,$78,$30,$0A,$00,$00,$02,$07,$CC,$C0,$CC,$C0,$CC ; $0AE6
        db      $C0,$CC,$C0,$CC,$C0,$CC,$C0,$73,$80,$06,$00,$00,$01,$07,$CC,$CC ; $0AF6
        db      $78,$30,$78,$CC,$CC,$06,$00,$FD,$01,$0A,$CC,$CC,$CC,$CC,$CC,$CC ; $0B06
        db      $7C,$0C,$CC,$78,$06,$00,$00,$01,$07,$FC,$0C,$18,$30,$60,$C0,$FC ; $0B16
        db      $03,$00,$00,$01,$0A,$60,$E0,$60,$60,$60,$60,$60,$60,$60,$60,$06 ; $0B26
        db      $00,$00,$01,$0A,$78,$CC,$CC,$0C,$0C,$78,$C0,$C0,$C0,$FC,$06,$00 ; $0B36
        db      $00,$01,$0A,$78,$CC,$CC,$0C,$78,$0C,$0C,$CC,$CC,$78,$06,$00,$00 ; $0B46
        db      $01,$0A,$CC,$CC,$CC,$CC,$CC,$FC,$0C,$0C,$0C,$0C,$06,$00,$00,$01 ; $0B56
        db      $0A,$FC,$C0,$C0,$C0,$F8,$0C,$0C,$CC,$CC,$78,$06,$00,$00,$01,$0A ; $0B66
        db      $78,$CC,$CC,$C0,$F8,$CC,$CC,$CC,$CC,$78,$06,$00,$00,$01,$0A,$FC ; $0B76
        db      $0C,$0C,$0C,$18,$30,$60,$60,$60,$60,$06,$00,$00,$01,$0A,$78,$CC ; $0B86
        db      $CC,$CC,$CC,$7C,$0C,$CC,$CC,$78,$06,$00,$00,$01,$0A,$78,$CC,$CC ; $0B96
        db      $CC,$CC,$CC,$CC,$CC,$CC,$78,$06,$00,$00,$01,$0A,$78,$CC,$CC,$CC ; $0BA6
        db      $78,$CC,$CC,$CC,$CC,$78,$03,$00,$00,$01,$0A,$00,$00,$00,$00,$00 ; $0BB6
        db      $00,$00,$00,$00,$00,$02,$00,$02,$01,$02,$C0,$C0,$07,$00,$03,$01 ; $0BC6
        db      $03,$60,$92,$0C,$06,$00,$00,$01,$0A,$00,$00,$00,$00,$30,$30,$FC ; $0BD6
        db      $FC,$30,$30,$06,$00,$00,$01,$0A,$0C,$0C,$18,$18,$30,$30,$60,$60 ; $0BE6
        db      $C0,$C0,$06,$00,$00,$01,$09,$C0,$60,$30,$18,$0C,$18,$30,$60,$C0 ; $0BF6
        db      $08,$00,$00,$01,$09,$24,$24,$FF,$24,$24,$24,$FF,$24,$24,$06,$00 ; $0C06
        db      $00,$01,$0A,$00,$00,$20,$10,$08,$FC,$08,$10,$20,$00,$06,$00,$04 ; $0C16
        db      $01,$01,$FC,$04,$00,$04,$01,$01,$FF                             ; $0C26
TERSE_DISABLE_INTERRUPTS:
        di                              ; $0C2F
        jp (iy)                         ; $0C30
NATIVE_0C32:
        ei                              ; $0C32
        jp (iy)                         ; $0C33
NATIVE_0C35:
        push af                         ; $0C35
        ld a,h                          ; $0C36
        cpl                             ; $0C37
        ld h,a                          ; $0C38
        ld a,l                          ; $0C39
        cpl                             ; $0C3A
        ld l,a                          ; $0C3B
        inc hl                          ; $0C3C
        pop af                          ; $0C3D
        ret                             ; $0C3E
TERSE_COLON_0C3F:
        rst     $08                             ; $0C3F colon entry
        dw      _at                  ; $0C40 _at
        dw      _DUP                 ; $0C42 _DUP
        dw      _LITbyte             ; $0C44 _LITbyte
        db      $04                  ; $0C46 inline byte
        dw      _plus                ; $0C47 _plus
        dw      _SWAP                ; $0C49 _SWAP
        dw      _2DUP                ; $0C4B _2DUP
        dw      _bang                ; $0C4D _bang
        dw      _LITbyte             ; $0C4F _LITbyte
        db      $02                  ; $0C51 inline byte
        dw      _plus                ; $0C52 _plus
        dw      _bang                ; $0C54 _bang
        dw      _RETURN              ; $0C56 _RETURN
INTERRUPT_DISABLE:
        di                              ; $0C58
        push hl                         ; $0C59
        push bc                         ; $0C5A
        ld c,a                          ; $0C5B
        xor a                           ; $0C5C
        ld ($feac),a                    ; $0C5D
        ld hl,$feab                     ; $0C60
        or (hl)                         ; $0C63
        ld a,c                          ; $0C64
        pop bc                          ; $0C65
        pop hl                          ; $0C66
        jp nz,L0C6C                     ; $0C67
        ei                              ; $0C6A
        ret                             ; $0C6B
L0C6C:
        push af                         ; $0C6C
        push bc                         ; $0C6D
        push de                         ; $0C6E
        push hl                         ; $0C6F
        exx                             ; $0C70
        ex af,af'                       ; $0C71
        push af                         ; $0C72
        push bc                         ; $0C73
        push de                         ; $0C74
        push hl                         ; $0C75
        push iy                         ; $0C76
        push ix                         ; $0C78
        exx                             ; $0C7A
        ld hl,($feaa)                   ; $0C7B
        xor a                           ; $0C7E
        ld ($feab),a                    ; $0C7F
        jp (hl)                         ; $0C82
INTERRUPT_ENABLE:
        di                              ; $0C83
        push af                         ; $0C84
        xor a                           ; $0C85
        ld ($feab),a                    ; $0C86
        inc a                           ; $0C89
        ld ($feac),a                    ; $0C8A
        pop af                          ; $0C8D
        ei                              ; $0C8E
        ret                             ; $0C8F
NATIVE_0C90:
        call INTERRUPT_DISABLE          ; $0C90
        jp (iy)                         ; $0C93
NATIVE_0C95:
        call INTERRUPT_ENABLE           ; $0C95
        jp (iy)                         ; $0C98
NATIVE_0C9A:
        call INTERRUPT_ENABLE           ; $0C9A
        push de                         ; $0C9D
        ld e,(hl)                       ; $0C9E
        inc hl                          ; $0C9F
        ld d,(hl)                       ; $0CA0
        push de                         ; $0CA1
        pop iy                          ; $0CA2
        inc hl                          ; $0CA4
        ld c,(iy+0)                     ; $0CA5
        ld e,c                          ; $0CA8
        ld b,(iy+1)                     ; $0CA9
        ld d,b                          ; $0CAC
        ld a,(hl)                       ; $0CAD
        inc hl                          ; $0CAE
        cp c                            ; $0CAF
        jp nz,L0CB5                     ; $0CB0
        ld a,(hl)                       ; $0CB3
        cp b                            ; $0CB4
L0CB5:
        jp nz,L0CBD                     ; $0CB5
        push iy                         ; $0CB8
        pop bc                          ; $0CBA
        inc bc                          ; $0CBB
        inc bc                          ; $0CBC
L0CBD:
        inc bc                          ; $0CBD
        inc bc                          ; $0CBE
        ld a,(iy+2)                     ; $0CBF
        cp c                            ; $0CC2
        ld a,(iy+3)                     ; $0CC3
        jp nz,L0CCA                     ; $0CC6
        cp b                            ; $0CC9
L0CCA:
        jp nz,L0CD5                     ; $0CCA
        pop de                          ; $0CCD
        ld hl,$0001                     ; $0CCE
        call INTERRUPT_DISABLE          ; $0CD1
        ret                             ; $0CD4
L0CD5:
        pop hl                          ; $0CD5
        ld a,l                          ; $0CD6
        ld (de),a                       ; $0CD7
        inc de                          ; $0CD8
        ld a,h                          ; $0CD9
        ld (de),a                       ; $0CDA
        ld (iy+0),c                     ; $0CDB
        ld (iy+1),b                     ; $0CDE
        ld hl,$0000                     ; $0CE1
        call INTERRUPT_DISABLE          ; $0CE4
        ret                             ; $0CE7
NATIVE_0CE8:
        call INTERRUPT_ENABLE           ; $0CE8
        ld e,(hl)                       ; $0CEB
        inc hl                          ; $0CEC
        ld d,(hl)                       ; $0CED
        push de                         ; $0CEE
        pop iy                          ; $0CEF
        inc hl                          ; $0CF1
        ld c,(iy+2)                     ; $0CF2
        ld b,(iy+3)                     ; $0CF5
        ld a,(iy+0)                     ; $0CF8
        cp c                            ; $0CFB
        jp nz,L0D03                     ; $0CFC
        ld a,(iy+1)                     ; $0CFF
        cp b                            ; $0D02
L0D03:
        jp nz,L0D0D                     ; $0D03
        ld hl,$0001                     ; $0D06
        call INTERRUPT_DISABLE          ; $0D09
        ret                             ; $0D0C
L0D0D:
        ld a,(bc)                       ; $0D0D
        ld e,a                          ; $0D0E
        inc bc                          ; $0D0F
        ld a,(bc)                       ; $0D10
        ld d,a                          ; $0D11
        dec bc                          ; $0D12
        ld a,(hl)                       ; $0D13
        inc hl                          ; $0D14
        cp c                            ; $0D15
        jp nz,L0D1B                     ; $0D16
        ld a,(hl)                       ; $0D19
        cp b                            ; $0D1A
L0D1B:
        jp nz,L0D23                     ; $0D1B
        push iy                         ; $0D1E
        pop bc                          ; $0D20
        inc bc                          ; $0D21
        inc bc                          ; $0D22
L0D23:
        inc bc                          ; $0D23
        inc bc                          ; $0D24
        ld (iy+2),c                     ; $0D25
        ld (iy+3),b                     ; $0D28
        ld hl,$0000                     ; $0D2B
        call INTERRUPT_DISABLE          ; $0D2E
        ret                             ; $0D31
        db      $F3,$C6,$09,$D3,$00,$C3,$32,$0D,$4E,$FE,$7A,$FE,$20,$FE,$4C,$FE ; $0D32
        db      $00,$FE,$1E,$FE,$E0,$FD,$FE,$FD                                 ; $0D42
NATIVE_0D4A:
        ld hl,$0d3a                     ; $0D4A
        ld a,$01                        ; $0D4D
L0D4F:
        push iy                         ; $0D4F
        ld ($fe85),a                    ; $0D51
        push iy                         ; $0D54
        pop de                          ; $0D56
        call NATIVE_0C9A                ; $0D57
        ld a,l                          ; $0D5A
        or h                            ; $0D5B
        jp z,L0D63                      ; $0D5C
        ld hl,($fe83)                   ; $0D5F
        jp (hl)                         ; $0D62
L0D63:
        pop iy                          ; $0D63
        ret                             ; $0D65
NATIVE_0D66:
        ld hl,$fe95                     ; $0D66
        inc (hl)                        ; $0D69
        ld hl,$0d3e                     ; $0D6A
        ld a,$02                        ; $0D6D
        jp L0D4F                        ; $0D6F
        db      $21,$93,$FE,$34,$3A,$86,$FE,$B7,$C2,$86,$0D,$3A,$99,$FE,$FD,$BE ; $0D72
        db      $1C,$C3,$8E,$0D,$3A,$99,$FE,$47,$FD,$7E,$1C,$B8,$D2,$99,$0D,$3E ; $0D82
        db      $04,$21,$46,$0D,$C3,$9E,$0D,$3E,$03,$21,$42,$0D,$C3,$4F,$0D,$29 ; $0D92
        db      $29                                                             ; $0DA2
NATIVE_0DA3:
        ld l,h                          ; $0DA3
        ld h,$00                        ; $0DA4
        push de                         ; $0DA6
        add hl,hl                       ; $0DA7
        add hl,hl                       ; $0DA8
        add hl,hl                       ; $0DA9
        add hl,hl                       ; $0DAA
        ld e,l                          ; $0DAB
        ld d,h                          ; $0DAC
        add hl,hl                       ; $0DAD
        add hl,hl                       ; $0DAE
        add hl,de                       ; $0DAF
        ex de,hl                        ; $0DB0
        pop hl                          ; $0DB1
        ld a,l                          ; $0DB2
        rlca                            ; $0DB3
        rlca                            ; $0DB4
        and $03                         ; $0DB5
        ld l,h                          ; $0DB7
        ld h,$00                        ; $0DB8
        add hl,de                       ; $0DBA
        ret                             ; $0DBB
NATIVE_0DBC:
        ld b,(iy+30)                    ; $0DBC
        ld c,(iy+29)                    ; $0DBF
        push bc                         ; $0DC2
        pop ix                          ; $0DC3
        ld b,(iy+24)                    ; $0DC5
        ld c,(iy+23)                    ; $0DC8
        add hl,hl                       ; $0DCB
        add hl,hl                       ; $0DCC
        push hl                         ; $0DCD
        ex de,hl                        ; $0DCE
        ld d,(ix+0)                     ; $0DCF
        ld e,$00                        ; $0DD2
        bit 7,b                         ; $0DD4
        jp nz,L0DE1                     ; $0DD6
        sra d                           ; $0DD9
        rr e                            ; $0DDB
        sra d                           ; $0DDD
        rr e                            ; $0DDF
L0DE1:
        bit 6,b                         ; $0DE1
        jp z,L0DEA                      ; $0DE3
        sla d                           ; $0DE6
        rr e                            ; $0DE8
L0DEA:
        bit 6,c                         ; $0DEA
        jp z,L0DF3                      ; $0DEC
        add hl,de                       ; $0DEF
        jp L0DF6                        ; $0DF0
L0DF3:
        or a                            ; $0DF3
        sbc hl,de                       ; $0DF4
L0DF6:
        ex (sp),hl                      ; $0DF6
        ld d,(ix+1)                     ; $0DF7
        ld e,$00                        ; $0DFA
        bit 6,b                         ; $0DFC
        jp z,L0E05                      ; $0DFE
        sla d                           ; $0E01
        rr e                            ; $0E03
L0E05:
        bit 7,b                         ; $0E05
        jp z,L0E12                      ; $0E07
        sla d                           ; $0E0A
        rr e                            ; $0E0C
        sla d                           ; $0E0E
        rr e                            ; $0E10
L0E12:
        bit 7,c                         ; $0E12
        jp z,L0E1C                      ; $0E14
        add hl,de                       ; $0E17
        dec hl                          ; $0E18
        jp L0E1F                        ; $0E19
L0E1C:
        or a                            ; $0E1C
        sbc hl,de                       ; $0E1D
L0E1F:
        pop de                          ; $0E1F
        ld (iy+51),h                    ; $0E20
        ld (iy+50),d                    ; $0E23
        ld (iy+49),e                    ; $0E26
        call NATIVE_0DA3                ; $0E29
        bit 6,c                         ; $0E2C
        jp z,L0E37                      ; $0E2E
        neg                             ; $0E31
        jp nz,L0E37                     ; $0E33
        dec hl                          ; $0E36
L0E37:
        and $03                         ; $0E37
        ld e,a                          ; $0E39
        ld a,c                          ; $0E3A
        and $fc                         ; $0E3B
        or e                            ; $0E3D
        ld (iy+23),a                    ; $0E3E
        ld (iy+46),h                    ; $0E41
        ld (iy+45),l                    ; $0E44
        ret                             ; $0E47
NATIVE_0E48:
        ld a,b                          ; $0E48
        and $0f                         ; $0E49
        jp z,L0E54                      ; $0E4B
        add a,$10                       ; $0E4E
        out (PORT_SCREEN_INTERCEPT),a   ; $0E50
        ld a,$04                        ; $0E52
L0E54:
        out (PORT_EXPAND_COLOR),a       ; $0E54
        ld a,($fe82)                    ; $0E56
        bit 4,c                         ; $0E59
        jp z,L0E89                      ; $0E5B
        bit 5,c                         ; $0E5E
        jp z,L0E76                      ; $0E60
        or a                            ; $0E63
        jp z,L0E71                      ; $0E64
        ld a,$3c                        ; $0E67
        ld ($fe82),a                    ; $0E69
        ld a,$33                        ; $0E6C
        jp L0E73                        ; $0E6E
L0E71:
        ld a,$3f                        ; $0E71
L0E73:
        jp L0E86                        ; $0E73
L0E76:
        or a                            ; $0E76
        jp z,L0E84                      ; $0E77
        ld a,$2c                        ; $0E7A
        ld ($fe82),a                    ; $0E7C
        ld a,$23                        ; $0E7F
        jp L0E86                        ; $0E81
L0E84:
        ld a,$2f                        ; $0E84
L0E86:
        jp L0EB1                        ; $0E86
L0E89:
        bit 5,c                         ; $0E89
        jp z,L0EA1                      ; $0E8B
        or a                            ; $0E8E
        jp z,L0E9C                      ; $0E8F
        ld a,$1c                        ; $0E92
        ld ($fe82),a                    ; $0E94
        ld a,$13                        ; $0E97
        jp L0E9E                        ; $0E99
L0E9C:
        ld a,$1f                        ; $0E9C
L0E9E:
        jp L0EB1                        ; $0E9E
L0EA1:
        or a                            ; $0EA1
        jp z,L0EAF                      ; $0EA2
        ld a,$0c                        ; $0EA5
        ld ($fe82),a                    ; $0EA7
        ld a,$03                        ; $0EAA
        jp L0EB1                        ; $0EAC
L0EAF:
        ld a,$0f                        ; $0EAF
L0EB1:
        out (PORT_SCREEN_WRITE_MASK),a  ; $0EB1
        ld a,$cf                        ; $0EB3
        and c                           ; $0EB5
        ld c,a                          ; $0EB6
        res 2,a                         ; $0EB7
        out (PORT_VIDEO_CONFIG),a       ; $0EB9
        ld a,$24                        ; $0EBB
        bit 7,c                         ; $0EBD
        jp z,L0EC4                      ; $0EBF
        set 4,a                         ; $0EC2
L0EC4:
        bit 6,c                         ; $0EC4
        jp z,L0ECB                      ; $0EC6
        res 5,a                         ; $0EC9
L0ECB:
        bit 3,c                         ; $0ECB
        jp z,L0ED5                      ; $0ECD
        set 1,a                         ; $0ED0
        jp L0ED7                        ; $0ED2
L0ED5:
        set 3,a                         ; $0ED5
L0ED7:
        bit 2,c                         ; $0ED7
        jp z,L0EE1                      ; $0ED9
        inc e                           ; $0EDC
        res 2,a                         ; $0EDD
        set 3,a                         ; $0EDF
L0EE1:
        ld b,a                          ; $0EE1
        out (PORT_PATTERN_MODE),a       ; $0EE2
        push hl                         ; $0EE4
        push ix                         ; $0EE5
        pop hl                          ; $0EE7
        ld a,l                          ; $0EE8
        out (PORT_PATTERN_SOURCE_LO),a  ; $0EE9
        ld a,h                          ; $0EEB
        out (PORT_PATTERN_SOURCE_HI),a  ; $0EEC
        pop hl                          ; $0EEE
        ld a,l                          ; $0EEF
        out (PORT_PATTERN_SKIP),a       ; $0EF0
        ld ($fe80),a                    ; $0EF2
        ld a,h                          ; $0EF5
        out (PORT_PATTERN_DEST_LO),a    ; $0EF6
        ld ($fe7f),a                    ; $0EF8
        ld h,e                          ; $0EFB
        bit 3,c                         ; $0EFC
        jp z,L0F03                      ; $0EFE
        rlc h                           ; $0F01
L0F03:
        bit 3,b                         ; $0F03
        jp z,L0F09                      ; $0F05
        inc h                           ; $0F08
L0F09:
        dec h                           ; $0F09
        bit 7,c                         ; $0F0A
        jp z,L0F20                      ; $0F0C
        bit 6,c                         ; $0F0F
        jp z,L0F1A                      ; $0F11
        ld a,$b0                        ; $0F14
        add a,h                         ; $0F16
        jp L0F1D                        ; $0F17
L0F1A:
        ld a,$b0                        ; $0F1A
        sub h                           ; $0F1C
L0F1D:
        jp L0F2E                        ; $0F1D
L0F20:
        bit 6,c                         ; $0F20
        jp z,L0F2B                      ; $0F22
        ld a,$50                        ; $0F25
        add a,h                         ; $0F27
        jp L0F2E                        ; $0F28
L0F2B:
        ld a,$50                        ; $0F2B
        sub h                           ; $0F2D
L0F2E:
        out (PORT_PATTERN_SKIP),a       ; $0F2E
        ld ($fe81),a                    ; $0F30
        ld a,h                          ; $0F33
        out (PORT_PATTERN_DEST_HI),a    ; $0F34
        ld a,d                          ; $0F36
        dec a                           ; $0F37
        out (PORT_PATTERN_LENGTH),a     ; $0F38
        ld a,($fe82)                    ; $0F3A
        or a                            ; $0F3D
        jp z,L0F5D                      ; $0F3E
        out (PORT_SCREEN_WRITE_MASK),a  ; $0F41
        ld a,b                          ; $0F43
        out (PORT_PATTERN_MODE),a       ; $0F44
        ld a,($fe80)                    ; $0F46
        out (PORT_PATTERN_SKIP),a       ; $0F49
        ld a,($fe7f)                    ; $0F4B
        out (PORT_PATTERN_DEST_LO),a    ; $0F4E
        ld a,($fe81)                    ; $0F50
        out (PORT_PATTERN_SKIP),a       ; $0F53
        xor a                           ; $0F55
        ld ($fe82),a                    ; $0F56
        ld a,d                          ; $0F59
        dec a                           ; $0F5A
        out (PORT_PATTERN_LENGTH),a     ; $0F5B
L0F5D:
        ret                             ; $0F5D
        db      $00,$03,$0C,$0F,$30,$33,$3C,$3F,$C0,$C3,$CC,$CF,$F0,$F3,$FC,$FF ; $0F5E
        db      $00,$05,$0A,$0F,$50,$55,$5A,$5F,$A0,$A5,$AA,$AF,$F0,$F5,$FA,$FF ; $0F6E
NATIVE_0F7E:
        push hl                         ; $0F7E
        push iy                         ; $0F7F
        pop hl                          ; $0F81
        push af                         ; $0F82
        rra                             ; $0F83
        rra                             ; $0F84
        rra                             ; $0F85
        rra                             ; $0F86
        and $0f                         ; $0F87
        ld d,$00                        ; $0F89
        ld e,a                          ; $0F8B
        push hl                         ; $0F8C
        add hl,de                       ; $0F8D
        ld b,(hl)                       ; $0F8E
        pop hl                          ; $0F8F
        pop af                          ; $0F90
        and $0f                         ; $0F91
        ld e,a                          ; $0F93
        add hl,de                       ; $0F94
        ld c,(hl)                       ; $0F95
        pop hl                          ; $0F96
        ret                             ; $0F97
NATIVE_0F98:
        ld a,b                          ; $0F98
        call NATIVE_0F9D                ; $0F99
        ld a,c                          ; $0F9C
NATIVE_0F9D:
        bit 6,(ix+0)                    ; $0F9D
        jp z,L0FB2                      ; $0FA1
        ld (hl),a                       ; $0FA4
        dec hl                          ; $0FA5
        bit 3,(ix+0)                    ; $0FA6
        jp z,L0FAF                      ; $0FAA
        ld (hl),a                       ; $0FAD
        dec hl                          ; $0FAE
L0FAF:
        jp L0FBD                        ; $0FAF
L0FB2:
        ld (hl),a                       ; $0FB2
        inc hl                          ; $0FB3
        bit 3,(ix+0)                    ; $0FB4
        jp z,L0FBD                      ; $0FB8
        ld (hl),a                       ; $0FBB
        inc hl                          ; $0FBC
L0FBD:
        ret                             ; $0FBD
NATIVE_0FBE:
        call NATIVE_0F7E                ; $0FBE
        push bc                         ; $0FC1
        ld a,b                          ; $0FC2
        call NATIVE_0F7E                ; $0FC3
        call NATIVE_0F98                ; $0FC6
        pop bc                          ; $0FC9
        ld a,c                          ; $0FCA
        call NATIVE_0F7E                ; $0FCB
        call NATIVE_0F98                ; $0FCE
        ret                             ; $0FD1
NATIVE_0FD2:
        bit 4,c                         ; $0FD2
        jp z,L0FEA                      ; $0FD4
        bit 5,c                         ; $0FD7
        jp z,L0FE3                      ; $0FD9
        ld a,$3f                        ; $0FDC
        out (PORT_SCREEN_WRITE_MASK),a  ; $0FDE
        jp L0FE7                        ; $0FE0
L0FE3:
        ld a,$2f                        ; $0FE3
        out (PORT_SCREEN_WRITE_MASK),a  ; $0FE5
L0FE7:
        jp L0FFA                        ; $0FE7
L0FEA:
        bit 5,c                         ; $0FEA
        jp z,L0FF6                      ; $0FEC
        ld a,$1f                        ; $0FEF
        out (PORT_SCREEN_WRITE_MASK),a  ; $0FF1
        jp L0FFA                        ; $0FF3
L0FF6:
        ld a,$0f                        ; $0FF6
        out (PORT_SCREEN_WRITE_MASK),a  ; $0FF8
L0FFA:
        ld a,$cf                        ; $0FFA
        and c                           ; $0FFC
        out (PORT_VIDEO_CONFIG),a       ; $0FFD
        ld a,b                          ; $0FFF
        and $0f                         ; $1000
        jp z,L1011                      ; $1002
        add a,$10                       ; $1005
        out (PORT_SCREEN_INTERCEPT),a   ; $1007
        ld a,b                          ; $1009
        and $f0                         ; $100A
        add a,$04                       ; $100C
        jp L1012                        ; $100E
L1011:
        ld a,b                          ; $1011
L1012:
        out (PORT_EXPAND_COLOR),a       ; $1012
        ld b,a                          ; $1014
        push iy                         ; $1015
        push bc                         ; $1017
        ld a,b                          ; $1018
        push ix                         ; $1019
        pop bc                          ; $101B
        ld ix,$0000                     ; $101C
        add ix,sp                       ; $1020
        dec sp                          ; $1022
        dec sp                          ; $1023
        dec sp                          ; $1024
        dec sp                          ; $1025
        bit 3,(ix+0)                    ; $1026
        jp z,L1034                      ; $102A
        ld iy,$0f5e                     ; $102D
        jp L1038                        ; $1031
L1034:
        ld iy,$0f6e                     ; $1034
L1038:
        and $c0                         ; $1038
        rlca                            ; $103A
        rlca                            ; $103B
        rlca                            ; $103C
        cp $06                          ; $103D
        jp nz,L1044                     ; $103F
        add a,$02                       ; $1042
L1044:
        ld (ix-4),a                     ; $1044
L1047:
        ld (ix-2),c                     ; $1047
        ld (ix-1),b                     ; $104A
        ld a,(ix-4)                     ; $104D
        ld (ix-3),a                     ; $1050
L1053:
        ld c,(ix-2)                     ; $1053
        ld b,(ix-1)                     ; $1056
        push de                         ; $1059
        push hl                         ; $105A
L105B:
        push de                         ; $105B
        ld a,(bc)                       ; $105C
        inc bc                          ; $105D
        push bc                         ; $105E
        push af                         ; $105F
        ld a,(ix-4)                     ; $1060
        cp $02                          ; $1063
        jp nz,L1072                     ; $1065
        pop af                          ; $1068
        call NATIVE_0F7E                ; $1069
        call NATIVE_0F98                ; $106C
        jp L108C                        ; $106F
L1072:
        cp $04                          ; $1072
        jp nz,L107E                     ; $1074
        pop af                          ; $1077
        call NATIVE_0FBE                ; $1078
        jp L108C                        ; $107B
L107E:
        pop af                          ; $107E
        call NATIVE_0F7E                ; $107F
        push bc                         ; $1082
        ld a,b                          ; $1083
        call NATIVE_0FBE                ; $1084
        pop bc                          ; $1087
        ld a,c                          ; $1088
        call NATIVE_0FBE                ; $1089
L108C:
        pop bc                          ; $108C
        pop de                          ; $108D
        dec e                           ; $108E
        jp nz,L105B                     ; $108F
        pop hl                          ; $1092
        ld de,$0050                     ; $1093
        bit 7,(ix+0)                    ; $1096
        jp z,L10A3                      ; $109A
        or a                            ; $109D
        sbc hl,de                       ; $109E
        jp L10A4                        ; $10A0
L10A3:
        add hl,de                       ; $10A3
L10A4:
        pop de                          ; $10A4
        dec (ix-3)                      ; $10A5
        jp nz,L1053                     ; $10A8
        dec d                           ; $10AB
        jp nz,L1047                     ; $10AC
        pop de                          ; $10AF
        pop hl                          ; $10B0
        pop bc                          ; $10B1
        pop iy                          ; $10B2
        ret                             ; $10B4
NATIVE_10B5:
        ld a,b                          ; $10B5
        and $0f                         ; $10B6
        add a,$10                       ; $10B8
        out (PORT_SCREEN_INTERCEPT),a   ; $10BA
        ld a,$04                        ; $10BC
        out (PORT_EXPAND_COLOR),a       ; $10BE
        bit 4,c                         ; $10C0
        jp z,L10D8                      ; $10C2
        bit 5,c                         ; $10C5
        jp z,L10D1                      ; $10C7
        ld a,$3f                        ; $10CA
        out (PORT_SCREEN_WRITE_MASK),a  ; $10CC
        jp L10D5                        ; $10CE
L10D1:
        ld a,$2f                        ; $10D1
        out (PORT_SCREEN_WRITE_MASK),a  ; $10D3
L10D5:
        jp L10E8                        ; $10D5
L10D8:
        bit 5,c                         ; $10D8
        jp z,L10E4                      ; $10DA
        ld a,$1f                        ; $10DD
        out (PORT_SCREEN_WRITE_MASK),a  ; $10DF
        jp L10E8                        ; $10E1
L10E4:
        ld a,$0f                        ; $10E4
        out (PORT_SCREEN_WRITE_MASK),a  ; $10E6
L10E8:
        ld a,$cf                        ; $10E8
        and c                           ; $10EA
        out (PORT_VIDEO_CONFIG),a       ; $10EB
        ld a,c                          ; $10ED
        push ix                         ; $10EE
        pop bc                          ; $10F0
        bit 7,a                         ; $10F1
        jp nz,L1133                     ; $10F3
        bit 6,a                         ; $10F6
        jp z,L1117                      ; $10F8
L10FB:
        push de                         ; $10FB
        push hl                         ; $10FC
L10FD:
        ld a,(bc)                       ; $10FD
        ld (hl),a                       ; $10FE
        dec hl                          ; $10FF
        ld (hl),a                       ; $1100
        dec hl                          ; $1101
        inc bc                          ; $1102
        dec e                           ; $1103
        jp nz,L10FD                     ; $1104
        ld (hl),e                       ; $1107
        dec hl                          ; $1108
        ld (hl),e                       ; $1109
        pop hl                          ; $110A
        ld de,$0050                     ; $110B
        add hl,de                       ; $110E
        pop de                          ; $110F
        dec d                           ; $1110
        jp nz,L10FB                     ; $1111
        jp L1130                        ; $1114
L1117:
        push de                         ; $1117
        push hl                         ; $1118
L1119:
        ld a,(bc)                       ; $1119
        ld (hl),a                       ; $111A
        inc hl                          ; $111B
        ld (hl),a                       ; $111C
        inc hl                          ; $111D
        inc bc                          ; $111E
        dec e                           ; $111F
        jp nz,L1119                     ; $1120
        ld (hl),e                       ; $1123
        inc hl                          ; $1124
        ld (hl),e                       ; $1125
        pop hl                          ; $1126
        ld de,$0050                     ; $1127
        add hl,de                       ; $112A
        pop de                          ; $112B
        dec d                           ; $112C
        jp nz,L1117                     ; $112D
L1130:
        jp L1173                        ; $1130
L1133:
        bit 6,a                         ; $1133
        jp z,L1157                      ; $1135
L1138:
        push de                         ; $1138
        push hl                         ; $1139
L113A:
        ld a,(bc)                       ; $113A
        ld (hl),a                       ; $113B
        dec hl                          ; $113C
        ld (hl),a                       ; $113D
        dec hl                          ; $113E
        inc bc                          ; $113F
        dec e                           ; $1140
        jp nz,L113A                     ; $1141
        ld (hl),e                       ; $1144
        dec hl                          ; $1145
        ld (hl),e                       ; $1146
        pop hl                          ; $1147
        ld de,$0050                     ; $1148
        scf                             ; $114B
        ccf                             ; $114C
        sbc hl,de                       ; $114D
        pop de                          ; $114F
        dec d                           ; $1150
        jp nz,L1138                     ; $1151
        jp L1173                        ; $1154
L1157:
        push de                         ; $1157
        push hl                         ; $1158
L1159:
        ld a,(bc)                       ; $1159
        ld (hl),a                       ; $115A
        inc hl                          ; $115B
        ld (hl),a                       ; $115C
        inc hl                          ; $115D
        inc bc                          ; $115E
        dec e                           ; $115F
        jp nz,L1159                     ; $1160
        ld (hl),e                       ; $1163
        inc hl                          ; $1164
        ld (hl),e                       ; $1165
        pop hl                          ; $1166
        ld de,$0050                     ; $1167
        scf                             ; $116A
        ccf                             ; $116B
        sbc hl,de                       ; $116C
        pop de                          ; $116E
        dec d                           ; $116F
        jp nz,L1157                     ; $1170
L1173:
        ret                             ; $1173
L1174:
        push hl                         ; $1174
        xor a                           ; $1175
        out (PORT_SCREEN_INTERCEPT),a   ; $1176
        push ix                         ; $1178
        pop hl                          ; $117A
        ld a,(hl)                       ; $117B
        cp $af                          ; $117C
        jp nz,L1198                     ; $117E
        ld a,$15                        ; $1181
        out (PORT_SCREEN_INTERCEPT),a   ; $1183
        ld a,$2a                        ; $1185
        out (PORT_SCREEN_INTERCEPT),a   ; $1187
        ld a,$3f                        ; $1189
        out (PORT_SCREEN_INTERCEPT),a   ; $118B
        ld a,$01                        ; $118D
        ld ($fe82),a                    ; $118F
        inc hl                          ; $1192
        inc hl                          ; $1193
        inc hl                          ; $1194
        jp L11EB                        ; $1195
L1198:
        and $f0                         ; $1198
        cp $10                          ; $119A
        jp nz,L11DF                     ; $119C
        inc hl                          ; $119F
        ld a,(hl)                       ; $11A0
        and $f0                         ; $11A1
        cp $20                          ; $11A3
        jp nz,L11D3                     ; $11A5
        inc hl                          ; $11A8
        ld a,(hl)                       ; $11A9
        and $f0                         ; $11AA
        cp $30                          ; $11AC
        jp nz,L11C2                     ; $11AE
        dec hl                          ; $11B1
        dec hl                          ; $11B2
        ld a,(hl)                       ; $11B3
        out (PORT_SCREEN_INTERCEPT),a   ; $11B4
        inc hl                          ; $11B6
        ld a,(hl)                       ; $11B7
        out (PORT_SCREEN_INTERCEPT),a   ; $11B8
        inc hl                          ; $11BA
        ld a,(hl)                       ; $11BB
        out (PORT_SCREEN_INTERCEPT),a   ; $11BC
        inc hl                          ; $11BE
        jp L11D0                        ; $11BF
L11C2:
        ld a,$11                        ; $11C2
        out (PORT_SCREEN_INTERCEPT),a   ; $11C4
        ld a,$22                        ; $11C6
        out (PORT_SCREEN_INTERCEPT),a   ; $11C8
        ld a,$33                        ; $11CA
        out (PORT_SCREEN_INTERCEPT),a   ; $11CC
        dec hl                          ; $11CE
        dec hl                          ; $11CF
L11D0:
        jp L11DC                        ; $11D0
L11D3:
        ld a,$11                        ; $11D3
        out (PORT_SCREEN_INTERCEPT),a   ; $11D5
        ld a,$22                        ; $11D7
        out (PORT_SCREEN_INTERCEPT),a   ; $11D9
        dec hl                          ; $11DB
L11DC:
        jp L11EB                        ; $11DC
L11DF:
        ld a,$11                        ; $11DF
        out (PORT_SCREEN_INTERCEPT),a   ; $11E1
        ld a,$22                        ; $11E3
        out (PORT_SCREEN_INTERCEPT),a   ; $11E5
        ld a,$33                        ; $11E7
        out (PORT_SCREEN_INTERCEPT),a   ; $11E9
L11EB:
        push hl                         ; $11EB
        pop ix                          ; $11EC
        pop hl                          ; $11EE
        ld a,b                          ; $11EF
        and $c0                         ; $11F0
        jp nz,NATIVE_0FD2               ; $11F2
        jp NATIVE_0E48                  ; $11F5
L11F8:
        ld e,(ix+0)                     ; $11F8
        inc ix                          ; $11FB
        ld d,(ix+0)                     ; $11FD
        inc ix                          ; $1200
        jp L1174                        ; $1202
NATIVE_1205:
        ld b,(iy+24)                    ; $1205
        ld (iy+32),b                    ; $1208
        ld c,(iy+23)                    ; $120B
        ld (iy+31),c                    ; $120E
        ld h,(iy+30)                    ; $1211
        ld l,(iy+29)                    ; $1214
        ld (iy+44),h                    ; $1217
        ld (iy+43),l                    ; $121A
        inc hl                          ; $121D
        inc hl                          ; $121E
        push hl                         ; $121F
        pop ix                          ; $1220
        ld h,(iy+46)                    ; $1222
        ld l,(iy+45)                    ; $1225
        ld (iy+48),h                    ; $1228
        ld (iy+47),l                    ; $122B
        set 4,(iy+33)                   ; $122E
        jp L11F8                        ; $1232
NATIVE_1235:
        ld b,(iy+32)                    ; $1235
        ld c,(iy+31)                    ; $1238
        ld h,(iy+44)                    ; $123B
        ld l,(iy+43)                    ; $123E
        inc hl                          ; $1241
        inc hl                          ; $1242
        push hl                         ; $1243
        pop ix                          ; $1244
        ld h,(iy+48)                    ; $1246
        ld l,(iy+47)                    ; $1249
        res 4,(iy+33)                   ; $124C
        jp L11F8                        ; $1250
NATIVE_1253:
        bit 2,(iy+33)                   ; $1253
        jp nz,L1269                     ; $1257
        ld a,(iy+44)                    ; $125A
        or (iy+43)                      ; $125D
        jp z,L1266                      ; $1260
        call NATIVE_1235                ; $1263
L1266:
        jp L126D                        ; $1266
L1269:
        res 2,(iy+33)                   ; $1269
L126D:
        bit 1,(iy+33)                   ; $126D
        jp nz,L1290                     ; $1271
        call NATIVE_1205                ; $1274
        bit 0,(iy+15)                   ; $1277
        jp z,L128D                      ; $127B
        in a,(PORT_SCREEN_INTERCEPT)    ; $127E
        and $07                         ; $1280
        jp z,L128D                      ; $1282
        set 1,(iy+17)                   ; $1285
        set 5,(iy+15)                   ; $1289
L128D:
        jp L1294                        ; $128D
L1290:
        res 1,(iy+33)                   ; $1290
L1294:
        ret                             ; $1294
        db      $CD,$53,$12,$FD,$7E,$11,$A7,$C2,$A7,$12,$FD,$CB,$04,$56,$C0,$C3 ; $1295
        db      $66,$0D,$FD,$36,$0F,$00,$FD,$36,$10,$00,$FD,$CB,$04,$96,$C3,$4A ; $12A5
        db      $0D                                                             ; $12B5
NATIVE_12B6:
        ei                              ; $12B6
        push af                         ; $12B7
        push bc                         ; $12B8
        push de                         ; $12B9
        push hl                         ; $12BA
        exx                             ; $12BB
        ex af,af'                       ; $12BC
        push af                         ; $12BD
        push bc                         ; $12BE
        push de                         ; $12BF
        push hl                         ; $12C0
        push iy                         ; $12C1
        push ix                         ; $12C3
        di                              ; $12C5
        ld a,($fea3)                    ; $12C6
        out (PORT_INTERRUPT_ENABLE),a   ; $12C9
        ld a,$fe                        ; $12CB
        ld i,a                          ; $12CD
        ld a,$a8                        ; $12CF
        out (PORT_VIDEO_HORIZON),a      ; $12D1
        ei                              ; $12D3
        ld a,($feac)                    ; $12D4
        or a                            ; $12D7
        jp z,L12E7                      ; $12D8
        ld de,$12e7                     ; $12DB
        ld hl,$feaa                     ; $12DE
        ld (hl),e                       ; $12E1
        inc hl                          ; $12E2
        ld (hl),d                       ; $12E3
        jp L13CA                        ; $12E4
L12E7:
        di                              ; $12E7
        ld hl,$fea0                     ; $12E8
        inc (hl)                        ; $12EB
        ld a,($fe97)                    ; $12EC
        cp $00                          ; $12EF
        jp nz,L13CA                     ; $12F1
        ld a,$01                        ; $12F4
        ld ($fe97),a                    ; $12F6
        ei                              ; $12F9
        xor a                           ; $12FA
        ld ($fe92),a                    ; $12FB
        ld a,($fe97)                    ; $12FE
        cp $01                          ; $1301
        jp nz,L1315                     ; $1303
        ld a,($fe92)                    ; $1306
        or a                            ; $1309
        jp nz,L1315                     ; $130A
        ld hl,$0d42                     ; $130D
        call NATIVE_0CE8                ; $1310
        ld a,l                          ; $1313
        or h                            ; $1314
L1315:
        jp nz,L133D                     ; $1315
        ld hl,$fe93                     ; $1318
        dec (hl)                        ; $131B
        push de                         ; $131C
        pop iy                          ; $131D
        ld hl,$1332                     ; $131F
        push hl                         ; $1322
        ld h,(iy+9)                     ; $1323
        ld l,(iy+8)                     ; $1326
        ld a,($fe9f)                    ; $1329
        out ($00),a                     ; $132C
        call INTERRUPT_ENABLE           ; $132E
        jp (hl)                         ; $1331
        db      $CD,$58,$0C,$3A,$9B,$FE,$D3,$00,$C3,$FE,$12                     ; $1332
L133D:
        di                              ; $133D
        ld a,($fe98)                    ; $133E
        cp $00                          ; $1341
        jp nz,L13C5                     ; $1343
        ld a,$01                        ; $1346
        ld ($fe98),a                    ; $1348
        ei                              ; $134B
        ld a,($fe95)                    ; $134C
        ld ($fe94),a                    ; $134F
L1352:
        ld a,($fe98)                    ; $1352
        cp $01                          ; $1355
        jp nz,L136F                     ; $1357
        ld a,($fe94)                    ; $135A
        or a                            ; $135D
        jp z,L136C                      ; $135E
        ld hl,$0d3e                     ; $1361
        call NATIVE_0CE8                ; $1364
        ld a,l                          ; $1367
        or h                            ; $1368
        jp L136F                        ; $1369
L136C:
        ld a,$01                        ; $136C
        or a                            ; $136E
L136F:
        jp nz,L13C0                     ; $136F
        push de                         ; $1372
        pop iy                          ; $1373
        ld hl,$fe95                     ; $1375
        dec (hl)                        ; $1378
        ld hl,$fe94                     ; $1379
        dec (hl)                        ; $137C
        bit 0,(iy+4)                    ; $137D
        jp z,L138A                      ; $1381
        call NATIVE_0D4A                ; $1384
        jp L13BD                        ; $1387
L138A:
        ld a,($fe9d)                    ; $138A
        out ($00),a                     ; $138D
        ld a,($fea0)                    ; $138F
        sub (iy+10)                     ; $1392
        ld b,(iy+12)                    ; $1395
        cp b                            ; $1398
        jp c,L139D                      ; $1399
        ld a,b                          ; $139C
L139D:
        or a                            ; $139D
        jp z,L13B2                      ; $139E
        ld hl,$13b5                     ; $13A1
        push hl                         ; $13A4
        ld h,(iy+7)                     ; $13A5
        ld l,(iy+6)                     ; $13A8
        call INTERRUPT_ENABLE           ; $13AB
        jp (hl)                         ; $13AE
        db      $C3,$B5,$13                                                     ; $13AF
L13B2:
        call NATIVE_0D66                ; $13B2
        call INTERRUPT_DISABLE          ; $13B5
        ld a,($fe9b)                    ; $13B8
        out ($00),a                     ; $13BB
L13BD:
        jp L1352                        ; $13BD
L13C0:
        ld a,$00                        ; $13C0
        ld ($fe98),a                    ; $13C2
L13C5:
        ld a,$00                        ; $13C5
        ld ($fe97),a                    ; $13C7
L13CA:
        pop ix                          ; $13CA
        pop iy                          ; $13CC
        pop hl                          ; $13CE
        pop de                          ; $13CF
        pop bc                          ; $13D0
        pop af                          ; $13D1
        ex af,af'                       ; $13D2
        exx                             ; $13D3
        pop hl                          ; $13D4
        pop de                          ; $13D5
        pop bc                          ; $13D6
        pop af                          ; $13D7
        ei                              ; $13D8
        ret                             ; $13D9
INSTALL_INTERRUPT_HANDLER:
        call INTERRUPT_ENABLE           ; $13DA
        ld a,$08                        ; $13DD
        out (PORT_INTERRUPT_VECTOR),a   ; $13DF
        im 2                            ; $13E1
        call NATIVE_12B6                ; $13E3
        jp (iy)                         ; $13E6
        db      $21,$B0,$FD,$AF,$4F,$06,$10,$7E,$B1,$D3,$C0,$23,$7E,$B1,$D3,$C1 ; $13E8
        db      $23,$7E,$B1,$D3,$C2,$23,$3E,$10,$81,$4F,$10,$EB,$C9,$FB,$F5,$C5 ; $13F8
        db      $D5,$E5,$D9,$08,$F5,$C5,$D5,$E5,$FD,$E5,$DD,$E5,$3A,$AF,$FD,$B7 ; $1408
        db      $CA,$22,$14,$CD,$E8,$13,$AF,$32,$AF,$FD,$F3,$3A,$A2,$FE,$D3,$0F ; $1418
        db      $3E,$FE,$ED,$47,$3E,$A6,$D3,$0D,$FB,$3A,$97,$FE,$FE,$01,$C2,$3E ; $1428
        db      $14,$3E,$02,$32,$97,$FE,$3A,$AC,$FE,$B7,$CA,$51,$14,$11,$51,$14 ; $1438
        db      $21,$AA,$FE,$73,$23,$72,$C3,$CA,$13,$F3,$3A,$96,$FE,$FE,$00,$C2 ; $1448
        db      $A8,$14,$3E,$01,$32,$96,$FE,$FB,$AF,$32,$92,$FE,$3A,$96,$FE,$FE ; $1458
        db      $01,$C2,$7B,$14,$3A,$92,$FE,$B7,$C2,$7B,$14,$21,$46,$0D,$CD,$E8 ; $1468
        db      $0C,$7D,$B4,$C2,$A3,$14,$21,$93,$FE,$35,$D5,$FD,$E1,$21,$98,$14 ; $1478
        db      $E5,$FD,$66,$09,$FD,$6E,$08,$3A,$9E,$FE,$D3,$00,$CD,$83,$0C,$E9 ; $1488
        db      $CD,$58,$0C,$3A,$9B,$FE,$D3,$00,$C3,$64,$14,$3E,$00,$32,$96,$FE ; $1498
        db      $C3,$CA,$13,$F5,$3A,$A1,$FE,$D3,$0F,$3E,$FE,$ED,$47,$3E,$A4,$D3 ; $14A8
        db      $0D,$FB,$3A,$96,$FE,$FE,$01,$C2,$C7,$14,$3E,$02,$32,$96,$FE,$3A ; $14B8
        db      $98,$FE,$FE,$01,$C2,$D4,$14,$3E,$02,$32,$98,$FE,$F1,$C9,$ED,$43 ; $14C8
        db      $8B,$FE                                                         ; $14D8
L14DA:
        ld a,($fe9b)                    ; $14DA
        out ($00),a                     ; $14DD
        ei                              ; $14DF
        call INTERRUPT_DISABLE          ; $14E0
        ld a,($fe91)                    ; $14E3
        or a                            ; $14E6
        jp z,NATIVE_1501                ; $14E7
        call INTERRUPT_ENABLE           ; $14EA
        xor a                           ; $14ED
        ld ($fe91),a                    ; $14EE
        ld bc,($fe8b)                   ; $14F1
        ld iy,($fe8d)                   ; $14F5
        ld hl,$0000                     ; $14F9
        ld ($fe8f),hl                   ; $14FC
        jp (iy)                         ; $14FF
NATIVE_1501:
        ld ($fe87),sp                   ; $1501
        ld ($fe89),ix                   ; $1505
        ld hl,$0d3a                     ; $1509
        call NATIVE_0CE8                ; $150C
        ld a,l                          ; $150F
        or h                            ; $1510
        jp nz,L156C                     ; $1511
        ld ($fe8f),de                   ; $1514
        push de                         ; $1518
        pop iy                          ; $1519
        bit 4,(iy+4)                    ; $151B
        jp z,L1532                      ; $151F
        ld l,(iy+21)                    ; $1522
        ld h,(iy+22)                    ; $1525
        push hl                         ; $1528
        pop ix                          ; $1529
        bit 0,(iy+4)                    ; $152B
        jp L1534                        ; $152F
L1532:
        xor a                           ; $1532
        inc a                           ; $1533
L1534:
        jp z,L1544                      ; $1534
        ld bc,$1574                     ; $1537
        dec ix                          ; $153A
        ld (ix+0),b                     ; $153C
        dec ix                          ; $153F
        ld (ix+0),c                     ; $1541
L1544:
        ld a,($fe9c)                    ; $1544
        out ($00),a                     ; $1547
        bit 0,(iy+4)                    ; $1549
        jp z,L155D                      ; $154D
        ld c,(iy+0)                     ; $1550
        ld b,(iy+1)                     ; $1553
        res 0,(iy+4)                    ; $1556
        jp L1563                        ; $155A
L155D:
        ld c,(iy+2)                     ; $155D
        ld b,(iy+3)                     ; $1560
L1563:
        ld iy,($fe8d)                   ; $1563
        jp (iy)                         ; $1567
NATIVE_1569:
        jp L1571                        ; $1569
L156C:
        ld a,($fe9a)                    ; $156C
        out ($00),a                     ; $156F
L1571:
        jp L158E                        ; $1571
        db      $76,$15,$FD,$2A,$8F,$FE,$FD,$CB,$04,$8E                         ; $1574
L157E:
        bit 4,(iy+4)                    ; $157E
        jp z,L158E                      ; $1582
        push ix                         ; $1585
        pop hl                          ; $1587
        ld (iy+21),l                    ; $1588
        ld (iy+22),h                    ; $158B
L158E:
        ld sp,($fe87)                   ; $158E
        ld ix,($fe89)                   ; $1592
        jp L14DA                        ; $1596
        db      $FD,$E3,$FD,$70,$01,$FD,$71,$00,$FD,$7E,$04,$CB,$4F,$CA,$AC,$15 ; $1599
        db      $2F,$CB,$5F,$C2,$B9,$15,$CD,$4A,$0D,$3A,$A0,$FE,$3D,$FD,$77,$0A ; $15A9
        db      $FD,$CB,$04,$9E,$FD,$CB,$04,$CE,$FD,$CB,$04,$C6,$FD,$E5,$E1,$ED ; $15B9
        db      $5B,$8F,$FE,$B7,$ED,$52,$C2,$D9,$15,$CD,$4A,$0D,$E1,$C3,$7E,$15 ; $15C9
        db      $FD,$E1,$DD,$4E,$00,$DD,$23,$DD,$46,$00,$DD,$23,$FD,$E9         ; $15D9
NATIVE_15E7:
        ld iy,($fe8f)                   ; $15E7
        ld (iy+2),c                     ; $15EB
        ld (iy+3),b                     ; $15EE
        call NATIVE_0D4A                ; $15F1
        jp L157E                        ; $15F4
        db      $FD,$2A,$8F,$FE,$FD,$71,$02,$FD,$70,$03,$FD,$CB,$04,$DE,$C3,$7E ; $15F7
        db      $15,$FD,$E3,$C5,$FD,$CB,$04,$5E,$CA,$20,$16,$CD,$4A,$0D,$3A,$A0 ; $1607
        db      $FE,$3D,$FD,$77,$0A,$FD,$CB,$04,$9E,$C1,$FD,$E1,$FD,$E9,$08,$C5 ; $1617
        db      $78,$FD,$66,$1A,$FD,$6E,$19,$FD,$56,$24,$FD,$5E,$23,$FD,$46,$26 ; $1627
        db      $FD,$4E,$25,$D9,$FD,$66,$1C,$FD,$6E,$1B,$FD,$56,$28,$FD,$5E,$27 ; $1637
        db      $FD,$46,$2A,$FD,$4E,$29,$EB,$09,$EB,$19,$D9,$EB,$09,$EB,$19,$D9 ; $1647
        db      $3D,$C2,$4D,$16,$FD,$72,$28,$FD,$73,$27,$E5,$D9,$FD,$72,$24,$FD ; $1657
        db      $73,$23,$D1,$EB,$C1,$08,$C9,$AF,$E5,$ED,$52,$08,$E1,$ED,$42,$D2 ; $1667
        db      $7F,$16,$08,$30,$09,$C3,$84,$16,$08,$38,$03,$28,$01,$C9,$3C,$FD ; $1677
        db      $CB,$11,$D6,$C9,$08,$E5,$D5,$D9,$D1,$FD,$CB,$10,$5E,$CA,$AE,$16 ; $1687
        db      $FD,$66,$35,$FD,$6E,$34,$FD,$46,$1A,$FD,$4E,$19,$CD,$6E,$16,$A7 ; $1697
        db      $CA,$AE,$16,$FD,$CB,$12,$E6,$D1,$FD,$CB,$10,$66,$CA,$CD,$16,$FD ; $16A7
        db      $66,$37,$FD,$6E,$36,$FD,$46,$1C,$FD,$4E,$1B,$CD,$6E,$16,$A7,$CA ; $16B7
        db      $CD,$16,$FD,$CB,$12,$EE,$08,$D9,$C9,$08,$0E,$00,$51,$FD,$66,$0E ; $16C7
        db      $FD,$6E,$0D,$7D,$58,$B7,$ED,$52,$D2,$EB,$16,$4D,$47,$FD,$CB,$11 ; $16D7
        db      $DE,$C3,$F2,$16,$C2,$F2,$16,$FD,$CB,$11,$DE,$08,$C9,$08,$FD,$6E ; $16E7
        db      $13,$FD,$66,$14,$7E,$B7,$CA,$06,$17,$36,$00,$FD,$CB,$11,$E6,$08 ; $16F7
        db      $C9,$08,$D9,$FD,$6E,$38,$FD,$66,$39,$FD,$CB,$22,$56,$CA,$25,$17 ; $1707
        db      $FD,$5E,$3D,$16,$00,$CB,$23,$CB,$12,$19,$5E,$23,$56,$EB,$FD,$CB ; $1717
        db      $22,$4E,$CA,$50,$17,$FD,$7E,$42,$FD,$46,$3C,$16,$FF,$CB,$3A,$1F ; $1727
        db      $10,$FB,$CE,$00,$A2,$5F,$16,$00,$19,$19,$19,$FD,$7E,$17,$E6,$3F ; $1737
        db      $B6,$FD,$77,$17,$23,$5E,$23,$56,$EB,$FD,$CB,$22,$46,$CA,$C7,$17 ; $1747
        db      $D9,$78,$D9,$47,$FD,$7E,$3A,$FD,$5E,$3B,$4B,$16,$00,$19,$19,$19 ; $1757
        db      $FD,$CB,$22,$5E,$CA,$9D,$17,$19,$23,$90,$D2,$75,$17,$BF,$C2,$9A ; $1767
        db      $17,$ED,$44,$47,$23,$23,$23,$0C,$FD,$7E,$17,$E6,$3F,$B6,$FD,$77 ; $1777
        db      $17,$23,$7E,$B7,$C2,$97,$17,$23,$5E,$23,$56,$EB,$0E,$00,$18,$E8 ; $1787
        db      $C3,$70,$17,$C3,$BC,$17,$90,$D2,$A2,$17,$BF,$C2,$BC,$17,$ED,$44 ; $1797
        db      $47,$23,$23,$23,$0C,$7E,$B7,$C2,$B9,$17,$23,$5E,$23,$56,$EB,$7E ; $17A7
        db      $0E,$00,$C3,$9D,$17,$23,$5E,$23,$56,$EB,$FD,$77,$3A,$FD,$71,$3B ; $17B7
        db      $FD,$74,$1E,$FD,$75,$1D,$D9,$08,$C9,$01,$01,$01,$FF,$FF,$FE,$FD ; $17C7
        db      $FC,$FB,$FA,$F8,$F7,$F5,$F3,$F1,$EF,$ED,$EA,$E7,$E5,$E2,$DF,$DC ; $17D7
        db      $D8,$D5,$D1,$CE,$CA,$C6,$C2,$BE,$B9,$B5,$B1,$AC,$A7,$A2,$9D,$98 ; $17E7
        db      $93,$8E,$89,$84,$7E,$79,$73,$6D,$68,$62,$5C,$56,$50,$4A,$44,$3E ; $17F7
        db      $38,$32,$2C,$26,$1F,$19,$13,$0D,$06,$00,$21,$D0,$17,$16,$00,$FE ; $1807
        db      $40,$D2,$23,$18,$5F,$19,$5E,$16,$00,$C3,$4E,$18,$D6,$40,$FE,$40 ; $1817
        db      $D2,$35,$18,$EE,$3F,$5F,$19,$23,$5E,$16,$FF,$C3,$4E,$18,$D6,$40 ; $1827
        db      $FE,$40,$D2,$44,$18,$5F,$19,$5E,$16,$FF,$C3,$4E,$18,$D6,$40,$EE ; $1837
        db      $3F,$5F,$19,$23,$5E,$16,$00,$69,$60,$7A,$B7,$F5,$7B,$FE,$01,$CA ; $1847
        db      $6E,$18,$4B,$1E,$00,$AF,$06,$10,$CB,$3C,$CB,$1D,$D2,$67,$18,$81 ; $1857
        db      $1F,$CB,$1B,$10,$F3,$67,$6B,$F1,$CA,$79,$18,$7D,$2F,$6F,$7C,$2F ; $1867
        db      $67,$23,$C9,$FD,$7E,$42,$FD,$4E,$3E,$FD,$46,$3F,$F5,$C5,$CD,$11 ; $1877
        db      $18,$FD,$75,$23,$FD,$74,$24,$C1,$F1,$F5,$D6,$40,$CD,$11,$18,$FD ; $1887
        db      $75,$27,$FD,$74,$28,$FD,$4E,$40,$FD,$46,$41,$78,$B1,$CA,$C3,$18 ; $1897
        db      $F1,$F5,$C5,$CD,$11,$18,$FD,$75,$25,$FD,$74,$26,$C1,$F1,$D6,$40 ; $18A7
        db      $CD,$11,$18,$FD,$75,$29,$FD,$74,$2A,$C3,$D1,$18,$F1,$AF,$FD,$77 ; $18B7
        db      $25,$FD,$77,$26,$FD,$77,$29,$FD,$77,$2A,$FD,$CB,$0F,$E6,$C9,$08 ; $18C7
        db      $78,$D9,$47,$FD,$5E,$40,$FD,$56,$41,$7B,$B2,$CA,$F4,$18,$FD,$6E ; $18D7
        db      $3E,$FD,$66,$3F,$19,$10,$FD,$FD,$75,$3E,$FD,$74,$3F,$FD,$7E,$43 ; $18E7
        db      $B7,$CA,$09,$19,$90,$D2,$00,$19,$AF,$FD,$77,$43,$C2,$09,$19,$CD ; $18F7
        db      $7A,$18,$D9,$08,$C9,$FD,$7E,$0D,$90,$FD,$77,$0D,$FD,$7E,$0E,$DE ; $1907
        db      $00,$FD,$77,$0E,$FD,$46,$0B,$AF,$91,$10,$FD,$FD,$86,$0A,$FD,$77 ; $1917
        db      $0A,$FD,$CB,$21,$5E,$C2,$98,$12,$FD,$CB,$0F,$6E,$C2,$98,$12,$FD ; $1927
        db      $CB,$21,$46,$C2,$82,$19,$FD,$7E,$1F,$FD,$AE,$17,$C2,$82,$19,$FD ; $1937
        db      $7E,$2B,$FD,$AE,$1D,$C2,$82,$19,$FD,$7E,$2C,$FD,$AE,$1E,$C2,$82 ; $1947
        db      $19,$E5,$FD,$66,$1A,$FD,$6E,$19,$3E,$C0,$A5,$6F,$3E,$C0,$A3,$4F ; $1957
        db      $42,$AF,$ED,$42,$E1,$C2,$82,$19,$E5,$FD,$46,$1C,$FD,$4E,$1B,$3E ; $1967
        db      $C0,$A5,$6F,$3E,$C0,$A1,$4F,$AF,$ED,$42,$E1,$FD,$74,$1C,$FD,$75 ; $1977
        db      $1B,$FD,$72,$1A,$FD,$73,$19,$CA,$98,$12,$FD,$CB,$21,$86,$CD,$BC ; $1987
        db      $0D,$FD,$CB,$04,$56,$CA,$72,$0D,$FD,$CB,$21,$EE,$C9,$06,$00,$FD ; $1997
        db      $4E,$0B,$B9,$DA,$66,$0D,$91,$04,$B9,$D2,$AD,$19,$4F,$3A,$A0,$FE ; $19A7
        db      $91,$FD,$77,$0A,$0E,$00,$FD,$7E,$0F,$CB,$4F,$C4,$F4,$16,$CB,$7F ; $19B7
        db      $C4,$D0,$16,$CB,$6F,$C2,$E6,$19,$CD,$25,$16,$CB,$67,$CA,$DA,$19 ; $19C7
        db      $CD,$D6,$18,$CB,$5F,$C4,$8B,$16,$FD,$CB,$22,$66,$C4,$08,$17,$C3 ; $19D7
        db      $0C,$19,$FD,$2A,$8F,$FE,$FD,$CB,$0F,$AE,$21,$A4,$19,$FD,$74,$07 ; $19E7
        db      $FD,$75,$06,$21,$95,$12,$FD,$74,$09,$FD,$75,$08,$FD,$36,$11,$00 ; $19F7
        db      $FD,$36,$12,$00,$AF,$FD,$BE,$0B,$C2,$16,$1A,$FD,$36,$0B,$01,$FD ; $1A07
        db      $BE,$0C,$C2,$20,$1A,$FD,$36,$0C,$FF,$FD,$71,$02,$FD,$70,$03,$CD ; $1A17
        db      $66,$0D,$C3,$7E,$15,$FD,$2A,$8F,$FE,$FD,$CB,$0F,$EE,$C3,$F1,$19 ; $1A27
L1A37:
        ld hl,($fe8f)                   ; $1A37
        add hl,de                       ; $1A3A
        pop de                          ; $1A3B
        ld (hl),e                       ; $1A3C
        inc hl                          ; $1A3D
        ld (hl),d                       ; $1A3E
        jp (iy)                         ; $1A3F
NATIVE_1A41:
        pop hl                          ; $1A41
        add hl,de                       ; $1A42
        ld e,(hl)                       ; $1A43
        inc hl                          ; $1A44
        ld d,(hl)                       ; $1A45
        push de                         ; $1A46
        jp (iy)                         ; $1A47
NATIVE_1A49:
        ld hl,($fe8f)                   ; $1A49
        add hl,de                       ; $1A4C
        pop de                          ; $1A4D
        ld (hl),e                       ; $1A4E
        jp (iy)                         ; $1A4F
NATIVE_1A51:
        pop hl                          ; $1A51
        add hl,de                       ; $1A52
        ld e,(hl)                       ; $1A53
        ld d,$00                        ; $1A54
        push de                         ; $1A56
        jp (iy)                         ; $1A57
NATIVE_1A59:
        ld de,$0048                     ; $1A59
        jp L1A37                        ; $1A5C
        db      $11,$4A,$00,$C3,$37,$1A,$11,$4A,$00,$C3,$41,$1A,$11,$4F,$00,$C3 ; $1A5F
        db      $49,$1A,$11,$4F,$00,$C3,$51,$1A                                 ; $1A6F
NATIVE_1A77:
        inc e                           ; $1A77
        xor a                           ; $1A78
        scf                             ; $1A79
L1A7A:
        rla                             ; $1A7A
        dec e                           ; $1A7B
        jp nz,L1A7A                     ; $1A7C
        ret                             ; $1A7F
        db      $E1,$D1,$CD,$77,$1A,$11,$00,$00,$A6,$CA,$8D,$1A,$1C,$D5,$FD,$E9 ; $1A80
NATIVE_1A90:
        pop hl                          ; $1A90
        pop de                          ; $1A91
        call NATIVE_1A77                ; $1A92
        or (hl)                         ; $1A95
        ld (hl),a                       ; $1A96
        jp (iy)                         ; $1A97
NATIVE_1A99:
        pop hl                          ; $1A99
        pop de                          ; $1A9A
        call NATIVE_1A77                ; $1A9B
        xor $ff                         ; $1A9E
        and (hl)                        ; $1AA0
        ld (hl),a                       ; $1AA1
        jp (iy)                         ; $1AA2
TERSE_COLON_1AA4:
        rst     $08                             ; $1AA4 colon entry
        dw      _0                   ; $1AA5 _0
        dw      _LITbyte             ; $1AA7 _LITbyte
        db      $15                  ; $1AA9 inline byte
        dw      _OUTP                ; $1AAA _OUTP
        dw      _0                   ; $1AAC _0
        dw      _LITbyte             ; $1AAE _LITbyte
        db      $16                  ; $1AB0 inline byte
        dw      _OUTP                ; $1AB1 _OUTP
        dw      _0                   ; $1AB3 _0
        dw      _LITbyte             ; $1AB5 _LITbyte
        db      $55                  ; $1AB7 inline byte
        dw      _OUTP                ; $1AB8 _OUTP
        dw      _0                   ; $1ABA _0
        dw      _LITbyte             ; $1ABC _LITbyte
        db      $56                  ; $1ABE inline byte
        dw      _OUTP                ; $1ABF _OUTP
        dw      _RETURN              ; $1AC1 _RETURN
NATIVE_1AC3:
        push bc                         ; $1AC3
        ld bc,($fdab)                   ; $1AC4
        ld hl,$1321                     ; $1AC8
        add hl,bc                       ; $1ACB
        push hl                         ; $1ACC
        ld hl,$2776                     ; $1ACD
        adc hl,bc                       ; $1AD0
        ld de,($fdad)                   ; $1AD2
        add hl,de                       ; $1AD6
        ex (sp),hl                      ; $1AD7
        add hl,bc                       ; $1AD8
        ex (sp),hl                      ; $1AD9
        adc hl,de                       ; $1ADA
        ex (sp),hl                      ; $1ADC
        add hl,bc                       ; $1ADD
        ex (sp),hl                      ; $1ADE
        adc hl,de                       ; $1ADF
        ex (sp),hl                      ; $1AE1
        ld d,e                          ; $1AE2
        ld e,b                          ; $1AE3
        ld b,c                          ; $1AE4
        ld c,$00                        ; $1AE5
        add hl,bc                       ; $1AE7
        ld ($fdab),hl                   ; $1AE8
        ex (sp),hl                      ; $1AEB
        adc hl,de                       ; $1AEC
        ld ($fdad),hl                   ; $1AEE
        pop de                          ; $1AF1
        pop bc                          ; $1AF2
        ret                             ; $1AF3
NATIVE_1AF4:
        push bc                         ; $1AF4
        exx                             ; $1AF5
        ld hl,$0000                     ; $1AF6
        ld d,h                          ; $1AF9
        ld e,l                          ; $1AFA
        exx                             ; $1AFB
        push de                         ; $1AFC
        pop bc                          ; $1AFD
        ex de,hl                        ; $1AFE
        ld hl,$0000                     ; $1AFF
L1B02:
        srl b                           ; $1B02
        rr c                            ; $1B04
        jp nc,L1B0E                     ; $1B06
        add hl,de                       ; $1B09
        exx                             ; $1B0A
        adc hl,de                       ; $1B0B
        exx                             ; $1B0D
L1B0E:
        ld a,b                          ; $1B0E
        or c                            ; $1B0F
        jp z,L1B20                      ; $1B10
        sla e                           ; $1B13
        rl d                            ; $1B15
        exx                             ; $1B17
        rl e                            ; $1B18
        rl d                            ; $1B1A
        exx                             ; $1B1C
        jp L1B02                        ; $1B1D
L1B20:
        exx                             ; $1B20
        pop bc                          ; $1B21
        ret                             ; $1B22
        db      $D5,$CD,$C3,$1A,$D1,$CD,$F4,$1A,$C9,$CD,$C3,$1A,$E5,$FD,$E9     ; $1B23
NATIVE_1B32:
        call NATIVE_1AC3                ; $1B32
        pop de                          ; $1B35
        call NATIVE_1AF4                ; $1B36
        push hl                         ; $1B39
        jp (iy)                         ; $1B3A
NATIVE_1B3C:
        ld de,$00a0                     ; $1B3C
        add hl,de                       ; $1B3F
        xor a                           ; $1B40
        sra h                           ; $1B41
        rr l                            ; $1B43
        rra                             ; $1B45
        sra h                           ; $1B46
        rr l                            ; $1B48
        rra                             ; $1B4A
        ld h,l                          ; $1B4B
        ld l,a                          ; $1B4C
        ret                             ; $1B4D
NATIVE_1B4E:
        sra d                           ; $1B4E
        rr e                            ; $1B50
        sra d                           ; $1B52
        rr e                            ; $1B54
        ret                             ; $1B56
NATIVE_1B57:
        sla e                           ; $1B57
        rl d                            ; $1B59
        sla e                           ; $1B5B
        rl d                            ; $1B5D
        ret                             ; $1B5F
NATIVE_1B60:
        bit 7,h                         ; $1B60
        jp z,L1B6A                      ; $1B62
        ld a,$ff                        ; $1B65
        jp L1B6B                        ; $1B67
L1B6A:
        xor a                           ; $1B6A
L1B6B:
        sla l                           ; $1B6B
        rl h                            ; $1B6D
        rla                             ; $1B6F
        sla l                           ; $1B70
        rl h                            ; $1B72
        rla                             ; $1B74
        ld l,h                          ; $1B75
        ld h,a                          ; $1B76
        or a                            ; $1B77
        ld de,$00a0                     ; $1B78
        sbc hl,de                       ; $1B7B
        ret                             ; $1B7D
NATIVE_1B7E:
        sra d                           ; $1B7E
        rr e                            ; $1B80
        sra d                           ; $1B82
        rr e                            ; $1B84
        ld a,d                          ; $1B86
        cpl                             ; $1B87
        ld d,a                          ; $1B88
        ld a,e                          ; $1B89
        cpl                             ; $1B8A
        ld e,a                          ; $1B8B
        inc de                          ; $1B8C
        ret                             ; $1B8D
NATIVE_1B8E:
        ld a,d                          ; $1B8E
        cpl                             ; $1B8F
        ld d,a                          ; $1B90
        ld a,e                          ; $1B91
        cpl                             ; $1B92
        ld e,a                          ; $1B93
        inc de                          ; $1B94
        sla e                           ; $1B95
        rl d                            ; $1B97
        sla e                           ; $1B99
        rl d                            ; $1B9B
        ret                             ; $1B9D
NATIVE_1B9E:
        call NATIVE_0C35                ; $1B9E
        ld de,$0063                     ; $1BA1
        add hl,de                       ; $1BA4
        xor a                           ; $1BA5
        sra h                           ; $1BA6
        rr l                            ; $1BA8
        rra                             ; $1BAA
        sra h                           ; $1BAB
        rr l                            ; $1BAD
        rra                             ; $1BAF
        ld h,l                          ; $1BB0
        ld l,a                          ; $1BB1
        ret                             ; $1BB2
NATIVE_1BB3:
        bit 7,h                         ; $1BB3
        jp z,L1BBD                      ; $1BB5
        ld a,$ff                        ; $1BB8
        jp L1BBE                        ; $1BBA
L1BBD:
        xor a                           ; $1BBD
L1BBE:
        sla l                           ; $1BBE
        rl h                            ; $1BC0
        rla                             ; $1BC2
        sla l                           ; $1BC3
        rl h                            ; $1BC5
        rla                             ; $1BC7
        ld l,h                          ; $1BC8
        ld h,a                          ; $1BC9
        or a                            ; $1BCA
        ld de,$0063                     ; $1BCB
        sbc hl,de                       ; $1BCE
        call NATIVE_0C35                ; $1BD0
        ret                             ; $1BD3
        db      $2A,$8F,$FE,$11,$42,$00,$19,$D1,$73,$FD,$E9                     ; $1BD4
NATIVE_1BDF:
        ld hl,($fe8f)                   ; $1BDF
        ld de,$000f                     ; $1BE2
        add hl,de                       ; $1BE5
        set 7,(hl)                      ; $1BE6
        ld de,$fffe                     ; $1BE8
        add hl,de                       ; $1BEB
        pop de                          ; $1BEC
        ld (hl),e                       ; $1BED
        inc hl                          ; $1BEE
        ld (hl),d                       ; $1BEF
        jp (iy)                         ; $1BF0
NATIVE_1BF2:
        ld hl,($fe8f)                   ; $1BF2
        ld de,$000f                     ; $1BF5
        add hl,de                       ; $1BF8
        set 7,(hl)                      ; $1BF9
        jp (iy)                         ; $1BFB
NATIVE_1BFD:
        ld hl,($fe8f)                   ; $1BFD
        ld de,$000d                     ; $1C00
        add hl,de                       ; $1C03
        pop de                          ; $1C04
        ld (hl),e                       ; $1C05
        inc hl                          ; $1C06
        ld (hl),d                       ; $1C07
        jp (iy)                         ; $1C08
NATIVE_1C0A:
        ld hl,($fe8f)                   ; $1C0A
        ld de,$0011                     ; $1C0D
        add hl,de                       ; $1C10
        ld de,$0000                     ; $1C11
        bit 3,(hl)                      ; $1C14
        jp z,L1C1A                      ; $1C16
        inc e                           ; $1C19
L1C1A:
        push de                         ; $1C1A
        jp (iy)                         ; $1C1B
NATIVE_1C1D:
        ld hl,($fe8f)                   ; $1C1D
        ld de,$000f                     ; $1C20
        add hl,de                       ; $1C23
        set 1,(hl)                      ; $1C24
        ld de,$0004                     ; $1C26
        add hl,de                       ; $1C29
        pop de                          ; $1C2A
        ld (hl),e                       ; $1C2B
        inc hl                          ; $1C2C
        ld (hl),d                       ; $1C2D
        jp (iy)                         ; $1C2E
NATIVE_1C30:
        ld hl,($fe8f)                   ; $1C30
        ld de,$0011                     ; $1C33
        add hl,de                       ; $1C36
        ld de,$0000                     ; $1C37
        bit 4,(hl)                      ; $1C3A
        jp z,L1C40                      ; $1C3C
        inc e                           ; $1C3F
L1C40:
        push de                         ; $1C40
        jp (iy)                         ; $1C41
NATIVE_1C43:
        ld hl,($fe8f)                   ; $1C43
        ld de,$000f                     ; $1C46
        add hl,de                       ; $1C49
        set 3,(hl)                      ; $1C4A
        inc hl                          ; $1C4C
        set 3,(hl)                      ; $1C4D
        jp (iy)                         ; $1C4F
NATIVE_1C51:
        ld hl,($fe8f)                   ; $1C51
        ld de,$000f                     ; $1C54
        add hl,de                       ; $1C57
        set 3,(hl)                      ; $1C58
        inc hl                          ; $1C5A
        set 4,(hl)                      ; $1C5B
        jp (iy)                         ; $1C5D
NATIVE_1C5F:
        pop hl                          ; $1C5F
        call NATIVE_1B3C                ; $1C60
        push hl                         ; $1C63
        ld hl,($fe8f)                   ; $1C64
        ld de,$0034                     ; $1C67
        add hl,de                       ; $1C6A
        pop de                          ; $1C6B
        ld (hl),e                       ; $1C6C
        inc hl                          ; $1C6D
        ld (hl),d                       ; $1C6E
        jp (iy)                         ; $1C6F
NATIVE_1C71:
        pop hl                          ; $1C71
        call NATIVE_1B9E                ; $1C72
        push hl                         ; $1C75
        ld hl,($fe8f)                   ; $1C76
        ld de,$0036                     ; $1C79
        add hl,de                       ; $1C7C
        pop de                          ; $1C7D
        ld (hl),e                       ; $1C7E
        inc hl                          ; $1C7F
        ld (hl),d                       ; $1C80
        jp (iy)                         ; $1C81
NATIVE_1C83:
        ld hl,($fe8f)                   ; $1C83
        ld de,$0011                     ; $1C86
        add hl,de                       ; $1C89
        ld de,$0000                     ; $1C8A
        bit 2,(hl)                      ; $1C8D
        jp z,L1C93                      ; $1C8F
        inc e                           ; $1C92
L1C93:
        push de                         ; $1C93
        jp (iy)                         ; $1C94
NATIVE_1C96:
        pop hl                          ; $1C96
        ld de,$0034                     ; $1C97
        add hl,de                       ; $1C9A
        ld e,(hl)                       ; $1C9B
        inc hl                          ; $1C9C
        ld d,(hl)                       ; $1C9D
        ex de,hl                        ; $1C9E
        call NATIVE_1B60                ; $1C9F
        push hl                         ; $1CA2
        jp (iy)                         ; $1CA3
NATIVE_1CA5:
        pop hl                          ; $1CA5
        ld de,$0036                     ; $1CA6
        add hl,de                       ; $1CA9
        ld e,(hl)                       ; $1CAA
        inc hl                          ; $1CAB
        ld d,(hl)                       ; $1CAC
        ex de,hl                        ; $1CAD
        call NATIVE_1BB3                ; $1CAE
        push hl                         ; $1CB1
        jp (iy)                         ; $1CB2
NATIVE_1CB4:
        pop hl                          ; $1CB4
        push iy                         ; $1CB5
        ld iy,($fe8f)                   ; $1CB7
        ld e,(hl)                       ; $1CBB
        inc hl                          ; $1CBC
        inc hl                          ; $1CBD
        ld a,(hl)                       ; $1CBE
        and $0f                         ; $1CBF
        ld d,a                          ; $1CC1
        ld a,(iy+34)                    ; $1CC2
        and $e0                         ; $1CC5
        bit 7,(hl)                      ; $1CC7
        jp z,L1D0A                      ; $1CC9
        set 4,a                         ; $1CCC
        or d                            ; $1CCE
        ld (iy+34),a                    ; $1CCF
        ld d,(hl)                       ; $1CD2
        inc hl                          ; $1CD3
        bit 0,d                         ; $1CD4
        jp z,L1CF5                      ; $1CD6
        ld (iy+59),$00                  ; $1CD9
        bit 3,d                         ; $1CDD
        jp z,L1CF1                      ; $1CDF
        ld a,(iy+23)                    ; $1CE2
        and $3f                         ; $1CE5
        or (hl)                         ; $1CE7
        ld (iy+23),a                    ; $1CE8
        inc hl                          ; $1CEB
        ld a,(hl)                       ; $1CEC
        dec hl                          ; $1CED
        jp L1CF2                        ; $1CEE
L1CF1:
        ld a,(hl)                       ; $1CF1
L1CF2:
        ld (iy+58),a                    ; $1CF2
L1CF5:
        bit 1,d                         ; $1CF5
        jp z,L1D01                      ; $1CF7
        ld (iy+60),e                    ; $1CFA
        ld (iy+58),$01                  ; $1CFD
L1D01:
        ld (iy+57),h                    ; $1D01
        ld (iy+56),l                    ; $1D04
        jp L1D15                        ; $1D07
L1D0A:
        dec hl                          ; $1D0A
        dec hl                          ; $1D0B
        ld (iy+30),h                    ; $1D0C
        ld (iy+29),l                    ; $1D0F
        ld (iy+34),a                    ; $1D12
L1D15:
        pop iy                          ; $1D15
        jp (iy)                         ; $1D17
NATIVE_1D19:
        ld hl,($fe8f)                   ; $1D19
        ld de,$0022                     ; $1D1C
        add hl,de                       ; $1D1F
        res 4,(hl)                      ; $1D20
        jp (iy)                         ; $1D22
NATIVE_1D24:
        pop hl                          ; $1D24
        call NATIVE_1B3C                ; $1D25
        push iy                         ; $1D28
        ld iy,($fe8f)                   ; $1D2A
        ld (iy+25),l                    ; $1D2E
        ld (iy+26),h                    ; $1D31
        set 0,(iy+33)                   ; $1D34
        pop iy                          ; $1D38
        jp (iy)                         ; $1D3A
NATIVE_1D3C:
        pop hl                          ; $1D3C
        call NATIVE_1B9E                ; $1D3D
        push iy                         ; $1D40
        ld iy,($fe8f)                   ; $1D42
        ld (iy+27),l                    ; $1D46
        ld (iy+28),h                    ; $1D49
        set 0,(iy+33)                   ; $1D4C
        pop iy                          ; $1D50
        jp (iy)                         ; $1D52
TERSE_COLON_1D54:
        rst     $08                             ; $1D54 colon entry
        dw      NATIVE_1D3C          ; $1D55 NATIVE_1D3C
        dw      NATIVE_1D24          ; $1D57 NATIVE_1D24
        dw      _RETURN              ; $1D59 _RETURN
NATIVE_1D5B:
        ld hl,($fe8f)                   ; $1D5B
        ld de,$0023                     ; $1D5E
        add hl,de                       ; $1D61
        pop de                          ; $1D62
        call NATIVE_1B4E                ; $1D63
        ld (hl),e                       ; $1D66
        inc hl                          ; $1D67
        ld (hl),d                       ; $1D68
        jp (iy)                         ; $1D69
NATIVE_1D6B:
        ld hl,($fe8f)                   ; $1D6B
        ld de,$0027                     ; $1D6E
        add hl,de                       ; $1D71
        pop de                          ; $1D72
        call NATIVE_1B7E                ; $1D73
        ld (hl),e                       ; $1D76
        inc hl                          ; $1D77
        ld (hl),d                       ; $1D78
        jp (iy)                         ; $1D79
NATIVE_1D7B:
        ld hl,($fe8f)                   ; $1D7B
        ld de,$0025                     ; $1D7E
        add hl,de                       ; $1D81
        pop de                          ; $1D82
        call NATIVE_1B4E                ; $1D83
        ld (hl),e                       ; $1D86
        inc hl                          ; $1D87
        ld (hl),d                       ; $1D88
        jp (iy)                         ; $1D89
NATIVE_1D8B:
        ld hl,($fe8f)                   ; $1D8B
        ld de,$0029                     ; $1D8E
        add hl,de                       ; $1D91
        pop de                          ; $1D92
        call NATIVE_1B7E                ; $1D93
        ld (hl),e                       ; $1D96
        inc hl                          ; $1D97
        ld (hl),d                       ; $1D98
        jp (iy)                         ; $1D99
NATIVE_1D9B:
        pop hl                          ; $1D9B
        ld de,$0019                     ; $1D9C
        add hl,de                       ; $1D9F
        ld e,(hl)                       ; $1DA0
        inc hl                          ; $1DA1
        ld d,(hl)                       ; $1DA2
        ex de,hl                        ; $1DA3
        call NATIVE_1B60                ; $1DA4
        push hl                         ; $1DA7
        jp (iy)                         ; $1DA8
NATIVE_1DAA:
        pop hl                          ; $1DAA
        ld de,$001b                     ; $1DAB
        add hl,de                       ; $1DAE
        ld e,(hl)                       ; $1DAF
        inc hl                          ; $1DB0
        ld d,(hl)                       ; $1DB1
        ex de,hl                        ; $1DB2
        call NATIVE_1BB3                ; $1DB3
        push hl                         ; $1DB6
        jp (iy)                         ; $1DB7
NATIVE_1DB9:
        pop hl                          ; $1DB9
        ld de,$0023                     ; $1DBA
        add hl,de                       ; $1DBD
        ld e,(hl)                       ; $1DBE
        inc hl                          ; $1DBF
        ld d,(hl)                       ; $1DC0
        call NATIVE_1B57                ; $1DC1
        push de                         ; $1DC4
        jp (iy)                         ; $1DC5
NATIVE_1DC7:
        pop hl                          ; $1DC7
        ld de,$0027                     ; $1DC8
        add hl,de                       ; $1DCB
        ld e,(hl)                       ; $1DCC
        inc hl                          ; $1DCD
        ld d,(hl)                       ; $1DCE
        call NATIVE_1B8E                ; $1DCF
        push de                         ; $1DD2
        jp (iy)                         ; $1DD3
TERSE_COLON_1DD5:
        rst     $08                             ; $1DD5 colon entry
        dw      _0                   ; $1DD6 _0
        dw      NATIVE_1D24          ; $1DD8 NATIVE_1D24
        dw      _0                   ; $1DDA _0
        dw      NATIVE_1D3C          ; $1DDC NATIVE_1D3C
        dw      _RETURN              ; $1DDE _RETURN
TERSE_COLON_1DE0:
        rst     $08                             ; $1DE0 colon entry
        dw      _0                   ; $1DE1 _0
        dw      _DUP                 ; $1DE3 _DUP
        dw      _DUP                 ; $1DE5 _DUP
        dw      _DUP                 ; $1DE7 _DUP
        dw      NATIVE_1D8B          ; $1DE9 NATIVE_1D8B
        dw      NATIVE_1D7B          ; $1DEB NATIVE_1D7B
        dw      NATIVE_1D6B          ; $1DED NATIVE_1D6B
        dw      NATIVE_1D5B          ; $1DEF NATIVE_1D5B
        dw      _RETURN              ; $1DF1 _RETURN
NATIVE_1DF3:
        push iy                         ; $1DF3
        push bc                         ; $1DF5
        push ix                         ; $1DF6
        ld iy,($fe8f)                   ; $1DF8
        call INTERRUPT_ENABLE           ; $1DFC
        call NATIVE_1235                ; $1DFF
        call INTERRUPT_DISABLE          ; $1E02
        pop ix                          ; $1E05
        pop bc                          ; $1E07
        pop iy                          ; $1E08
        jp (iy)                         ; $1E0A
NATIVE_1E0C:
        push iy                         ; $1E0C
        push bc                         ; $1E0E
        push ix                         ; $1E0F
        ld iy,($fe8f)                   ; $1E11
        ld d,(iy+26)                    ; $1E15
        ld e,(iy+25)                    ; $1E18
        ld h,(iy+28)                    ; $1E1B
        ld l,(iy+27)                    ; $1E1E
        call NATIVE_0DBC                ; $1E21
        call INTERRUPT_ENABLE           ; $1E24
        call NATIVE_1205                ; $1E27
        call INTERRUPT_DISABLE          ; $1E2A
        pop ix                          ; $1E2D
        pop bc                          ; $1E2F
        pop iy                          ; $1E30
        jp (iy)                         ; $1E32
NATIVE_1E34:
        push iy                         ; $1E34
        push bc                         ; $1E36
        push ix                         ; $1E37
        ld iy,($fe8f)                   ; $1E39
        ld d,(iy+26)                    ; $1E3D
        ld e,(iy+25)                    ; $1E40
        ld h,(iy+28)                    ; $1E43
        ld l,(iy+27)                    ; $1E46
        call NATIVE_0DBC                ; $1E49
        call INTERRUPT_ENABLE           ; $1E4C
        call NATIVE_1253                ; $1E4F
        call INTERRUPT_DISABLE          ; $1E52
        pop ix                          ; $1E55
        pop bc                          ; $1E57
        pop iy                          ; $1E58
        jp (iy)                         ; $1E5A
NATIVE_1E5C:
        ld hl,($fe8f)                   ; $1E5C
        ld de,$0018                     ; $1E5F
        add hl,de                       ; $1E62
        pop de                          ; $1E63
        ld (hl),e                       ; $1E64
        jp (iy)                         ; $1E65
NATIVE_1E67:
        ld hl,($fe8f)                   ; $1E67
        ld de,$0017                     ; $1E6A
        add hl,de                       ; $1E6D
        set 3,(hl)                      ; $1E6E
        jp (iy)                         ; $1E70
NATIVE_1E72:
        ld hl,($fe8f)                   ; $1E72
        ld de,$0017                     ; $1E75
        add hl,de                       ; $1E78
        res 3,(hl)                      ; $1E79
        jp (iy)                         ; $1E7B
NATIVE_1E7D:
        ld hl,($fe8f)                   ; $1E7D
        ld de,$0018                     ; $1E80
        add hl,de                       ; $1E83
        pop de                          ; $1E84
        ld (hl),e                       ; $1E85
        ld de,$ffff                     ; $1E86
        add hl,de                       ; $1E89
        set 3,(hl)                      ; $1E8A
        jp (iy)                         ; $1E8C
NATIVE_1E8E:
        ld hl,($fe8f)                   ; $1E8E
        ld de,$001d                     ; $1E91
        add hl,de                       ; $1E94
        pop de                          ; $1E95
        ld (hl),e                       ; $1E96
        inc hl                          ; $1E97
        ld (hl),d                       ; $1E98
        jp (iy)                         ; $1E99
NATIVE_1E9B:
        ld hl,($fe8f)                   ; $1E9B
        ld de,$0017                     ; $1E9E
        add hl,de                       ; $1EA1
        set 4,(hl)                      ; $1EA2
        res 5,(hl)                      ; $1EA4
        jp (iy)                         ; $1EA6
NATIVE_1EA8:
        ld hl,($fe8f)                   ; $1EA8
        ld de,$0017                     ; $1EAB
        add hl,de                       ; $1EAE
        res 4,(hl)                      ; $1EAF
        set 5,(hl)                      ; $1EB1
        jp (iy)                         ; $1EB3
NATIVE_1EB5:
        ld hl,($fe8f)                   ; $1EB5
        ld de,$0017                     ; $1EB8
        add hl,de                       ; $1EBB
        set 4,(hl)                      ; $1EBC
        set 5,(hl)                      ; $1EBE
        jp (iy)                         ; $1EC0
NATIVE_1EC2:
        ld hl,($fe8f)                   ; $1EC2
        ld de,$0017                     ; $1EC5
        add hl,de                       ; $1EC8
        res 6,(hl)                      ; $1EC9
        set 7,(hl)                      ; $1ECB
        jp (iy)                         ; $1ECD
NATIVE_1ECF:
        ld hl,($fe8f)                   ; $1ECF
        ld de,$0017                     ; $1ED2
        add hl,de                       ; $1ED5
        res 7,(hl)                      ; $1ED6
        set 6,(hl)                      ; $1ED8
        jp (iy)                         ; $1EDA
NATIVE_1EDC:
        ld hl,($fe8f)                   ; $1EDC
        ld de,$0017                     ; $1EDF
        add hl,de                       ; $1EE2
        res 4,(hl)                      ; $1EE3
        res 5,(hl)                      ; $1EE5
        jp (iy)                         ; $1EE7
NATIVE_1EE9:
        ld hl,($fe8f)                   ; $1EE9
        ld de,$0017                     ; $1EEC
        add hl,de                       ; $1EEF
        set 6,(hl)                      ; $1EF0
        set 7,(hl)                      ; $1EF2
        jp (iy)                         ; $1EF4
NATIVE_1EF6:
        ld hl,($fe8f)                   ; $1EF6
        ld de,$0017                     ; $1EF9
        add hl,de                       ; $1EFC
        res 7,(hl)                      ; $1EFD
        res 6,(hl)                      ; $1EFF
        jp (iy)                         ; $1F01
NATIVE_1F03:
        ld hl,($fe8f)                   ; $1F03
        ld de,$0017                     ; $1F06
        add hl,de                       ; $1F09
        pop de                          ; $1F0A
        ld (hl),e                       ; $1F0B
        jp (iy)                         ; $1F0C
NATIVE_1F0E:
        ld hl,($fe8f)                   ; $1F0E
        push hl                         ; $1F11
        jp (iy)                         ; $1F12
NATIVE_1F14:
        ld hl,($fe8f)                   ; $1F14
        ld de,$0021                     ; $1F17
        add hl,de                       ; $1F1A
        set 0,(hl)                      ; $1F1B
        set 2,(hl)                      ; $1F1D
        jp (iy)                         ; $1F1F
NATIVE_1F21:
        ld hl,($fe8f)                   ; $1F21
        ld de,$000a                     ; $1F24
        add hl,de                       ; $1F27
        ld a,($fea0)                    ; $1F28
        dec a                           ; $1F2B
        ld (hl),a                       ; $1F2C
        jp (iy)                         ; $1F2D
NATIVE_1F2F:
        ld hl,($fe8f)                   ; $1F2F
        ld de,$000b                     ; $1F32
        add hl,de                       ; $1F35
        pop de                          ; $1F36
        ld (hl),e                       ; $1F37
        jp (iy)                         ; $1F38
NATIVE_1F3A:
        pop hl                          ; $1F3A
        ld ($fe8f),hl                   ; $1F3B
        jp (iy)                         ; $1F3E
NATIVE_1F40:
        ld hl,($fe8f)                   ; $1F40
        ld de,$000c                     ; $1F43
        add hl,de                       ; $1F46
        pop de                          ; $1F47
        ld (hl),e                       ; $1F48
        jp (iy)                         ; $1F49
NATIVE_1F4B:
        exx                             ; $1F4B
        pop bc                          ; $1F4C
        in a,(c)                        ; $1F4D
        exx                             ; $1F4F
        jp (iy)                         ; $1F50
TERSE_COLON_1F52:
        rst     $08                             ; $1F52 colon entry
        dw      _LIT                 ; $1F53 _LIT
        dw      $0D15                ; $1F55 inline word
        dw      _LIT                 ; $1F57 _LIT
        dw      $0515                ; $1F59 inline word
        dw      _DO                  ; $1F5B _DO
        dw      _I                   ; $1F5D _I
        dw      NATIVE_1F4B          ; $1F5F NATIVE_1F4B
        dw      _LIT                 ; $1F61 _LIT
        dw      $0200                ; $1F63 inline word
        dw      _plusLOOP            ; $1F65 _plusLOOP
        dw      _RETURN              ; $1F67 _RETURN
TERSE_COLON_1F69:
        rst     $08                             ; $1F69 colon entry
        dw      _LIT                 ; $1F6A _LIT
        dw      $FDAA                ; $1F6C inline word
        dw      _BZERO               ; $1F6E _BZERO
        dw      _RETURN              ; $1F70 _RETURN
TERSE_COLON_1F72:
        rst     $08                             ; $1F72 colon entry
        dw      _LITbyte             ; $1F73 _LITbyte
        db      $06                  ; $1F75 inline byte
        dw      _LIT                 ; $1F76 _LIT
        dw      $FDAA                ; $1F78 inline word
        dw      _SBbang              ; $1F7A _SBbang
        dw      _RETURN              ; $1F7C _RETURN
TERSE_COLON_1F7E:
        rst     $08                             ; $1F7E colon entry
        dw      _LITbyte             ; $1F7F _LITbyte
        db      $10                  ; $1F81 inline byte
        dw      _LIT                 ; $1F82 _LIT
        dw      $FDAA                ; $1F84 inline word
        dw      _SBbang              ; $1F86 _SBbang
        dw      _RETURN              ; $1F88 _RETURN
NATIVE_1F8A:
        ld d,(iy+26)                    ; $1F8A
        ld e,(iy+25)                    ; $1F8D
        call NATIVE_0DBC                ; $1F90
        ld b,(iy+24)                    ; $1F93
        ld c,(iy+23)                    ; $1F96
        ld h,(iy+30)                    ; $1F99
        ld l,(iy+29)                    ; $1F9C
        inc hl                          ; $1F9F
        inc hl                          ; $1FA0
        ld e,(hl)                       ; $1FA1
        inc hl                          ; $1FA2
        ld d,(hl)                       ; $1FA3
        inc hl                          ; $1FA4
        push hl                         ; $1FA5
        pop ix                          ; $1FA6
        ld h,(iy+46)                    ; $1FA8
        ld l,(iy+45)                    ; $1FAB
        call INTERRUPT_ENABLE           ; $1FAE
        ld a,b                          ; $1FB1
        and $c0                         ; $1FB2
        jp z,L1FBD                      ; $1FB4
        call NATIVE_0FD2                ; $1FB7
        jp L1FC3                        ; $1FBA
L1FBD:
        call NATIVE_10B5                ; $1FBD
        call INTERRUPT_DISABLE          ; $1FC0
L1FC3:
        ret                             ; $1FC3
NATIVE_1FC4:
        push iy                         ; $1FC4
        push bc                         ; $1FC6
        push ix                         ; $1FC7
        ld iy,($fe8f)                   ; $1FC9
        ld h,(iy+30)                    ; $1FCD
        ld l,(iy+29)                    ; $1FD0
        push hl                         ; $1FD3
        ld a,(hl)                       ; $1FD4
        ex af,af'                       ; $1FD5
        inc hl                          ; $1FD6
        ld a,(hl)                       ; $1FD7
        push hl                         ; $1FD8
        sub $20                         ; $1FD9
        sla a                           ; $1FDB
        ld hl,$08c0                     ; $1FDD
        ld e,a                          ; $1FE0
        ld d,$00                        ; $1FE1
        add hl,de                       ; $1FE3
        ld e,(hl)                       ; $1FE4
        inc hl                          ; $1FE5
        ld d,(hl)                       ; $1FE6
        push de                         ; $1FE7
        push de                         ; $1FE8
        ld hl,($fe8f)                   ; $1FE9
        ld de,$001d                     ; $1FEC
        add hl,de                       ; $1FEF
        pop de                          ; $1FF0
        ld (hl),e                       ; $1FF1
        inc hl                          ; $1FF2
        ld (hl),d                       ; $1FF3
        inc de                          ; $1FF4
        inc de                          ; $1FF5
        inc de                          ; $1FF6
        ld a,(de)                       ; $1FF7
        bit 7,(iy+24)                   ; $1FF8
        jp z,$2003                      ; $1FFC
        db      $CB                                                             ; $1FFF
