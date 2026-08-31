; Professor Pac-Man program ROM PPS5
; Bank configuration 1, CPU address $4000-$5FFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $4000

        db      $40,$22,$44,$88,$00,$26,$66,$00,$0B,$20,$20,$71,$75,$65,$73,$74 ; $4000
        db      $69,$6F,$6E,$73,$07,$20,$20,$20,$78,$31,$30,$30,$03,$20,$2F,$20 ; $4010
        db      $03,$6F,$6E,$20,$03,$6F,$66,$66,$04,$65,$78,$69,$74,$06,$72,$65 ; $4020
        db      $70,$65,$61,$74,$05,$04,$04,$03,$04,$09,$0A,$03,$02,$03,$02,$02 ; $4030
        db      $00,$00,$00,$14,$14,$14,$2A,$2A,$2A,$3F,$3F,$3F,$4F,$40,$40,$50 ; $4040
        db      $5F,$50,$60,$60,$6F,$7F,$7C,$70,$80,$8A,$8F,$9F,$9C,$99,$AF,$A7 ; $4050
        db      $A0,$B0,$BF,$BC,$C3,$C3,$C9,$DF,$DF,$D4,$EF,$E8,$E8,$F8,$FD,$F5 ; $4060
ALIAS_SBbang:
        jp $0532                        ; $4070
ALIAS_BONE:
        jp $053a                        ; $4073
ALIAS_BZERO:
        jp $053f                        ; $4076
ALIAS_1minusBbang:
        jp $0544                        ; $4079
ALIAS_1plusBbang:
        jp $0549                        ; $407C
ALIAS_plusBbang:
        jp $054e                        ; $407F
ALIAS_minusBbang:
        jp $0555                        ; $4082
ALIAS_MOVE:
        jp $05a3                        ; $4085
ALIAS_Bbang:
        jp $055c                        ; $4088
ALIAS_bang:
        jp $0561                        ; $408B
ALIAS_ONE:
        jp $056f                        ; $408E
ALIAS_ZERO:
        jp $0569                        ; $4091
ALIAS_1minusbang:
        jp $0575                        ; $4094
ALIAS_1plusbang:
        jp $0588                        ; $4097
ALIAS_plusbang:
        jp $057d                        ; $409A
ALIAS_minusbang:
        jp $0590                        ; $409D
ALIAS_Sbang:
        jp $059e                        ; $40A0
        db      $06,$00,$00,$01,$0A,$78,$CC,$CC,$CC,$CC,$FC,$CC,$CC,$CC,$CC,$06 ; $40A3
        db      $00,$00,$01,$0A,$F8,$CC,$CC,$CC,$F8,$CC,$CC,$CC,$CC,$F8,$06,$00 ; $40B3
        db      $00,$01,$0A,$78,$CC,$CC,$C0,$C0,$C0,$C0,$CC,$CC,$78,$06,$00,$00 ; $40C3
        db      $01,$0A,$F8,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$CC,$F8,$06,$00,$00,$01 ; $40D3
        db      $0A,$FC,$C0,$C0,$C0,$FC,$C0,$C0,$C0,$C0,$FC,$06,$00,$00,$01,$0A ; $40E3
        db      $FC,$C0,$C0,$C0,$FC,$C0,$C0,$C0,$C0,$C0                         ; $40F3
NATIVE_40FD:
        ld a,b                          ; $40FD
        and $0f                         ; $40FE
        jr z,L4108                      ; $4100
        add a,$10                       ; $4102
        out (PORT_SCREEN_INTERCEPT),a   ; $4104
        ld a,$04                        ; $4106
L4108:
        out (PORT_EXPAND_COLOR),a       ; $4108
        ld a,($fea7)                    ; $410A
        bit 4,c                         ; $410D
        jr z,L4135                      ; $410F
        bit 5,c                         ; $4111
        jr z,L4125                      ; $4113
        or a                            ; $4115
        jr z,L4121                      ; $4116
        ld a,$3c                        ; $4118
        ld ($fea7),a                    ; $411A
        ld a,$33                        ; $411D
        jr L4123                        ; $411F
L4121:
        ld a,$3f                        ; $4121
L4123:
        jr L4133                        ; $4123
L4125:
        or a                            ; $4125
        jr z,L4131                      ; $4126
        ld a,$2c                        ; $4128
        ld ($fea7),a                    ; $412A
        ld a,$23                        ; $412D
        jr L4133                        ; $412F
L4131:
        ld a,$2f                        ; $4131
L4133:
        jr L4157                        ; $4133
L4135:
        bit 5,c                         ; $4135
        jr z,L4149                      ; $4137
        or a                            ; $4139
        jr z,L4145                      ; $413A
        ld a,$1c                        ; $413C
        ld ($fea7),a                    ; $413E
        ld a,$13                        ; $4141
        jr L4147                        ; $4143
L4145:
        ld a,$1f                        ; $4145
L4147:
        jr L4157                        ; $4147
L4149:
        or a                            ; $4149
        jr z,L4155                      ; $414A
        ld a,$0c                        ; $414C
        ld ($fea7),a                    ; $414E
        ld a,$03                        ; $4151
        jr L4157                        ; $4153
L4155:
        ld a,$0f                        ; $4155
L4157:
        out (PORT_SCREEN_WRITE_MASK),a  ; $4157
        ld a,$cf                        ; $4159
        and c                           ; $415B
        ld c,a                          ; $415C
        res 2,a                         ; $415D
        out (PORT_VIDEO_CONFIG),a       ; $415F
        ld a,$24                        ; $4161
        bit 7,c                         ; $4163
        jr z,L4169                      ; $4165
        set 4,a                         ; $4167
L4169:
        bit 6,c                         ; $4169
        jr z,L416F                      ; $416B
        res 5,a                         ; $416D
L416F:
        bit 3,c                         ; $416F
        jr z,L4177                      ; $4171
        set 1,a                         ; $4173
        jr L4179                        ; $4175
L4177:
        set 3,a                         ; $4177
L4179:
        bit 2,c                         ; $4179
        jr z,L4182                      ; $417B
        inc e                           ; $417D
        res 2,a                         ; $417E
        set 3,a                         ; $4180
L4182:
        ld b,a                          ; $4182
        out (PORT_PATTERN_MODE),a       ; $4183
        push hl                         ; $4185
        push ix                         ; $4186
        pop hl                          ; $4188
        ld a,l                          ; $4189
        out (PORT_PATTERN_SOURCE_LO),a  ; $418A
        ld a,h                          ; $418C
        out (PORT_PATTERN_SOURCE_HI),a  ; $418D
        pop hl                          ; $418F
        ld a,l                          ; $4190
        out (PORT_PATTERN_SKIP),a       ; $4191
        ld ($fea5),a                    ; $4193
        ld a,h                          ; $4196
        out (PORT_PATTERN_DEST_LO),a    ; $4197
        ld ($fea4),a                    ; $4199
        ld h,e                          ; $419C
        bit 3,c                         ; $419D
        jr z,L41A3                      ; $419F
        rlc h                           ; $41A1
L41A3:
        bit 3,b                         ; $41A3
        jr z,L41A8                      ; $41A5
        inc h                           ; $41A7
L41A8:
        dec h                           ; $41A8
        bit 7,c                         ; $41A9
        jr z,L41BB                      ; $41AB
        bit 6,c                         ; $41AD
        jr z,L41B6                      ; $41AF
        ld a,$b0                        ; $41B1
        add a,h                         ; $41B3
        jr L41B9                        ; $41B4
L41B6:
        ld a,$b0                        ; $41B6
        sub h                           ; $41B8
L41B9:
        jr L41C7                        ; $41B9
L41BB:
        bit 6,c                         ; $41BB
        jr z,L41C4                      ; $41BD
        ld a,$50                        ; $41BF
        add a,h                         ; $41C1
        jr L41C7                        ; $41C2
L41C4:
        ld a,$50                        ; $41C4
        sub h                           ; $41C6
L41C7:
        out (PORT_PATTERN_SKIP),a       ; $41C7
        ld ($fea6),a                    ; $41C9
        ld a,h                          ; $41CC
        out (PORT_PATTERN_DEST_HI),a    ; $41CD
        ld a,d                          ; $41CF
        dec a                           ; $41D0
        out (PORT_PATTERN_LENGTH),a     ; $41D1
        ld a,($fea7)                    ; $41D3
        or a                            ; $41D6
        jr z,L41F5                      ; $41D7
        out (PORT_SCREEN_WRITE_MASK),a  ; $41D9
        ld a,b                          ; $41DB
        out (PORT_PATTERN_MODE),a       ; $41DC
        ld a,($fea5)                    ; $41DE
        out (PORT_PATTERN_SKIP),a       ; $41E1
        ld a,($fea4)                    ; $41E3
        out (PORT_PATTERN_DEST_LO),a    ; $41E6
        ld a,($fea6)                    ; $41E8
        out (PORT_PATTERN_SKIP),a       ; $41EB
        xor a                           ; $41ED
        ld ($fea7),a                    ; $41EE
        ld a,d                          ; $41F1
        dec a                           ; $41F2
        out (PORT_PATTERN_LENGTH),a     ; $41F3
L41F5:
        ret                             ; $41F5
_BFILL:
        exx                             ; $41F6
        pop bc                          ; $41F7
        pop hl                          ; $41F8
        pop de                          ; $41F9
L41FA:
        ld (hl),e                       ; $41FA
        cpi                             ; $41FB
        jp pe,L41FA                     ; $41FD
        exx                             ; $4200
        jp (iy)                         ; $4201
TERSE_COLON_4203:
        rst     $08                             ; $4203 colon entry
        dw      $0112                ; $4204 _LITbyte
        db      $10                  ; $4206 inline byte
        dw      $02E0                ; $4207 _INP
        dw      $0143                ; $4209 _DROP
        dw      $012A                ; $420B _0
        dw      $0109                ; $420D _LIT
        dw      $00C3                ; $420F inline word
        dw      $02D8                ; $4211 _OUTP
        dw      $0112                ; $4213 _LITbyte
        db      $0F                  ; $4215 inline byte
        dw      $0109                ; $4216 _LIT
        dw      $00C5                ; $4218 inline word
        dw      $02D8                ; $421A _OUTP
        dw      $012A                ; $421C _0
        dw      $0109                ; $421E _LIT
        dw      $4000                ; $4220 inline word
        dw      $0109                ; $4222 _LIT
        dw      $4000                ; $4224 inline word
        dw      _BFILL               ; $4226 _BFILL
        dw      $00FD                ; $4228 _RETURN
NATIVE_422A:
        pop hl                          ; $422A
        ld a,l                          ; $422B
        rrca                            ; $422C
        rrca                            ; $422D
        rrca                            ; $422E
        rrca                            ; $422F
        ld l,a                          ; $4230
        push hl                         ; $4231
        jp (iy)                         ; $4232
NATIVE_4234:
        ld d,l                          ; $4234
DRAW_PATTERN_WORD:
        pop hl                          ; $4235
        ld a,$10                        ; $4236
        or l                            ; $4238
        out (PORT_SCREEN_INTERCEPT),a   ; $4239
        pop hl                          ; $423B
        ld d,l                          ; $423C
        pop hl                          ; $423D
        ld e,l                          ; $423E
        pop hl                          ; $423F
        push bc                         ; $4240
        push ix                         ; $4241
        ld ix,$4234                     ; $4243
        ld bc,$0006                     ; $4247
        ld a,$0f                        ; $424A
        out (PORT_SCREEN_WRITE_MASK),a  ; $424C
        call NATIVE_40FD                ; $424E
        pop ix                          ; $4251
        pop bc                          ; $4253
        jp (iy)                         ; $4254
TERSE_COLON_4256:
        rst     $08                             ; $4256 colon entry
        dw      $012A                ; $4257 _0
        dw      $0112                ; $4259 _LITbyte
        db      $4F                  ; $425B inline byte
        dw      $0109                ; $425C _LIT
        dw      $00CD                ; $425E inline word
        dw      $012A                ; $4260 _0
        dw      DRAW_PATTERN_WORD    ; $4262 DRAW_PATTERN_WORD
        dw      $00FD                ; $4264 _RETURN
TERSE_COLON_4266:
        rst     $08                             ; $4266 colon entry
        dw      $0112                ; $4267 _LITbyte
        db      $10                  ; $4269 inline byte
        dw      $02E0                ; $426A _INP
        dw      $0143                ; $426C _DROP
        dw      $0112                ; $426E _LITbyte
        db      $0F                  ; $4270 inline byte
        dw      $0179                ; $4271 _AND
        dw      $0112                ; $4273 _LITbyte
        db      $10                  ; $4275 inline byte
        dw      $0188                ; $4276 _OR
        dw      $0109                ; $4278 _LIT
        dw      $00C3                ; $427A inline word
        dw      $02D8                ; $427C _OUTP
        dw      $0112                ; $427E _LITbyte
        db      $0F                  ; $4280 inline byte
        dw      $0109                ; $4281 _LIT
        dw      $00C5                ; $4283 inline word
        dw      $02D8                ; $4285 _OUTP
        dw      $0112                ; $4287 _LITbyte
        db      $55                  ; $4289 inline byte
        dw      $0109                ; $428A _LIT
        dw      $4000                ; $428C inline word
        dw      $0109                ; $428E _LIT
        dw      $4000                ; $4290 inline word
        dw      _BFILL               ; $4292 _BFILL
        dw      $00FD                ; $4294 _RETURN
NATIVE_4296:
        add hl,hl                       ; $4296
        add hl,hl                       ; $4297
        ld l,h                          ; $4298
        ld h,$00                        ; $4299
        push de                         ; $429B
        add hl,hl                       ; $429C
        add hl,hl                       ; $429D
        add hl,hl                       ; $429E
        add hl,hl                       ; $429F
        ld e,l                          ; $42A0
        ld d,h                          ; $42A1
        add hl,hl                       ; $42A2
        add hl,hl                       ; $42A3
        add hl,de                       ; $42A4
        ex de,hl                        ; $42A5
        pop hl                          ; $42A6
        ld a,l                          ; $42A7
        rlca                            ; $42A8
        rlca                            ; $42A9
        and $03                         ; $42AA
        ld l,h                          ; $42AC
        ld h,$00                        ; $42AD
        add hl,de                       ; $42AF
        ret                             ; $42B0
NATIVE_42B1:
        ld a,b                          ; $42B1
        and $0f                         ; $42B2
        add a,$10                       ; $42B4
        out (PORT_SCREEN_INTERCEPT),a   ; $42B6
        ld a,$04                        ; $42B8
        out (PORT_EXPAND_COLOR),a       ; $42BA
        ld a,($fea3)                    ; $42BC
        out (PORT_SCREEN_WRITE_MASK),a  ; $42BF
        ld a,$cf                        ; $42C1
        and c                           ; $42C3
        out (PORT_VIDEO_CONFIG),a       ; $42C4
        push ix                         ; $42C6
        pop bc                          ; $42C8
L42C9:
        push de                         ; $42C9
        push hl                         ; $42CA
L42CB:
        ld a,(bc)                       ; $42CB
        ld (hl),a                       ; $42CC
        inc hl                          ; $42CD
        ld (hl),a                       ; $42CE
        inc hl                          ; $42CF
        inc bc                          ; $42D0
        dec e                           ; $42D1
        jr nz,L42CB                     ; $42D2
        ld (hl),e                       ; $42D4
        inc hl                          ; $42D5
        ld (hl),e                       ; $42D6
        pop hl                          ; $42D7
        ld de,$0050                     ; $42D8
        add hl,de                       ; $42DB
        pop de                          ; $42DC
        dec d                           ; $42DD
        jr nz,L42C9                     ; $42DE
        ld e,$01                        ; $42E0
        ret                             ; $42E2
DRAW_TEXT_WORD:
        pop hl                          ; $42E3
        push bc                         ; $42E4
        ld c,(hl)                       ; $42E5
        inc hl                          ; $42E6
        ld b,(hl)                       ; $42E7
        inc hl                          ; $42E8
        ld e,(hl)                       ; $42E9
        inc hl                          ; $42EA
        ld d,(hl)                       ; $42EB
        inc hl                          ; $42EC
        push hl                         ; $42ED
        ex (sp),ix                      ; $42EE
        push de                         ; $42F0
        push bc                         ; $42F1
        push af                         ; $42F2
        ld a,b                          ; $42F3
        neg                             ; $42F4
        add a,$0a                       ; $42F6
        sub d                           ; $42F8
        ld b,a                          ; $42F9
        ld c,$00                        ; $42FA
        srl b                           ; $42FC
        rr c                            ; $42FE
        srl b                           ; $4300
        rr c                            ; $4302
        ld hl,($fe9f)                   ; $4304
        add hl,bc                       ; $4307
        ex de,hl                        ; $4308
        pop af                          ; $4309
        pop bc                          ; $430A
        ld b,c                          ; $430B
        ld c,$00                        ; $430C
        srl b                           ; $430E
        rr c                            ; $4310
        srl b                           ; $4312
        rr c                            ; $4314
        ld hl,($fea1)                   ; $4316
        add hl,bc                       ; $4319
        ex de,hl                        ; $431A
        call NATIVE_4296                ; $431B
        pop de                          ; $431E
        or $08                          ; $431F
        ld c,a                          ; $4321
        ld a,($fea8)                    ; $4322
        ld b,a                          ; $4325
        call NATIVE_42B1                ; $4326
        pop ix                          ; $4329
        pop bc                          ; $432B
        jp (iy)                         ; $432C
NATIVE_432E:
        ld de,$0000                     ; $432E
        ld hl,$0000                     ; $4331
        in a,(PORT_INPUT_PRIMARY)       ; $4334
        in a,(PORT_INPUT_PRIMARY)       ; $4336
        bit 4,a                         ; $4338
        jr nz,L4340                     ; $433A
        ld d,$08                        ; $433C
        jr L4346                        ; $433E
L4340:
        bit 5,a                         ; $4340
        jr nz,L4346                     ; $4342
        ld d,$04                        ; $4344
L4346:
        in a,(PORT_INPUT_BUTTONS)       ; $4346
        bit 6,a                         ; $4348
        jr nz,L4350                     ; $434A
        ld e,$02                        ; $434C
        jr L4356                        ; $434E
L4350:
        bit 4,a                         ; $4350
        jr nz,L4356                     ; $4352
        ld e,$01                        ; $4354
L4356:
        bit 5,a                         ; $4356
        jr nz,L435C                     ; $4358
        ld l,$10                        ; $435A
L435C:
        ld a,($e1d9)                    ; $435C
        or a                            ; $435F
        jr z,L4364                      ; $4360
        ld l,$10                        ; $4362
L4364:
        ld a,d                          ; $4364
        or e                            ; $4365
        or l                            ; $4366
        ld l,a                          ; $4367
        push hl                         ; $4368
        jp (iy)                         ; $4369
NATIVE_436B:
        pop hl                          ; $436B
        ld a,l                          ; $436C
        out (PORT_SCREEN_WRITE_MASK),a  ; $436D
        jp (iy)                         ; $436F
NATIVE_4371:
        pop hl                          ; $4371
        ld a,l                          ; $4372
        out (PORT_SCREEN_INTERCEPT),a   ; $4373
        jp (iy)                         ; $4375
NATIVE_4377:
        pop hl                          ; $4377
        ld a,l                          ; $4378
        out (PORT_SCREEN_PAGE),a        ; $4379
        jp (iy)                         ; $437B
NATIVE_437D:
        nop                             ; $437D
        ld d,l                          ; $437E
        xor d                           ; $437F
        rst $38                         ; $4380
        pop de                          ; $4381
        ld hl,$437d                     ; $4382
        add hl,de                       ; $4385
        ld a,(hl)                       ; $4386
        out (PORT_SCREEN_PAGE),a        ; $4387
        jp (iy)                         ; $4389
TERSE_COLON_438B:
        rst     $08                             ; $438B colon entry
        dw      $0109                ; $438C _LIT
        dw      $FEA3                ; $438E inline word
        dw      $0153                ; $4390 _Bat
        dw      $0109                ; $4392 _LIT
        dw      $FE9E                ; $4394 inline word
        dw      $0532                ; $4396 _SBbang
        dw      $0136                ; $4398 _DUP
        dw      NATIVE_436B          ; $439A NATIVE_436B
        dw      $0109                ; $439C _LIT
        dw      $FEA3                ; $439E inline word
        dw      $0532                ; $43A0 _SBbang
        dw      $00FD                ; $43A2 _RETURN
TERSE_COLON_43A4:
        rst     $08                             ; $43A4 colon entry
        dw      $0109                ; $43A5 _LIT
        dw      $FE9E                ; $43A7 inline word
        dw      $0153                ; $43A9 _Bat
        dw      $0136                ; $43AB _DUP
        dw      NATIVE_436B          ; $43AD NATIVE_436B
        dw      $0109                ; $43AF _LIT
        dw      $FEA3                ; $43B1 inline word
        dw      $0532                ; $43B3 _SBbang
        dw      $00FD                ; $43B5 _RETURN
NATIVE_43B7:
        in a,(PORT_INPUT_PRIMARY)       ; $43B7
        jp (iy)                         ; $43B9
NATIVE_43BB:
        exx                             ; $43BB
        pop bc                          ; $43BC
L43BD:
        ld l,$7b                        ; $43BD
L43BF:
        dec l                           ; $43BF
        jp nz,L43BF                     ; $43C0
        jp L43C6                        ; $43C3
L43C6:
        in a,(PORT_INPUT_PRIMARY)       ; $43C6
        cpi                             ; $43C8
        jp pe,L43BD                     ; $43CA
        exx                             ; $43CD
        jp (iy)                         ; $43CE
TERSE_COLON_43D0:
        rst     $08                             ; $43D0 colon entry
        dw      NATIVE_43B7          ; $43D1 NATIVE_43B7
        dw      $0112                ; $43D3 _LITbyte
        db      $0F                  ; $43D5 inline byte
        dw      $0179                ; $43D6 _AND
        dw      NATIVE_4371          ; $43D8 NATIVE_4371
        dw      $0112                ; $43DA _LITbyte
        db      $0F                  ; $43DC inline byte
        dw      NATIVE_436B          ; $43DD NATIVE_436B
        dw      $0112                ; $43DF _LITbyte
        db      $0F                  ; $43E1 inline byte
        dw      $0109                ; $43E2 _LIT
        dw      $00C4                ; $43E4 inline word
        dw      $02D8                ; $43E6 _OUTP
        dw      $0112                ; $43E8 _LITbyte
        db      $12                  ; $43EA inline byte
        dw      NATIVE_43BB          ; $43EB NATIVE_43BB
        dw      $012A                ; $43ED _0
        dw      $0109                ; $43EF _LIT
        dw      $00C4                ; $43F1 inline word
        dw      $02D8                ; $43F3 _OUTP
        dw      $0109                ; $43F5 _LIT
        dw      $FEA3                ; $43F7 inline word
        dw      $0153                ; $43F9 _Bat
        dw      NATIVE_436B          ; $43FB NATIVE_436B
        dw      $00FD                ; $43FD _RETURN
TERSE_COLON_43FF:
        rst     $08                             ; $43FF colon entry
        dw      $0109                ; $4400 _LIT
        dw      $E1D4                ; $4402 inline word
        dw      $0153                ; $4404 _Bat
        dw      $00FD                ; $4406 _RETURN
TERSE_COLON_4408:
        rst     $08                             ; $4408 colon entry
        dw      NATIVE_43B7          ; $4409 NATIVE_43B7
        dw      $0109                ; $440B _LIT
        dw      $FEA1                ; $440D inline word
        dw      $057D                ; $440F _plusbang
        dw      $00FD                ; $4411 _RETURN
TERSE_COLON_4413:
        rst     $08                             ; $4413 colon entry
        dw      NATIVE_43B7          ; $4414 NATIVE_43B7
        dw      $0109                ; $4416 _LIT
        dw      $FEA1                ; $4418 inline word
        dw      $0561                ; $441A _bang
        dw      $00FD                ; $441C _RETURN
TERSE_COLON_441E:
        rst     $08                             ; $441E colon entry
        dw      $0109                ; $441F _LIT
        dw      $0340                ; $4421 inline word
        dw      $0109                ; $4423 _LIT
        dw      $FE9F                ; $4425 inline word
        dw      $057D                ; $4427 _plusbang
        dw      $00FD                ; $4429 _RETURN
TERSE_COLON_442B:
        rst     $08                             ; $442B colon entry
        dw      $0109                ; $442C _LIT
        dw      $0200                ; $442E inline word
        dw      TERSE_COLON_4413     ; $4430 TERSE_COLON_4413
        dw      $00FD                ; $4432 _RETURN
TERSE_COLON_4434:
        rst     $08                             ; $4434 colon entry
        dw      TERSE_COLON_442B     ; $4435 TERSE_COLON_442B
        dw      TERSE_COLON_441E     ; $4437 TERSE_COLON_441E
        dw      $00FD                ; $4439 _RETURN
TERSE_COLON_443B:
        rst     $08                             ; $443B colon entry
        dw      $0109                ; $443C _LIT
        dw      $0340                ; $443E inline word
        dw      $01AB                ; $4440 _2slash
        dw      $0109                ; $4442 _LIT
        dw      $FE9F                ; $4444 inline word
        dw      $0561                ; $4446 _bang
        dw      TERSE_COLON_442B     ; $4448 TERSE_COLON_442B
        dw      $00FD                ; $444A _RETURN
TERSE_COLON_444C:
        rst     $08                             ; $444C colon entry
        dw      TERSE_COLON_443B     ; $444D TERSE_COLON_443B
        dw      $024C                ; $444F _minusDUP
        dw      $03EA                ; $4451 _0BRANCH
        dw      L445D                ; $4453 branch target
        dw      $012A                ; $4455 _0
        dw      $026F                ; $4457 _DO
        dw      TERSE_COLON_441E     ; $4459 TERSE_COLON_441E
        dw      $028A                ; $445B _LOOP
L445D:
        dw      $00FD                ; $445D _RETURN
TERSE_COLON_445F:
        rst     $08                             ; $445F colon entry
        dw      $0109                ; $4460 _LIT
        dw      $E1D9                ; $4462 inline word
        dw      $0153                ; $4464 _Bat
        dw      $01DE                ; $4466 _zeroequal
        dw      $00FD                ; $4468 _RETURN
TERSE_COLON_446A:
        rst     $08                             ; $446A colon entry
        dw      TERSE_COLON_445F     ; $446B TERSE_COLON_445F
        dw      $03EA                ; $446D _0BRANCH
        dw      L4477                ; $446F branch target
        dw      TERSE_COLON_4203     ; $4471 TERSE_COLON_4203
        dw      $03E2                ; $4473 _BRANCH
        dw      L447B                ; $4475 branch target
L4477:
        dw      $012A                ; $4477 _0
        dw      TERSE_COLON_43D0     ; $4479 TERSE_COLON_43D0
L447B:
        dw      TERSE_COLON_443B     ; $447B TERSE_COLON_443B
        dw      $00FD                ; $447D _RETURN
TERSE_COLON_447F:
        rst     $08                             ; $447F colon entry
        dw      $0136                ; $4480 _DUP
        dw      $0112                ; $4482 _LITbyte
        db      $20                  ; $4484 inline byte
        dw      $01CF                ; $4485 _equal
        dw      $0146                ; $4487 _SWAP
        dw      $0109                ; $4489 _LIT
        dw      $FEA1                ; $448B inline word
        dw      $014C                ; $448D _at
        dw      $0109                ; $448F _LIT
        dw      $4D60                ; $4491 inline word
        dw      $022A                ; $4493 _gt_equal
        dw      $03EA                ; $4495 _0BRANCH
        dw      L449B                ; $4497 branch target
        dw      TERSE_COLON_4434     ; $4499 TERSE_COLON_4434
L449B:
        dw      $0109                ; $449B _LIT
        dw      $FE9F                ; $449D inline word
        dw      $014C                ; $449F _at
        dw      $0109                ; $44A1 _LIT
        dw      $3100                ; $44A3 inline word
        dw      $022A                ; $44A5 _gt_equal
        dw      $03EA                ; $44A7 _0BRANCH
        dw      L44AD                ; $44A9 branch target
        dw      TERSE_COLON_446A     ; $44AB TERSE_COLON_446A
L44AD:
        dw      $0980                ; $44AD execution token $0980
        dw      $0136                ; $44AF _DUP
        dw      DRAW_TEXT_WORD       ; $44B1 DRAW_TEXT_WORD
        dw      $0190                ; $44B3 _1minus
        dw      $0153                ; $44B5 _Bat
        dw      $0146                ; $44B7 _SWAP
        dw      $03EA                ; $44B9 _0BRANCH
        dw      L44C8                ; $44BB branch target
        dw      $0143                ; $44BD _DROP
        dw      $012A                ; $44BF _0
        dw      $0112                ; $44C1 _LITbyte
        db      $09                  ; $44C3 inline byte
        dw      $03E2                ; $44C4 _BRANCH
        dw      L44CB                ; $44C6 branch target
L44C8:
        dw      $0112                ; $44C8 _LITbyte
        db      $03                  ; $44CA inline byte
L44CB:
        dw      $015A                ; $44CB _plus
        dw      $02D1                ; $44CD _SWAB
        dw      $01AB                ; $44CF _2slash
        dw      $01AB                ; $44D1 _2slash
        dw      TERSE_COLON_4408     ; $44D3 TERSE_COLON_4408
        dw      $00FD                ; $44D5 _RETURN
TERSE_COLON_44D7:
        rst     $08                             ; $44D7 colon entry
        dw      $02CA                ; $44D8 _OVER
        dw      $015A                ; $44DA _plus
        dw      $0146                ; $44DC _SWAP
        dw      $026F                ; $44DE _DO
        dw      $02B8                ; $44E0 _I
        dw      $0153                ; $44E2 _Bat
        dw      TERSE_COLON_447F     ; $44E4 TERSE_COLON_447F
        dw      $028A                ; $44E6 _LOOP
        dw      $00FD                ; $44E8 _RETURN
TERSE_COLON_44EA:
        rst     $08                             ; $44EA colon entry
        dw      $01C3                ; $44EB _Bat_inc7
        dw      TERSE_COLON_44D7     ; $44ED TERSE_COLON_44D7
        dw      $00FD                ; $44EF _RETURN
TERSE_COLON_44F1:
        rst     $08                             ; $44F1 colon entry
        dw      $0109                ; $44F2 _LIT
        dw      $FEA8                ; $44F4 inline word
        dw      $0532                ; $44F6 _SBbang
        dw      $00FD                ; $44F8 _RETURN
TERSE_COLON_44FA:
        rst     $08                             ; $44FA colon entry
        dw      $0112                ; $44FB _LITbyte
        db      $07                  ; $44FD inline byte
        dw      TERSE_COLON_44F1     ; $44FE TERSE_COLON_44F1
        dw      $00FD                ; $4500 _RETURN
TERSE_COLON_4502:
        rst     $08                             ; $4502 colon entry
        dw      $0112                ; $4503 _LITbyte
        db      $08                  ; $4505 inline byte
        dw      TERSE_COLON_44F1     ; $4506 TERSE_COLON_44F1
        dw      $00FD                ; $4508 _RETURN
TERSE_COLON_450A:
        rst     $08                             ; $450A colon entry
        dw      $0112                ; $450B _LITbyte
        db      $05                  ; $450D inline byte
        dw      TERSE_COLON_44F1     ; $450E TERSE_COLON_44F1
        dw      $00FD                ; $4510 _RETURN
TERSE_COLON_4512:
        rst     $08                             ; $4512 colon entry
        dw      $0112                ; $4513 _LITbyte
        db      $04                  ; $4515 inline byte
        dw      TERSE_COLON_44F1     ; $4516 TERSE_COLON_44F1
        dw      $00FD                ; $4518 _RETURN
TERSE_COLON_451A:
        rst     $08                             ; $451A colon entry
        dw      $0112                ; $451B _LITbyte
        db      $06                  ; $451D inline byte
        dw      TERSE_COLON_44F1     ; $451E TERSE_COLON_44F1
        dw      $00FD                ; $4520 _RETURN
TERSE_COLON_4522:
        rst     $08                             ; $4522 colon entry
        dw      $0112                ; $4523 _LITbyte
        db      $09                  ; $4525 inline byte
        dw      TERSE_COLON_44F1     ; $4526 TERSE_COLON_44F1
        dw      $00FD                ; $4528 _RETURN
TERSE_COLON_452A:
        rst     $08                             ; $452A colon entry
        dw      $0112                ; $452B _LITbyte
        db      $0A                  ; $452D inline byte
        dw      TERSE_COLON_44F1     ; $452E TERSE_COLON_44F1
        dw      $00FD                ; $4530 _RETURN
TERSE_COLON_4532:
        rst     $08                             ; $4532 colon entry
        dw      $0112                ; $4533 _LITbyte
        db      $0F                  ; $4535 inline byte
        dw      $0179                ; $4536 _AND
        dw      $0136                ; $4538 _DUP
        dw      $0112                ; $453A _LITbyte
        db      $0A                  ; $453C inline byte
        dw      $022A                ; $453D _gt_equal
        dw      $03EA                ; $453F _0BRANCH
        dw      L454A                ; $4541 branch target
        dw      $0112                ; $4543 _LITbyte
        db      $37                  ; $4545 inline byte
        dw      $03E2                ; $4546 _BRANCH
        dw      L454D                ; $4548 branch target
L454A:
        dw      $0112                ; $454A _LITbyte
        db      $30                  ; $454C inline byte
L454D:
        dw      $015A                ; $454D _plus
        dw      TERSE_COLON_447F     ; $454F TERSE_COLON_447F
        dw      $00FD                ; $4551 _RETURN
TERSE_COLON_4553:
        rst     $08                             ; $4553 colon entry
        dw      $0109                ; $4554 _LIT
        dw      $FEA1                ; $4556 inline word
        dw      $014C                ; $4558 _at
        dw      $0146                ; $455A _SWAP
        dw      TERSE_COLON_4532     ; $455C TERSE_COLON_4532
        dw      $0109                ; $455E _LIT
        dw      $0240                ; $4560 inline word
        dw      $015A                ; $4562 _plus
        dw      $0136                ; $4564 _DUP
        dw      TERSE_COLON_4413     ; $4566 TERSE_COLON_4413
        dw      $0109                ; $4568 _LIT
        dw      $4D60                ; $456A inline word
        dw      $022A                ; $456C _gt_equal
        dw      $03EA                ; $456E _0BRANCH
        dw      L4574                ; $4570 branch target
        dw      TERSE_COLON_4434     ; $4572 TERSE_COLON_4434
L4574:
        dw      $00FD                ; $4574 _RETURN
TERSE_COLON_4576:
        rst     $08                             ; $4576 colon entry
        dw      $0136                ; $4577 _DUP
        dw      NATIVE_422A          ; $4579 NATIVE_422A
        dw      TERSE_COLON_4553     ; $457B TERSE_COLON_4553
        dw      TERSE_COLON_4553     ; $457D TERSE_COLON_4553
        dw      $00FD                ; $457F _RETURN
TERSE_COLON_4581:
        rst     $08                             ; $4581 colon entry
        dw      $0112                ; $4582 _LITbyte
        db      $20                  ; $4584 inline byte
        dw      TERSE_COLON_447F     ; $4585 TERSE_COLON_447F
        dw      $00FD                ; $4587 _RETURN
TERSE_COLON_4589:
        rst     $08                             ; $4589 colon entry
        dw      $0109                ; $458A _LIT
        dw      $0240                ; $458C inline word
        dw      $0109                ; $458E _LIT
        dw      $FEA1                ; $4590 inline word
        dw      $0590                ; $4592 _minusbang
        dw      $00FD                ; $4594 _RETURN
TERSE_COLON_4596:
        rst     $08                             ; $4596 colon entry
        dw      TERSE_COLON_4589     ; $4597 TERSE_COLON_4589
        dw      $0112                ; $4599 _LITbyte
        db      $0A                  ; $459B inline byte
        dw      $0378                ; $459C _slashMOD
        dw      $024C                ; $459E _minusDUP
        dw      $03EA                ; $45A0 _0BRANCH
        dw      L45A6                ; $45A2 branch target
        dw      TERSE_COLON_4596     ; $45A4 TERSE_COLON_4596
L45A6:
        dw      TERSE_COLON_4553     ; $45A6 TERSE_COLON_4553
        dw      $00FD                ; $45A8 _RETURN
TERSE_COLON_45AA:
        rst     $08                             ; $45AA colon entry
        dw      TERSE_COLON_4589     ; $45AB TERSE_COLON_4589
        dw      $0136                ; $45AD _DUP
        dw      $0220                ; $45AF _0less
        dw      $03EA                ; $45B1 _0BRANCH
        dw      L45BC                ; $45B3 branch target
        dw      $0112                ; $45B5 _LITbyte
        db      $2D                  ; $45B7 inline byte
        dw      $03E2                ; $45B8 _BRANCH
        dw      L45BF                ; $45BA branch target
L45BC:
        dw      $0112                ; $45BC _LITbyte
        db      $20                  ; $45BE inline byte
L45BF:
        dw      $0109                ; $45BF _LIT
        dw      $FE9D                ; $45C1 inline word
        dw      $0532                ; $45C3 _SBbang
        dw      $01B3                ; $45C5 _ABS
        dw      $0109                ; $45C7 _LIT
        dw      $FFFF                ; $45C9 inline word
        dw      $0146                ; $45CB _SWAP
L45CD:
        dw      TERSE_COLON_4589     ; $45CD TERSE_COLON_4589
        dw      $0112                ; $45CF _LITbyte
        db      $0A                  ; $45D1 inline byte
        dw      $0378                ; $45D2 _slashMOD
        dw      $024C                ; $45D4 _minusDUP
        dw      $01DE                ; $45D6 _zeroequal
        dw      $03EA                ; $45D8 _0BRANCH
        dw      L45CD                ; $45DA branch target
        dw      $0109                ; $45DC _LIT
        dw      $FE9D                ; $45DE inline word
        dw      $0153                ; $45E0 _Bat
        dw      TERSE_COLON_447F     ; $45E2 TERSE_COLON_447F
L45E4:
        dw      $0136                ; $45E4 _DUP
        dw      $0109                ; $45E6 _LIT
        dw      $FFFF                ; $45E8 inline word
        dw      $01E5                ; $45EA _not_equal
        dw      $03EA                ; $45EC _0BRANCH
        dw      L45F6                ; $45EE branch target
        dw      TERSE_COLON_4553     ; $45F0 TERSE_COLON_4553
        dw      $03E2                ; $45F2 _BRANCH
        dw      L45E4                ; $45F4 branch target
L45F6:
        dw      $0143                ; $45F6 _DROP
        dw      $00FD                ; $45F8 _RETURN
COLD_RESTART_WORD:
        rst $00                         ; $45FA
TERSE_COLON_45FB:
        rst     $08                             ; $45FB colon entry
        dw      NATIVE_432E          ; $45FC NATIVE_432E
        dw      $0112                ; $45FE _LITbyte
        db      $10                  ; $4600 inline byte
        dw      $0179                ; $4601 _AND
        dw      NATIVE_43B7          ; $4603 NATIVE_43B7
        dw      $00FD                ; $4605 _RETURN
TERSE_COLON_4607:
        rst     $08                             ; $4607 colon entry
L4608:
        dw      TERSE_COLON_45FB     ; $4608 TERSE_COLON_45FB
        dw      $03EA                ; $460A _0BRANCH
        dw      L4608                ; $460C branch target
        dw      $00FD                ; $460E _RETURN
SELFTEST_HARDWARE_RESET:
        in a,(PORT_INPUT_PRIMARY)       ; $4610
        exx                             ; $4612
        xor a                           ; $4613
        out ($04),a                     ; $4614
        out (PORT_VIDEO_CONFIG),a       ; $4616
        out (PORT_SCREEN_INTERCEPT),a   ; $4618
        out (PORT_SCREEN_WRITE_MODE),a  ; $461A
        out (PORT_SCREEN_WRITE_MASK),a  ; $461C
        out (PORT_SCREEN_PAGE),a        ; $461E
        ld hl,$4040                     ; $4620
        ld bc,$30bf                     ; $4623
L4626:
        inc c                           ; $4626
        outi                            ; $4627
        inc c                           ; $4629
        outi                            ; $462A
        inc c                           ; $462C
        outi                            ; $462D
        ld c,$bf                        ; $462F
        jp nz,L4626                     ; $4631
        ld bc,$0818                     ; $4634
L4637:
        out (c),a                       ; $4637
        djnz L4637                      ; $4639
        ld bc,$0858                     ; $463B
L463E:
        out (c),a                       ; $463E
        djnz L463E                      ; $4640
        ld a,$07                        ; $4642
        out ($04),a                     ; $4644
        ld a,$28                        ; $4646
        out (PORT_VIDEO_COLOR),a        ; $4648
        ld a,$cd                        ; $464A
        out (PORT_VIDEO_VERTICAL),a     ; $464C
        ld a,$0f                        ; $464E
        out (PORT_SCREEN_WRITE_MASK),a  ; $4650
        ld ($fea3),a                    ; $4652
        exx                             ; $4655
        jp (iy)                         ; $4656
NATIVE_4658:
        ld a,($e1d4)                    ; $4658
        and $01                         ; $465B
        xor $01                         ; $465D
        ld l,a                          ; $465F
        ld h,$00                        ; $4660
        push hl                         ; $4662
        jp (iy)                         ; $4663
NATIVE_4665:
        pop hl                          ; $4665
        ld a,l                          ; $4666
        rlca                            ; $4667
        rlca                            ; $4668
        rlca                            ; $4669
        rlca                            ; $466A
        ld l,a                          ; $466B
        pop de                          ; $466C
        ld a,e                          ; $466D
        or l                            ; $466E
        out (PORT_SCREEN_CONTROL_2),a   ; $466F
        pop de                          ; $4671
        ld a,e                          ; $4672
        or l                            ; $4673
        out (PORT_SCREEN_CONTROL_1),a   ; $4674
        pop de                          ; $4676
        ld a,e                          ; $4677
        or l                            ; $4678
        out (PORT_SCREEN_CONTROL_0),a   ; $4679
        jp (iy)                         ; $467B
TERSE_COLON_467D:
        rst     $08                             ; $467D colon entry
        dw      $0109                ; $467E _LIT
        dw      $0B40                ; $4680 inline word
        dw      TERSE_COLON_4413     ; $4682 TERSE_COLON_4413
        dw      $00FD                ; $4684 _RETURN
TERSE_COLON_4686:
        rst     $08                             ; $4686 colon entry
        dw      $0109                ; $4687 _LIT
        dw      $13B0                ; $4689 inline word
        dw      TERSE_COLON_4413     ; $468B TERSE_COLON_4413
        dw      $00FD                ; $468D _RETURN
TERSE_COLON_468F:
        rst     $08                             ; $468F colon entry
        dw      $0109                ; $4690 _LIT
        dw      $3640                ; $4692 inline word
        dw      TERSE_COLON_4413     ; $4694 TERSE_COLON_4413
        dw      $00FD                ; $4696 _RETURN
TERSE_COLON_4698:
        rst     $08                             ; $4698 colon entry
        dw      $0109                ; $4699 _LIT
        dw      $4140                ; $469B inline word
        dw      TERSE_COLON_4413     ; $469D TERSE_COLON_4413
        dw      $00FD                ; $469F _RETURN
TERSE_COLON_46A1:
        rst     $08                             ; $46A1 colon entry
        dw      TERSE_COLON_441E     ; $46A2 TERSE_COLON_441E
        dw      TERSE_COLON_467D     ; $46A4 TERSE_COLON_467D
        dw      $00FD                ; $46A6 _RETURN
TERSE_COLON_46A8:
        rst     $08                             ; $46A8 colon entry
        dw      $0109                ; $46A9 _LIT
        dw      $FE9F                ; $46AB inline word
        dw      $014C                ; $46AD _at
        dw      $0109                ; $46AF _LIT
        dw      $FEA1                ; $46B1 inline word
        dw      $014C                ; $46B3 _at
        dw      TERSE_COLON_4686     ; $46B5 TERSE_COLON_4686
        dw      $0109                ; $46B7 _LIT
        dw      $2F00                ; $46B9 inline word
        dw      $0109                ; $46BB _LIT
        dw      $FE9F                ; $46BD inline word
        dw      $0561                ; $46BF _bang
        dw      $0405                ; $46C1 _Aquote
        db      $06,$6C,$65,$76,$65,$6C,$20                                     ; $46C3 counted string
        dw      TERSE_COLON_44EA     ; $46CA TERSE_COLON_44EA
        dw      $0109                ; $46CC _LIT
        dw      $FEAA                ; $46CE inline word
        dw      $0153                ; $46D0 _Bat
        dw      $0136                ; $46D2 _DUP
        dw      $0112                ; $46D4 _LITbyte
        db      $03                  ; $46D6 inline byte
        dw      $015A                ; $46D7 _plus
        dw      TERSE_COLON_44F1     ; $46D9 TERSE_COLON_44F1
        dw      TERSE_COLON_4532     ; $46DB TERSE_COLON_4532
        dw      TERSE_COLON_4413     ; $46DD TERSE_COLON_4413
        dw      $0109                ; $46DF _LIT
        dw      $FE9F                ; $46E1 inline word
        dw      $0561                ; $46E3 _bang
        dw      $00FD                ; $46E5 _RETURN
TERSE_COLON_46E7:
        rst     $08                             ; $46E7 colon entry
        dw      $012A                ; $46E8 _0
        dw      $026F                ; $46EA _DO
        dw      NATIVE_43B7          ; $46EC NATIVE_43B7
        dw      $028A                ; $46EE _LOOP
        dw      $00FD                ; $46F0 _RETURN
TERSE_COLON_46F2:
        rst     $08                             ; $46F2 colon entry
        dw      TERSE_COLON_43FF     ; $46F3 TERSE_COLON_43FF
        dw      $0112                ; $46F5 _LITbyte
        db      $08                  ; $46F7 inline byte
        dw      $0179                ; $46F8 _AND
        dw      $03EA                ; $46FA _0BRANCH
        dw      L4706                ; $46FC branch target
        dw      $02FB                ; $46FE _2DROP
        dw      $02FB                ; $4700 _2DROP
        dw      $03E2                ; $4702 _BRANCH
        dw      L4742                ; $4704 branch target
L4706:
        dw      $0109                ; $4706 _LIT
        dw      $00FF                ; $4708 inline word
        dw      $0112                ; $470A _LITbyte
        db      $16                  ; $470C inline byte
        dw      $02D8                ; $470D _OUTP
        dw      $0112                ; $470F _LITbyte
        db      $10                  ; $4711 inline byte
        dw      $02D8                ; $4712 _OUTP
        dw      $0112                ; $4714 _LITbyte
        db      $11                  ; $4716 inline byte
        dw      $02D8                ; $4717 _OUTP
        dw      $0112                ; $4719 _LITbyte
        db      $12                  ; $471B inline byte
        dw      $02D8                ; $471C _OUTP
        dw      TERSE_COLON_46E7     ; $471E TERSE_COLON_46E7
        dw      $012A                ; $4720 _0
        dw      $0112                ; $4722 _LITbyte
        db      $16                  ; $4724 inline byte
        dw      $02D8                ; $4725 _OUTP
        dw      $012A                ; $4727 _0
        dw      $0112                ; $4729 _LITbyte
        db      $10                  ; $472B inline byte
        dw      $02D8                ; $472C _OUTP
        dw      $012A                ; $472E _0
        dw      $0112                ; $4730 _LITbyte
        db      $11                  ; $4732 inline byte
        dw      $02D8                ; $4733 _OUTP
        dw      $012A                ; $4735 _0
        dw      $0112                ; $4737 _LITbyte
        db      $12                  ; $4739 inline byte
        dw      $02D8                ; $473A _OUTP
        dw      $0109                ; $473C _LIT
        dw      $0200                ; $473E inline word
        dw      TERSE_COLON_46E7     ; $4740 TERSE_COLON_46E7
L4742:
        dw      $00FD                ; $4742 _RETURN
TERSE_COLON_4744:
        rst     $08                             ; $4744 colon entry
        dw      $0109                ; $4745 _LIT
        dw      $E1DB                ; $4747 inline word
        dw      ALIAS_1plusbang      ; $4749 ALIAS_1plusbang
        dw      $0109                ; $474B _LIT
        dw      $0A00                ; $474D inline word
        dw      $0109                ; $474F _LIT
        dw      $00FF                ; $4751 inline word
        dw      $0109                ; $4753 _LIT
        dw      $00E0                ; $4755 inline word
        dw      $0112                ; $4757 _LITbyte
        db      $44                  ; $4759 inline byte
        dw      TERSE_COLON_46F2     ; $475A TERSE_COLON_46F2
        dw      $00FD                ; $475C _RETURN
TERSE_COLON_475E:
        rst     $08                             ; $475E colon entry
        dw      $0109                ; $475F _LIT
        dw      $0500                ; $4761 inline word
        dw      $0112                ; $4763 _LITbyte
        db      $30                  ; $4765 inline byte
        dw      $0112                ; $4766 _LITbyte
        db      $60                  ; $4768 inline byte
        dw      $0112                ; $4769 _LITbyte
        db      $30                  ; $476B inline byte
        dw      TERSE_COLON_46F2     ; $476C TERSE_COLON_46F2
        dw      $00FD                ; $476E _RETURN
TERSE_COLON_4770:
        rst     $08                             ; $4770 colon entry
        dw      $0109                ; $4771 _LIT
        dw      $FEA9                ; $4773 inline word
        dw      $053F                ; $4775 _BZERO
        dw      $00FD                ; $4777 _RETURN
TERSE_COLON_4779:
        rst     $08                             ; $4779 colon entry
        dw      $0109                ; $477A _LIT
        dw      $FEA9                ; $477C inline word
        dw      $053A                ; $477E _BONE
        dw      $00FD                ; $4780 _RETURN
TERSE_COLON_4782:
        rst     $08                             ; $4782 colon entry
        dw      TERSE_COLON_467D     ; $4783 TERSE_COLON_467D
        dw      TERSE_COLON_4502     ; $4785 TERSE_COLON_4502
        dw      $0405                ; $4787 _Aquote
        db      $02,$60,$7C                                                     ; $4789 counted string
        dw      TERSE_COLON_44EA     ; $478C TERSE_COLON_44EA
        dw      TERSE_COLON_452A     ; $478E TERSE_COLON_452A
        dw      $00FD                ; $4790 _RETURN
TERSE_COLON_4792:
        rst     $08                             ; $4792 colon entry
        dw      $0109                ; $4793 _LIT
        dw      $FEAC                ; $4795 inline word
        dw      $0153                ; $4797 _Bat
        dw      $0195                ; $4799 _1plus
        dw      $0109                ; $479B _LIT
        dw      $FEA9                ; $479D inline word
        dw      $0153                ; $479F _Bat
        dw      $03EA                ; $47A1 _0BRANCH
        dw      L47AB                ; $47A3 branch target
        dw      $01A6                ; $47A5 _2splat
        dw      $03E2                ; $47A7 _BRANCH
        dw      L47AD                ; $47A9 branch target
L47AB:
        dw      $0195                ; $47AB _1plus
L47AD:
        dw      TERSE_COLON_444C     ; $47AD TERSE_COLON_444C
        dw      TERSE_COLON_442B     ; $47AF TERSE_COLON_442B
        dw      $00FD                ; $47B1 _RETURN
TERSE_COLON_47B3:
        rst     $08                             ; $47B3 colon entry
        dw      SELFTEST_HARDWARE_RESET ; $47B4 SELFTEST_HARDWARE_RESET
        dw      $0143                ; $47B6 _DROP
        dw      $00FD                ; $47B8 _RETURN
TERSE_COLON_47BA:
        rst     $08                             ; $47BA colon entry
        dw      $0109                ; $47BB _LIT
        dw      $FEAC                ; $47BD inline word
        dw      $053F                ; $47BF _BZERO
        dw      TERSE_COLON_47B3     ; $47C1 TERSE_COLON_47B3
        dw      $00FD                ; $47C3 _RETURN
TERSE_COLON_47C5:
        rst     $08                             ; $47C5 colon entry
        dw      $0112                ; $47C6 _LITbyte
        db      $13                  ; $47C8 inline byte
        dw      $02E0                ; $47C9 _INP
        dw      $0109                ; $47CB _LIT
        dw      $E1D4                ; $47CD inline word
        dw      ALIAS_SBbang         ; $47CF ALIAS_SBbang
        dw      $00FD                ; $47D1 _RETURN
TERSE_COLON_47D3:
        rst     $08                             ; $47D3 colon entry
        dw      $0109                ; $47D4 _LIT
        dw      $FEAA                ; $47D6 inline word
        dw      $0549                ; $47D8 _1plusBbang
        dw      $00FD                ; $47DA _RETURN
TERSE_COLON_47DC:
        rst     $08                             ; $47DC colon entry
        dw      TERSE_COLON_446A     ; $47DD TERSE_COLON_446A
        dw      $0109                ; $47DF _LIT
        dw      $FEAA                ; $47E1 inline word
        dw      $0549                ; $47E3 _1plusBbang
        dw      TERSE_COLON_46A8     ; $47E5 TERSE_COLON_46A8
        dw      $00FD                ; $47E7 _RETURN
TERSE_COLON_47E9:
        rst     $08                             ; $47E9 colon entry
        dw      $0112                ; $47EA _LITbyte
        db      $10                  ; $47EC inline byte
        dw      $02E0                ; $47ED _INP
        dw      $0112                ; $47EF _LITbyte
        db      $04                  ; $47F1 inline byte
        dw      $0179                ; $47F2 _AND
        dw      $03EA                ; $47F4 _0BRANCH
        dw      L4806                ; $47F6 branch target
        dw      $0109                ; $47F8 _LIT
        dw      $E1ED                ; $47FA inline word
        dw      ALIAS_BONE           ; $47FC ALIAS_BONE
        dw      $0109                ; $47FE _LIT
        dw      $E1D9                ; $4800 inline word
        dw      ALIAS_BZERO          ; $4802 ALIAS_BZERO
        dw      COLD_RESTART_WORD    ; $4804 COLD_RESTART_WORD
L4806:
        dw      $00FD                ; $4806 _RETURN
TERSE_COLON_4808:
        rst     $08                             ; $4808 colon entry
        dw      $0405                ; $4809 _Aquote
        db      $03,$20,$20,$20                                                 ; $480B counted string
        dw      TERSE_COLON_44EA     ; $480F TERSE_COLON_44EA
        dw      $00FD                ; $4811 _RETURN
TERSE_COLON_4813:
        rst     $08                             ; $4813 colon entry
        dw      $0143                ; $4814 _DROP
        dw      TERSE_COLON_4792     ; $4816 TERSE_COLON_4792
        dw      TERSE_COLON_467D     ; $4818 TERSE_COLON_467D
        dw      TERSE_COLON_4808     ; $481A TERSE_COLON_4808
        dw      $0109                ; $481C _LIT
        dw      $FEAC                ; $481E inline word
        dw      $0549                ; $4820 _1plusBbang
        dw      TERSE_COLON_4792     ; $4822 TERSE_COLON_4792
        dw      TERSE_COLON_4782     ; $4824 TERSE_COLON_4782
        dw      $00FD                ; $4826 _RETURN
TERSE_COLON_4828:
        rst     $08                             ; $4828 colon entry
        dw      TERSE_COLON_44FA     ; $4829 TERSE_COLON_44FA
        dw      SELFTEST_HARDWARE_RESET ; $482B SELFTEST_HARDWARE_RESET
        dw      TERSE_COLON_446A     ; $482D TERSE_COLON_446A
        dw      TERSE_COLON_4686     ; $482F TERSE_COLON_4686
        dw      $0109                ; $4831 _LIT
        dw      $1000                ; $4833 inline word
        dw      $0109                ; $4835 _LIT
        dw      $FE9F                ; $4837 inline word
        dw      $0561                ; $4839 _bang
        dw      $0405                ; $483B _Aquote
        db      $15,$63,$6F,$6D,$70,$6C,$65,$74,$65,$64,$20,$70,$61,$73,$73,$20,$20,$20,$20,$20,$20,$20 ; $483D counted string
        dw      TERSE_COLON_44EA     ; $4853 TERSE_COLON_44EA
        dw      $0109                ; $4855 _LIT
        dw      $FEA1                ; $4857 inline word
        dw      $014C                ; $4859 _at
        dw      $0109                ; $485B _LIT
        dw      $E1D7                ; $485D inline word
        dw      $014C                ; $485F _at
        dw      TERSE_COLON_4522     ; $4861 TERSE_COLON_4522
        dw      TERSE_COLON_4596     ; $4863 TERSE_COLON_4596
        dw      TERSE_COLON_44FA     ; $4865 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $4867 TERSE_COLON_4686
        dw      TERSE_COLON_441E     ; $4869 TERSE_COLON_441E
        dw      TERSE_COLON_441E     ; $486B TERSE_COLON_441E
        dw      $0405                ; $486D _Aquote
        db      $07,$23,$65,$72,$72,$6F,$72,$73                                 ; $486F counted string
        dw      TERSE_COLON_44EA     ; $4877 TERSE_COLON_44EA
        dw      $0136                ; $4879 _DUP
        dw      TERSE_COLON_4413     ; $487B TERSE_COLON_4413
        dw      TERSE_COLON_4522     ; $487D TERSE_COLON_4522
        dw      $0109                ; $487F _LIT
        dw      $E1DB                ; $4881 inline word
        dw      $014C                ; $4883 _at
        dw      TERSE_COLON_4596     ; $4885 TERSE_COLON_4596
        dw      TERSE_COLON_44FA     ; $4887 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $4889 TERSE_COLON_4686
        dw      TERSE_COLON_441E     ; $488B TERSE_COLON_441E
        dw      TERSE_COLON_441E     ; $488D TERSE_COLON_441E
        dw      $0405                ; $488F _Aquote
        db      $09,$23,$72,$65,$73,$74,$61,$72,$74,$73                         ; $4891 counted string
        dw      TERSE_COLON_44EA     ; $489B TERSE_COLON_44EA
        dw      TERSE_COLON_4413     ; $489D TERSE_COLON_4413
        dw      TERSE_COLON_4522     ; $489F TERSE_COLON_4522
        dw      $0109                ; $48A1 _LIT
        dw      $E1D5                ; $48A3 inline word
        dw      $014C                ; $48A5 _at
        dw      TERSE_COLON_4596     ; $48A7 TERSE_COLON_4596
        dw      $0109                ; $48A9 _LIT
        dw      $4000                ; $48AB inline word
        dw      TERSE_COLON_46E7     ; $48AD TERSE_COLON_46E7
        dw      $00FD                ; $48AF _RETURN
TERSE_COLON_48B1:
        rst     $08                             ; $48B1 colon entry
        dw      TERSE_COLON_47C5     ; $48B2 TERSE_COLON_47C5
        dw      $0109                ; $48B4 _LIT
        dw      $E1DA                ; $48B6 inline word
        dw      $0153                ; $48B8 _Bat
        dw      $03EA                ; $48BA _0BRANCH
        dw      L48E8                ; $48BC branch target
        dw      $0109                ; $48BE _LIT
        dw      $6000                ; $48C0 inline word
        dw      TERSE_COLON_46E7     ; $48C2 TERSE_COLON_46E7
        dw      TERSE_COLON_43FF     ; $48C4 TERSE_COLON_43FF
        dw      $0112                ; $48C6 _LITbyte
        db      $04                  ; $48C8 inline byte
        dw      $0179                ; $48C9 _AND
        dw      $01E3                ; $48CB _NOT
        dw      $03EA                ; $48CD _0BRANCH
        dw      L48E4                ; $48CF branch target
L48D1:
        dw      NATIVE_43B7          ; $48D1 NATIVE_43B7
        dw      NATIVE_432E          ; $48D3 NATIVE_432E
        dw      $0112                ; $48D5 _LITbyte
        db      $0F                  ; $48D7 inline byte
        dw      $0179                ; $48D8 _AND
        dw      $03EA                ; $48DA _0BRANCH
        dw      L48D1                ; $48DC branch target
        dw      $0109                ; $48DE _LIT
        dw      $0600                ; $48E0 inline word
        dw      TERSE_COLON_46E7     ; $48E2 TERSE_COLON_46E7
L48E4:
        dw      $03E2                ; $48E4 _BRANCH
        dw      L48EE                ; $48E6 branch target
L48E8:
        dw      $0109                ; $48E8 _LIT
        dw      $1000                ; $48EA inline word
        dw      TERSE_COLON_46E7     ; $48EC TERSE_COLON_46E7
L48EE:
        dw      $0109                ; $48EE _LIT
        dw      $E1DA                ; $48F0 inline word
        dw      ALIAS_BZERO          ; $48F2 ALIAS_BZERO
        dw      $0109                ; $48F4 _LIT
        dw      $FEAA                ; $48F6 inline word
        dw      $0544                ; $48F8 _1minusBbang
        dw      $0109                ; $48FA _LIT
        dw      $FEAC                ; $48FC inline word
        dw      $0549                ; $48FE _1plusBbang
        dw      NATIVE_432E          ; $4900 NATIVE_432E
        dw      $0112                ; $4902 _LITbyte
        db      $08                  ; $4904 inline byte
        dw      $0179                ; $4905 _AND
        dw      $03EA                ; $4907 _0BRANCH
        dw      L490D                ; $4909 branch target
        dw      TERSE_COLON_4828     ; $490B TERSE_COLON_4828
L490D:
        dw      TERSE_COLON_47E9     ; $490D TERSE_COLON_47E9
        dw      $00FD                ; $490F _RETURN
TERSE_COLON_4911:
        rst     $08                             ; $4911 colon entry
        dw      TERSE_COLON_47C5     ; $4912 TERSE_COLON_47C5
        dw      TERSE_COLON_445F     ; $4914 TERSE_COLON_445F
        dw      $03EA                ; $4916 _0BRANCH
        dw      L4928                ; $4918 branch target
        dw      TERSE_COLON_47E9     ; $491A TERSE_COLON_47E9
        dw      $0109                ; $491C _LIT
        dw      $FEAA                ; $491E inline word
        dw      $0544                ; $4920 _1minusBbang
        dw      $012A                ; $4922 _0
        dw      $03E2                ; $4924 _BRANCH
        dw      L492A                ; $4926 branch target
L4928:
        dw      TERSE_COLON_48B1     ; $4928 TERSE_COLON_48B1
L492A:
        dw      $00FD                ; $492A _RETURN
TERSE_COLON_492C:
        rst     $08                             ; $492C colon entry
        dw      TERSE_COLON_445F     ; $492D TERSE_COLON_445F
        dw      $03EA                ; $492F _0BRANCH
        dw      L4941                ; $4931 branch target
        dw      TERSE_COLON_4607     ; $4933 TERSE_COLON_4607
        dw      $0109                ; $4935 _LIT
        dw      $FEAA                ; $4937 inline word
        dw      $0544                ; $4939 _1minusBbang
        dw      $012A                ; $493B _0
        dw      $03E2                ; $493D _BRANCH
        dw      L4943                ; $493F branch target
L4941:
        dw      TERSE_COLON_48B1     ; $4941 TERSE_COLON_48B1
L4943:
        dw      $00FD                ; $4943 _RETURN
NATIVE_4945:
        exx                             ; $4945
        ld hl,($fe9f)                   ; $4946
        ld de,($fea1)                   ; $4949
        call NATIVE_4296                ; $494D
        ld a,$cf                        ; $4950
        out (PORT_VIDEO_CONFIG),a       ; $4952
        xor a                           ; $4954
        out (PORT_SCREEN_INTERCEPT),a   ; $4955
        out (PORT_EXPAND_COLOR),a       ; $4957
        ld a,($fea3)                    ; $4959
        out (PORT_SCREEN_WRITE_MASK),a  ; $495C
        ld a,$0a                        ; $495E
        pop bc                          ; $4960
        inc bc                          ; $4961
L4962:
        push bc                         ; $4962
        push hl                         ; $4963
        ex de,hl                        ; $4964
        ldir                            ; $4965
        pop hl                          ; $4967
        ld de,$0050                     ; $4968
        add hl,de                       ; $496B
        pop bc                          ; $496C
        dec a                           ; $496D
        jp nz,L4962                     ; $496E
        exx                             ; $4971
        jp (iy)                         ; $4972
NATIVE_4974:
        exx                             ; $4974
        ld hl,($fea1)                   ; $4975
        ld de,$0243                     ; $4978
        pop bc                          ; $497B
        ld b,c                          ; $497C
L497D:
        add hl,de                       ; $497D
        djnz L497D                      ; $497E
        ld ($fea1),hl                   ; $4980
        exx                             ; $4983
        jp (iy)                         ; $4984
TERSE_COLON_4986:
        rst     $08                             ; $4986 colon entry
        dw      $0136                ; $4987 _DUP
        dw      $0112                ; $4989 _LITbyte
        db      $09                  ; $498B inline byte
        dw      $02FF                ; $498C _star
        dw      $01AB                ; $498E _2slash
        dw      $01AB                ; $4990 _2slash
        dw      NATIVE_4945          ; $4992 NATIVE_4945
        dw      NATIVE_4974          ; $4994 NATIVE_4974
        dw      $00FD                ; $4996 _RETURN
CHECKSUM_SELECTED_QUESTION_BANK:
        in a,(PORT_INPUT_PRIMARY)       ; $4998
        pop hl                          ; $499A
        ex (sp),hl                      ; $499B
        ex de,hl                        ; $499C
        ld hl,$df00                     ; $499D
        add hl,de                       ; $49A0
        add hl,de                       ; $49A1
        add hl,de                       ; $49A2
        ld a,(hl)                       ; $49A3
        inc hl                          ; $49A4
        ld e,(hl)                       ; $49A5
        inc hl                          ; $49A6
        ld d,(hl)                       ; $49A7
        pop hl                          ; $49A8
        push bc                         ; $49A9
        jp $00a2                        ; $49AA
CHECKSUM_SELECTED_PROGRAM_BANK:
        in a,(PORT_INPUT_PRIMARY)       ; $49AD
        pop hl                          ; $49AF
        ex (sp),hl                      ; $49B0
        ex de,hl                        ; $49B1
        ld a,e                          ; $49B2
        or $80                          ; $49B3
        ld hl,$df38                     ; $49B5
        ld d,$00                        ; $49B8
        add hl,de                       ; $49BA
        add hl,de                       ; $49BB
        ld e,(hl)                       ; $49BC
        inc hl                          ; $49BD
        ld d,(hl)                       ; $49BE
        pop hl                          ; $49BF
        push bc                         ; $49C0
        jp $0095                        ; $49C1
COUNT_BYTE_MISMATCHES:
        exx                             ; $49C4
        in a,(PORT_INPUT_PRIMARY)       ; $49C5
        pop de                          ; $49C7
        ld a,e                          ; $49C8
        pop hl                          ; $49C9
        pop bc                          ; $49CA
        ld de,$0000                     ; $49CB
L49CE:
        ld (hl),a                       ; $49CE
        cpi                             ; $49CF
        jr z,L49D4                      ; $49D1
        inc de                          ; $49D3
L49D4:
        jp pe,L49CE                     ; $49D4
        push de                         ; $49D7
        exx                             ; $49D8
        jp (iy)                         ; $49D9
TERSE_COLON_49DB:
        rst     $08                             ; $49DB colon entry
        dw      $0130                ; $49DC _1
        dw      $046F                ; $49DE _1lessFRAME
        dw      $04AD                ; $49E0 _1LOCAL
        dw      $0569                ; $49E2 _ZERO
        dw      $0112                ; $49E4 _LITbyte
        db      $09                  ; $49E6 inline byte
        dw      $012A                ; $49E7 _0
        dw      $026F                ; $49E9 _DO
        dw      $04CB                ; $49EB _3PARAMat
        dw      $04D6                ; $49ED _2PARAMat
        dw      $04D0                ; $49EF _1PARAMat
        dw      COUNT_BYTE_MISMATCHES ; $49F1 COUNT_BYTE_MISMATCHES
        dw      $04AD                ; $49F3 _1LOCAL
        dw      $057D                ; $49F5 _plusbang
        dw      NATIVE_43B7          ; $49F7 NATIVE_43B7
        dw      $04D0                ; $49F9 _1PARAMat
        dw      $01A6                ; $49FB _2splat
        dw      $049C                ; $49FD _1PARAM
        dw      $0561                ; $49FF _bang
        dw      $028A                ; $4A01 _LOOP
        dw      $04C1                ; $4A03 _1LOCALat
        dw      $04A8                ; $4A05 _3PARAM
        dw      $0561                ; $4A07 _bang
        dw      $0490                ; $4A09 _2FRAMEgt
        dw      $00FD                ; $4A0B _RETURN
TERSE_COLON_4A0D:
        rst     $08                             ; $4A0D colon entry
        dw      $0109                ; $4A0E _LIT
        dw      $FE9B                ; $4A10 inline word
        dw      $0532                ; $4A12 _SBbang
        dw      $0109                ; $4A14 _LIT
        dw      $FE9C                ; $4A16 inline word
        dw      $0532                ; $4A18 _SBbang
        dw      $00FD                ; $4A1A _RETURN
TERSE_COLON_4A1C:
        rst     $08                             ; $4A1C colon entry
        dw      $0130                ; $4A1D _1
        dw      $0112                ; $4A1F _LITbyte
        db      $09                  ; $4A21 inline byte
        dw      TERSE_COLON_4A0D     ; $4A22 TERSE_COLON_4A0D
        dw      $00FD                ; $4A24 _RETURN
TERSE_COLON_4A26:
        rst     $08                             ; $4A26 colon entry
        dw      $0130                ; $4A27 _1
        dw      $0112                ; $4A29 _LITbyte
        db      $63                  ; $4A2B inline byte
        dw      TERSE_COLON_4A0D     ; $4A2C TERSE_COLON_4A0D
        dw      $00FD                ; $4A2E _RETURN
TERSE_COLON_4A30:
        rst     $08                             ; $4A30 colon entry
        dw      $0109                ; $4A31 _LIT
        dw      $FE9A                ; $4A33 inline word
        dw      $053A                ; $4A35 _BONE
        dw      $00FD                ; $4A37 _RETURN
TERSE_COLON_4A39:
        rst     $08                             ; $4A39 colon entry
        dw      $0112                ; $4A3A _LITbyte
        db      $05                  ; $4A3C inline byte
        dw      $0109                ; $4A3D _LIT
        dw      $FE9A                ; $4A3F inline word
        dw      $0532                ; $4A41 _SBbang
        dw      $00FD                ; $4A43 _RETURN
TERSE_COLON_4A45:
        rst     $08                             ; $4A45 colon entry
        dw      TERSE_COLON_4581     ; $4A46 TERSE_COLON_4581
        dw      TERSE_COLON_4581     ; $4A48 TERSE_COLON_4581
        dw      TERSE_COLON_4596     ; $4A4A TERSE_COLON_4596
        dw      $00FD                ; $4A4C _RETURN
TERSE_COLON_4A4E:
        rst     $08                             ; $4A4E colon entry
        dw      $0109                ; $4A4F _LIT
        dw      $FE9B                ; $4A51 inline word
        dw      $0153                ; $4A53 _Bat
        dw      $01DE                ; $4A55 _zeroequal
        dw      $0109                ; $4A57 _LIT
        dw      $FE9C                ; $4A59 inline word
        dw      $0153                ; $4A5B _Bat
        dw      $01DE                ; $4A5D _zeroequal
        dw      $0188                ; $4A5F _OR
        dw      $03EA                ; $4A61 _0BRANCH
        dw      L4A67                ; $4A63 branch target
        dw      TERSE_COLON_4A1C     ; $4A65 TERSE_COLON_4A1C
L4A67:
        dw      $0109                ; $4A67 _LIT
        dw      $FE9A                ; $4A69 inline word
        dw      $0153                ; $4A6B _Bat
        dw      $01DE                ; $4A6D _zeroequal
        dw      $03EA                ; $4A6F _0BRANCH
        dw      L4A75                ; $4A71 branch target
        dw      TERSE_COLON_4A30     ; $4A73 TERSE_COLON_4A30
L4A75:
        dw      $0109                ; $4A75 _LIT
        dw      $FEA1                ; $4A77 inline word
        dw      $014C                ; $4A79 _at
        dw      $02CA                ; $4A7B _OVER
        dw      TERSE_COLON_452A     ; $4A7D TERSE_COLON_452A
        dw      TERSE_COLON_4A45     ; $4A7F TERSE_COLON_4A45
        dw      $0465                ; $4A81 _0lessFRAME
L4A83:
        dw      $0109                ; $4A83 _LIT
        dw      $0600                ; $4A85 inline word
        dw      TERSE_COLON_46E7     ; $4A87 TERSE_COLON_46E7
        dw      $04D0                ; $4A89 _1PARAMat
        dw      TERSE_COLON_4413     ; $4A8B TERSE_COLON_4413
        dw      NATIVE_432E          ; $4A8D NATIVE_432E
        dw      $0136                ; $4A8F _DUP
        dw      $0136                ; $4A91 _DUP
        dw      $0112                ; $4A93 _LITbyte
        db      $01                  ; $4A95 inline byte
        dw      $0179                ; $4A96 _AND
        dw      $03EA                ; $4A98 _0BRANCH
        dw      L4AC0                ; $4A9A branch target
        dw      $04D6                ; $4A9C _2PARAMat
        dw      $0109                ; $4A9E _LIT
        dw      $FE9A                ; $4AA0 inline word
        dw      $0153                ; $4AA2 _Bat
        dw      $015A                ; $4AA4 _plus
        dw      $0136                ; $4AA6 _DUP
        dw      $0109                ; $4AA8 _LIT
        dw      $FE9B                ; $4AAA inline word
        dw      $0153                ; $4AAC _Bat
        dw      $021C                ; $4AAE _gt
        dw      $03EA                ; $4AB0 _0BRANCH
        dw      L4ABC                ; $4AB2 branch target
        dw      $0143                ; $4AB4 _DROP
        dw      $0109                ; $4AB6 _LIT
        dw      $FE9C                ; $4AB8 inline word
        dw      $0153                ; $4ABA _Bat
L4ABC:
        dw      $04A2                ; $4ABC _2PARAM
        dw      $0561                ; $4ABE _bang
L4AC0:
        dw      $0112                ; $4AC0 _LITbyte
        db      $02                  ; $4AC2 inline byte
        dw      $0179                ; $4AC3 _AND
        dw      $03EA                ; $4AC5 _0BRANCH
        dw      L4AED                ; $4AC7 branch target
        dw      $04D6                ; $4AC9 _2PARAMat
        dw      $0109                ; $4ACB _LIT
        dw      $FE9A                ; $4ACD inline word
        dw      $0153                ; $4ACF _Bat
        dw      $0160                ; $4AD1 _minussign
        dw      $0136                ; $4AD3 _DUP
        dw      $0109                ; $4AD5 _LIT
        dw      $FE9C                ; $4AD7 inline word
        dw      $0153                ; $4AD9 _Bat
        dw      $0208                ; $4ADB _less
        dw      $03EA                ; $4ADD _0BRANCH
        dw      L4AE9                ; $4ADF branch target
        dw      $0143                ; $4AE1 _DROP
        dw      $0109                ; $4AE3 _LIT
        dw      $FE9B                ; $4AE5 inline word
        dw      $0153                ; $4AE7 _Bat
L4AE9:
        dw      $04A2                ; $4AE9 _2PARAM
        dw      $0561                ; $4AEB _bang
L4AED:
        dw      $0136                ; $4AED _DUP
        dw      $0112                ; $4AEF _LITbyte
        db      $03                  ; $4AF1 inline byte
        dw      $0179                ; $4AF2 _AND
        dw      $03EA                ; $4AF4 _0BRANCH
        dw      L4AFC                ; $4AF6 branch target
        dw      $04D6                ; $4AF8 _2PARAMat
        dw      TERSE_COLON_4A45     ; $4AFA TERSE_COLON_4A45
L4AFC:
        dw      $0112                ; $4AFC _LITbyte
        db      $1C                  ; $4AFE inline byte
        dw      $0179                ; $4AFF _AND
        dw      $024C                ; $4B01 _minusDUP
        dw      $03EA                ; $4B03 _0BRANCH
        dw      L4A83                ; $4B05 branch target
        dw      $04D0                ; $4B07 _1PARAMat
        dw      TERSE_COLON_4413     ; $4B09 TERSE_COLON_4413
        dw      $04D6                ; $4B0B _2PARAMat
        dw      TERSE_COLON_450A     ; $4B0D TERSE_COLON_450A
        dw      TERSE_COLON_4A45     ; $4B0F TERSE_COLON_4A45
        dw      $049C                ; $4B11 _1PARAM
        dw      $0561                ; $4B13 _bang
        dw      $0486                ; $4B15 _0FRAMEgt
        dw      $00FD                ; $4B17 _RETURN
TERSE_COLON_4B19:
        rst     $08                             ; $4B19 colon entry
        dw      TERSE_COLON_450A     ; $4B1A TERSE_COLON_450A
        dw      TERSE_COLON_4A30     ; $4B1C TERSE_COLON_4A30
        dw      TERSE_COLON_4A1C     ; $4B1E TERSE_COLON_4A1C
        dw      $0474                ; $4B20 _2lessFRAME
        dw      $0109                ; $4B22 _LIT
        dw      $FEA1                ; $4B24 inline word
        dw      $014C                ; $4B26 _at
        dw      $04AD                ; $4B28 _1LOCAL
        dw      $0561                ; $4B2A _bang
        dw      $04D0                ; $4B2C _1PARAMat
        dw      TERSE_COLON_4A45     ; $4B2E TERSE_COLON_4A45
        dw      $0109                ; $4B30 _LIT
        dw      $401C                ; $4B32 inline word
        dw      TERSE_COLON_44EA     ; $4B34 TERSE_COLON_44EA
        dw      $0109                ; $4B36 _LIT
        dw      $FEA1                ; $4B38 inline word
        dw      $014C                ; $4B3A _at
        dw      $04B2                ; $4B3C _2LOCAL
        dw      $0561                ; $4B3E _bang
        dw      $04D6                ; $4B40 _2PARAMat
        dw      TERSE_COLON_4A45     ; $4B42 TERSE_COLON_4A45
        dw      $0112                ; $4B44 _LITbyte
        db      $04                  ; $4B46 inline byte
L4B47:
        dw      $0112                ; $4B47 _LITbyte
        db      $04                  ; $4B49 inline byte
        dw      $0179                ; $4B4A _AND
        dw      $03EA                ; $4B4C _0BRANCH
        dw      L4B5A                ; $4B4E branch target
        dw      $049C                ; $4B50 _1PARAM
        dw      $04D0                ; $4B52 _1PARAMat
        dw      $04C1                ; $4B54 _1LOCALat
        dw      $03E2                ; $4B56 _BRANCH
        dw      L4B60                ; $4B58 branch target
L4B5A:
        dw      $04A2                ; $4B5A _2PARAM
        dw      $04D6                ; $4B5C _2PARAMat
        dw      $04C6                ; $4B5E _2LOCALat
L4B60:
        dw      TERSE_COLON_4413     ; $4B60 TERSE_COLON_4413
        dw      TERSE_COLON_4A4E     ; $4B62 TERSE_COLON_4A4E
        dw      $0146                ; $4B64 _SWAP
        dw      $02EA                ; $4B66 _ROT
        dw      $0561                ; $4B68 _bang
        dw      $0136                ; $4B6A _DUP
        dw      $0112                ; $4B6C _LITbyte
        db      $10                  ; $4B6E inline byte
        dw      $0179                ; $4B6F _AND
        dw      $03EA                ; $4B71 _0BRANCH
        dw      L4B47                ; $4B73 branch target
        dw      $0486                ; $4B75 _0FRAMEgt
        dw      $00FD                ; $4B77 _RETURN
TERSE_COLON_4B79:
        rst     $08                             ; $4B79 colon entry
        dw      $0136                ; $4B7A _DUP
        dw      $03EA                ; $4B7C _0BRANCH
        dw      L4B96                ; $4B7E branch target
        dw      $013B                ; $4B80 _2DUP
        dw      $0146                ; $4B82 _SWAP
        dw      $02D1                ; $4B84 _SWAB
        dw      $0146                ; $4B86 _SWAP
        dw      $0378                ; $4B88 _slashMOD
        dw      $0146                ; $4B8A _SWAP
        dw      $03EA                ; $4B8C _0BRANCH
        dw      L4B92                ; $4B8E branch target
        dw      $0195                ; $4B90 _1plus
L4B92:
        dw      $03E2                ; $4B92 _BRANCH
        dw      L4B98                ; $4B94 branch target
L4B96:
        dw      $012A                ; $4B96 _0
L4B98:
        dw      $00FD                ; $4B98 _RETURN
NATIVE_4B9A:
        exx                             ; $4B9A
        ld a,$ff                        ; $4B9B
        pop hl                          ; $4B9D
        ld bc,$0050                     ; $4B9E
L4BA1:
        ld (hl),a                       ; $4BA1
        cpi                             ; $4BA2
        jp pe,L4BA1                     ; $4BA4
        push hl                         ; $4BA7
        exx                             ; $4BA8
        jp (iy)                         ; $4BA9
NATIVE_4BAB:
        exx                             ; $4BAB
        pop hl                          ; $4BAC
        ld a,$c0                        ; $4BAD
        ld b,$10                        ; $4BAF
L4BB1:
        ld (hl),a                       ; $4BB1
        ld de,$0005                     ; $4BB2
        add hl,de                       ; $4BB5
        djnz L4BB1                      ; $4BB6
        dec hl                          ; $4BB8
        ld a,$03                        ; $4BB9
        ld (hl),a                       ; $4BBB
        inc hl                          ; $4BBC
        push hl                         ; $4BBD
        exx                             ; $4BBE
        jp (iy)                         ; $4BBF
TERSE_COLON_4BC1:
        rst     $08                             ; $4BC1 colon entry
        dw      TERSE_COLON_47DC     ; $4BC2 TERSE_COLON_47DC
        dw      TERSE_COLON_4434     ; $4BC4 TERSE_COLON_4434
        dw      $0109                ; $4BC6 _LIT
        dw      $0140                ; $4BC8 inline word
        dw      TERSE_COLON_4408     ; $4BCA TERSE_COLON_4408
        dw      $0109                ; $4BCC _LIT
        dw      $00CC                ; $4BCE inline word
        dw      $0112                ; $4BD0 _LITbyte
        db      $0A                  ; $4BD2 inline byte
        dw      $02D8                ; $4BD3 _OUTP
        dw      $0112                ; $4BD5 _LITbyte
        db      $03                  ; $4BD7 inline byte
        dw      $0112                ; $4BD8 _LITbyte
        db      $30                  ; $4BDA inline byte
        dw      $015A                ; $4BDB _plus
        dw      $0109                ; $4BDD _LIT
        dw      $00C3                ; $4BDF inline word
        dw      $02D8                ; $4BE1 _OUTP
        dw      $012A                ; $4BE3 _0
        dw      $0112                ; $4BE5 _LITbyte
        db      $0C                  ; $4BE7 inline byte
        dw      $02D8                ; $4BE8 _OUTP
        dw      $0112                ; $4BEA _LITbyte
        db      $3F                  ; $4BEC inline byte
        dw      TERSE_COLON_438B     ; $4BED TERSE_COLON_438B
        dw      $0109                ; $4BEF _LIT
        dw      $4000                ; $4BF1 inline word
        dw      $0112                ; $4BF3 _LITbyte
        db      $0A                  ; $4BF5 inline byte
        dw      $012A                ; $4BF6 _0
        dw      $026F                ; $4BF8 _DO
        dw      NATIVE_4B9A          ; $4BFA NATIVE_4B9A
        dw      $0112                ; $4BFC _LITbyte
        db      $13                  ; $4BFE inline byte
        dw      $012A                ; $4BFF _0
        dw      $026F                ; $4C01 _DO
        dw      NATIVE_4BAB          ; $4C03 NATIVE_4BAB
        dw      $028A                ; $4C05 _LOOP
        dw      $028A                ; $4C07 _LOOP
        dw      NATIVE_4B9A          ; $4C09 NATIVE_4B9A
        dw      $0143                ; $4C0B _DROP
        dw      TERSE_COLON_43A4     ; $4C0D TERSE_COLON_43A4
        dw      TERSE_COLON_492C     ; $4C0F TERSE_COLON_492C
        dw      SELFTEST_HARDWARE_RESET ; $4C11 SELFTEST_HARDWARE_RESET
        dw      $00FD                ; $4C13 _RETURN
TERSE_COLON_4C15:
        rst     $08                             ; $4C15 colon entry
        dw      TERSE_COLON_47DC     ; $4C16 TERSE_COLON_47DC
        dw      $0112                ; $4C18 _LITbyte
        db      $1E                  ; $4C1A inline byte
        dw      TERSE_COLON_438B     ; $4C1B TERSE_COLON_438B
        dw      $0112                ; $4C1D _LITbyte
        db      $04                  ; $4C1F inline byte
        dw      $012A                ; $4C20 _0
        dw      $026F                ; $4C22 _DO
        dw      $0112                ; $4C24 _LITbyte
        db      $04                  ; $4C26 inline byte
        dw      $012A                ; $4C27 _0
        dw      $026F                ; $4C29 _DO
        dw      $02B8                ; $4C2B _I
        dw      $0112                ; $4C2D _LITbyte
        db      $2F                  ; $4C2F inline byte
        dw      $02FF                ; $4C30 _star
        dw      $0136                ; $4C32 _DUP
        dw      $0112                ; $4C34 _LITbyte
        db      $14                  ; $4C36 inline byte
        dw      $015A                ; $4C37 _plus
        dw      $01AB                ; $4C39 _2slash
        dw      $01AB                ; $4C3B _2slash
        dw      $02D1                ; $4C3D _SWAB
        dw      $0109                ; $4C3F _LIT
        dw      $FE9F                ; $4C41 inline word
        dw      $0561                ; $4C43 _bang
        dw      $0112                ; $4C45 _LITbyte
        db      $50                  ; $4C47 inline byte
        dw      $02FF                ; $4C48 _star
        dw      $02C1                ; $4C4A _J
        dw      $0112                ; $4C4C _LITbyte
        db      $14                  ; $4C4E inline byte
        dw      $02FF                ; $4C4F _star
        dw      $0136                ; $4C51 _DUP
        dw      $0112                ; $4C53 _LITbyte
        db      $06                  ; $4C55 inline byte
        dw      $015A                ; $4C56 _plus
        dw      $02D1                ; $4C58 _SWAB
        dw      TERSE_COLON_4413     ; $4C5A TERSE_COLON_4413
        dw      $015A                ; $4C5C _plus
        dw      $0112                ; $4C5E _LITbyte
        db      $13                  ; $4C60 inline byte
        dw      $02C1                ; $4C61 _J
        dw      $0112                ; $4C63 _LITbyte
        db      $03                  ; $4C65 inline byte
        dw      $01CF                ; $4C66 _equal
        dw      $0160                ; $4C68 _minussign
        dw      $0112                ; $4C6A _LITbyte
        db      $2F                  ; $4C6C inline byte
        dw      $02C1                ; $4C6D _J
        dw      $0112                ; $4C6F _LITbyte
        db      $04                  ; $4C71 inline byte
        dw      $02FF                ; $4C72 _star
        dw      $02B8                ; $4C74 _I
        dw      $015A                ; $4C76 _plus
        dw      DRAW_PATTERN_WORD    ; $4C78 DRAW_PATTERN_WORD
        dw      TERSE_COLON_4808     ; $4C7A TERSE_COLON_4808
        dw      $02C1                ; $4C7C _J
        dw      $0112                ; $4C7E _LITbyte
        db      $04                  ; $4C80 inline byte
        dw      $02FF                ; $4C81 _star
        dw      $02B8                ; $4C83 _I
        dw      $015A                ; $4C85 _plus
        dw      TERSE_COLON_4596     ; $4C87 TERSE_COLON_4596
        dw      $028A                ; $4C89 _LOOP
        dw      $028A                ; $4C8B _LOOP
        dw      TERSE_COLON_492C     ; $4C8D TERSE_COLON_492C
        dw      TERSE_COLON_43A4     ; $4C8F TERSE_COLON_43A4
        dw      $00FD                ; $4C91 _RETURN
SELFTEST_SCREEN_CONTROL:
        ld a,$ff                        ; $4C93
L4C95:
        out (PORT_SCREEN_CONTROL_0),a   ; $4C95
        out (PORT_SCREEN_CONTROL_1),a   ; $4C97
        out (PORT_SCREEN_CONTROL_2),a   ; $4C99
        sub $11                         ; $4C9B
        jp nc,L4C95                     ; $4C9D
        jp (iy)                         ; $4CA0
TERSE_COLON_4CA2:
        rst     $08                             ; $4CA2 colon entry
        dw      $012A                ; $4CA3 _0
        dw      $0112                ; $4CA5 _LITbyte
        db      $04                  ; $4CA7 inline byte
        dw      $02D8                ; $4CA8 _OUTP
        dw      TERSE_COLON_4256     ; $4CAA TERSE_COLON_4256
        dw      SELFTEST_SCREEN_CONTROL ; $4CAC SELFTEST_SCREEN_CONTROL
        dw      $0112                ; $4CAE _LITbyte
        db      $07                  ; $4CB0 inline byte
        dw      $0112                ; $4CB1 _LITbyte
        db      $04                  ; $4CB3 inline byte
        dw      $02D8                ; $4CB4 _OUTP
        dw      TERSE_COLON_4C15     ; $4CB6 TERSE_COLON_4C15
        dw      SELFTEST_HARDWARE_RESET ; $4CB8 SELFTEST_HARDWARE_RESET
        dw      $00FD                ; $4CBA _RETURN
TERSE_COLON_4CBC:
        rst     $08                             ; $4CBC colon entry
        dw      TERSE_COLON_47D3     ; $4CBD TERSE_COLON_47D3
        dw      TERSE_COLON_46A8     ; $4CBF TERSE_COLON_46A8
        dw      $0112                ; $4CC1 _LITbyte
        db      $0F                  ; $4CC3 inline byte
        dw      $012A                ; $4CC4 _0
        dw      $012A                ; $4CC6 _0
        dw      $012A                ; $4CC8 _0
        dw      NATIVE_4665          ; $4CCA NATIVE_4665
        dw      TERSE_COLON_4203     ; $4CCC TERSE_COLON_4203
        dw      TERSE_COLON_492C     ; $4CCE TERSE_COLON_492C
        dw      SELFTEST_HARDWARE_RESET ; $4CD0 SELFTEST_HARDWARE_RESET
        dw      $00FD                ; $4CD2 _RETURN
NATIVE_4CD4:
        ld a,($fee3)                    ; $4CD4
        ld de,$fed2                     ; $4CD7
        rla                             ; $4CDA
        jp nc,L4CE4                     ; $4CDB
        ld hl,$000f                     ; $4CDE
        add hl,de                       ; $4CE1
        ld (hl),$01                     ; $4CE2
L4CE4:
        rla                             ; $4CE4
        jp nc,L4CEE                     ; $4CE5
        ld hl,$000e                     ; $4CE8
        add hl,de                       ; $4CEB
        ld (hl),$01                     ; $4CEC
L4CEE:
        rla                             ; $4CEE
        jp nc,L4CF8                     ; $4CEF
        ld hl,$000b                     ; $4CF2
        add hl,de                       ; $4CF5
        ld (hl),$01                     ; $4CF6
L4CF8:
        rla                             ; $4CF8
        jp nc,L4D02                     ; $4CF9
        ld hl,$000a                     ; $4CFC
        add hl,de                       ; $4CFF
        ld (hl),$01                     ; $4D00
L4D02:
        rla                             ; $4D02
        jp nc,L4D0C                     ; $4D03
        ld hl,$0007                     ; $4D06
        add hl,de                       ; $4D09
        ld (hl),$01                     ; $4D0A
L4D0C:
        rla                             ; $4D0C
        jp nc,L4D16                     ; $4D0D
        ld hl,$0006                     ; $4D10
        add hl,de                       ; $4D13
        ld (hl),$01                     ; $4D14
L4D16:
        rla                             ; $4D16
        jp nc,L4D20                     ; $4D17
        ld hl,$0003                     ; $4D1A
        add hl,de                       ; $4D1D
        ld (hl),$01                     ; $4D1E
L4D20:
        rla                             ; $4D20
        jp nc,L4D2A                     ; $4D21
        ld hl,$0002                     ; $4D24
        add hl,de                       ; $4D27
        ld (hl),$01                     ; $4D28
L4D2A:
        ld a,($fee2)                    ; $4D2A
        rla                             ; $4D2D
        jp nc,L4D37                     ; $4D2E
        ld hl,$000d                     ; $4D31
        add hl,de                       ; $4D34
        ld (hl),$01                     ; $4D35
L4D37:
        rla                             ; $4D37
        jp nc,L4D41                     ; $4D38
        ld hl,$000c                     ; $4D3B
        add hl,de                       ; $4D3E
        ld (hl),$01                     ; $4D3F
L4D41:
        rla                             ; $4D41
        jp nc,L4D4B                     ; $4D42
        ld hl,$0009                     ; $4D45
        add hl,de                       ; $4D48
        ld (hl),$01                     ; $4D49
L4D4B:
        rla                             ; $4D4B
        jp nc,L4D55                     ; $4D4C
        ld hl,$0008                     ; $4D4F
        add hl,de                       ; $4D52
        ld (hl),$01                     ; $4D53
L4D55:
        rla                             ; $4D55
        jp nc,L4D5F                     ; $4D56
        ld hl,$0005                     ; $4D59
        add hl,de                       ; $4D5C
        ld (hl),$01                     ; $4D5D
L4D5F:
        rla                             ; $4D5F
        jp nc,L4D69                     ; $4D60
        ld hl,$0004                     ; $4D63
        add hl,de                       ; $4D66
        ld (hl),$01                     ; $4D67
L4D69:
        rla                             ; $4D69
        jp nc,L4D73                     ; $4D6A
        ld hl,$0001                     ; $4D6D
        add hl,de                       ; $4D70
        ld (hl),$01                     ; $4D71
L4D73:
        rla                             ; $4D73
        jp nc,L4D7D                     ; $4D74
        ld hl,$0000                     ; $4D77
        add hl,de                       ; $4D7A
        ld (hl),$01                     ; $4D7B
L4D7D:
        jp (iy)                         ; $4D7D
TERSE_COLON_4D7F:
        rst     $08                             ; $4D7F colon entry
        dw      NATIVE_4371          ; $4D80 NATIVE_4371
        dw      TERSE_COLON_4581     ; $4D82 TERSE_COLON_4581
        dw      $0109                ; $4D84 _LIT
        dw      $02C0                ; $4D86 inline word
        dw      TERSE_COLON_4408     ; $4D88 TERSE_COLON_4408
        dw      $012A                ; $4D8A _0
        dw      NATIVE_4371          ; $4D8C NATIVE_4371
        dw      TERSE_COLON_4502     ; $4D8E TERSE_COLON_4502
        dw      $00FD                ; $4D90 _RETURN
TERSE_COLON_4D92:
        rst     $08                             ; $4D92 colon entry
        dw      $03EA                ; $4D93 _0BRANCH
        dw      L4DA2                ; $4D95 branch target
        dw      $0112                ; $4D97 _LITbyte
        db      $04                  ; $4D99 inline byte
        dw      TERSE_COLON_4D7F     ; $4D9A TERSE_COLON_4D7F
        dw      TERSE_COLON_4744     ; $4D9C TERSE_COLON_4744
        dw      $03E2                ; $4D9E _BRANCH
        dw      L4DA9                ; $4DA0 branch target
L4DA2:
        dw      $0112                ; $4DA2 _LITbyte
        db      $05                  ; $4DA4 inline byte
        dw      TERSE_COLON_4D7F     ; $4DA5 TERSE_COLON_4D7F
        dw      TERSE_COLON_475E     ; $4DA7 TERSE_COLON_475E
L4DA9:
        dw      $00FD                ; $4DA9 _RETURN
TERSE_COLON_4DAB:
        rst     $08                             ; $4DAB colon entry
        dw      $0405                ; $4DAC _Aquote
        db      $06,$70,$69,$78,$65,$6C,$20                                     ; $4DAE counted string
        dw      TERSE_COLON_44EA     ; $4DB5 TERSE_COLON_44EA
        dw      TERSE_COLON_4553     ; $4DB7 TERSE_COLON_4553
        dw      $0109                ; $4DB9 _LIT
        dw      $0080                ; $4DBB inline word
        dw      TERSE_COLON_4408     ; $4DBD TERSE_COLON_4408
        dw      $00FD                ; $4DBF _RETURN
TERSE_COLON_4DC1:
        rst     $08                             ; $4DC1 colon entry
        dw      TERSE_COLON_4581     ; $4DC2 TERSE_COLON_4581
        dw      $0109                ; $4DC4 _LIT
        dw      $0080                ; $4DC6 inline word
        dw      TERSE_COLON_4408     ; $4DC8 TERSE_COLON_4408
        dw      $00FD                ; $4DCA _RETURN
TERSE_COLON_4DCC:
        rst     $08                             ; $4DCC colon entry
        dw      TERSE_COLON_46A1     ; $4DCD TERSE_COLON_46A1
        dw      $0112                ; $4DCF _LITbyte
        db      $40                  ; $4DD1 inline byte
        dw      $0109                ; $4DD2 _LIT
        dw      $FE9F                ; $4DD4 inline word
        dw      $057D                ; $4DD6 _plusbang
        dw      TERSE_COLON_43FF     ; $4DD8 TERSE_COLON_43FF
        dw      $0112                ; $4DDA _LITbyte
        db      $08                  ; $4DDC inline byte
        dw      $0179                ; $4DDD _AND
        dw      $01DE                ; $4DDF _zeroequal
        dw      $03EA                ; $4DE1 _0BRANCH
        dw      L4DEB                ; $4DE3 branch target
        dw      $0109                ; $4DE5 _LIT
        dw      $0400                ; $4DE7 inline word
        dw      TERSE_COLON_46E7     ; $4DE9 TERSE_COLON_46E7
L4DEB:
        dw      $00FD                ; $4DEB _RETURN
TERSE_COLON_4DED:
        rst     $08                             ; $4DED colon entry
        dw      TERSE_COLON_4434     ; $4DEE TERSE_COLON_4434
        dw      TERSE_COLON_4DCC     ; $4DF0 TERSE_COLON_4DCC
        dw      $0112                ; $4DF2 _LITbyte
        db      $05                  ; $4DF4 inline byte
        dw      TERSE_COLON_4D7F     ; $4DF5 TERSE_COLON_4D7F
        dw      $0405                ; $4DF7 _Aquote
        db      $05,$67,$6F,$6F,$64,$20                                         ; $4DF9 counted string
        dw      TERSE_COLON_44EA     ; $4DFF TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $4E01 TERSE_COLON_4DCC
        dw      $0112                ; $4E03 _LITbyte
        db      $04                  ; $4E05 inline byte
        dw      TERSE_COLON_4D7F     ; $4E06 TERSE_COLON_4D7F
        dw      $0405                ; $4E08 _Aquote
        db      $04,$62,$61,$64,$20                                             ; $4E0A counted string
        dw      TERSE_COLON_44EA     ; $4E0F TERSE_COLON_44EA
        dw      TERSE_COLON_4434     ; $4E11 TERSE_COLON_4434
        dw      $00FD                ; $4E13 _RETURN
TERSE_COLON_4E15:
        rst     $08                             ; $4E15 colon entry
        dw      $0136                ; $4E16 _DUP
        dw      TERSE_COLON_43D0     ; $4E18 TERSE_COLON_43D0
        dw      $085F                ; $4E1A COMPARE_SCREEN_AND_BANK
        dw      $00FD                ; $4E1C _RETURN
TERSE_COLON_4E1E:
        rst     $08                             ; $4E1E colon entry
        dw      TERSE_COLON_4502     ; $4E1F TERSE_COLON_4502
        dw      TERSE_COLON_4DCC     ; $4E21 TERSE_COLON_4DCC
        dw      $0136                ; $4E23 _DUP
        dw      TERSE_COLON_4DAB     ; $4E25 TERSE_COLON_4DAB
        dw      $0112                ; $4E27 _LITbyte
        db      $04                  ; $4E29 inline byte
        dw      $02FF                ; $4E2A _star
        dw      $0136                ; $4E2C _DUP
        dw      $0112                ; $4E2E _LITbyte
        db      $04                  ; $4E30 inline byte
        dw      $015A                ; $4E31 _plus
        dw      $0146                ; $4E33 _SWAP
        dw      $026F                ; $4E35 _DO
        dw      $02B8                ; $4E37 _I
        dw      $0109                ; $4E39 _LIT
        dw      $FED2                ; $4E3B inline word
        dw      $015A                ; $4E3D _plus
        dw      $0153                ; $4E3F _Bat
        dw      TERSE_COLON_4D92     ; $4E41 TERSE_COLON_4D92
        dw      $028A                ; $4E43 _LOOP
        dw      $00FD                ; $4E45 _RETURN
TERSE_COLON_4E47:
        rst     $08                             ; $4E47 colon entry
        dw      $012A                ; $4E48 _0
        dw      $0109                ; $4E4A _LIT
        dw      $FED2                ; $4E4C inline word
        dw      $0112                ; $4E4E _LITbyte
        db      $10                  ; $4E50 inline byte
        dw      _BFILL               ; $4E51 _BFILL
        dw      $0109                ; $4E53 _LIT
        dw      $FEE3                ; $4E55 inline word
        dw      $053F                ; $4E57 _BZERO
        dw      $0109                ; $4E59 _LIT
        dw      $FEE2                ; $4E5B inline word
        dw      $053F                ; $4E5D _BZERO
        dw      $0109                ; $4E5F _LIT
        dw      $0100                ; $4E61 inline word
        dw      $012A                ; $4E63 _0
        dw      $026F                ; $4E65 _DO
        dw      $02B8                ; $4E67 _I
        dw      $0109                ; $4E69 _LIT
        dw      $00BF                ; $4E6B inline word
        dw      $02D8                ; $4E6D _OUTP
        dw      $012A                ; $4E6F _0
        dw      TERSE_COLON_4E15     ; $4E71 TERSE_COLON_4E15
        dw      $0112                ; $4E73 _LITbyte
        db      $02                  ; $4E75 inline byte
        dw      TERSE_COLON_4E15     ; $4E76 TERSE_COLON_4E15
        dw      $0112                ; $4E78 _LITbyte
        db      $04                  ; $4E7A inline byte
        dw      TERSE_COLON_4E15     ; $4E7B TERSE_COLON_4E15
        dw      $0112                ; $4E7D _LITbyte
        db      $08                  ; $4E7F inline byte
        dw      TERSE_COLON_4E15     ; $4E80 TERSE_COLON_4E15
        dw      $0112                ; $4E82 _LITbyte
        db      $0F                  ; $4E84 inline byte
        dw      TERSE_COLON_4E15     ; $4E85 TERSE_COLON_4E15
        dw      $0112                ; $4E87 _LITbyte
        db      $0E                  ; $4E89 inline byte
        dw      TERSE_COLON_4E15     ; $4E8A TERSE_COLON_4E15
        dw      $0112                ; $4E8C _LITbyte
        db      $0D                  ; $4E8E inline byte
        dw      TERSE_COLON_4E15     ; $4E8F TERSE_COLON_4E15
        dw      $0112                ; $4E91 _LITbyte
        db      $0B                  ; $4E93 inline byte
        dw      TERSE_COLON_4E15     ; $4E94 TERSE_COLON_4E15
        dw      TERSE_COLON_446A     ; $4E96 TERSE_COLON_446A
        dw      $0112                ; $4E98 _LITbyte
        db      $55                  ; $4E9A inline byte
        dw      $0397                ; $4E9B _plusLOOP
        dw      NATIVE_4CD4          ; $4E9D NATIVE_4CD4
        dw      TERSE_COLON_47DC     ; $4E9F TERSE_COLON_47DC
        dw      TERSE_COLON_44FA     ; $4EA1 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $4EA3 TERSE_COLON_4686
        dw      $0405                ; $4EA5 _Aquote
        db      $0B,$73,$63,$72,$65,$65,$6E,$20,$72,$61,$6D,$20                 ; $4EA7 counted string
        dw      TERSE_COLON_44EA     ; $4EB3 TERSE_COLON_44EA
        dw      TERSE_COLON_4DED     ; $4EB5 TERSE_COLON_4DED
        dw      TERSE_COLON_452A     ; $4EB7 TERSE_COLON_452A
        dw      TERSE_COLON_4DCC     ; $4EB9 TERSE_COLON_4DCC
        dw      $0112                ; $4EBB _LITbyte
        db      $06                  ; $4EBD inline byte
        dw      TERSE_COLON_4986     ; $4EBE TERSE_COLON_4986
        dw      $0405                ; $4EC0 _Aquote
        db      $0A,$62,$69,$74,$20,$70,$6C,$61,$6E,$65,$73                     ; $4EC2 counted string
        dw      TERSE_COLON_44EA     ; $4ECD TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $4ECF TERSE_COLON_4DCC
        dw      $0112                ; $4ED1 _LITbyte
        db      $07                  ; $4ED3 inline byte
        dw      TERSE_COLON_4986     ; $4ED4 TERSE_COLON_4986
        dw      $012A                ; $4ED6 _0
        dw      TERSE_COLON_4553     ; $4ED8 TERSE_COLON_4553
        dw      TERSE_COLON_4DC1     ; $4EDA TERSE_COLON_4DC1
        dw      $0130                ; $4EDC _1
        dw      TERSE_COLON_4553     ; $4EDE TERSE_COLON_4553
        dw      TERSE_COLON_4DC1     ; $4EE0 TERSE_COLON_4DC1
        dw      $0112                ; $4EE2 _LITbyte
        db      $02                  ; $4EE4 inline byte
        dw      TERSE_COLON_4553     ; $4EE5 TERSE_COLON_4553
        dw      TERSE_COLON_4DC1     ; $4EE7 TERSE_COLON_4DC1
        dw      $0112                ; $4EE9 _LITbyte
        db      $03                  ; $4EEB inline byte
        dw      TERSE_COLON_4553     ; $4EEC TERSE_COLON_4553
        dw      $0112                ; $4EEE _LITbyte
        db      $04                  ; $4EF0 inline byte
        dw      $012A                ; $4EF1 _0
        dw      $026F                ; $4EF3 _DO
        dw      $02B8                ; $4EF5 _I
        dw      TERSE_COLON_4E1E     ; $4EF7 TERSE_COLON_4E1E
        dw      $028A                ; $4EF9 _LOOP
        dw      TERSE_COLON_492C     ; $4EFB TERSE_COLON_492C
        dw      $00FD                ; $4EFD _RETURN
READ_PRIMARY_INPUT:
        in a,(PORT_INPUT_PRIMARY)       ; $4EFF
        pop de                          ; $4F01
        ld hl,$5f68                     ; $4F02
        ld (hl),e                       ; $4F05
        jp (iy)                         ; $4F06
NATIVE_4F08:
        pop hl                          ; $4F08
        ld a,l                          ; $4F09
        out (PORT_SCREEN_INTERCEPT),a   ; $4F0A
        pop hl                          ; $4F0C
        ld a,l                          ; $4F0D
        out (PORT_SCREEN_WRITE_MASK),a  ; $4F0E
        jp READ_PRIMARY_INPUT           ; $4F10
TERSE_COLON_4F13:
        rst     $08                             ; $4F13 colon entry
        dw      $0112                ; $4F14 _LITbyte
        db      $55                  ; $4F16 inline byte
        dw      $0112                ; $4F17 _LITbyte
        db      $0F                  ; $4F19 inline byte
        dw      $02EA                ; $4F1A _ROT
        dw      NATIVE_4F08          ; $4F1C NATIVE_4F08
        dw      $00FD                ; $4F1E _RETURN
NATIVE_4F20:
        pop hl                          ; $4F20
        pop de                          ; $4F21
        ld a,l                          ; $4F22
        xor e                           ; $4F23
        jp z,L4F4D                      ; $4F24
        ld e,a                          ; $4F27
        ld hl,$feca                     ; $4F28
        and $03                         ; $4F2B
        jp z,L4F32                      ; $4F2D
        ld (hl),$01                     ; $4F30
L4F32:
        inc hl                          ; $4F32
        ld a,e                          ; $4F33
        and $0c                         ; $4F34
        jp z,L4F3B                      ; $4F36
        ld (hl),$01                     ; $4F39
L4F3B:
        inc hl                          ; $4F3B
        ld a,e                          ; $4F3C
        and $30                         ; $4F3D
        jp z,L4F44                      ; $4F3F
        ld (hl),$01                     ; $4F42
L4F44:
        inc hl                          ; $4F44
        ld a,e                          ; $4F45
        and $c0                         ; $4F46
        jp z,L4F4D                      ; $4F48
        ld (hl),$01                     ; $4F4B
L4F4D:
        jp (iy)                         ; $4F4D
        db      $00,$01,$02,$04,$08,$0F                                         ; $4F4F
TERSE_COLON_4F55:
        rst     $08                             ; $4F55 colon entry
        dw      TERSE_COLON_4502     ; $4F56 TERSE_COLON_4502
        dw      $0405                ; $4F58 _Aquote
        db      $04,$2D,$6F,$6B,$20                                             ; $4F5A counted string
        dw      TERSE_COLON_44EA     ; $4F5F TERSE_COLON_44EA
        dw      $00FD                ; $4F61 _RETURN
TERSE_COLON_4F63:
        rst     $08                             ; $4F63 colon entry
        dw      $0112                ; $4F64 _LITbyte
        db      $0E                  ; $4F66 inline byte
        dw      TERSE_COLON_44F1     ; $4F67 TERSE_COLON_44F1
        dw      $03EA                ; $4F69 _0BRANCH
        dw      L4F7D                ; $4F6B branch target
        dw      $0405                ; $4F6D _Aquote
        db      $05,$2D,$62,$61,$64,$20                                         ; $4F6F counted string
        dw      TERSE_COLON_44EA     ; $4F75 TERSE_COLON_44EA
        dw      TERSE_COLON_4744     ; $4F77 TERSE_COLON_4744
        dw      $03E2                ; $4F79 _BRANCH
        dw      L4F7F                ; $4F7B branch target
L4F7D:
        dw      TERSE_COLON_4F55     ; $4F7D TERSE_COLON_4F55
L4F7F:
        dw      $00FD                ; $4F7F _RETURN
TERSE_COLON_4F81:
        rst     $08                             ; $4F81 colon entry
        dw      TERSE_COLON_441E     ; $4F82 TERSE_COLON_441E
        dw      TERSE_COLON_4686     ; $4F84 TERSE_COLON_4686
        dw      TERSE_COLON_452A     ; $4F86 TERSE_COLON_452A
        dw      $0405                ; $4F88 _Aquote
        db      $03,$78,$20,$20                                                 ; $4F8A counted string
        dw      TERSE_COLON_44EA     ; $4F8E TERSE_COLON_44EA
        dw      $02CA                ; $4F90 _OVER
        dw      TERSE_COLON_4596     ; $4F92 TERSE_COLON_4596
        dw      TERSE_COLON_4F63     ; $4F94 TERSE_COLON_4F63
        dw      $0195                ; $4F96 _1plus
        dw      $00FD                ; $4F98 _RETURN
TERSE_COLON_4F9A:
        rst     $08                             ; $4F9A colon entry
        dw      $0109                ; $4F9B _LIT
        dw      $40C0                ; $4F9D inline word
        dw      TERSE_COLON_4413     ; $4F9F TERSE_COLON_4413
        dw      $0109                ; $4FA1 _LIT
        dw      $FED1                ; $4FA3 inline word
        dw      $0153                ; $4FA5 _Bat
        dw      $03EA                ; $4FA7 _0BRANCH
        dw      L4FB8                ; $4FA9 branch target
        dw      TERSE_COLON_450A     ; $4FAB TERSE_COLON_450A
        dw      $0405                ; $4FAD _Aquote
        db      $02,$6F,$6B                                                     ; $4FAF counted string
        dw      TERSE_COLON_44EA     ; $4FB2 TERSE_COLON_44EA
        dw      $03E2                ; $4FB4 _BRANCH
        dw      L4FC4                ; $4FB6 branch target
L4FB8:
        dw      TERSE_COLON_4512     ; $4FB8 TERSE_COLON_4512
        dw      $0405                ; $4FBA _Aquote
        db      $03,$62,$61,$64                                                 ; $4FBC counted string
        dw      TERSE_COLON_44EA     ; $4FC0 TERSE_COLON_44EA
        dw      TERSE_COLON_4744     ; $4FC2 TERSE_COLON_4744
L4FC4:
        dw      $00FD                ; $4FC4 _RETURN
TERSE_COLON_4FC6:
        rst     $08                             ; $4FC6 colon entry
        dw      $012A                ; $4FC7 _0
        dw      $0109                ; $4FC9 _LIT
        dw      $FECA                ; $4FCB inline word
        dw      $0112                ; $4FCD _LITbyte
        db      $04                  ; $4FCF inline byte
        dw      _BFILL               ; $4FD0 _BFILL
        dw      TERSE_COLON_446A     ; $4FD2 TERSE_COLON_446A
        dw      $00FD                ; $4FD4 _RETURN
TERSE_COLON_4FD6:
        rst     $08                             ; $4FD6 colon entry
        dw      TERSE_COLON_44EA     ; $4FD7 TERSE_COLON_44EA
        dw      $0109                ; $4FD9 _LIT
        dw      $1900                ; $4FDB inline word
        dw      TERSE_COLON_4413     ; $4FDD TERSE_COLON_4413
        dw      $00FD                ; $4FDF _RETURN
NATIVE_4FE1:
        pop hl                          ; $4FE1
L4FE2:
        ld e,l                          ; $4FE2
        ld d,h                          ; $4FE3
        add hl,hl                       ; $4FE4
        add hl,de                       ; $4FE5
        push hl                         ; $4FE6
        jp (iy)                         ; $4FE7
NATIVE_4FE9:
        pop hl                          ; $4FE9
        add hl,hl                       ; $4FEA
        jp L4FE2                        ; $4FEB
TERSE_COLON_4FEE:
        rst     $08                             ; $4FEE colon entry
        dw      TERSE_COLON_47DC     ; $4FEF TERSE_COLON_47DC
        dw      TERSE_COLON_4686     ; $4FF1 TERSE_COLON_4686
        dw      TERSE_COLON_44FA     ; $4FF3 TERSE_COLON_44FA
        dw      $0112                ; $4FF5 _LITbyte
        db      $12                  ; $4FF7 inline byte
        dw      $0405                ; $4FF8 _Aquote
        db      $0C,$73,$74,$61,$74,$69,$63,$20,$72,$61,$6D,$73,$20             ; $4FFA counted string
        dw      TERSE_COLON_44EA     ; $5007 TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $5009 TERSE_COLON_441E
        dw      $0109                ; $500B _LIT
        dw      $0700                ; $500D inline word
        dw      $0109                ; $500F _LIT
        dw      $E800                ; $5011 inline word
        dw      TERSE_COLON_49DB     ; $5013 TERSE_COLON_49DB
        dw      TERSE_COLON_4F81     ; $5015 TERSE_COLON_4F81
        dw      $0109                ; $5017 _LIT
        dw      $0800                ; $5019 inline word
        dw      $0109                ; $501B _LIT
        dw      $F000                ; $501D inline word
        dw      TERSE_COLON_49DB     ; $501F TERSE_COLON_49DB
        dw      TERSE_COLON_4F81     ; $5021 TERSE_COLON_4F81
        dw      $0109                ; $5023 _LIT
        dw      $0400                ; $5025 inline word
        dw      $0109                ; $5027 _LIT
        dw      $F800                ; $5029 inline word
        dw      TERSE_COLON_49DB     ; $502B TERSE_COLON_49DB
        dw      TERSE_COLON_4F81     ; $502D TERSE_COLON_4F81
        dw      $0109                ; $502F _LIT
        dw      $0400                ; $5031 inline word
        dw      $0109                ; $5033 _LIT
        dw      $E400                ; $5035 inline word
        dw      TERSE_COLON_49DB     ; $5037 TERSE_COLON_49DB
        dw      TERSE_COLON_4F81     ; $5039 TERSE_COLON_4F81
        dw      $0143                ; $503B _DROP
        dw      TERSE_COLON_492C     ; $503D TERSE_COLON_492C
        dw      $00FD                ; $503F _RETURN
NATIVE_5041:
        pop hl                          ; $5041
        pop de                          ; $5042
        ld (hl),e                       ; $5043
        inc hl                          ; $5044
        ld (hl),d                       ; $5045
        jp (iy)                         ; $5046
TERSE_COLON_5048:
        rst     $08                             ; $5048 colon entry
        dw      $014C                ; $5049 _at
        dw      $0109                ; $504B _LIT
        dw      $F00F                ; $504D inline word
        dw      $01CF                ; $504F _equal
        dw      $0109                ; $5051 _LIT
        dw      $FED1                ; $5053 inline word
        dw      $0532                ; $5055 _SBbang
        dw      $00FD                ; $5057 _RETURN
TERSE_COLON_5059:
        rst     $08                             ; $5059 colon entry
        dw      $014C                ; $505A _at
        dw      $012A                ; $505C _0
        dw      $01CF                ; $505E _equal
        dw      $0109                ; $5060 _LIT
        dw      $FED1                ; $5062 inline word
        dw      $0532                ; $5064 _SBbang
        dw      $00FD                ; $5066 _RETURN
TERSE_COLON_5068:
        rst     $08                             ; $5068 colon entry
        dw      $03EA                ; $5069 _0BRANCH
        dw      L5077                ; $506B branch target
        dw      $0405                ; $506D _Aquote
        db      $01,$7E                                                         ; $506F counted string
        dw      TERSE_COLON_44EA     ; $5071 TERSE_COLON_44EA
        dw      $03E2                ; $5073 _BRANCH
        dw      L5079                ; $5075 branch target
L5077:
        dw      TERSE_COLON_4581     ; $5077 TERSE_COLON_4581
L5079:
        dw      $012A                ; $5079 _0
        dw      TERSE_COLON_4553     ; $507B TERSE_COLON_4553
        dw      $00FD                ; $507D _RETURN
TERSE_COLON_507F:
        rst     $08                             ; $507F colon entry
        dw      $0112                ; $5080 _LITbyte
        db      $0F                  ; $5082 inline byte
        dw      TERSE_COLON_44F1     ; $5083 TERSE_COLON_44F1
        dw      TERSE_COLON_46A1     ; $5085 TERSE_COLON_46A1
        dw      $0405                ; $5087 _Aquote
        db      $02,$77,$70                                                     ; $5089 counted string
        dw      TERSE_COLON_44EA     ; $508C TERSE_COLON_44EA
        dw      TERSE_COLON_5068     ; $508E TERSE_COLON_5068
        dw      $00FD                ; $5090 _RETURN
TERSE_COLON_5092:
        rst     $08                             ; $5092 colon entry
        dw      $0112                ; $5093 _LITbyte
        db      $0F                  ; $5095 inline byte
        dw      TERSE_COLON_44F1     ; $5096 TERSE_COLON_44F1
        dw      TERSE_COLON_46A1     ; $5098 TERSE_COLON_46A1
        dw      TERSE_COLON_5068     ; $509A TERSE_COLON_5068
        dw      $00FD                ; $509C _RETURN
TERSE_COLON_509E:
        rst     $08                             ; $509E colon entry
        dw      $0112                ; $509F _LITbyte
        db      $0D                  ; $50A1 inline byte
        dw      TERSE_COLON_44F1     ; $50A2 TERSE_COLON_44F1
        dw      $0109                ; $50A4 _LIT
        dw      $2180                ; $50A6 inline word
        dw      TERSE_COLON_4413     ; $50A8 TERSE_COLON_4413
        dw      $014C                ; $50AA _at
        dw      TERSE_COLON_5068     ; $50AC TERSE_COLON_5068
        dw      $00FD                ; $50AE _RETURN
TERSE_COLON_50B0:
        rst     $08                             ; $50B0 colon entry
        dw      TERSE_COLON_452A     ; $50B1 TERSE_COLON_452A
        dw      $0109                ; $50B3 _LIT
        dw      $3340                ; $50B5 inline word
        dw      TERSE_COLON_4413     ; $50B7 TERSE_COLON_4413
        dw      $0405                ; $50B9 _Aquote
        db      $02,$68,$69                                                     ; $50BB counted string
        dw      TERSE_COLON_44EA     ; $50BE TERSE_COLON_44EA
        dw      TERSE_COLON_4F9A     ; $50C0 TERSE_COLON_4F9A
        dw      $00FD                ; $50C2 _RETURN
TERSE_COLON_50C4:
        rst     $08                             ; $50C4 colon entry
        dw      TERSE_COLON_452A     ; $50C5 TERSE_COLON_452A
        dw      $0109                ; $50C7 _LIT
        dw      $3340                ; $50C9 inline word
        dw      TERSE_COLON_4413     ; $50CB TERSE_COLON_4413
        dw      $0405                ; $50CD _Aquote
        db      $02,$6C,$6F                                                     ; $50CF counted string
        dw      TERSE_COLON_44EA     ; $50D2 TERSE_COLON_44EA
        dw      TERSE_COLON_4F9A     ; $50D4 TERSE_COLON_4F9A
        dw      $00FD                ; $50D6 _RETURN
TERSE_COLON_50D8:
        rst     $08                             ; $50D8 colon entry
        dw      TERSE_COLON_452A     ; $50D9 TERSE_COLON_452A
        dw      $0109                ; $50DB _LIT
        dw      $3100                ; $50DD inline word
        dw      TERSE_COLON_4413     ; $50DF TERSE_COLON_4413
        dw      $0405                ; $50E1 _Aquote
        db      $04,$70,$61,$73,$74                                             ; $50E3 counted string
        dw      TERSE_COLON_44EA     ; $50E8 TERSE_COLON_44EA
        dw      TERSE_COLON_4F9A     ; $50EA TERSE_COLON_4F9A
        dw      $00FD                ; $50EC _RETURN
TERSE_COLON_50EE:
        rst     $08                             ; $50EE colon entry
        dw      TERSE_COLON_47DC     ; $50EF TERSE_COLON_47DC
        dw      TERSE_COLON_44FA     ; $50F1 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $50F3 TERSE_COLON_4686
        dw      $0405                ; $50F5 _Aquote
        db      $0E,$77,$72,$69,$74,$65,$20,$70,$72,$6F,$74,$65,$63,$74,$20     ; $50F7 counted string
        dw      TERSE_COLON_44EA     ; $5106 TERSE_COLON_44EA
        dw      TERSE_COLON_4434     ; $5108 TERSE_COLON_4434
        dw      TERSE_COLON_4502     ; $510A TERSE_COLON_4502
        dw      TERSE_COLON_46A1     ; $510C TERSE_COLON_46A1
        dw      $0405                ; $510E _Aquote
        db      $05,$77,$72,$6F,$74,$65                                         ; $5110 counted string
        dw      TERSE_COLON_44EA     ; $5116 TERSE_COLON_44EA
        dw      $0109                ; $5118 _LIT
        dw      $1F40                ; $511A inline word
        dw      TERSE_COLON_4413     ; $511C TERSE_COLON_4413
        dw      $0405                ; $511E _Aquote
        db      $04,$72,$65,$61,$64                                             ; $5120 counted string
        dw      TERSE_COLON_44EA     ; $5125 TERSE_COLON_44EA
        dw      $0109                ; $5127 _LIT
        dw      $3100                ; $5129 inline word
        dw      TERSE_COLON_4413     ; $512B TERSE_COLON_4413
        dw      $0405                ; $512D _Aquote
        db      $04,$62,$79,$74,$65                                             ; $512F counted string
        dw      TERSE_COLON_44EA     ; $5134 TERSE_COLON_44EA
        dw      $0109                ; $5136 _LIT
        dw      $40C0                ; $5138 inline word
        dw      TERSE_COLON_4413     ; $513A TERSE_COLON_4413
        dw      $0405                ; $513C _Aquote
        db      $04,$70,$61,$73,$73                                             ; $513E counted string
        dw      TERSE_COLON_44EA     ; $5143 TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $5145 TERSE_COLON_441E
        dw      $0109                ; $5147 _LIT
        dw      $E14E                ; $5149 inline word
        dw      ALIAS_ZERO           ; $514B ALIAS_ZERO
        dw      $012A                ; $514D _0
        dw      TERSE_COLON_507F     ; $514F TERSE_COLON_507F
        dw      $0109                ; $5151 _LIT
        dw      $E14E                ; $5153 inline word
        dw      $0136                ; $5155 _DUP
        dw      TERSE_COLON_5059     ; $5157 TERSE_COLON_5059
        dw      TERSE_COLON_509E     ; $5159 TERSE_COLON_509E
        dw      TERSE_COLON_50B0     ; $515B TERSE_COLON_50B0
        dw      $012A                ; $515D _0
        dw      TERSE_COLON_507F     ; $515F TERSE_COLON_507F
        dw      $0109                ; $5161 _LIT
        dw      $E04F                ; $5163 inline word
        dw      $0136                ; $5165 _DUP
        dw      TERSE_COLON_5059     ; $5167 TERSE_COLON_5059
        dw      TERSE_COLON_509E     ; $5169 TERSE_COLON_509E
        dw      TERSE_COLON_50C4     ; $516B TERSE_COLON_50C4
        dw      $0109                ; $516D _LIT
        dw      $F00F                ; $516F inline word
        dw      $0109                ; $5171 _LIT
        dw      $E14E                ; $5173 inline word
        dw      ALIAS_bang           ; $5175 ALIAS_bang
        dw      $0130                ; $5177 _1
        dw      TERSE_COLON_507F     ; $5179 TERSE_COLON_507F
        dw      $0109                ; $517B _LIT
        dw      $E14E                ; $517D inline word
        dw      $0136                ; $517F _DUP
        dw      TERSE_COLON_5048     ; $5181 TERSE_COLON_5048
        dw      TERSE_COLON_509E     ; $5183 TERSE_COLON_509E
        dw      TERSE_COLON_50B0     ; $5185 TERSE_COLON_50B0
        dw      $0130                ; $5187 _1
        dw      TERSE_COLON_507F     ; $5189 TERSE_COLON_507F
        dw      $0109                ; $518B _LIT
        dw      $E04F                ; $518D inline word
        dw      $0136                ; $518F _DUP
        dw      TERSE_COLON_5048     ; $5191 TERSE_COLON_5048
        dw      TERSE_COLON_509E     ; $5193 TERSE_COLON_509E
        dw      TERSE_COLON_50C4     ; $5195 TERSE_COLON_50C4
        dw      $012A                ; $5197 _0
        dw      $0109                ; $5199 _LIT
        dw      $E14E                ; $519B inline word
        dw      NATIVE_5041          ; $519D NATIVE_5041
        dw      $012A                ; $519F _0
        dw      TERSE_COLON_5092     ; $51A1 TERSE_COLON_5092
        dw      $0109                ; $51A3 _LIT
        dw      $E14E                ; $51A5 inline word
        dw      $0136                ; $51A7 _DUP
        dw      TERSE_COLON_5048     ; $51A9 TERSE_COLON_5048
        dw      TERSE_COLON_509E     ; $51AB TERSE_COLON_509E
        dw      TERSE_COLON_50B0     ; $51AD TERSE_COLON_50B0
        dw      $012A                ; $51AF _0
        dw      $0109                ; $51B1 _LIT
        dw      $E04F                ; $51B3 inline word
        dw      NATIVE_5041          ; $51B5 NATIVE_5041
        dw      $012A                ; $51B7 _0
        dw      TERSE_COLON_5092     ; $51B9 TERSE_COLON_5092
        dw      $0109                ; $51BB _LIT
        dw      $E04F                ; $51BD inline word
        dw      $0136                ; $51BF _DUP
        dw      TERSE_COLON_5048     ; $51C1 TERSE_COLON_5048
        dw      TERSE_COLON_509E     ; $51C3 TERSE_COLON_509E
        dw      TERSE_COLON_50C4     ; $51C5 TERSE_COLON_50C4
        dw      $0109                ; $51C7 _LIT
        dw      $F00F                ; $51C9 inline word
        dw      $0109                ; $51CB _LIT
        dw      $E200                ; $51CD inline word
        dw      NATIVE_5041          ; $51CF NATIVE_5041
        dw      $0130                ; $51D1 _1
        dw      TERSE_COLON_5092     ; $51D3 TERSE_COLON_5092
        dw      $0109                ; $51D5 _LIT
        dw      $E200                ; $51D7 inline word
        dw      $0136                ; $51D9 _DUP
        dw      TERSE_COLON_5048     ; $51DB TERSE_COLON_5048
        dw      TERSE_COLON_509E     ; $51DD TERSE_COLON_509E
        dw      TERSE_COLON_50D8     ; $51DF TERSE_COLON_50D8
        dw      $012A                ; $51E1 _0
        dw      $0109                ; $51E3 _LIT
        dw      $E200                ; $51E5 inline word
        dw      NATIVE_5041          ; $51E7 NATIVE_5041
        dw      $012A                ; $51E9 _0
        dw      TERSE_COLON_5092     ; $51EB TERSE_COLON_5092
        dw      $0109                ; $51ED _LIT
        dw      $E200                ; $51EF inline word
        dw      $0136                ; $51F1 _DUP
        dw      TERSE_COLON_5059     ; $51F3 TERSE_COLON_5059
        dw      TERSE_COLON_509E     ; $51F5 TERSE_COLON_509E
        dw      TERSE_COLON_50D8     ; $51F7 TERSE_COLON_50D8
        dw      TERSE_COLON_492C     ; $51F9 TERSE_COLON_492C
        dw      $00FD                ; $51FB _RETURN
NATIVE_51FD:
        ld a,($e1d4)                    ; $51FD
        cpl                             ; $5200
        and $10                         ; $5201
        ld l,a                          ; $5203
        ld h,$00                        ; $5204
        push hl                         ; $5206
        jp (iy)                         ; $5207
TERSE_COLON_5209:
        rst     $08                             ; $5209 colon entry
        dw      $0136                ; $520A _DUP
        dw      $02D1                ; $520C _SWAB
        dw      TERSE_COLON_4576     ; $520E TERSE_COLON_4576
        dw      TERSE_COLON_4576     ; $5210 TERSE_COLON_4576
        dw      $00FD                ; $5212 _RETURN
TERSE_COLON_5214:
        rst     $08                             ; $5214 colon entry
        dw      $0109                ; $5215 _LIT
        dw      $FEA1                ; $5217 inline word
        dw      $014C                ; $5219 _at
        dw      TERSE_COLON_450A     ; $521B TERSE_COLON_450A
        dw      $0109                ; $521D _LIT
        dw      $FED0                ; $521F inline word
        dw      $0153                ; $5221 _Bat
        dw      TERSE_COLON_447F     ; $5223 TERSE_COLON_447F
        dw      $0109                ; $5225 _LIT
        dw      $0340                ; $5227 inline word
        dw      $015A                ; $5229 _plus
        dw      TERSE_COLON_4413     ; $522B TERSE_COLON_4413
        dw      $00FD                ; $522D _RETURN
TERSE_COLON_522F:
        rst     $08                             ; $522F colon entry
        dw      $0109                ; $5230 _LIT
        dw      $FED0                ; $5232 inline word
        dw      $0136                ; $5234 _DUP
        dw      $0549                ; $5236 _1plusBbang
        dw      $0153                ; $5238 _Bat
        dw      $0136                ; $523A _DUP
        dw      $0109                ; $523C _LIT
        dw      $0069                ; $523E inline word
        dw      $01CF                ; $5240 _equal
        dw      $03EA                ; $5242 _0BRANCH
        dw      L524E                ; $5244 branch target
        dw      $0195                ; $5246 _1plus
        dw      $0109                ; $5248 _LIT
        dw      $FED0                ; $524A inline word
        dw      $0549                ; $524C _1plusBbang
L524E:
        dw      $0109                ; $524E _LIT
        dw      $006F                ; $5250 inline word
        dw      $01CF                ; $5252 _equal
        dw      $03EA                ; $5254 _0BRANCH
        dw      L525E                ; $5256 branch target
        dw      $0109                ; $5258 _LIT
        dw      $FED0                ; $525A inline word
        dw      $0549                ; $525C _1plusBbang
L525E:
        dw      $0109                ; $525E _LIT
        dw      $FECF                ; $5260 inline word
        dw      $0549                ; $5262 _1plusBbang
        dw      $00FD                ; $5264 _RETURN
TERSE_COLON_5266:
        rst     $08                             ; $5266 colon entry
        dw      $0109                ; $5267 _LIT
        dw      $FEA1                ; $5269 inline word
        dw      $014C                ; $526B _at
        dw      $0109                ; $526D _LIT
        dw      $FE98                ; $526F inline word
        dw      $0561                ; $5271 _bang
        dw      TERSE_COLON_5214     ; $5273 TERSE_COLON_5214
        dw      $0136                ; $5275 _DUP
        dw      $0109                ; $5277 _LIT
        dw      $E000                ; $5279 inline word
        dw      $01CF                ; $527B _equal
        dw      $03EA                ; $527D _0BRANCH
        dw      L5294                ; $527F branch target
        dw      $0405                ; $5281 _Aquote
        db      $06,$2D,$65,$6D,$70,$74,$79                                     ; $5283 counted string
        dw      TERSE_COLON_451A     ; $528A TERSE_COLON_451A
        dw      TERSE_COLON_44EA     ; $528C TERSE_COLON_44EA
        dw      $0143                ; $528E _DROP
        dw      $03E2                ; $5290 _BRANCH
        dw      L52B9                ; $5292 branch target
L5294:
        dw      $0136                ; $5294 _DUP
        dw      TERSE_COLON_4F63     ; $5296 TERSE_COLON_4F63
        dw      TERSE_COLON_4581     ; $5298 TERSE_COLON_4581
        dw      $024C                ; $529A _minusDUP
        dw      $03EA                ; $529C _0BRANCH
        dw      L52B9                ; $529E branch target
        dw      $0168                ; $52A0 _MINUS
        dw      TERSE_COLON_4522     ; $52A2 TERSE_COLON_4522
        dw      $0109                ; $52A4 _LIT
        dw      $FE98                ; $52A6 inline word
        dw      $014C                ; $52A8 _at
        dw      $0109                ; $52AA _LIT
        dw      $0240                ; $52AC inline word
        dw      $0112                ; $52AE _LITbyte
        db      $06                  ; $52B0 inline byte
        dw      $02FF                ; $52B1 _star
        dw      $015A                ; $52B3 _plus
        dw      TERSE_COLON_4413     ; $52B5 TERSE_COLON_4413
        dw      TERSE_COLON_5209     ; $52B7 TERSE_COLON_5209
L52B9:
        dw      TERSE_COLON_452A     ; $52B9 TERSE_COLON_452A
        dw      TERSE_COLON_468F     ; $52BB TERSE_COLON_468F
        dw      $0109                ; $52BD _LIT
        dw      $0240                ; $52BF inline word
        dw      $0109                ; $52C1 _LIT
        dw      $FEA1                ; $52C3 inline word
        dw      $0590                ; $52C5 _minusbang
        dw      TERSE_COLON_522F     ; $52C7 TERSE_COLON_522F
        dw      $00FD                ; $52C9 _RETURN
TERSE_COLON_52CB:
        rst     $08                             ; $52CB colon entry
        dw      TERSE_COLON_5266     ; $52CC TERSE_COLON_5266
        dw      $00FD                ; $52CE _RETURN
TERSE_COLON_52D0:
        rst     $08                             ; $52D0 colon entry
        dw      $0109                ; $52D1 _LIT
        dw      $FECF                ; $52D3 inline word
        dw      $0153                ; $52D5 _Bat
        dw      TERSE_COLON_4502     ; $52D7 TERSE_COLON_4502
        dw      $0112                ; $52D9 _LITbyte
        db      $02                  ; $52DB inline byte
        dw      TERSE_COLON_4986     ; $52DC TERSE_COLON_4986
        dw      TERSE_COLON_4596     ; $52DE TERSE_COLON_4596
        dw      TERSE_COLON_4581     ; $52E0 TERSE_COLON_4581
        dw      $00FD                ; $52E2 _RETURN
TERSE_COLON_52E4:
        rst     $08                             ; $52E4 colon entry
        dw      TERSE_COLON_52D0     ; $52E5 TERSE_COLON_52D0
        dw      TERSE_COLON_5266     ; $52E7 TERSE_COLON_5266
        dw      $00FD                ; $52E9 _RETURN
TERSE_COLON_52EB:
        rst     $08                             ; $52EB colon entry
        dw      $015A                ; $52EC _plus
        dw      TERSE_COLON_52E4     ; $52EE TERSE_COLON_52E4
        dw      $00FD                ; $52F0 _RETURN
TERSE_COLON_52F2:
        rst     $08                             ; $52F2 colon entry
        dw      $015A                ; $52F3 _plus
        dw      $015A                ; $52F5 _plus
        dw      $015A                ; $52F7 _plus
        dw      TERSE_COLON_52E4     ; $52F9 TERSE_COLON_52E4
        dw      $00FD                ; $52FB _RETURN
TERSE_COLON_52FD:
        rst     $08                             ; $52FD colon entry
        dw      TERSE_COLON_4434     ; $52FE TERSE_COLON_4434
        dw      $0112                ; $5300 _LITbyte
        db      $0D                  ; $5302 inline byte
        dw      TERSE_COLON_44F1     ; $5303 TERSE_COLON_44F1
        dw      $0405                ; $5305 _Aquote
        db      $05,$64,$6F,$6E,$65,$20                                         ; $5307 counted string
        dw      TERSE_COLON_44EA     ; $530D TERSE_COLON_44EA
        dw      $00FD                ; $530F _RETURN
TERSE_COLON_5311:
        rst     $08                             ; $5311 colon entry
        dw      TERSE_COLON_4434     ; $5312 TERSE_COLON_4434
        dw      $0112                ; $5314 _LITbyte
        db      $0D                  ; $5316 inline byte
        dw      TERSE_COLON_44F1     ; $5317 TERSE_COLON_44F1
        dw      $0405                ; $5319 _Aquote
        db      $11,$70,$72,$65,$73,$73,$20,$62,$20,$66,$6F,$72,$20,$6D,$6F,$72,$65,$20 ; $531B counted string
        dw      TERSE_COLON_44EA     ; $532D TERSE_COLON_44EA
        dw      TERSE_COLON_450A     ; $532F TERSE_COLON_450A
        dw      $0405                ; $5331 _Aquote
        db      $0C,$2D,$20,$63,$20,$74,$6F,$20,$65,$78,$69,$74,$20             ; $5333 counted string
        dw      TERSE_COLON_44EA     ; $5340 TERSE_COLON_44EA
L5342:
        dw      NATIVE_432E          ; $5342 NATIVE_432E
        dw      $0136                ; $5344 _DUP
        dw      $0112                ; $5346 _LITbyte
        db      $02                  ; $5348 inline byte
        dw      $0179                ; $5349 _AND
        dw      $03EA                ; $534B _0BRANCH
        dw      L5355                ; $534D branch target
        dw      $0109                ; $534F _LIT
        dw      $FECE                ; $5351 inline word
        dw      $053A                ; $5353 _BONE
L5355:
        dw      $0112                ; $5355 _LITbyte
        db      $02                  ; $5357 inline byte
        dw      $0112                ; $5358 _LITbyte
        db      $10                  ; $535A inline byte
        dw      $0188                ; $535B _OR
        dw      $0179                ; $535D _AND
        dw      $03EA                ; $535F _0BRANCH
        dw      L5342                ; $5361 branch target
        dw      $0109                ; $5363 _LIT
        dw      $FECE                ; $5365 inline word
        dw      $0153                ; $5367 _Bat
        dw      $01E3                ; $5369 _NOT
        dw      $03EA                ; $536B _0BRANCH
        dw      L53B5                ; $536D branch target
        dw      TERSE_COLON_446A     ; $536F TERSE_COLON_446A
        dw      TERSE_COLON_46A8     ; $5371 TERSE_COLON_46A8
        dw      TERSE_COLON_44FA     ; $5373 TERSE_COLON_44FA
        dw      NATIVE_51FD          ; $5375 NATIVE_51FD
        dw      $03EA                ; $5377 _0BRANCH
        dw      L5391                ; $5379 branch target
        dw      TERSE_COLON_4686     ; $537B TERSE_COLON_4686
        dw      $0405                ; $537D _Aquote
        db      $0D,$33,$32,$6B,$20,$72,$6F,$6D,$20,$63,$61,$72,$64,$20         ; $537F counted string
        dw      $03E2                ; $538D _BRANCH
        dw      L53B1                ; $538F branch target
L5391:
        dw      $0405                ; $5391 _Aquote
        db      $1D,$36,$34,$30,$6B,$20,$6D,$65,$6D,$6F,$72,$79,$20,$63,$61,$72,$64,$20,$2D,$31,$36,$6B,$20,$65,$70,$72,$6F,$6D,$73,$20 ; $5393 counted string
L53B1:
        dw      TERSE_COLON_44EA     ; $53B1 TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $53B3 TERSE_COLON_441E
L53B5:
        dw      $00FD                ; $53B5 _RETURN
TERSE_COLON_53B7:
        rst     $08                             ; $53B7 colon entry
        dw      $0109                ; $53B8 _LIT
        dw      $0080                ; $53BA inline word
        dw      $0188                ; $53BC _OR
        dw      $0109                ; $53BE _LIT
        dw      $4000                ; $53C0 inline word
        dw      $0846                ; $53C2 FETCH_BANKED_WORD
        dw      $0136                ; $53C4 _DUP
        dw      $012A                ; $53C6 _0
        dw      $01CF                ; $53C8 _equal
        dw      $0146                ; $53CA _SWAP
        dw      $0109                ; $53CC _LIT
        dw      $FFFF                ; $53CE inline word
        dw      $01CF                ; $53D0 _equal
        dw      $0188                ; $53D2 _OR
        dw      $00FD                ; $53D4 _RETURN
TERSE_COLON_53D6:
        rst     $08                             ; $53D6 colon entry
        dw      $02CA                ; $53D7 _OVER
        dw      TERSE_COLON_53B7     ; $53D9 TERSE_COLON_53B7
        dw      $01E3                ; $53DB _NOT
        dw      $03EA                ; $53DD _0BRANCH
        dw      L53E9                ; $53DF branch target
        dw      CHECKSUM_SELECTED_PROGRAM_BANK ; $53E1 CHECKSUM_SELECTED_PROGRAM_BANK
        dw      TERSE_COLON_52E4     ; $53E3 TERSE_COLON_52E4
        dw      $03E2                ; $53E5 _BRANCH
        dw      L5408                ; $53E7 branch target
L53E9:
        dw      $02FB                ; $53E9 _2DROP
        dw      TERSE_COLON_52D0     ; $53EB TERSE_COLON_52D0
        dw      TERSE_COLON_5214     ; $53ED TERSE_COLON_5214
        dw      $0112                ; $53EF _LITbyte
        db      $0A                  ; $53F1 inline byte
        dw      TERSE_COLON_44F1     ; $53F2 TERSE_COLON_44F1
        dw      $0405                ; $53F4 _Aquote
        db      $0B,$2D,$6E,$6F,$74,$20,$72,$65,$61,$64,$79,$20                 ; $53F6 counted string
        dw      TERSE_COLON_44EA     ; $5402 TERSE_COLON_44EA
        dw      TERSE_COLON_522F     ; $5404 TERSE_COLON_522F
        dw      TERSE_COLON_468F     ; $5406 TERSE_COLON_468F
L5408:
        dw      NATIVE_43B7          ; $5408 NATIVE_43B7
        dw      $00FD                ; $540A _RETURN
TERSE_COLON_540C:
        rst     $08                             ; $540C colon entry
        dw      $0378                ; $540D _slashMOD
        dw      $03EA                ; $540F _0BRANCH
        dw      L541F                ; $5411 branch target
        dw      $01E3                ; $5413 _NOT
        dw      $03EA                ; $5415 _0BRANCH
        dw      L541B                ; $5417 branch target
        dw      TERSE_COLON_5311     ; $5419 TERSE_COLON_5311
L541B:
        dw      $03E2                ; $541B _BRANCH
        dw      L5421                ; $541D branch target
L541F:
        dw      $0143                ; $541F _DROP
L5421:
        dw      $00FD                ; $5421 _RETURN
TERSE_COLON_5423:
        rst     $08                             ; $5423 colon entry
        dw      $0112                ; $5424 _LITbyte
        db      $10                  ; $5426 inline byte
        dw      TERSE_COLON_540C     ; $5427 TERSE_COLON_540C
        dw      $00FD                ; $5429 _RETURN
TERSE_COLON_542B:
        rst     $08                             ; $542B colon entry
        dw      $0112                ; $542C _LITbyte
        db      $0C                  ; $542E inline byte
        dw      TERSE_COLON_540C     ; $542F TERSE_COLON_540C
        dw      $00FD                ; $5431 _RETURN
TERSE_COLON_5433:
        rst     $08                             ; $5433 colon entry
        dw      TERSE_COLON_4522     ; $5434 TERSE_COLON_4522
        dw      $0112                ; $5436 _LITbyte
        db      $02                  ; $5438 inline byte
        dw      TERSE_COLON_4986     ; $5439 TERSE_COLON_4986
        dw      TERSE_COLON_4596     ; $543B TERSE_COLON_4596
        dw      TERSE_COLON_53B7     ; $543D TERSE_COLON_53B7
        dw      $01E3                ; $543F _NOT
        dw      $03EA                ; $5441 _0BRANCH
        dw      L5456                ; $5443 branch target
        dw      TERSE_COLON_4512     ; $5445 TERSE_COLON_4512
        dw      $0405                ; $5447 _Aquote
        db      $08,$2D,$63,$6F,$70,$79,$63,$61,$74                             ; $5449 counted string
        dw      $03E2                ; $5452 _BRANCH
        dw      L5465                ; $5454 branch target
L5456:
        dw      $0112                ; $5456 _LITbyte
        db      $0E                  ; $5458 inline byte
        dw      TERSE_COLON_44F1     ; $5459 TERSE_COLON_44F1
        dw      $0405                ; $545B _Aquote
        db      $07,$2D,$65,$6D,$70,$74,$79,$20                                 ; $545D counted string
L5465:
        dw      TERSE_COLON_44EA     ; $5465 TERSE_COLON_44EA
        dw      $00FD                ; $5467 _RETURN
TERSE_COLON_5469:
        rst     $08                             ; $5469 colon entry
        dw      TERSE_COLON_47DC     ; $546A TERSE_COLON_47DC
        dw      $0112                ; $546C _LITbyte
        db      $61                  ; $546E inline byte
        dw      $0109                ; $546F _LIT
        dw      $FED0                ; $5471 inline word
        dw      $0532                ; $5473 _SBbang
        dw      $0109                ; $5475 _LIT
        dw      $FECF                ; $5477 inline word
        dw      $053A                ; $5479 _BONE
        dw      TERSE_COLON_44FA     ; $547B TERSE_COLON_44FA
        dw      $0405                ; $547D _Aquote
        db      $22,$73,$75,$70,$65,$72,$20,$67,$61,$6D,$65,$20,$6D,$65,$6D,$6F,$72,$79,$20,$63,$61,$72,$64,$20,$2D,$38,$6B,$20,$65,$70,$72,$6F,$6D,$73,$20 ; $547F counted string
        dw      TERSE_COLON_44EA     ; $54A2 TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $54A4 TERSE_COLON_4DCC
        dw      $012A                ; $54A6 _0
        dw      $0112                ; $54A8 _LITbyte
        db      $00                  ; $54AA inline byte
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54AB CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54AD TERSE_COLON_52CB
        dw      $0130                ; $54AF _1
        dw      $0109                ; $54B1 _LIT
        dw      $2000                ; $54B3 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54B5 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54B7 TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $54B9 TERSE_COLON_4DCC
        dw      $0112                ; $54BB _LITbyte
        db      $02                  ; $54BD inline byte
        dw      $0109                ; $54BE _LIT
        dw      $8000                ; $54C0 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54C2 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54C4 TERSE_COLON_52CB
        dw      $0112                ; $54C6 _LITbyte
        db      $03                  ; $54C8 inline byte
        dw      $0109                ; $54C9 _LIT
        dw      $A000                ; $54CB inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54CD CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54CF TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $54D1 TERSE_COLON_4DCC
        dw      $0112                ; $54D3 _LITbyte
        db      $04                  ; $54D5 inline byte
        dw      $0109                ; $54D6 _LIT
        dw      $4000                ; $54D8 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54DA CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54DC TERSE_COLON_52CB
        dw      $0112                ; $54DE _LITbyte
        db      $05                  ; $54E0 inline byte
        dw      $0109                ; $54E1 _LIT
        dw      $6000                ; $54E3 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54E5 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54E7 TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $54E9 TERSE_COLON_4DCC
        dw      $0112                ; $54EB _LITbyte
        db      $06                  ; $54ED inline byte
        dw      $0109                ; $54EE _LIT
        dw      $8000                ; $54F0 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54F2 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54F4 TERSE_COLON_52CB
        dw      $0112                ; $54F6 _LITbyte
        db      $07                  ; $54F8 inline byte
        dw      $0109                ; $54F9 _LIT
        dw      $A000                ; $54FB inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $54FD CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $54FF TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $5501 TERSE_COLON_4DCC
        dw      $0112                ; $5503 _LITbyte
        db      $08                  ; $5505 inline byte
        dw      $0109                ; $5506 _LIT
        dw      $C000                ; $5508 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $550A CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $550C TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $550E TERSE_COLON_4DCC
        dw      $0112                ; $5510 _LITbyte
        db      $09                  ; $5512 inline byte
        dw      $0109                ; $5513 _LIT
        dw      $4000                ; $5515 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5517 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5519 TERSE_COLON_52CB
        dw      $0112                ; $551B _LITbyte
        db      $0A                  ; $551D inline byte
        dw      $0109                ; $551E _LIT
        dw      $6000                ; $5520 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5522 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5524 TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $5526 TERSE_COLON_4DCC
        dw      $0112                ; $5528 _LITbyte
        db      $0B                  ; $552A inline byte
        dw      $0109                ; $552B _LIT
        dw      $8000                ; $552D inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $552F CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5531 TERSE_COLON_52CB
        dw      $0112                ; $5533 _LITbyte
        db      $0C                  ; $5535 inline byte
        dw      $0109                ; $5536 _LIT
        dw      $A000                ; $5538 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $553A CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $553C TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $553E TERSE_COLON_4DCC
        dw      $0112                ; $5540 _LITbyte
        db      $0D                  ; $5542 inline byte
        dw      $0109                ; $5543 _LIT
        dw      $4000                ; $5545 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5547 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5549 TERSE_COLON_52CB
        dw      $0112                ; $554B _LITbyte
        db      $0E                  ; $554D inline byte
        dw      $0109                ; $554E _LIT
        dw      $6000                ; $5550 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5552 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5554 TERSE_COLON_52CB
        dw      TERSE_COLON_4DCC     ; $5556 TERSE_COLON_4DCC
        dw      $0112                ; $5558 _LITbyte
        db      $0F                  ; $555A inline byte
        dw      $0109                ; $555B _LIT
        dw      $8000                ; $555D inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $555F CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $5561 TERSE_COLON_52CB
        dw      $0112                ; $5563 _LITbyte
        db      $10                  ; $5565 inline byte
        dw      $0109                ; $5566 _LIT
        dw      $A000                ; $5568 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $556A CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52CB     ; $556C TERSE_COLON_52CB
        dw      TERSE_COLON_52FD     ; $556E TERSE_COLON_52FD
        dw      TERSE_COLON_46A8     ; $5570 TERSE_COLON_46A8
        dw      TERSE_COLON_492C     ; $5572 TERSE_COLON_492C
        dw      $00FD                ; $5574 _RETURN
TERSE_COLON_5576:
        rst     $08                             ; $5576 colon entry
        dw      $0109                ; $5577 _LIT
        dw      $FECE                ; $5579 inline word
        dw      $053F                ; $557B _BZERO
        dw      $0109                ; $557D _LIT
        dw      $FECF                ; $557F inline word
        dw      $053A                ; $5581 _BONE
        dw      $0112                ; $5583 _LITbyte
        db      $61                  ; $5585 inline byte
        dw      $0109                ; $5586 _LIT
        dw      $FED0                ; $5588 inline word
        dw      $0532                ; $558A _SBbang
        dw      TERSE_COLON_446A     ; $558C TERSE_COLON_446A
        dw      TERSE_COLON_47D3     ; $558E TERSE_COLON_47D3
        dw      TERSE_COLON_44FA     ; $5590 TERSE_COLON_44FA
        dw      $0405                ; $5592 _Aquote
        db      $1D,$36,$34,$30,$6B,$20,$6D,$65,$6D,$6F,$72,$79,$20,$63,$61,$72,$64,$20,$2D,$31,$36,$6B,$20,$65,$70,$72,$6F,$6D,$73,$20 ; $5594 counted string
        dw      TERSE_COLON_44EA     ; $55B2 TERSE_COLON_44EA
        dw      $0109                ; $55B4 _LIT
        dw      $DF35                ; $55B6 inline word
        dw      $0153                ; $55B8 _Bat
        dw      $012A                ; $55BA _0
        dw      $026F                ; $55BC _DO
        dw      $02B8                ; $55BE _I
        dw      TERSE_COLON_542B     ; $55C0 TERSE_COLON_542B
        dw      $0109                ; $55C2 _LIT
        dw      $FECE                ; $55C4 inline word
        dw      $0153                ; $55C6 _Bat
        dw      $03EA                ; $55C8 _0BRANCH
        dw      L55D2                ; $55CA branch target
        dw      $03F7                ; $55CC _LEAVE
        dw      $03E2                ; $55CE _BRANCH
        dw      L55E8                ; $55D0 branch target
L55D2:
        dw      TERSE_COLON_4DCC     ; $55D2 TERSE_COLON_4DCC
        dw      $02B8                ; $55D4 _I
        dw      $0109                ; $55D6 _LIT
        dw      $4000                ; $55D8 inline word
        dw      TERSE_COLON_53D6     ; $55DA TERSE_COLON_53D6
        dw      TERSE_COLON_4DCC     ; $55DC TERSE_COLON_4DCC
        dw      $02B8                ; $55DE _I
        dw      $0195                ; $55E0 _1plus
        dw      $0109                ; $55E2 _LIT
        dw      $4000                ; $55E4 inline word
        dw      TERSE_COLON_53D6     ; $55E6 TERSE_COLON_53D6
L55E8:
        dw      $0112                ; $55E8 _LITbyte
        db      $02                  ; $55EA inline byte
        dw      $0397                ; $55EB _plusLOOP
        dw      $0109                ; $55ED _LIT
        dw      $FECE                ; $55EF inline word
        dw      $0153                ; $55F1 _Bat
        dw      $01E3                ; $55F3 _NOT
        dw      $03EA                ; $55F5 _0BRANCH
        dw      L5638                ; $55F7 branch target
        dw      TERSE_COLON_5311     ; $55F9 TERSE_COLON_5311
        dw      $0112                ; $55FB _LITbyte
        db      $28                  ; $55FD inline byte
        dw      $0109                ; $55FE _LIT
        dw      $DF35                ; $5600 inline word
        dw      $0153                ; $5602 _Bat
        dw      $026F                ; $5604 _DO
        dw      $02B8                ; $5606 _I
        dw      TERSE_COLON_5423     ; $5608 TERSE_COLON_5423
        dw      $0109                ; $560A _LIT
        dw      $FECE                ; $560C inline word
        dw      $0153                ; $560E _Bat
        dw      $03EA                ; $5610 _0BRANCH
        dw      L561A                ; $5612 branch target
        dw      $03F7                ; $5614 _LEAVE
        dw      $03E2                ; $5616 _BRANCH
        dw      L5636                ; $5618 branch target
L561A:
        dw      $02B8                ; $561A _I
        dw      $0130                ; $561C _1
        dw      $0179                ; $561E _AND
        dw      $01DE                ; $5620 _zeroequal
        dw      $03EA                ; $5622 _0BRANCH
        dw      L562C                ; $5624 branch target
        dw      TERSE_COLON_4DCC     ; $5626 TERSE_COLON_4DCC
        dw      $03E2                ; $5628 _BRANCH
        dw      L562E                ; $562A branch target
L562C:
        dw      TERSE_COLON_468F     ; $562C TERSE_COLON_468F
L562E:
        dw      $02B8                ; $562E _I
        dw      $0136                ; $5630 _DUP
        dw      $0195                ; $5632 _1plus
        dw      TERSE_COLON_5433     ; $5634 TERSE_COLON_5433
L5636:
        dw      $028A                ; $5636 _LOOP
L5638:
        dw      $0109                ; $5638 _LIT
        dw      $FECE                ; $563A inline word
        dw      $0153                ; $563C _Bat
        dw      $03EA                ; $563E _0BRANCH
        dw      L5648                ; $5640 branch target
        dw      TERSE_COLON_4911     ; $5642 TERSE_COLON_4911
        dw      $03E2                ; $5644 _BRANCH
        dw      L564E                ; $5646 branch target
L5648:
        dw      TERSE_COLON_52FD     ; $5648 TERSE_COLON_52FD
        dw      TERSE_COLON_46A8     ; $564A TERSE_COLON_46A8
        dw      TERSE_COLON_492C     ; $564C TERSE_COLON_492C
L564E:
        dw      $00FD                ; $564E _RETURN
TERSE_COLON_5650:
        rst     $08                             ; $5650 colon entry
        dw      $0109                ; $5651 _LIT
        dw      $FECE                ; $5653 inline word
        dw      $053F                ; $5655 _BZERO
        dw      $0112                ; $5657 _LITbyte
        db      $61                  ; $5659 inline byte
        dw      $0109                ; $565A _LIT
        dw      $FED0                ; $565C inline word
        dw      $0532                ; $565E _SBbang
        dw      $0109                ; $5660 _LIT
        dw      $FECF                ; $5662 inline word
        dw      $053A                ; $5664 _BONE
        dw      TERSE_COLON_47DC     ; $5666 TERSE_COLON_47DC
        dw      TERSE_COLON_44FA     ; $5668 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $566A TERSE_COLON_4686
        dw      $0405                ; $566C _Aquote
        db      $0D,$33,$32,$6B,$20,$72,$6F,$6D,$20,$63,$61,$72,$64,$20         ; $566E counted string
        dw      TERSE_COLON_44EA     ; $567C TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $567E TERSE_COLON_441E
        dw      TERSE_COLON_4DCC     ; $5680 TERSE_COLON_4DCC
        dw      $012A                ; $5682 _0
        dw      $0112                ; $5684 _LITbyte
        db      $00                  ; $5686 inline byte
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5687 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0130                ; $5689 _1
        dw      $0109                ; $568B _LIT
        dw      $2000                ; $568D inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $568F CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $5691 _LITbyte
        db      $02                  ; $5693 inline byte
        dw      $0109                ; $5694 _LIT
        dw      $8000                ; $5696 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5698 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $569A _LITbyte
        db      $03                  ; $569C inline byte
        dw      $0109                ; $569D _LIT
        dw      $A000                ; $569F inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56A1 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52F2     ; $56A3 TERSE_COLON_52F2
        dw      TERSE_COLON_4DCC     ; $56A5 TERSE_COLON_4DCC
        dw      $0112                ; $56A7 _LITbyte
        db      $04                  ; $56A9 inline byte
        dw      $0109                ; $56AA _LIT
        dw      $4000                ; $56AC inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56AE CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $56B0 _LITbyte
        db      $05                  ; $56B2 inline byte
        dw      $0109                ; $56B3 _LIT
        dw      $6000                ; $56B5 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56B7 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $56B9 _LITbyte
        db      $06                  ; $56BB inline byte
        dw      $0109                ; $56BC _LIT
        dw      $8000                ; $56BE inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56C0 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $56C2 _LITbyte
        db      $07                  ; $56C4 inline byte
        dw      $0109                ; $56C5 _LIT
        dw      $A000                ; $56C7 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56C9 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52F2     ; $56CB TERSE_COLON_52F2
        dw      TERSE_COLON_4DCC     ; $56CD TERSE_COLON_4DCC
        dw      $0112                ; $56CF _LITbyte
        db      $08                  ; $56D1 inline byte
        dw      $0109                ; $56D2 _LIT
        dw      $C000                ; $56D4 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56D6 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52E4     ; $56D8 TERSE_COLON_52E4
        dw      $0112                ; $56DA _LITbyte
        db      $0A                  ; $56DC inline byte
        dw      TERSE_COLON_44F1     ; $56DD TERSE_COLON_44F1
        dw      $0405                ; $56DF _Aquote
        db      $09,$38,$6B,$20,$65,$70,$72,$6F,$6D,$20                         ; $56E1 counted string
        dw      TERSE_COLON_44EA     ; $56EB TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $56ED TERSE_COLON_4DCC
        dw      $0112                ; $56EF _LITbyte
        db      $09                  ; $56F1 inline byte
        dw      $0109                ; $56F2 _LIT
        dw      $4000                ; $56F4 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56F6 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $56F8 _LITbyte
        db      $0A                  ; $56FA inline byte
        dw      $0109                ; $56FB _LIT
        dw      $6000                ; $56FD inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $56FF CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $5701 _LITbyte
        db      $0B                  ; $5703 inline byte
        dw      $0109                ; $5704 _LIT
        dw      $8000                ; $5706 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5708 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $570A _LITbyte
        db      $0C                  ; $570C inline byte
        dw      $0109                ; $570D _LIT
        dw      $A000                ; $570F inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5711 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52F2     ; $5713 TERSE_COLON_52F2
        dw      TERSE_COLON_4DCC     ; $5715 TERSE_COLON_4DCC
        dw      $0112                ; $5717 _LITbyte
        db      $0D                  ; $5719 inline byte
        dw      $0109                ; $571A _LIT
        dw      $4000                ; $571C inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $571E CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $5720 _LITbyte
        db      $0E                  ; $5722 inline byte
        dw      $0109                ; $5723 _LIT
        dw      $6000                ; $5725 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5727 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $5729 _LITbyte
        db      $0F                  ; $572B inline byte
        dw      $0109                ; $572C _LIT
        dw      $8000                ; $572E inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5730 CHECKSUM_SELECTED_QUESTION_BANK
        dw      $0112                ; $5732 _LITbyte
        db      $10                  ; $5734 inline byte
        dw      $0109                ; $5735 _LIT
        dw      $A000                ; $5737 inline word
        dw      CHECKSUM_SELECTED_QUESTION_BANK ; $5739 CHECKSUM_SELECTED_QUESTION_BANK
        dw      TERSE_COLON_52F2     ; $573B TERSE_COLON_52F2
        dw      TERSE_COLON_5311     ; $573D TERSE_COLON_5311
        dw      $0109                ; $573F _LIT
        dw      $DF35                ; $5741 inline word
        dw      $0153                ; $5743 _Bat
        dw      $012A                ; $5745 _0
        dw      $026F                ; $5747 _DO
        dw      $02B8                ; $5749 _I
        dw      TERSE_COLON_5423     ; $574B TERSE_COLON_5423
        dw      $0109                ; $574D _LIT
        dw      $FECE                ; $574F inline word
        dw      $0153                ; $5751 _Bat
        dw      $03EA                ; $5753 _0BRANCH
        dw      L575D                ; $5755 branch target
        dw      $03F7                ; $5757 _LEAVE
        dw      $03E2                ; $5759 _BRANCH
        dw      L579B                ; $575B branch target
L575D:
        dw      TERSE_COLON_4DCC     ; $575D TERSE_COLON_4DCC
        dw      $02B8                ; $575F _I
        dw      TERSE_COLON_53B7     ; $5761 TERSE_COLON_53B7
        dw      $01E3                ; $5763 _NOT
        dw      $03EA                ; $5765 _0BRANCH
        dw      L5781                ; $5767 branch target
        dw      $02B8                ; $5769 _I
        dw      $0109                ; $576B _LIT
        dw      $4000                ; $576D inline word
        dw      CHECKSUM_SELECTED_PROGRAM_BANK ; $576F CHECKSUM_SELECTED_PROGRAM_BANK
        dw      $02B8                ; $5771 _I
        dw      $0195                ; $5773 _1plus
        dw      $0109                ; $5775 _LIT
        dw      $4000                ; $5777 inline word
        dw      CHECKSUM_SELECTED_PROGRAM_BANK ; $5779 CHECKSUM_SELECTED_PROGRAM_BANK
        dw      TERSE_COLON_52EB     ; $577B TERSE_COLON_52EB
        dw      $03E2                ; $577D _BRANCH
        dw      L579B                ; $577F branch target
L5781:
        dw      TERSE_COLON_52D0     ; $5781 TERSE_COLON_52D0
        dw      TERSE_COLON_5214     ; $5783 TERSE_COLON_5214
        dw      TERSE_COLON_452A     ; $5785 TERSE_COLON_452A
        dw      $0405                ; $5787 _Aquote
        db      $0B,$2D,$6E,$6F,$74,$20,$72,$65,$61,$64,$79,$20                 ; $5789 counted string
        dw      TERSE_COLON_44EA     ; $5795 TERSE_COLON_44EA
        dw      TERSE_COLON_468F     ; $5797 TERSE_COLON_468F
        dw      TERSE_COLON_522F     ; $5799 TERSE_COLON_522F
L579B:
        dw      $0112                ; $579B _LITbyte
        db      $02                  ; $579D inline byte
        dw      $0397                ; $579E _plusLOOP
        dw      $0109                ; $57A0 _LIT
        dw      $FECE                ; $57A2 inline word
        dw      $0153                ; $57A4 _Bat
        dw      $01E3                ; $57A6 _NOT
        dw      $03EA                ; $57A8 _0BRANCH
        dw      L57AE                ; $57AA branch target
        dw      TERSE_COLON_5311     ; $57AC TERSE_COLON_5311
L57AE:
        dw      $0109                ; $57AE _LIT
        dw      $FECE                ; $57B0 inline word
        dw      $0153                ; $57B2 _Bat
        dw      $01E3                ; $57B4 _NOT
        dw      $03EA                ; $57B6 _0BRANCH
        dw      L5805                ; $57B8 branch target
        dw      $0112                ; $57BA _LITbyte
        db      $28                  ; $57BC inline byte
        dw      $0109                ; $57BD _LIT
        dw      $DF35                ; $57BF inline word
        dw      $0153                ; $57C1 _Bat
        dw      $026F                ; $57C3 _DO
        dw      $02B8                ; $57C5 _I
        dw      $0130                ; $57C7 _1
        dw      $0179                ; $57C9 _AND
        dw      $01DE                ; $57CB _zeroequal
        dw      $03EA                ; $57CD _0BRANCH
        dw      L57F9                ; $57CF branch target
        dw      $0109                ; $57D1 _LIT
        dw      $FECF                ; $57D3 inline word
        dw      $0153                ; $57D5 _Bat
        dw      $0130                ; $57D7 _1
        dw      $0179                ; $57D9 _AND
        dw      $01DE                ; $57DB _zeroequal
        dw      $03EA                ; $57DD _0BRANCH
        dw      L57E7                ; $57DF branch target
        dw      TERSE_COLON_4DCC     ; $57E1 TERSE_COLON_4DCC
        dw      $03E2                ; $57E3 _BRANCH
        dw      L57E9                ; $57E5 branch target
L57E7:
        dw      TERSE_COLON_468F     ; $57E7 TERSE_COLON_468F
L57E9:
        dw      $02B8                ; $57E9 _I
        dw      $0109                ; $57EB _LIT
        dw      $FECF                ; $57ED inline word
        dw      $0153                ; $57EF _Bat
        dw      TERSE_COLON_5433     ; $57F1 TERSE_COLON_5433
        dw      $0109                ; $57F3 _LIT
        dw      $FECF                ; $57F5 inline word
        dw      $0549                ; $57F7 _1plusBbang
L57F9:
        dw      $028A                ; $57F9 _LOOP
        dw      TERSE_COLON_52FD     ; $57FB TERSE_COLON_52FD
        dw      TERSE_COLON_46A8     ; $57FD TERSE_COLON_46A8
        dw      TERSE_COLON_492C     ; $57FF TERSE_COLON_492C
        dw      $03E2                ; $5801 _BRANCH
        dw      L580B                ; $5803 branch target
L5805:
        dw      TERSE_COLON_52FD     ; $5805 TERSE_COLON_52FD
        dw      TERSE_COLON_46A8     ; $5807 TERSE_COLON_46A8
        dw      TERSE_COLON_4911     ; $5809 TERSE_COLON_4911
L580B:
        dw      $00FD                ; $580B _RETURN
NATIVE_580D:
        ld bc,$1004                     ; $580D
        ld b,b                          ; $5810
        nop                             ; $5811
        ld bc,$0302                     ; $5812
        inc b                           ; $5815
        ex af,af'                       ; $5816
        rrca                            ; $5817
SET_BIT_4:
        pop hl                          ; $5818
        ld a,$10                        ; $5819
        or l                            ; $581B
        ld l,a                          ; $581C
        push hl                         ; $581D
        jp (iy)                         ; $581E
TERSE_COLON_5820:
        rst     $08                             ; $5820 colon entry
        dw      $011A                ; $5821 _BARRAY
        dw      $580D                ; $5823 inline word
        dw      $0153                ; $5825 _Bat
        dw      $0112                ; $5827 _LITbyte
        db      $0F                  ; $5829 inline byte
        dw      $0109                ; $582A _LIT
        dw      $FEB9                ; $582C inline word
        dw      $0153                ; $582E _Bat
        dw      $011A                ; $5830 _BARRAY
        dw      $5811                ; $5832 inline word
        dw      $0153                ; $5834 _Bat
        dw      SET_BIT_4            ; $5836 SET_BIT_4
        dw      NATIVE_4F08          ; $5838 NATIVE_4F08
        dw      $00FD                ; $583A _RETURN
SELFTEST_INTERCEPT:
        nop                             ; $583C
        nop                             ; $583D
        nop                             ; $583E
        nop                             ; $583F
        nop                             ; $5840
        nop                             ; $5841
        nop                             ; $5842
        nop                             ; $5843
        nop                             ; $5844
        nop                             ; $5845
        nop                             ; $5846
        nop                             ; $5847
        nop                             ; $5848
        nop                             ; $5849
        nop                             ; $584A
        nop                             ; $584B
        ld bc,$0001                     ; $584C
        nop                             ; $584F
        nop                             ; $5850
        ld bc,$0000                     ; $5851
        nop                             ; $5854
        ld (bc),a                       ; $5855
        ld (bc),a                       ; $5856
        ld (bc),a                       ; $5857
        ld (bc),a                       ; $5858
        ld (bc),a                       ; $5859
        nop                             ; $585A
        inc b                           ; $585B
        inc b                           ; $585C
        inc b                           ; $585D
        inc b                           ; $585E
        inc b                           ; $585F
        nop                             ; $5860
        inc b                           ; $5861
        inc b                           ; $5862
        inc b                           ; $5863
        inc b                           ; $5864
        inc b                           ; $5865
        in a,(PORT_SCREEN_INTERCEPT)    ; $5866
        and $07                         ; $5868
        ld l,a                          ; $586A
        ld h,$00                        ; $586B
        push hl                         ; $586D
        jp (iy)                         ; $586E
        db      $CF,$66,$58,$2A,$01,$71,$43,$56,$02,$FD,$00                     ; $5870
NATIVE_587B:
        pop hl                          ; $587B
        ld de,$fead                     ; $587C
        add hl,de                       ; $587F
        pop de                          ; $5880
        bit 0,e                         ; $5881
        jp z,L5888                      ; $5883
        ld (hl),$01                     ; $5886
L5888:
        inc hl                          ; $5888
        bit 1,e                         ; $5889
        jp z,L5890                      ; $588B
        ld (hl),$01                     ; $588E
L5890:
        inc hl                          ; $5890
        bit 2,e                         ; $5891
        jp z,L5898                      ; $5893
        ld (hl),$01                     ; $5896
L5898:
        jp (iy)                         ; $5898
NATIVE_589A:
        exx                             ; $589A
        ld hl,$1324                     ; $589B
        ld e,$38                        ; $589E
L58A0:
        ld c,$c3                        ; $58A0
        out (c),e                       ; $58A2
        out (c),h                       ; $58A4
        out (c),l                       ; $58A6
        exx                             ; $58A8
        jp (iy)                         ; $58A9
NATIVE_58AB:
        exx                             ; $58AB
        ld hl,$142f                     ; $58AC
        ld e,$37                        ; $58AF
        jr L58A0                        ; $58B1
        db      $CF,$12,$01,$0F,$6B,$43,$2A,$01,$12,$01,$02,$2A,$01,$6F,$02,$12 ; $58B3
        db      $01,$40,$2A,$01,$6F,$02,$9A,$58,$12,$01,$1B,$FF,$4E,$2A,$01,$71 ; $58C3
        db      $43,$AB,$58,$12,$01,$1B,$FF,$4E,$B8,$02,$71,$43,$66,$58,$EA,$03 ; $58D3
        db      $E7,$58,$95,$01,$8A,$02,$8A,$02,$FD,$00                         ; $58E3
TERSE_COLON_58ED:
        rst     $08                             ; $58ED colon entry
        dw      $012A                ; $58EE _0
        dw      $0109                ; $58F0 _LIT
        dw      $FEAD                ; $58F2 inline word
        dw      $0112                ; $58F4 _LITbyte
        db      $0C                  ; $58F6 inline byte
        dw      _BFILL               ; $58F7 _BFILL
        dw      TERSE_COLON_446A     ; $58F9 TERSE_COLON_446A
        dw      $012A                ; $58FB _0
        dw      NATIVE_4371          ; $58FD NATIVE_4371
        dw      $0112                ; $58FF _LITbyte
        db      $28                  ; $5901 inline byte
        dw      $012A                ; $5902 _0
        dw      $026F                ; $5904 _DO
        dw      $0112                ; $5906 _LITbyte
        db      $04                  ; $5908 inline byte
        dw      $012A                ; $5909 _0
        dw      $026F                ; $590B _DO
        dw      $0109                ; $590D _LIT
        dw      $FEB9                ; $590F inline word
        dw      $053F                ; $5911 _BZERO
L5913:
        dw      $0112                ; $5913 _LITbyte
        db      $06                  ; $5915 inline byte
        dw      $012A                ; $5916 _0
        dw      $026F                ; $5918 _DO
        dw      $02C1                ; $591A _J
        dw      TERSE_COLON_5820     ; $591C TERSE_COLON_5820
        dw      $02B8                ; $591E _I
        dw      $011A                ; $5920 _BARRAY
        dw      $4F4F                ; $5922 inline word
        dw      $0153                ; $5924 _Bat
        dw      SET_BIT_4            ; $5926 SET_BIT_4
        dw      NATIVE_4371          ; $5928 NATIVE_4371
        dw      $02C1                ; $592A _J
        dw      $011A                ; $592C _BARRAY
        dw      $580D                ; $592E inline word
        dw      $0153                ; $5930 _Bat
        dw      READ_PRIMARY_INPUT   ; $5932 READ_PRIMARY_INPUT
        dw      $0109                ; $5934 _LIT
        dw      $FEB9                ; $5936 inline word
        dw      $0153                ; $5938 _Bat
        dw      NATIVE_4FE9          ; $593A NATIVE_4FE9
        dw      $02B8                ; $593C _I
        dw      $015A                ; $593E _plus
        dw      $011A                ; $5940 _BARRAY
        dw      $583C                ; $5942 inline word
        dw      $0153                ; $5944 _Bat
        dw      $5870                ; $5946 execution token $5870
        dw      $024C                ; $5948 _minusDUP
        dw      $03EA                ; $594A _0BRANCH
        dw      L5954                ; $594C branch target
        dw      $02C1                ; $594E _J
        dw      NATIVE_4FE1          ; $5950 NATIVE_4FE1
        dw      NATIVE_587B          ; $5952 NATIVE_587B
L5954:
        dw      $028A                ; $5954 _LOOP
        dw      $0109                ; $5956 _LIT
        dw      $FEB9                ; $5958 inline word
        dw      $0136                ; $595A _DUP
        dw      $0549                ; $595C _1plusBbang
        dw      $0153                ; $595E _Bat
        dw      $0112                ; $5960 _LITbyte
        db      $07                  ; $5962 inline byte
        dw      $01CF                ; $5963 _equal
        dw      $03EA                ; $5965 _0BRANCH
        dw      L5913                ; $5967 branch target
        dw      $028A                ; $5969 _LOOP
        dw      $028A                ; $596B _LOOP
        dw      $58B3                ; $596D execution token $58B3
        dw      SELFTEST_HARDWARE_RESET ; $596F SELFTEST_HARDWARE_RESET
        dw      TERSE_COLON_47DC     ; $5971 TERSE_COLON_47DC
        dw      TERSE_COLON_44FA     ; $5973 TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $5975 TERSE_COLON_4686
        dw      $0405                ; $5977 _Aquote
        db      $09,$69,$6E,$74,$65,$72,$63,$65,$70,$74                         ; $5979 counted string
        dw      TERSE_COLON_44EA     ; $5983 TERSE_COLON_44EA
        dw      TERSE_COLON_4DED     ; $5985 TERSE_COLON_4DED
        dw      TERSE_COLON_452A     ; $5987 TERSE_COLON_452A
        dw      TERSE_COLON_4DCC     ; $5989 TERSE_COLON_4DCC
        dw      $0405                ; $598B _Aquote
        db      $04,$62,$69,$74,$23                                             ; $598D counted string
        dw      TERSE_COLON_44EA     ; $5992 TERSE_COLON_44EA
        dw      $0112                ; $5994 _LITbyte
        db      $0B                  ; $5996 inline byte
        dw      TERSE_COLON_44F1     ; $5997 TERSE_COLON_44F1
        dw      $0112                ; $5999 _LITbyte
        db      $02                  ; $599B inline byte
        dw      TERSE_COLON_4986     ; $599C TERSE_COLON_4986
        dw      $0109                ; $599E _LIT
        dw      $0080                ; $59A0 inline word
        dw      TERSE_COLON_4408     ; $59A2 TERSE_COLON_4408
        dw      $0405                ; $59A4 _Aquote
        db      $09,$70,$69,$78,$65,$6C,$2F,$70,$6C,$61                         ; $59A6 counted string
        dw      TERSE_COLON_44EA     ; $59B0 TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $59B2 TERSE_COLON_4DCC
        dw      $0112                ; $59B4 _LITbyte
        db      $06                  ; $59B6 inline byte
        dw      TERSE_COLON_4986     ; $59B7 TERSE_COLON_4986
        dw      $0109                ; $59B9 _LIT
        dw      $00C0                ; $59BB inline word
        dw      TERSE_COLON_4408     ; $59BD TERSE_COLON_4408
        dw      $0112                ; $59BF _LITbyte
        db      $04                  ; $59C1 inline byte
        dw      $012A                ; $59C2 _0
        dw      $026F                ; $59C4 _DO
        dw      $02B8                ; $59C6 _I
        dw      TERSE_COLON_4553     ; $59C8 TERSE_COLON_4553
        dw      TERSE_COLON_4DC1     ; $59CA TERSE_COLON_4DC1
        dw      $028A                ; $59CC _LOOP
        dw      $0112                ; $59CE _LITbyte
        db      $03                  ; $59D0 inline byte
        dw      $012A                ; $59D1 _0
        dw      $026F                ; $59D3 _DO
        dw      TERSE_COLON_4DCC     ; $59D5 TERSE_COLON_4DCC
        dw      TERSE_COLON_452A     ; $59D7 TERSE_COLON_452A
        dw      TERSE_COLON_4581     ; $59D9 TERSE_COLON_4581
        dw      $02B8                ; $59DB _I
        dw      TERSE_COLON_4553     ; $59DD TERSE_COLON_4553
        dw      $0112                ; $59DF _LITbyte
        db      $04                  ; $59E1 inline byte
        dw      TERSE_COLON_4986     ; $59E2 TERSE_COLON_4986
        dw      $0112                ; $59E4 _LITbyte
        db      $04                  ; $59E6 inline byte
        dw      $012A                ; $59E7 _0
        dw      $026F                ; $59E9 _DO
        dw      $02B8                ; $59EB _I
        dw      $0112                ; $59ED _LITbyte
        db      $03                  ; $59EF inline byte
        dw      $02FF                ; $59F0 _star
        dw      $02C1                ; $59F2 _J
        dw      $015A                ; $59F4 _plus
        dw      $0109                ; $59F6 _LIT
        dw      $FEAD                ; $59F8 inline word
        dw      $015A                ; $59FA _plus
        dw      $0153                ; $59FC _Bat
        dw      TERSE_COLON_4D92     ; $59FE TERSE_COLON_4D92
        dw      $028A                ; $5A00 _LOOP
        dw      $028A                ; $5A02 _LOOP
        dw      TERSE_COLON_441E     ; $5A04 TERSE_COLON_441E
        dw      TERSE_COLON_4DCC     ; $5A06 TERSE_COLON_4DCC
        dw      $0136                ; $5A08 _DUP
        dw      TERSE_COLON_4D92     ; $5A0A TERSE_COLON_4D92
        dw      TERSE_COLON_4DC1     ; $5A0C TERSE_COLON_4DC1
        dw      $03EA                ; $5A0E _0BRANCH
        dw      L5A1B                ; $5A10 branch target
        dw      $0405                ; $5A12 _Aquote
        db      $04,$6E,$6F,$74,$20                                             ; $5A14 counted string
        dw      TERSE_COLON_44EA     ; $5A19 TERSE_COLON_44EA
L5A1B:
        dw      $0405                ; $5A1B _Aquote
        db      $16,$61,$6C,$6C,$20,$76,$61,$6C,$75,$65,$73,$20,$63,$6C,$65,$61,$72,$20,$66,$6C,$61,$67,$73 ; $5A1D counted string
        dw      TERSE_COLON_44EA     ; $5A34 TERSE_COLON_44EA
        dw      TERSE_COLON_492C     ; $5A36 TERSE_COLON_492C
        dw      $00FD                ; $5A38 _RETURN
TERSE_COLON_5A3A:
        rst     $08                             ; $5A3A colon entry
        dw      TERSE_COLON_4FC6     ; $5A3B TERSE_COLON_4FC6
        dw      $0112                ; $5A3D _LITbyte
        db      $28                  ; $5A3F inline byte
        dw      $012A                ; $5A40 _0
        dw      $026F                ; $5A42 _DO
        dw      $0112                ; $5A44 _LITbyte
        db      $11                  ; $5A46 inline byte
        dw      TERSE_COLON_4F13     ; $5A47 TERSE_COLON_4F13
        dw      $08A8                ; $5A49 READ_SCREEN_WINDOW_BYTE
        dw      $0112                ; $5A4B _LITbyte
        db      $55                  ; $5A4D inline byte
        dw      NATIVE_4F20          ; $5A4E NATIVE_4F20
        dw      $08BB                ; $5A50 READ_SCREEN_WINDOW_MODE_10
        dw      $012A                ; $5A52 _0
        dw      NATIVE_4F20          ; $5A54 NATIVE_4F20
        dw      $0112                ; $5A56 _LITbyte
        db      $12                  ; $5A58 inline byte
        dw      TERSE_COLON_4F13     ; $5A59 TERSE_COLON_4F13
        dw      $08A8                ; $5A5B READ_SCREEN_WINDOW_BYTE
        dw      $0109                ; $5A5D _LIT
        dw      $00AA                ; $5A5F inline word
        dw      NATIVE_4F20          ; $5A61 NATIVE_4F20
        dw      $08BB                ; $5A63 READ_SCREEN_WINDOW_MODE_10
        dw      $012A                ; $5A65 _0
        dw      NATIVE_4F20          ; $5A67 NATIVE_4F20
        dw      $0112                ; $5A69 _LITbyte
        db      $14                  ; $5A6B inline byte
        dw      TERSE_COLON_4F13     ; $5A6C TERSE_COLON_4F13
        dw      $08A8                ; $5A6E READ_SCREEN_WINDOW_BYTE
        dw      $012A                ; $5A70 _0
        dw      NATIVE_4F20          ; $5A72 NATIVE_4F20
        dw      $08BB                ; $5A74 READ_SCREEN_WINDOW_MODE_10
        dw      $0112                ; $5A76 _LITbyte
        db      $55                  ; $5A78 inline byte
        dw      NATIVE_4F20          ; $5A79 NATIVE_4F20
        dw      $0112                ; $5A7B _LITbyte
        db      $18                  ; $5A7D inline byte
        dw      TERSE_COLON_4F13     ; $5A7E TERSE_COLON_4F13
        dw      $08A8                ; $5A80 READ_SCREEN_WINDOW_BYTE
        dw      $012A                ; $5A82 _0
        dw      NATIVE_4F20          ; $5A84 NATIVE_4F20
        dw      $08BB                ; $5A86 READ_SCREEN_WINDOW_MODE_10
        dw      $0109                ; $5A88 _LIT
        dw      $00AA                ; $5A8A inline word
        dw      NATIVE_4F20          ; $5A8C NATIVE_4F20
        dw      $028A                ; $5A8E _LOOP
        dw      $00FD                ; $5A90 _RETURN
TERSE_COLON_5A92:
        rst     $08                             ; $5A92 colon entry
        dw      $0112                ; $5A93 _LITbyte
        db      $1F                  ; $5A95 inline byte
        dw      TERSE_COLON_4F13     ; $5A96 TERSE_COLON_4F13
        dw      $0112                ; $5A98 _LITbyte
        db      $1F                  ; $5A9A inline byte
        dw      $0146                ; $5A9B _SWAP
        dw      NATIVE_4F08          ; $5A9D NATIVE_4F08
        dw      $00FD                ; $5A9F _RETURN
TERSE_COLON_5AA1:
        rst     $08                             ; $5AA1 colon entry
        dw      READ_PRIMARY_INPUT   ; $5AA2 READ_PRIMARY_INPUT
        dw      $08A8                ; $5AA4 READ_SCREEN_WINDOW_BYTE
        dw      $0109                ; $5AA6 _LIT
        dw      $00FF                ; $5AA8 inline word
        dw      NATIVE_4F20          ; $5AAA NATIVE_4F20
        dw      $08BB                ; $5AAC READ_SCREEN_WINDOW_MODE_10
        dw      $0109                ; $5AAE _LIT
        dw      $00FF                ; $5AB0 inline word
        dw      NATIVE_4F20          ; $5AB2 NATIVE_4F20
        dw      $00FD                ; $5AB4 _RETURN
TERSE_COLON_5AB6:
        rst     $08                             ; $5AB6 colon entry
        dw      $08A8                ; $5AB7 READ_SCREEN_WINDOW_BYTE
        dw      NATIVE_4F20          ; $5AB9 NATIVE_4F20
        dw      $08BB                ; $5ABB READ_SCREEN_WINDOW_MODE_10
        dw      NATIVE_4F20          ; $5ABD NATIVE_4F20
        dw      TERSE_COLON_5AA1     ; $5ABF TERSE_COLON_5AA1
        dw      $00FD                ; $5AC1 _RETURN
TERSE_COLON_5AC3:
        rst     $08                             ; $5AC3 colon entry
        dw      TERSE_COLON_4FC6     ; $5AC4 TERSE_COLON_4FC6
        dw      $0112                ; $5AC6 _LITbyte
        db      $28                  ; $5AC8 inline byte
        dw      $012A                ; $5AC9 _0
        dw      $026F                ; $5ACB _DO
        dw      $0130                ; $5ACD _1
        dw      $0112                ; $5ACF _LITbyte
        db      $11                  ; $5AD1 inline byte
        dw      TERSE_COLON_5A92     ; $5AD2 TERSE_COLON_5A92
        dw      $0130                ; $5AD4 _1
        dw      $0109                ; $5AD6 _LIT
        dw      $00FF                ; $5AD8 inline word
        dw      $0109                ; $5ADA _LIT
        dw      $00FE                ; $5ADC inline word
        dw      TERSE_COLON_5AB6     ; $5ADE TERSE_COLON_5AB6
        dw      $0130                ; $5AE0 _1
        dw      $0112                ; $5AE2 _LITbyte
        db      $12                  ; $5AE4 inline byte
        dw      TERSE_COLON_5A92     ; $5AE5 TERSE_COLON_5A92
        dw      $0130                ; $5AE7 _1
        dw      $0109                ; $5AE9 _LIT
        dw      $00FF                ; $5AEB inline word
        dw      $0109                ; $5AED _LIT
        dw      $00FD                ; $5AEF inline word
        dw      TERSE_COLON_5AB6     ; $5AF1 TERSE_COLON_5AB6
        dw      $0130                ; $5AF3 _1
        dw      $0112                ; $5AF5 _LITbyte
        db      $14                  ; $5AF7 inline byte
        dw      TERSE_COLON_5A92     ; $5AF8 TERSE_COLON_5A92
        dw      $0130                ; $5AFA _1
        dw      $0109                ; $5AFC _LIT
        dw      $00FE                ; $5AFE inline word
        dw      $0109                ; $5B00 _LIT
        dw      $00FF                ; $5B02 inline word
        dw      TERSE_COLON_5AB6     ; $5B04 TERSE_COLON_5AB6
        dw      $0130                ; $5B06 _1
        dw      $0112                ; $5B08 _LITbyte
        db      $18                  ; $5B0A inline byte
        dw      TERSE_COLON_5A92     ; $5B0B TERSE_COLON_5A92
        dw      $0130                ; $5B0D _1
        dw      $0109                ; $5B0F _LIT
        dw      $00FD                ; $5B11 inline word
        dw      $0109                ; $5B13 _LIT
        dw      $00FF                ; $5B15 inline word
        dw      TERSE_COLON_5AB6     ; $5B17 TERSE_COLON_5AB6
        dw      $0112                ; $5B19 _LITbyte
        db      $04                  ; $5B1B inline byte
        dw      $0112                ; $5B1C _LITbyte
        db      $11                  ; $5B1E inline byte
        dw      TERSE_COLON_5A92     ; $5B1F TERSE_COLON_5A92
        dw      $0112                ; $5B21 _LITbyte
        db      $04                  ; $5B23 inline byte
        dw      $0109                ; $5B24 _LIT
        dw      $00FF                ; $5B26 inline word
        dw      $0109                ; $5B28 _LIT
        dw      $00FB                ; $5B2A inline word
        dw      TERSE_COLON_5AB6     ; $5B2C TERSE_COLON_5AB6
        dw      $0112                ; $5B2E _LITbyte
        db      $04                  ; $5B30 inline byte
        dw      $0112                ; $5B31 _LITbyte
        db      $12                  ; $5B33 inline byte
        dw      TERSE_COLON_5A92     ; $5B34 TERSE_COLON_5A92
        dw      $0112                ; $5B36 _LITbyte
        db      $04                  ; $5B38 inline byte
        dw      $0109                ; $5B39 _LIT
        dw      $00FF                ; $5B3B inline word
        dw      $0109                ; $5B3D _LIT
        dw      $00F7                ; $5B3F inline word
        dw      TERSE_COLON_5AB6     ; $5B41 TERSE_COLON_5AB6
        dw      $0112                ; $5B43 _LITbyte
        db      $04                  ; $5B45 inline byte
        dw      $0112                ; $5B46 _LITbyte
        db      $14                  ; $5B48 inline byte
        dw      TERSE_COLON_5A92     ; $5B49 TERSE_COLON_5A92
        dw      $0112                ; $5B4B _LITbyte
        db      $04                  ; $5B4D inline byte
        dw      $0109                ; $5B4E _LIT
        dw      $00FB                ; $5B50 inline word
        dw      $0109                ; $5B52 _LIT
        dw      $00FF                ; $5B54 inline word
        dw      TERSE_COLON_5AB6     ; $5B56 TERSE_COLON_5AB6
        dw      $0112                ; $5B58 _LITbyte
        db      $04                  ; $5B5A inline byte
        dw      $0112                ; $5B5B _LITbyte
        db      $18                  ; $5B5D inline byte
        dw      TERSE_COLON_5A92     ; $5B5E TERSE_COLON_5A92
        dw      $0112                ; $5B60 _LITbyte
        db      $04                  ; $5B62 inline byte
        dw      $0109                ; $5B63 _LIT
        dw      $00F7                ; $5B65 inline word
        dw      $0109                ; $5B67 _LIT
        dw      $00FF                ; $5B69 inline word
        dw      TERSE_COLON_5AB6     ; $5B6B TERSE_COLON_5AB6
        dw      $0112                ; $5B6D _LITbyte
        db      $10                  ; $5B6F inline byte
        dw      $0112                ; $5B70 _LITbyte
        db      $11                  ; $5B72 inline byte
        dw      TERSE_COLON_5A92     ; $5B73 TERSE_COLON_5A92
        dw      $0112                ; $5B75 _LITbyte
        db      $10                  ; $5B77 inline byte
        dw      $0109                ; $5B78 _LIT
        dw      $00FF                ; $5B7A inline word
        dw      $0109                ; $5B7C _LIT
        dw      $00EF                ; $5B7E inline word
        dw      TERSE_COLON_5AB6     ; $5B80 TERSE_COLON_5AB6
        dw      $0112                ; $5B82 _LITbyte
        db      $10                  ; $5B84 inline byte
        dw      $0112                ; $5B85 _LITbyte
        db      $12                  ; $5B87 inline byte
        dw      TERSE_COLON_5A92     ; $5B88 TERSE_COLON_5A92
        dw      $0112                ; $5B8A _LITbyte
        db      $10                  ; $5B8C inline byte
        dw      $0109                ; $5B8D _LIT
        dw      $00FF                ; $5B8F inline word
        dw      $0109                ; $5B91 _LIT
        dw      $00DF                ; $5B93 inline word
        dw      TERSE_COLON_5AB6     ; $5B95 TERSE_COLON_5AB6
        dw      $0112                ; $5B97 _LITbyte
        db      $10                  ; $5B99 inline byte
        dw      $0112                ; $5B9A _LITbyte
        db      $14                  ; $5B9C inline byte
        dw      TERSE_COLON_5A92     ; $5B9D TERSE_COLON_5A92
        dw      $0112                ; $5B9F _LITbyte
        db      $10                  ; $5BA1 inline byte
        dw      $0109                ; $5BA2 _LIT
        dw      $00EF                ; $5BA4 inline word
        dw      $0109                ; $5BA6 _LIT
        dw      $00FF                ; $5BA8 inline word
        dw      TERSE_COLON_5AB6     ; $5BAA TERSE_COLON_5AB6
        dw      $0112                ; $5BAC _LITbyte
        db      $10                  ; $5BAE inline byte
        dw      $0112                ; $5BAF _LITbyte
        db      $18                  ; $5BB1 inline byte
        dw      TERSE_COLON_5A92     ; $5BB2 TERSE_COLON_5A92
        dw      $0112                ; $5BB4 _LITbyte
        db      $10                  ; $5BB6 inline byte
        dw      $0109                ; $5BB7 _LIT
        dw      $00DF                ; $5BB9 inline word
        dw      $0109                ; $5BBB _LIT
        dw      $00FF                ; $5BBD inline word
        dw      TERSE_COLON_5AB6     ; $5BBF TERSE_COLON_5AB6
        dw      $0112                ; $5BC1 _LITbyte
        db      $40                  ; $5BC3 inline byte
        dw      $0112                ; $5BC4 _LITbyte
        db      $11                  ; $5BC6 inline byte
        dw      TERSE_COLON_5A92     ; $5BC7 TERSE_COLON_5A92
        dw      $0112                ; $5BC9 _LITbyte
        db      $40                  ; $5BCB inline byte
        dw      $0109                ; $5BCC _LIT
        dw      $00FF                ; $5BCE inline word
        dw      $0109                ; $5BD0 _LIT
        dw      $00BF                ; $5BD2 inline word
        dw      TERSE_COLON_5AB6     ; $5BD4 TERSE_COLON_5AB6
        dw      $0112                ; $5BD6 _LITbyte
        db      $40                  ; $5BD8 inline byte
        dw      $0112                ; $5BD9 _LITbyte
        db      $12                  ; $5BDB inline byte
        dw      TERSE_COLON_5A92     ; $5BDC TERSE_COLON_5A92
        dw      $0112                ; $5BDE _LITbyte
        db      $40                  ; $5BE0 inline byte
        dw      $0109                ; $5BE1 _LIT
        dw      $00FF                ; $5BE3 inline word
        dw      $0109                ; $5BE5 _LIT
        dw      $007F                ; $5BE7 inline word
        dw      TERSE_COLON_5AB6     ; $5BE9 TERSE_COLON_5AB6
        dw      $0112                ; $5BEB _LITbyte
        db      $40                  ; $5BED inline byte
        dw      $0112                ; $5BEE _LITbyte
        db      $14                  ; $5BF0 inline byte
        dw      TERSE_COLON_5A92     ; $5BF1 TERSE_COLON_5A92
        dw      $0112                ; $5BF3 _LITbyte
        db      $40                  ; $5BF5 inline byte
        dw      $0109                ; $5BF6 _LIT
        dw      $00BF                ; $5BF8 inline word
        dw      $0109                ; $5BFA _LIT
        dw      $00FF                ; $5BFC inline word
        dw      TERSE_COLON_5AB6     ; $5BFE TERSE_COLON_5AB6
        dw      $0112                ; $5C00 _LITbyte
        db      $40                  ; $5C02 inline byte
        dw      $0112                ; $5C03 _LITbyte
        db      $18                  ; $5C05 inline byte
        dw      TERSE_COLON_5A92     ; $5C06 TERSE_COLON_5A92
        dw      $0112                ; $5C08 _LITbyte
        db      $40                  ; $5C0A inline byte
        dw      $0109                ; $5C0B _LIT
        dw      $007F                ; $5C0D inline word
        dw      $0109                ; $5C0F _LIT
        dw      $00FF                ; $5C11 inline word
        dw      TERSE_COLON_5AB6     ; $5C13 TERSE_COLON_5AB6
        dw      $028A                ; $5C15 _LOOP
        dw      $00FD                ; $5C17 _RETURN
TERSE_COLON_5C19:
        rst     $08                             ; $5C19 colon entry
        dw      TERSE_COLON_4FC6     ; $5C1A TERSE_COLON_4FC6
        dw      $0112                ; $5C1C _LITbyte
        db      $28                  ; $5C1E inline byte
        dw      $012A                ; $5C1F _0
        dw      $026F                ; $5C21 _DO
        dw      $0130                ; $5C23 _1
        dw      $0112                ; $5C25 _LITbyte
        db      $0F                  ; $5C27 inline byte
        dw      $0112                ; $5C28 _LITbyte
        db      $1F                  ; $5C2A inline byte
        dw      NATIVE_4F08          ; $5C2B NATIVE_4F08
        dw      $0112                ; $5C2D _LITbyte
        db      $2F                  ; $5C2F inline byte
        dw      NATIVE_436B          ; $5C30 NATIVE_436B
        dw      $0112                ; $5C32 _LITbyte
        db      $54                  ; $5C34 inline byte
        dw      TERSE_COLON_5AA1     ; $5C35 TERSE_COLON_5AA1
        dw      $0112                ; $5C37 _LITbyte
        db      $04                  ; $5C39 inline byte
        dw      $0112                ; $5C3A _LITbyte
        db      $0F                  ; $5C3C inline byte
        dw      $0112                ; $5C3D _LITbyte
        db      $1F                  ; $5C3F inline byte
        dw      NATIVE_4F08          ; $5C40 NATIVE_4F08
        dw      $0112                ; $5C42 _LITbyte
        db      $2F                  ; $5C44 inline byte
        dw      NATIVE_436B          ; $5C45 NATIVE_436B
        dw      $0112                ; $5C47 _LITbyte
        db      $51                  ; $5C49 inline byte
        dw      TERSE_COLON_5AA1     ; $5C4A TERSE_COLON_5AA1
        dw      $0112                ; $5C4C _LITbyte
        db      $10                  ; $5C4E inline byte
        dw      $0112                ; $5C4F _LITbyte
        db      $0F                  ; $5C51 inline byte
        dw      $0112                ; $5C52 _LITbyte
        db      $1F                  ; $5C54 inline byte
        dw      NATIVE_4F08          ; $5C55 NATIVE_4F08
        dw      $0112                ; $5C57 _LITbyte
        db      $2F                  ; $5C59 inline byte
        dw      NATIVE_436B          ; $5C5A NATIVE_436B
        dw      $0112                ; $5C5C _LITbyte
        db      $45                  ; $5C5E inline byte
        dw      TERSE_COLON_5AA1     ; $5C5F TERSE_COLON_5AA1
        dw      $0112                ; $5C61 _LITbyte
        db      $40                  ; $5C63 inline byte
        dw      $0112                ; $5C64 _LITbyte
        db      $0F                  ; $5C66 inline byte
        dw      $0112                ; $5C67 _LITbyte
        db      $1F                  ; $5C69 inline byte
        dw      NATIVE_4F08          ; $5C6A NATIVE_4F08
        dw      $0112                ; $5C6C _LITbyte
        db      $2F                  ; $5C6E inline byte
        dw      NATIVE_436B          ; $5C6F NATIVE_436B
        dw      $0112                ; $5C71 _LITbyte
        db      $15                  ; $5C73 inline byte
        dw      TERSE_COLON_5AA1     ; $5C74 TERSE_COLON_5AA1
        dw      $028A                ; $5C76 _LOOP
        dw      $00FD                ; $5C78 _RETURN
TERSE_COLON_5C7A:
        rst     $08                             ; $5C7A colon entry
        dw      TERSE_COLON_4FC6     ; $5C7B TERSE_COLON_4FC6
        dw      $0112                ; $5C7D _LITbyte
        db      $28                  ; $5C7F inline byte
        dw      $012A                ; $5C80 _0
        dw      $026F                ; $5C82 _DO
        dw      $0112                ; $5C84 _LITbyte
        db      $55                  ; $5C86 inline byte
        dw      $0112                ; $5C87 _LITbyte
        db      $0F                  ; $5C89 inline byte
        dw      $0112                ; $5C8A _LITbyte
        db      $1F                  ; $5C8C inline byte
        dw      NATIVE_4F08          ; $5C8D NATIVE_4F08
        dw      $0112                ; $5C8F _LITbyte
        db      $3F                  ; $5C91 inline byte
        dw      NATIVE_436B          ; $5C92 NATIVE_436B
        dw      $0112                ; $5C94 _LITbyte
        db      $54                  ; $5C96 inline byte
        dw      TERSE_COLON_5AA1     ; $5C97 TERSE_COLON_5AA1
        dw      $0112                ; $5C99 _LITbyte
        db      $55                  ; $5C9B inline byte
        dw      $0112                ; $5C9C _LITbyte
        db      $0F                  ; $5C9E inline byte
        dw      $0112                ; $5C9F _LITbyte
        db      $1F                  ; $5CA1 inline byte
        dw      NATIVE_4F08          ; $5CA2 NATIVE_4F08
        dw      $0112                ; $5CA4 _LITbyte
        db      $3F                  ; $5CA6 inline byte
        dw      NATIVE_436B          ; $5CA7 NATIVE_436B
        dw      $0112                ; $5CA9 _LITbyte
        db      $51                  ; $5CAB inline byte
        dw      TERSE_COLON_5AA1     ; $5CAC TERSE_COLON_5AA1
        dw      $0112                ; $5CAE _LITbyte
        db      $55                  ; $5CB0 inline byte
        dw      $0112                ; $5CB1 _LITbyte
        db      $0F                  ; $5CB3 inline byte
        dw      $0112                ; $5CB4 _LITbyte
        db      $1F                  ; $5CB6 inline byte
        dw      NATIVE_4F08          ; $5CB7 NATIVE_4F08
        dw      $0112                ; $5CB9 _LITbyte
        db      $3F                  ; $5CBB inline byte
        dw      NATIVE_436B          ; $5CBC NATIVE_436B
        dw      $0112                ; $5CBE _LITbyte
        db      $45                  ; $5CC0 inline byte
        dw      TERSE_COLON_5AA1     ; $5CC1 TERSE_COLON_5AA1
        dw      $0112                ; $5CC3 _LITbyte
        db      $55                  ; $5CC5 inline byte
        dw      $0112                ; $5CC6 _LITbyte
        db      $0F                  ; $5CC8 inline byte
        dw      $0112                ; $5CC9 _LITbyte
        db      $1F                  ; $5CCB inline byte
        dw      NATIVE_4F08          ; $5CCC NATIVE_4F08
        dw      $0112                ; $5CCE _LITbyte
        db      $3F                  ; $5CD0 inline byte
        dw      NATIVE_436B          ; $5CD1 NATIVE_436B
        dw      $0112                ; $5CD3 _LITbyte
        db      $15                  ; $5CD5 inline byte
        dw      TERSE_COLON_5AA1     ; $5CD6 TERSE_COLON_5AA1
        dw      $028A                ; $5CD8 _LOOP
        dw      $00FD                ; $5CDA _RETURN
TERSE_COLON_5CDC:
        rst     $08                             ; $5CDC colon entry
        dw      SELFTEST_HARDWARE_RESET ; $5CDD SELFTEST_HARDWARE_RESET
        dw      TERSE_COLON_5A3A     ; $5CDF TERSE_COLON_5A3A
        dw      $0109                ; $5CE1 _LIT
        dw      $FECA                ; $5CE3 inline word
        dw      $0109                ; $5CE5 _LIT
        dw      $FEC6                ; $5CE7 inline word
        dw      $0112                ; $5CE9 _LITbyte
        db      $04                  ; $5CEB inline byte
        dw      $05A3                ; $5CEC _MOVE
        dw      TERSE_COLON_5AC3     ; $5CEE TERSE_COLON_5AC3
        dw      $0109                ; $5CF0 _LIT
        dw      $FECA                ; $5CF2 inline word
        dw      $0109                ; $5CF4 _LIT
        dw      $FEC2                ; $5CF6 inline word
        dw      $0112                ; $5CF8 _LITbyte
        db      $04                  ; $5CFA inline byte
        dw      $05A3                ; $5CFB _MOVE
        dw      TERSE_COLON_5C19     ; $5CFD TERSE_COLON_5C19
        dw      $0109                ; $5CFF _LIT
        dw      $FECA                ; $5D01 inline word
        dw      $0109                ; $5D03 _LIT
        dw      $FEBE                ; $5D05 inline word
        dw      $0112                ; $5D07 _LITbyte
        db      $04                  ; $5D09 inline byte
        dw      $05A3                ; $5D0A _MOVE
        dw      TERSE_COLON_5C7A     ; $5D0C TERSE_COLON_5C7A
        dw      $0109                ; $5D0E _LIT
        dw      $FECA                ; $5D10 inline word
        dw      $0109                ; $5D12 _LIT
        dw      $FEBA                ; $5D14 inline word
        dw      $0112                ; $5D16 _LITbyte
        db      $04                  ; $5D18 inline byte
        dw      $05A3                ; $5D19 _MOVE
        dw      TERSE_COLON_47DC     ; $5D1B TERSE_COLON_47DC
        dw      TERSE_COLON_44FA     ; $5D1D TERSE_COLON_44FA
        dw      TERSE_COLON_4686     ; $5D1F TERSE_COLON_4686
        dw      $0405                ; $5D21 _Aquote
        db      $10,$77,$72,$69,$74,$65,$20,$66,$75,$6E,$63,$74,$69,$6F,$6E,$73,$20 ; $5D23 counted string
        dw      TERSE_COLON_44EA     ; $5D34 TERSE_COLON_44EA
        dw      TERSE_COLON_4DED     ; $5D36 TERSE_COLON_4DED
        dw      TERSE_COLON_452A     ; $5D38 TERSE_COLON_452A
        dw      TERSE_COLON_4DCC     ; $5D3A TERSE_COLON_4DCC
        dw      $0112                ; $5D3C _LITbyte
        db      $07                  ; $5D3E inline byte
        dw      TERSE_COLON_4986     ; $5D3F TERSE_COLON_4986
        dw      $0405                ; $5D41 _Aquote
        db      $09,$70,$69,$78,$65,$6C,$2F,$70,$6C,$61                         ; $5D43 counted string
        dw      TERSE_COLON_44EA     ; $5D4D TERSE_COLON_44EA
        dw      TERSE_COLON_4DCC     ; $5D4F TERSE_COLON_4DCC
        dw      $0112                ; $5D51 _LITbyte
        db      $06                  ; $5D53 inline byte
        dw      TERSE_COLON_4986     ; $5D54 TERSE_COLON_4986
        dw      $0109                ; $5D56 _LIT
        dw      $0180                ; $5D58 inline word
        dw      TERSE_COLON_4408     ; $5D5A TERSE_COLON_4408
        dw      $0112                ; $5D5C _LITbyte
        db      $04                  ; $5D5E inline byte
        dw      $012A                ; $5D5F _0
        dw      $026F                ; $5D61 _DO
        dw      $02B8                ; $5D63 _I
        dw      TERSE_COLON_4553     ; $5D65 TERSE_COLON_4553
        dw      TERSE_COLON_4DC1     ; $5D67 TERSE_COLON_4DC1
        dw      $028A                ; $5D69 _LOOP
        dw      TERSE_COLON_4502     ; $5D6B TERSE_COLON_4502
        dw      TERSE_COLON_4DCC     ; $5D6D TERSE_COLON_4DCC
        dw      $0405                ; $5D6F _Aquote
        db      $05,$70,$6C,$6F,$70,$20                                         ; $5D71 counted string
        dw      TERSE_COLON_4FD6     ; $5D77 TERSE_COLON_4FD6
        dw      $0112                ; $5D79 _LITbyte
        db      $04                  ; $5D7B inline byte
        dw      $012A                ; $5D7C _0
        dw      $026F                ; $5D7E _DO
        dw      $02B8                ; $5D80 _I
        dw      $0109                ; $5D82 _LIT
        dw      $FEC6                ; $5D84 inline word
        dw      $015A                ; $5D86 _plus
        dw      $0153                ; $5D88 _Bat
        dw      TERSE_COLON_4D92     ; $5D8A TERSE_COLON_4D92
        dw      $028A                ; $5D8C _LOOP
        dw      TERSE_COLON_4DCC     ; $5D8E TERSE_COLON_4DCC
        dw      $0405                ; $5D90 _Aquote
        db      $05,$78,$6F,$72,$20,$20                                         ; $5D92 counted string
        dw      TERSE_COLON_4FD6     ; $5D98 TERSE_COLON_4FD6
        dw      $0112                ; $5D9A _LITbyte
        db      $04                  ; $5D9C inline byte
        dw      $012A                ; $5D9D _0
        dw      $026F                ; $5D9F _DO
        dw      $02B8                ; $5DA1 _I
        dw      $0109                ; $5DA3 _LIT
        dw      $FEC2                ; $5DA5 inline word
        dw      $015A                ; $5DA7 _plus
        dw      $0153                ; $5DA9 _Bat
        dw      TERSE_COLON_4D92     ; $5DAB TERSE_COLON_4D92
        dw      $028A                ; $5DAD _LOOP
        dw      TERSE_COLON_4DCC     ; $5DAF TERSE_COLON_4DCC
        dw      $0405                ; $5DB1 _Aquote
        db      $05,$74,$72,$61,$6E,$73                                         ; $5DB3 counted string
        dw      TERSE_COLON_4FD6     ; $5DB9 TERSE_COLON_4FD6
        dw      $0112                ; $5DBB _LITbyte
        db      $04                  ; $5DBD inline byte
        dw      $012A                ; $5DBE _0
        dw      $026F                ; $5DC0 _DO
        dw      $02B8                ; $5DC2 _I
        dw      $0109                ; $5DC4 _LIT
        dw      $FEBE                ; $5DC6 inline word
        dw      $015A                ; $5DC8 _plus
        dw      $0153                ; $5DCA _Bat
        dw      TERSE_COLON_4D92     ; $5DCC TERSE_COLON_4D92
        dw      $028A                ; $5DCE _LOOP
        dw      TERSE_COLON_4DCC     ; $5DD0 TERSE_COLON_4DCC
        dw      $0405                ; $5DD2 _Aquote
        db      $05,$72,$65,$76,$65,$72                                         ; $5DD4 counted string
        dw      TERSE_COLON_4FD6     ; $5DDA TERSE_COLON_4FD6
        dw      $0112                ; $5DDC _LITbyte
        db      $04                  ; $5DDE inline byte
        dw      $012A                ; $5DDF _0
        dw      $026F                ; $5DE1 _DO
        dw      $02B8                ; $5DE3 _I
        dw      $0109                ; $5DE5 _LIT
        dw      $FEBA                ; $5DE7 inline word
        dw      $015A                ; $5DE9 _plus
        dw      $0153                ; $5DEB _Bat
        dw      TERSE_COLON_4D92     ; $5DED TERSE_COLON_4D92
        dw      $028A                ; $5DEF _LOOP
        dw      TERSE_COLON_492C     ; $5DF1 TERSE_COLON_492C
        dw      SELFTEST_HARDWARE_RESET ; $5DF3 SELFTEST_HARDWARE_RESET
        dw      $00FD                ; $5DF5 _RETURN
TERSE_COLON_5DF7:
        rst     $08                             ; $5DF7 colon entry
        dw      $012A                ; $5DF8 _0
        dw      $0112                ; $5DFA _LITbyte
        db      $0A                  ; $5DFC inline byte
        dw      $012A                ; $5DFD _0
        dw      $026F                ; $5DFF _DO
        dw      $02CA                ; $5E01 _OVER
        dw      $02B8                ; $5E03 _I
        dw      $01A6                ; $5E05 _2splat
        dw      $015A                ; $5E07 _plus
        dw      $014C                ; $5E09 _at
        dw      $015A                ; $5E0B _plus
        dw      $028A                ; $5E0D _LOOP
        dw      $0112                ; $5E0F _LITbyte
        db      $05                  ; $5E11 inline byte
        dw      TERSE_COLON_444C     ; $5E12 TERSE_COLON_444C
        dw      TERSE_COLON_4698     ; $5E14 TERSE_COLON_4698
        dw      TERSE_COLON_450A     ; $5E16 TERSE_COLON_450A
        dw      $0405                ; $5E18 _Aquote
        db      $06,$74,$6F,$74,$61,$6C,$20                                     ; $5E1A counted string
        dw      TERSE_COLON_44EA     ; $5E21 TERSE_COLON_44EA
        dw      $0112                ; $5E23 _LITbyte
        db      $06                  ; $5E25 inline byte
        dw      TERSE_COLON_444C     ; $5E26 TERSE_COLON_444C
        dw      TERSE_COLON_4698     ; $5E28 TERSE_COLON_4698
        dw      $0112                ; $5E2A _LITbyte
        db      $04                  ; $5E2C inline byte
        dw      TERSE_COLON_4986     ; $5E2D TERSE_COLON_4986
        dw      $0112                ; $5E2F _LITbyte
        db      $0D                  ; $5E31 inline byte
        dw      TERSE_COLON_44F1     ; $5E32 TERSE_COLON_44F1
        dw      TERSE_COLON_4596     ; $5E34 TERSE_COLON_4596
        dw      $0143                ; $5E36 _DROP
        dw      $00FD                ; $5E38 _RETURN
TERSE_COLON_5E3A:
        rst     $08                             ; $5E3A colon entry
        dw      TERSE_COLON_47DC     ; $5E3B TERSE_COLON_47DC
        dw      $0112                ; $5E3D _LITbyte
        db      $03                  ; $5E3F inline byte
        dw      TERSE_COLON_44F1     ; $5E40 TERSE_COLON_44F1
        dw      $0109                ; $5E42 _LIT
        dw      $13B0                ; $5E44 inline word
        dw      $0109                ; $5E46 _LIT
        dw      $0240                ; $5E48 inline word
        dw      $0112                ; $5E4A _LITbyte
        db      $03                  ; $5E4C inline byte
        dw      $02FF                ; $5E4D _star
        dw      $0160                ; $5E4F _minussign
        dw      TERSE_COLON_4413     ; $5E51 TERSE_COLON_4413
        dw      $0405                ; $5E53 _Aquote
        db      $13,$73,$65,$63,$6F,$6E,$64,$73,$20,$20,$20,$20,$20,$20,$20,$67,$61,$6D,$65,$73 ; $5E55 counted string
        dw      TERSE_COLON_44EA     ; $5E69 TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $5E6B TERSE_COLON_441E
        dw      TERSE_COLON_441E     ; $5E6D TERSE_COLON_441E
        dw      $0112                ; $5E6F _LITbyte
        db      $09                  ; $5E71 inline byte
        dw      $012A                ; $5E72 _0
        dw      $026F                ; $5E74 _DO
        dw      TERSE_COLON_4522     ; $5E76 TERSE_COLON_4522
        dw      TERSE_COLON_4686     ; $5E78 TERSE_COLON_4686
        dw      $02B8                ; $5E7A _I
        dw      $0112                ; $5E7C _LITbyte
        db      $5A                  ; $5E7E inline byte
        dw      $02FF                ; $5E7F _star
        dw      TERSE_COLON_4596     ; $5E81 TERSE_COLON_4596
        dw      $0405                ; $5E83 _Aquote
        db      $06,$20,$2D,$20,$20,$20,$20                                     ; $5E85 counted string
        dw      TERSE_COLON_44EA     ; $5E8C TERSE_COLON_44EA
        dw      $02B8                ; $5E8E _I
        dw      $0195                ; $5E90 _1plus
        dw      $0112                ; $5E92 _LITbyte
        db      $5A                  ; $5E94 inline byte
        dw      $02FF                ; $5E95 _star
        dw      TERSE_COLON_4596     ; $5E97 TERSE_COLON_4596
        dw      TERSE_COLON_468F     ; $5E99 TERSE_COLON_468F
        dw      TERSE_COLON_452A     ; $5E9B TERSE_COLON_452A
        dw      $02B8                ; $5E9D _I
        dw      $0125                ; $5E9F _ARRAY
        dw      $E1C0                ; $5EA1 inline word
        dw      $014C                ; $5EA3 _at
        dw      TERSE_COLON_4596     ; $5EA5 TERSE_COLON_4596
        dw      TERSE_COLON_441E     ; $5EA7 TERSE_COLON_441E
        dw      $028A                ; $5EA9 _LOOP
        dw      TERSE_COLON_4686     ; $5EAB TERSE_COLON_4686
        dw      $0112                ; $5EAD _LITbyte
        db      $0A                  ; $5EAF inline byte
        dw      $0190                ; $5EB0 _1minus
        dw      $0112                ; $5EB2 _LITbyte
        db      $5A                  ; $5EB4 inline byte
        dw      $02FF                ; $5EB5 _star
        dw      TERSE_COLON_4512     ; $5EB7 TERSE_COLON_4512
        dw      TERSE_COLON_4596     ; $5EB9 TERSE_COLON_4596
        dw      $0405                ; $5EBB _Aquote
        db      $02,$20,$2B                                                     ; $5EBD counted string
        dw      TERSE_COLON_44EA     ; $5EC0 TERSE_COLON_44EA
        dw      TERSE_COLON_468F     ; $5EC2 TERSE_COLON_468F
        dw      $0112                ; $5EC4 _LITbyte
        db      $09                  ; $5EC6 inline byte
        dw      $0125                ; $5EC7 _ARRAY
        dw      $E1C0                ; $5EC9 inline word
        dw      $014C                ; $5ECB _at
        dw      TERSE_COLON_452A     ; $5ECD TERSE_COLON_452A
        dw      TERSE_COLON_4596     ; $5ECF TERSE_COLON_4596
        dw      $012A                ; $5ED1 _0
        dw      $0125                ; $5ED3 _ARRAY
        dw      $E1C0                ; $5ED5 inline word
        dw      TERSE_COLON_5DF7     ; $5ED7 TERSE_COLON_5DF7
        dw      TERSE_COLON_492C     ; $5ED9 TERSE_COLON_492C
        dw      $00FD                ; $5EDB _RETURN
TERSE_COLON_5EDD:
        rst     $08                             ; $5EDD colon entry
        dw      $0112                ; $5EDE _LITbyte
        db      $0A                  ; $5EE0 inline byte
        dw      $012A                ; $5EE1 _0
        dw      $026F                ; $5EE3 _DO
        dw      $02B8                ; $5EE5 _I
        dw      $0125                ; $5EE7 _ARRAY
        dw      $E1C0                ; $5EE9 inline word
        dw      ALIAS_ZERO           ; $5EEB ALIAS_ZERO
        dw      $028A                ; $5EED _LOOP
        dw      TERSE_COLON_5E3A     ; $5EEF TERSE_COLON_5E3A
        dw      $00FD                ; $5EF1 _RETURN
TERSE_COLON_5EF3:
        rst     $08                             ; $5EF3 colon entry
        dw      TERSE_COLON_47DC     ; $5EF4 TERSE_COLON_47DC
        dw      $0112                ; $5EF6 _LITbyte
        db      $03                  ; $5EF8 inline byte
        dw      TERSE_COLON_44F1     ; $5EF9 TERSE_COLON_44F1
        dw      $0109                ; $5EFB _LIT
        dw      $13B0                ; $5EFD inline word
        dw      $0109                ; $5EFF _LIT
        dw      $0240                ; $5F01 inline word
        dw      $0112                ; $5F03 _LITbyte
        db      $03                  ; $5F05 inline byte
        dw      $02FF                ; $5F06 _star
        dw      $0160                ; $5F08 _minussign
        dw      TERSE_COLON_4413     ; $5F0A TERSE_COLON_4413
        dw      $0405                ; $5F0C _Aquote
        db      $13,$73,$65,$63,$6F,$6E,$64,$73,$20,$20,$20,$20,$20,$20,$20,$67,$61,$6D,$65,$73 ; $5F0E counted string
        dw      TERSE_COLON_44EA     ; $5F22 TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $5F24 TERSE_COLON_441E
        dw      TERSE_COLON_441E     ; $5F26 TERSE_COLON_441E
        dw      $0112                ; $5F28 _LITbyte
        db      $09                  ; $5F2A inline byte
        dw      $012A                ; $5F2B _0
        dw      $026F                ; $5F2D _DO
        dw      TERSE_COLON_4522     ; $5F2F TERSE_COLON_4522
        dw      TERSE_COLON_4686     ; $5F31 TERSE_COLON_4686
        dw      $02B8                ; $5F33 _I
        dw      $0112                ; $5F35 _LITbyte
        db      $5A                  ; $5F37 inline byte
        dw      $01A6                ; $5F38 _2splat
        dw      $02FF                ; $5F3A _star
        dw      TERSE_COLON_4596     ; $5F3C TERSE_COLON_4596
        dw      $0405                ; $5F3E _Aquote
        db      $06,$20,$2D,$20,$20,$20,$20                                     ; $5F40 counted string
        dw      TERSE_COLON_44EA     ; $5F47 TERSE_COLON_44EA
        dw      $02B8                ; $5F49 _I
        dw      $0195                ; $5F4B _1plus
        dw      $0112                ; $5F4D _LITbyte
        db      $5A                  ; $5F4F inline byte
        dw      $01A6                ; $5F50 _2splat
        dw      $02FF                ; $5F52 _star
        dw      TERSE_COLON_4596     ; $5F54 TERSE_COLON_4596
        dw      TERSE_COLON_468F     ; $5F56 TERSE_COLON_468F
        dw      TERSE_COLON_452A     ; $5F58 TERSE_COLON_452A
        dw      $02B8                ; $5F5A _I
        dw      $0125                ; $5F5C _ARRAY
        dw      $E1AC                ; $5F5E inline word
        dw      $014C                ; $5F60 _at
        dw      TERSE_COLON_4596     ; $5F62 TERSE_COLON_4596
        dw      TERSE_COLON_441E     ; $5F64 TERSE_COLON_441E
        dw      $028A                ; $5F66 _LOOP
        dw      TERSE_COLON_4686     ; $5F68 TERSE_COLON_4686
        dw      TERSE_COLON_4512     ; $5F6A TERSE_COLON_4512
        dw      $0112                ; $5F6C _LITbyte
        db      $0A                  ; $5F6E inline byte
        dw      $0190                ; $5F6F _1minus
        dw      $0112                ; $5F71 _LITbyte
        db      $5A                  ; $5F73 inline byte
        dw      $01A6                ; $5F74 _2splat
        dw      $02FF                ; $5F76 _star
        dw      TERSE_COLON_4596     ; $5F78 TERSE_COLON_4596
        dw      $0405                ; $5F7A _Aquote
        db      $02,$20,$2B                                                     ; $5F7C counted string
        dw      TERSE_COLON_44EA     ; $5F7F TERSE_COLON_44EA
        dw      TERSE_COLON_468F     ; $5F81 TERSE_COLON_468F
        dw      TERSE_COLON_452A     ; $5F83 TERSE_COLON_452A
        dw      $0112                ; $5F85 _LITbyte
        db      $09                  ; $5F87 inline byte
        dw      $0125                ; $5F88 _ARRAY
        dw      $E1AC                ; $5F8A inline word
        dw      $014C                ; $5F8C _at
        dw      TERSE_COLON_4596     ; $5F8E TERSE_COLON_4596
        dw      $012A                ; $5F90 _0
        dw      $0125                ; $5F92 _ARRAY
        dw      $E1AC                ; $5F94 inline word
        dw      TERSE_COLON_5DF7     ; $5F96 TERSE_COLON_5DF7
        dw      TERSE_COLON_492C     ; $5F98 TERSE_COLON_492C
        dw      $00FD                ; $5F9A _RETURN
TERSE_COLON_5F9C:
        rst     $08                             ; $5F9C colon entry
        dw      $0112                ; $5F9D _LITbyte
        db      $0A                  ; $5F9F inline byte
        dw      $012A                ; $5FA0 _0
        dw      $026F                ; $5FA2 _DO
        dw      $02B8                ; $5FA4 _I
        dw      $0125                ; $5FA6 _ARRAY
        dw      $E1AC                ; $5FA8 inline word
        dw      ALIAS_ZERO           ; $5FAA ALIAS_ZERO
        dw      $028A                ; $5FAC _LOOP
        dw      TERSE_COLON_5EF3     ; $5FAE TERSE_COLON_5EF3
        dw      $00FD                ; $5FB0 _RETURN
TERSE_COLON_5FB2:
        rst     $08                             ; $5FB2 colon entry
        dw      TERSE_COLON_47DC     ; $5FB3 TERSE_COLON_47DC
        dw      $0112                ; $5FB5 _LITbyte
        db      $03                  ; $5FB7 inline byte
        dw      TERSE_COLON_44F1     ; $5FB8 TERSE_COLON_44F1
        dw      TERSE_COLON_4686     ; $5FBA TERSE_COLON_4686
        dw      $0405                ; $5FBC _Aquote
        db      $10,$73,$63,$6F,$72,$65,$73,$20,$20,$20,$20,$20,$67,$61,$6D,$65,$73 ; $5FBE counted string
        dw      TERSE_COLON_44EA     ; $5FCF TERSE_COLON_44EA
        dw      TERSE_COLON_441E     ; $5FD1 TERSE_COLON_441E
        dw      TERSE_COLON_441E     ; $5FD3 TERSE_COLON_441E
        dw      $0112                ; $5FD5 _LITbyte
        db      $09                  ; $5FD7 inline byte
        dw      $012A                ; $5FD8 _0
        dw      $026F                ; $5FDA _DO
        dw      TERSE_COLON_4522     ; $5FDC TERSE_COLON_4522
        dw      TERSE_COLON_4686     ; $5FDE TERSE_COLON_4686
        dw      $02B8                ; $5FE0 _I
        dw      $0109                ; $5FE2 _LIT
        dw      $1388                ; $5FE4 inline word
        dw      $0109                ; $5FE6 _LIT
        dw      $03E8                ; $5FE8 inline word
        dw      $038D                ; $5FEA _slash
        dw      $02FF                ; $5FEC _star
        dw      TERSE_COLON_4596     ; $5FEE TERSE_COLON_4596
        dw      $0405                ; $5FF0 _Aquote
        db      $06,$20,$6B,$2D,$20,$20,$20                                     ; $5FF2 counted string
        dw      TERSE_COLON_44EA     ; $5FF9 TERSE_COLON_44EA
        dw      $02B8                ; $5FFB _I
        dw      $0195                ; $5FFD _1plus
        db      $09                                                             ; $5FFF
