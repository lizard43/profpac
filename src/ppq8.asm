; Professor Pac-Man question ROM PPQ8
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ8_VISUAL_PROGRESSION_ACTIONS              equ     $6014
PPQ8_IMAGE_MIRROR_ACTIONS                    equ     $6ACF
PPQ8_TABLE_MEMORY_ACTIONS                    equ     $7DCD


QUESTION_BANK_HEADER:
        dw      QUESTION_ROOT_DIRECTORY                                         ; $4000 root-directory pointer
        db      $0F,$00,$09,$00,$04,$0E,$0F,$0A,$00,$03,$0E,$00,$00,$00,$0A,$0E ; $4002
        db      $05,$06,$0F,$0B,$00,$0F,$00,$00,$0C,$00,$08,$0E,$05,$06,$00,$00 ; $4012
        db      $0A,$0F,$04,$00,$07,$00,$07,$0E,$05,$06,$0F,$0B,$00,$0E,$05,$06 ; $4022
        db      $0F,$0A,$00,$00,$00,$0E,$00,$01,$0F,$0F,$00,$00,$07,$07,$07,$0F ; $4032
        db      $0B,$00,$0F,$00,$00,$0C,$00,$08,$0F,$0B,$00,$0E,$05,$06,$07,$00 ; $4042
        db      $07,$05,$05,$05,$03,$03,$03,$07,$07,$07,$00,$00,$09,$00,$04,$0E ; $4052
        db      $0F,$0A,$00,$00,$0A,$00,$00,$04,$0E,$0F,$0A,$00,$09,$00,$07,$00 ; $4062
        db      $04,$0E,$0F,$0A,$00,$0C,$00,$00,$00,$09,$00,$0F,$0D,$00,$4A,$40 ; $4072
        db      $77,$40,$38,$40,$2F,$40,$5C,$40,$26,$40,$41,$40,$14,$40,$8C,$2D ; $4082
        db      $CF,$12,$01,$10,$09,$01,$6D,$FD,$EF,$2B,$EC,$3E,$12,$01,$1D,$A8 ; $4092
        db      $2B,$EA,$3F,$30,$01,$A8,$2B,$8C,$2B,$FD,$00,$CF,$12,$01,$10,$09 ; $40A2
        db      $01,$3D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02 ; $40B2
        db      $A8,$2B,$EC,$3E,$12,$01,$1B,$A8,$2B,$EA,$3F,$30,$01,$A8,$2B,$8C ; $40C2
        db      $2B,$FD,$00,$CF,$92,$40,$AD,$40,$FD,$00,$CF,$99,$15,$12,$01,$04 ; $40D2
        db      $09,$01,$FF,$F2,$32,$05,$09,$01,$FE,$F2,$3F,$05,$D5,$40,$09,$01 ; $40E2
        db      $FE,$F2,$53,$01,$25,$01,$80,$40,$4C,$01,$6B,$2D,$12,$01,$03,$DF ; $40F2
        db      $1B,$2C,$1A,$09,$01,$FE,$F2,$36,$01,$49,$05,$53,$01,$12,$01,$08 ; $4102
        db      $1C,$02,$EA,$03,$F0,$40,$09,$01,$FF,$F2,$36,$01,$44,$05,$53,$01 ; $4112
        db      $DE,$01,$EA,$03,$E8,$40,$12,$01,$20,$DF,$1B,$2C,$1A,$02,$23,$54 ; $4122
        db      $22,$FD,$00,$01,$DC,$40,$08,$07,$07,$18,$AF,$A8,$00,$00,$04,$00 ; $4132
        db      $00,$00,$00,$80,$00,$09,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00 ; $4142
        db      $00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4152
        db      $00,$40,$00,$22,$90,$00,$80,$00,$00,$11,$28,$50,$00,$00,$C0,$00 ; $4162
        db      $00,$58,$80,$00,$00,$00,$0E,$2F,$8A,$80,$00,$0C,$00,$00,$0E,$8A ; $4172
        db      $8A,$00,$00,$00,$00,$2A,$C8,$3A,$00,$00,$00,$03,$A0,$A8,$00,$00 ; $4182
        db      $00,$00,$02,$A4,$A8,$02,$A0,$20,$00,$03,$84,$28,$02,$00,$00,$00 ; $4192
        db      $00,$20,$2A,$00,$00,$00,$00,$00,$A0,$AA,$0C,$00,$00,$0C,$00,$00 ; $41A2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $41B2
        db      $0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $41C2
        db      $08,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00 ; $41D2
        db      $00,$00,$01,$00,$00,$00,$0C,$00,$00,$00,$00,$80,$00,$0F,$0C,$00 ; $41E2
        db      $00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$00,$00,$0C,$00 ; $41F2
        db      $00,$00,$00,$00,$00,$33,$00,$00,$00,$C0,$00,$33,$F0,$C0,$80,$00 ; $4202
        db      $00,$33,$FC,$F0,$00,$00,$C0,$00,$00,$FC,$83,$C0,$00,$00,$0E,$2F ; $4212
        db      $FA,$83,$C0,$0C,$00,$00,$0F,$CA,$BA,$00,$00,$00,$00,$3F,$C8,$FA ; $4222
        db      $00,$00,$00,$02,$F0,$FC,$FC,$00,$00,$00,$03,$FC,$FC,$FE,$A0,$2C ; $4232
        db      $00,$02,$CC,$3C,$F2,$00,$00,$00,$00,$3C,$2A,$00,$00,$00,$00,$00 ; $4242
        db      $FC,$AA,$0C,$00,$00,$0C,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00 ; $4252
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$03,$00,$00,$C0 ; $4262
        db      $00,$00,$00,$00,$00,$00,$00,$00,$08,$03,$00,$00,$00,$00,$00,$00 ; $4272
        db      $00,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$03,$00,$00,$06,$0A,$07 ; $4282
        db      $1A,$AF,$B6,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $4292
        db      $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$40,$03,$C0,$04,$28,$00 ; $42A2
        db      $20,$10,$0B,$80,$04,$80,$00,$08,$04,$00,$00,$01,$A0,$80,$02,$04 ; $42B2
        db      $02,$40,$54,$0A,$00,$00,$5C,$02,$40,$08,$20,$00,$05,$FF,$02,$80 ; $42C2
        db      $64,$88,$00,$17,$FC,$12,$47,$55,$80,$00,$9F,$C2,$76,$4C,$35,$00 ; $42D2
        db      $00,$3F,$05,$FE,$4C,$F4,$03,$00,$0C,$17,$C0,$63,$C0,$00,$00,$C0 ; $42E2
        db      $F7,$08,$00,$13,$00,$00,$00,$3C,$00,$00,$00,$15,$40,$28,$00,$44 ; $42F2
        db      $00,$2A,$A2,$00,$50,$34,$00,$2B,$00,$00,$00,$00,$00,$00,$0B,$14 ; $4302
        db      $00,$00,$00,$3C,$8C,$C3,$D5,$40,$00,$00,$3C,$1C,$70,$00,$00,$00 ; $4312
        db      $00,$01,$20,$F0,$10,$00,$00,$00,$80,$F7,$5C,$04,$03,$00,$08,$04 ; $4322
        db      $3F,$F0,$00,$00,$00,$20,$14,$0D,$41,$00,$2A,$00,$80,$10,$01,$60 ; $4332
        db      $40,$AA,$00,$00,$00,$00,$20,$40,$08,$00,$00,$00,$00,$C0,$00,$00 ; $4342
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00 ; $4352
        db      $C0,$03,$C0,$0C,$28,$00,$20,$30,$CB,$80,$0C,$80,$00,$08,$0C,$00 ; $4362
        db      $00,$33,$A0,$80,$02,$0C,$02,$C0,$FC,$0A,$00,$00,$AC,$32,$C0,$08 ; $4372
        db      $20,$00,$0A,$FF,$32,$80,$A8,$88,$00,$2B,$FC,$3E,$CF,$EA,$80,$00 ; $4382
        db      $AF,$C2,$BE,$CC,$3A,$00,$00,$3F,$0A,$FE,$CC,$F8,$03,$00,$0C,$3B ; $4392
        db      $C0,$E3,$C0,$00,$00,$C0,$FB,$0C,$00,$33,$00,$00,$00,$3C,$00,$00 ; $43A2
        db      $0C,$FF,$C0,$28,$00,$CC,$00,$2A,$AE,$C0,$F0,$3C,$00,$3B,$00,$00 ; $43B2
        db      $00,$00,$C0,$00,$0B,$38,$00,$00,$0F,$3C,$8C,$C3,$EB,$F0,$00,$C0 ; $43C2
        db      $3C,$3C,$F0,$30,$00,$00,$00,$03,$20,$F0,$33,$00,$00,$00,$80,$FB ; $43D2
        db      $AC,$0C,$C3,$00,$08,$0C,$3F,$F0,$00,$00,$00,$20,$3C,$0F,$C3,$00 ; $43E2
        db      $3F,$00,$80,$30,$03,$E0,$C0,$FF,$00,$00,$00,$00,$20,$C0,$0C,$00 ; $43F2
        db      $08,$08,$07,$19,$AF,$AF,$00,$02,$A0,$5F,$40,$01,$43,$F0,$00,$81 ; $4402
        db      $1F,$C7,$D1,$41,$70,$00,$00,$05,$17,$FD,$00,$00,$02,$10,$00,$DF ; $4412
        db      $D0,$08,$00,$07,$D0,$03,$97,$90,$40,$08,$0D,$33,$00,$3B,$00,$00 ; $4422
        db      $20,$0C,$4A,$00,$14,$00,$BE,$00,$3F,$FE,$00,$9A,$02,$CF,$C0,$0E ; $4432
        db      $BF,$20,$97,$00,$FF,$F0,$00,$33,$28,$14,$08,$B5,$C0,$0C,$1E,$A4 ; $4442
        db      $00,$1A,$B7,$C4,$00,$08,$00,$00,$18,$B7,$C4,$00,$00,$00,$00,$5A ; $4452
        db      $B7,$D0,$0D,$89,$40,$00,$00,$A7,$40,$01,$62,$70,$00,$00,$2A,$00 ; $4462
        db      $3F,$5A,$40,$42,$54,$00,$00,$FD,$58,$00,$40,$45,$CC,$00,$3F,$40 ; $4472
        db      $0A,$61,$6B,$D3,$00,$07,$00,$08,$A0,$23,$53,$00,$00,$00,$A2,$80 ; $4482
        db      $2D,$4F,$00,$00,$80,$07,$B0,$0C,$03,$00,$00,$0F,$1A,$FC,$10,$FC ; $4492
        db      $00,$08,$0C,$FF,$FF,$00,$00,$00,$00,$03,$C5,$D3,$C4,$00,$00,$00 ; $44A2
        db      $10,$F1,$50,$C1,$00,$00,$03,$F0,$AF,$83,$02,$82,$A0,$00,$C3,$2F ; $44B2
        db      $CB,$E2,$83,$E0,$00,$00,$0A,$2B,$FE,$00,$00,$02,$20,$0C,$EF,$E0 ; $44C2
        db      $08,$00,$0B,$E0,$03,$AB,$A0,$C0,$08,$0E,$33,$00,$3B,$00,$00,$20 ; $44D2
        db      $0C,$8A,$00,$28,$00,$BE,$00,$3F,$FE,$03,$EF,$02,$CF,$C0,$0E,$BF ; $44E2
        db      $30,$FF,$00,$FF,$F0,$00,$33,$3C,$3C,$0C,$BA,$C0,$0C,$2E,$BC,$00 ; $44F2
        db      $3E,$BB,$C8,$00,$08,$00,$00,$3C,$BB,$C8,$00,$00,$00,$00,$FF,$BB ; $4502
        db      $E0,$0E,$8F,$C0,$00,$00,$AB,$80,$02,$A3,$F0,$00,$00,$2A,$00,$3F ; $4512
        db      $AB,$C0,$C3,$FC,$00,$00,$FE,$A8,$00,$C0,$CF,$FF,$00,$3F,$80,$0F ; $4522
        db      $F3,$EB,$EF,$30,$0B,$00,$08,$F0,$23,$AF,$0C,$00,$00,$A2,$80,$2E ; $4532
        db      $BF,$00,$00,$80,$0B,$B0,$0F,$FF,$00,$00,$0F,$2A,$FC,$30,$FC,$00 ; $4542
        db      $08,$0C,$FF,$FF,$00,$00,$00,$00,$03,$CA,$E3,$CC,$00,$00,$00,$30 ; $4552
        db      $F2,$A0,$C3,$00,$00,$08,$0A,$08,$1A,$AF,$D0,$00,$00,$03,$FF,$03 ; $4562
        db      $C0,$00,$0C,$00,$00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C,$D0 ; $4572
        db      $0F,$30,$0C,$00,$00,$00,$5F,$F4,$15,$00,$00,$00,$00,$01,$73,$FC ; $4582
        db      $3D,$C0,$10,$00,$00,$00,$3C,$33,$3F,$00,$54,$00,$00,$C0,$F0,$00 ; $4592
        db      $00,$00,$FF,$00,$01,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00 ; $45A2
        db      $30,$00,$15,$00,$5F,$F0,$0C,$00,$00,$03,$01,$40,$17,$C0,$00,$00 ; $45B2
        db      $00,$00,$00,$00,$1F,$00,$00,$00,$00,$00,$01,$00,$1C,$40,$0C,$00 ; $45C2
        db      $00,$00,$15,$00,$1C,$03,$3C,$00,$00,$00,$FD,$00,$30,$00,$C0,$00 ; $45D2
        db      $00,$00,$00,$C0,$01,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00,$00 ; $45E2
        db      $00,$00,$CF,$00,$04,$F0,$00,$00,$00,$00,$0C,$00,$05,$57,$00,$00 ; $45F2
        db      $00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0 ; $4602
        db      $30,$0F,$14,$00,$00,$01,$10,$C0,$C0,$3F,$54,$00,$00,$03,$F3,$F0 ; $4612
        db      $C3,$0D,$10,$00,$00,$03,$3F,$3C,$CC,$05,$00,$00,$00,$00,$35,$40 ; $4622
        db      $15,$04,$00,$00,$00,$00,$03,$C0,$0D,$C0,$00,$00,$00,$03,$FF,$03 ; $4632
        db      $C0,$00,$0C,$00,$00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C,$E0 ; $4642
        db      $0F,$30,$0C,$00,$00,$00,$AF,$F8,$2A,$00,$00,$00,$00,$02,$B3,$FC ; $4652
        db      $3E,$C0,$20,$00,$00,$00,$3C,$33,$3F,$00,$A8,$00,$00,$C0,$F0,$00 ; $4662
        db      $00,$00,$FF,$00,$02,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00 ; $4672
        db      $30,$00,$2A,$00,$AF,$F0,$0C,$00,$00,$03,$02,$80,$2B,$C0,$00,$00 ; $4682
        db      $00,$00,$00,$00,$2F,$00,$00,$00,$00,$00,$02,$00,$2C,$80,$0C,$00 ; $4692
        db      $00,$00,$2A,$00,$2C,$03,$3C,$00,$00,$00,$FE,$00,$30,$00,$C0,$00 ; $46A2
        db      $00,$00,$00,$C0,$02,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00,$00 ; $46B2
        db      $00,$00,$CF,$00,$08,$F0,$00,$00,$00,$00,$0C,$00,$0A,$AB,$00,$00 ; $46C2
        db      $00,$00,$00,$00,$0A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0 ; $46D2
        db      $30,$0F,$28,$00,$00,$02,$20,$C0,$C0,$3F,$A8,$00,$00,$03,$F3,$F0 ; $46E2
        db      $C3,$0E,$20,$00,$00,$03,$3F,$3C,$CC,$0A,$00,$00,$00,$00,$3A,$80 ; $46F2
        db      $2A,$08,$00,$00,$00,$00,$03,$C0,$0E,$C0,$00,$00,$04,$00,$81,$10 ; $4702
        db      $38,$41,$12,$8F,$42,$14,$02,$44,$12,$67,$45,$00,$11,$47,$CF,$12 ; $4712
        db      $01,$10,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B ; $4722
        db      $12,$01,$06,$A8,$2B,$12,$01,$14,$12,$01,$26,$12,$01,$28,$71,$2B ; $4732
        db      $12,$01,$16,$09,$01,$66,$00,$2E,$2B,$12,$01,$38,$F2,$2A,$12,$01 ; $4742
        db      $03,$12,$01,$07,$12,$01,$05,$09,$01,$FF,$FF,$12,$01,$10,$12,$01 ; $4752
        db      $18,$09,$01,$F9,$FF,$BB,$2B,$30,$01,$12,$01,$10,$12,$01,$03,$09 ; $4762
        db      $01,$FE,$FF,$12,$01,$20,$09,$01,$80,$00,$09,$01,$E4,$FF,$BB,$2B ; $4772
        db      $30,$01,$12,$01,$10,$12,$01,$03,$12,$01,$04,$2A,$01,$12,$01,$0F ; $4782
        db      $09,$01,$F2,$FF,$BB,$2B,$12,$01,$07,$01,$2B,$12,$01,$28,$A8,$2B ; $4792
        db      $8C,$2B,$FD,$00,$CF,$12,$01,$10,$09,$01,$6D,$FD,$EF,$2B,$12,$01 ; $47A2
        db      $1F,$09,$01,$FF,$00,$2E,$2B,$09,$01,$68,$00,$01,$2B,$12,$01,$20 ; $47B2
        db      $F2,$2A,$09,$01,$88,$00,$12,$01,$50,$09,$01,$64,$00,$71,$2B,$12 ; $47C2
        db      $01,$20,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8 ; $47D2
        db      $2B,$12,$01,$1F,$09,$01,$FF,$00,$2E,$2B,$12,$01,$08,$A8,$2B,$12 ; $47E2
        db      $01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$8C,$2B,$FD,$00 ; $47F2
        db      $CF,$20,$47,$A6,$47,$FD,$00,$CF,$99,$15,$34,$8B,$A8,$1E,$02,$48 ; $4802
        db      $09,$01,$0E,$47,$B4,$1C,$12,$01,$3C,$DF,$1B,$E9,$19,$F3,$1D,$12 ; $4812
        db      $01,$0C,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$09,$48,$0B ; $4822
        db      $0C,$06,$1A,$00,$3F,$FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0,$00,$0F ; $4832
        db      $FF,$FF,$FF,$F0,$00,$3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA,$AF,$FE ; $4842
        db      $40,$FF,$E9,$55,$57,$FF,$50,$FF,$E5,$55,$57,$FF,$90,$FF,$E5,$40 ; $4852
        db      $03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF ; $4862
        db      $E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF ; $4872
        db      $94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00 ; $4882
        db      $03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$3F ; $4892
        db      $F5,$00,$0F,$FE,$94,$3F,$FF,$FF,$FF,$FE,$54,$0F,$FF,$FF,$FF,$FA ; $48A2
        db      $54,$03,$FF,$FF,$FF,$E9,$50,$01,$BF,$FF,$FE,$A5,$50,$00,$5A,$AA ; $48B2
        db      $AA,$55,$40,$00,$55,$55,$55,$55,$00,$00,$05,$55,$55,$50,$00,$05 ; $48C2
        db      $0C,$03,$1A,$3F,$F0,$00,$3F,$F8,$00,$3F,$F9,$00,$3F,$F9,$00,$3F ; $48D2
        db      $F9,$00,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9 ; $48E2
        db      $40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40 ; $48F2
        db      $3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F ; $4902
        db      $F9,$40,$3F,$F9,$40,$3F,$F9,$40,$0A,$A9,$40,$01,$55,$40,$01,$55 ; $4912
        db      $40,$0B,$0C,$06,$1A,$00,$3F,$FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0 ; $4922
        db      $00,$0F,$FF,$FF,$FF,$F0,$00,$3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA ; $4932
        db      $AF,$FE,$40,$FF,$E9,$55,$57,$FF,$50,$FF,$E5,$55,$57,$FF,$90,$2A ; $4942
        db      $A5,$40,$03,$FF,$94,$05,$55,$00,$0F,$FF,$94,$05,$7F,$FF,$FF,$FE ; $4952
        db      $94,$03,$FF,$FF,$FF,$FE,$94,$0F,$FF,$FF,$FF,$FA,$54,$3F,$FF,$FF ; $4962
        db      $FF,$A5,$54,$3F,$FE,$AA,$AA,$95,$50,$FF,$FA,$55,$55,$55,$00,$FF ; $4972
        db      $E9,$55,$55,$54,$00,$FF,$E5,$50,$00,$00,$00,$FF,$E5,$40,$00,$00 ; $4982
        db      $00,$FF,$E5,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$80,$FF,$FF,$FF ; $4992
        db      $FF,$FF,$94,$FF,$FF,$FF,$FF,$FF,$94,$FF,$FF,$FF,$FF,$FF,$94,$2A ; $49A2
        db      $AA,$AA,$AA,$AA,$94,$05,$55,$55,$55,$55,$54,$05,$55,$55,$55,$55 ; $49B2
        db      $54,$0B,$0C,$06,$1A,$00,$3F,$FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0 ; $49C2
        db      $00,$0F,$FF,$FF,$FF,$F0,$00,$3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA ; $49D2
        db      $AF,$FE,$40,$FF,$E9,$55,$57,$FF,$50,$FF,$E5,$55,$57,$FF,$90,$2A ; $49E2
        db      $A5,$40,$03,$FF,$94,$05,$55,$00,$0F,$FF,$94,$05,$57,$FF,$FF,$FE ; $49F2
        db      $94,$00,$03,$FF,$FF,$FE,$54,$00,$03,$FF,$FF,$FA,$50,$00,$03,$FF ; $4A02
        db      $FF,$FD,$50,$00,$00,$AA,$AF,$FE,$40,$00,$00,$15,$57,$FF,$50,$00 ; $4A12
        db      $00,$15,$57,$FF,$90,$FF,$C0,$00,$03,$FF,$94,$FF,$E0,$00,$03,$FF ; $4A22
        db      $94,$3F,$F5,$00,$0F,$FE,$94,$3F,$FF,$FF,$FF,$FE,$54,$0F,$FF,$FF ; $4A32
        db      $FF,$FA,$54,$07,$FF,$FF,$FF,$E9,$50,$01,$BF,$FF,$FE,$A5,$40,$00 ; $4A42
        db      $5A,$AA,$AA,$55,$00,$00,$05,$55,$55,$54,$00,$00,$01,$55,$55,$40 ; $4A52
        db      $00,$80,$40,$60,$40,$FF,$80,$28,$30,$28,$30,$28,$30,$28,$30,$28 ; $4A62
        db      $30,$28,$30,$28,$30,$28,$30                                     ; $4A72 preserved bytes

VISUAL_PROGRESSION_CORRECT_LOOP_1:
        rst     $08                                                             ; $4A79 colon entry
        dw      XT_1                                                            ; $4A7A execution token
        dw      XT_LIT                                                          ; $4A7C execution token
        dw      $FD6D                                                           ; $4A7E inline word
        dw      $2BEF                                                           ; $4A80 execution token
        dw      XT_LIT                                                          ; $4A82 execution token
        dw      $F2FD                                                           ; $4A84 inline word
        dw      XT_BZERO                                                        ; $4A86 execution token
        dw      XT_LITbyte                                                      ; $4A88 execution token
        db      $06                                                             ; $4A8A inline byte
        dw      XT_LITbyte                                                      ; $4A8B execution token
        db      $46                                                             ; $4A8D inline byte
        dw      $2B2E                                                           ; $4A8E execution token
        dw      XT_LITbyte                                                      ; $4A90 execution token
        db      $30                                                             ; $4A92 inline byte
        dw      $2AF2                                                           ; $4A93 execution token
        dw      XT_LIT                                                          ; $4A95 execution token
        dw      QUESTION_BANK_BASE                                              ; $4A97 inline word
        dw      XT_LIT                                                          ; $4A99 execution token
        dw      QUESTION_BANK_BASE                                              ; $4A9B inline word
        dw      XT_LIT                                                          ; $4A9D execution token
        dw      QUESTION_BANK_BASE                                              ; $4A9F inline word
        dw      $2B71                                                           ; $4AA1 execution token
VISUAL_PROGRESSION_CORRECT_LOOP_1_R:
        dw      XT_LITbyte                                                      ; $4AA3 execution token
        db      $06                                                             ; $4AA5 inline byte
        dw      XT_LITbyte                                                      ; $4AA6 execution token
        db      $46                                                             ; $4AA8 inline byte
        dw      $2B2E                                                           ; $4AA9 execution token
        dw      XT_LIT                                                          ; $4AAB execution token
        dw      $F2FD                                                           ; $4AAD inline word
        dw      XT_Bat                                                          ; $4AAF execution token
        dw      XT_BARRAY                                                       ; $4AB1 execution token
        dw      $4A63                                                           ; $4AB3 inline word
        dw      XT_Bat                                                          ; $4AB5 execution token
        dw      XT_LIT                                                          ; $4AB7 execution token
        dw      $F2FD                                                           ; $4AB9 inline word
        dw      XT_Bat                                                          ; $4ABB execution token
        dw      XT_BARRAY                                                       ; $4ABD execution token
        dw      $4A65                                                           ; $4ABF inline word
        dw      XT_Bat                                                          ; $4AC1 execution token
        dw      XT_LIT                                                          ; $4AC3 execution token
        dw      $F2FD                                                           ; $4AC5 inline word
        dw      XT_Bat                                                          ; $4AC7 execution token
        dw      XT_BARRAY                                                       ; $4AC9 execution token
        dw      $4A67                                                           ; $4ACB inline word
        dw      XT_Bat                                                          ; $4ACD execution token
        dw      $2B71                                                           ; $4ACF execution token
        dw      XT_1                                                            ; $4AD1 execution token
        dw      XT_LITbyte                                                      ; $4AD3 execution token
        db      $02                                                             ; $4AD5 inline byte
        dw      XT_LITbyte                                                      ; $4AD6 execution token
        db      $03                                                             ; $4AD8 inline byte
        dw      XT_LIT                                                          ; $4AD9 execution token
        dw      $FFFD                                                           ; $4ADB inline word
        dw      XT_0                                                            ; $4ADD execution token
        dw      XT_LITbyte                                                      ; $4ADF execution token
        db      $0F                                                             ; $4AE1 inline byte
        dw      XT_LIT                                                          ; $4AE2 execution token
        dw      $FFF2                                                           ; $4AE4 inline word
        dw      $2BBB                                                           ; $4AE6 execution token
        dw      XT_LITbyte                                                      ; $4AE8 execution token
        db      $0A                                                             ; $4AEA inline byte
        dw      $2BA8                                                           ; $4AEB execution token
        dw      XT_LIT                                                          ; $4AED execution token
        dw      $F2FD                                                           ; $4AEF inline word
        dw      XT_DUP                                                          ; $4AF1 execution token
        dw      XT_1plusBbang                                                   ; $4AF3 execution token
        dw      XT_Bat                                                          ; $4AF5 execution token
        dw      XT_1                                                            ; $4AF7 execution token
        dw      XT_gt                                                           ; $4AF9 execution token
        dw      XT_0BRANCH                                                      ; $4AFB execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1_R                             ; $4AFD branch target
        dw      XT_LIT                                                          ; $4AFF execution token
        dw      $F2FD                                                           ; $4B01 inline word
        dw      XT_BZERO                                                        ; $4B03 execution token
        dw      XT_LIT                                                          ; $4B05 execution token
        dw      $F2FC                                                           ; $4B07 inline word
        dw      XT_Bat                                                          ; $4B09 execution token
        dw      XT_BARRAY                                                       ; $4B0B execution token
        dw      $4A69                                                           ; $4B0D inline word
        dw      XT_Bat                                                          ; $4B0F execution token
        dw      $2AF2                                                           ; $4B11 execution token
        dw      XT_LIT                                                          ; $4B13 execution token
        dw      $F2FC                                                           ; $4B15 inline word
        dw      XT_DUP                                                          ; $4B17 execution token
        dw      XT_1plusBbang                                                   ; $4B19 execution token
        dw      XT_Bat                                                          ; $4B1B execution token
        dw      XT_LITbyte                                                      ; $4B1D execution token
        db      $07                                                             ; $4B1F inline byte
        dw      XT_gt                                                           ; $4B20 execution token
        dw      XT_0BRANCH                                                      ; $4B22 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1_R                             ; $4B24 branch target
        dw      XT_LIT                                                          ; $4B26 execution token
        dw      $F2FC                                                           ; $4B28 inline word
        dw      XT_BZERO                                                        ; $4B2A execution token
        dw      $2B8C                                                           ; $4B2C execution token
        dw      XT_RETURN                                                       ; $4B2E execution token

VISUAL_PROGRESSION_CORRECT_LOOP_2:
        rst     $08                                                             ; $4B30 colon entry
        dw      XT_1                                                            ; $4B31 execution token
        dw      XT_LIT                                                          ; $4B33 execution token
        dw      $FD3D                                                           ; $4B35 inline word
        dw      $2BEF                                                           ; $4B37 execution token
        dw      XT_LIT                                                          ; $4B39 execution token
        dw      $F2FB                                                           ; $4B3B inline word
        dw      XT_BZERO                                                        ; $4B3D execution token
        dw      XT_LITbyte                                                      ; $4B3F execution token
        db      $06                                                             ; $4B41 inline byte
        dw      XT_LITbyte                                                      ; $4B42 execution token
        db      $46                                                             ; $4B44 inline byte
        dw      $2B2E                                                           ; $4B45 execution token
        dw      XT_LITbyte                                                      ; $4B47 execution token
        db      $30                                                             ; $4B49 inline byte
        dw      $2AF2                                                           ; $4B4A execution token
        dw      XT_LIT                                                          ; $4B4C execution token
        dw      QUESTION_BANK_BASE                                              ; $4B4E inline word
        dw      XT_LIT                                                          ; $4B50 execution token
        dw      QUESTION_BANK_BASE                                              ; $4B52 inline word
        dw      XT_LIT                                                          ; $4B54 execution token
        dw      QUESTION_BANK_BASE                                              ; $4B56 inline word
        dw      $2B71                                                           ; $4B58 execution token
VISUAL_PROGRESSION_CORRECT_LOOP_2_R:
        dw      XT_LITbyte                                                      ; $4B5A execution token
        db      $06                                                             ; $4B5C inline byte
        dw      XT_LITbyte                                                      ; $4B5D execution token
        db      $46                                                             ; $4B5F inline byte
        dw      $2B2E                                                           ; $4B60 execution token
        dw      XT_LIT                                                          ; $4B62 execution token
        dw      $F2FB                                                           ; $4B64 inline word
        dw      XT_Bat                                                          ; $4B66 execution token
        dw      XT_BARRAY                                                       ; $4B68 execution token
        dw      $4A63                                                           ; $4B6A inline word
        dw      XT_Bat                                                          ; $4B6C execution token
        dw      XT_LIT                                                          ; $4B6E execution token
        dw      $F2FB                                                           ; $4B70 inline word
        dw      XT_Bat                                                          ; $4B72 execution token
        dw      XT_BARRAY                                                       ; $4B74 execution token
        dw      $4A65                                                           ; $4B76 inline word
        dw      XT_Bat                                                          ; $4B78 execution token
        dw      XT_LIT                                                          ; $4B7A execution token
        dw      $F2FB                                                           ; $4B7C inline word
        dw      XT_Bat                                                          ; $4B7E execution token
        dw      XT_BARRAY                                                       ; $4B80 execution token
        dw      $4A67                                                           ; $4B82 inline word
        dw      XT_Bat                                                          ; $4B84 execution token
        dw      $2B71                                                           ; $4B86 execution token
        dw      XT_1                                                            ; $4B88 execution token
        dw      XT_LITbyte                                                      ; $4B8A execution token
        db      $02                                                             ; $4B8C inline byte
        dw      XT_LITbyte                                                      ; $4B8D execution token
        db      $03                                                             ; $4B8F inline byte
        dw      XT_LIT                                                          ; $4B90 execution token
        dw      $FFFD                                                           ; $4B92 inline word
        dw      XT_0                                                            ; $4B94 execution token
        dw      XT_LITbyte                                                      ; $4B96 execution token
        db      $0F                                                             ; $4B98 inline byte
        dw      XT_LIT                                                          ; $4B99 execution token
        dw      $FFF2                                                           ; $4B9B inline word
        dw      $2BBB                                                           ; $4B9D execution token
        dw      XT_LITbyte                                                      ; $4B9F execution token
        db      $0A                                                             ; $4BA1 inline byte
        dw      $2BA8                                                           ; $4BA2 execution token
        dw      XT_LIT                                                          ; $4BA4 execution token
        dw      $F2FB                                                           ; $4BA6 inline word
        dw      XT_DUP                                                          ; $4BA8 execution token
        dw      XT_1plusBbang                                                   ; $4BAA execution token
        dw      XT_Bat                                                          ; $4BAC execution token
        dw      XT_1                                                            ; $4BAE execution token
        dw      XT_gt                                                           ; $4BB0 execution token
        dw      XT_0BRANCH                                                      ; $4BB2 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2_R                             ; $4BB4 branch target
        dw      XT_LIT                                                          ; $4BB6 execution token
        dw      $F2FB                                                           ; $4BB8 inline word
        dw      XT_BZERO                                                        ; $4BBA execution token
        dw      XT_LIT                                                          ; $4BBC execution token
        dw      $F2FA                                                           ; $4BBE inline word
        dw      XT_Bat                                                          ; $4BC0 execution token
        dw      XT_BARRAY                                                       ; $4BC2 execution token
        dw      $4A69                                                           ; $4BC4 inline word
        dw      XT_Bat                                                          ; $4BC6 execution token
        dw      $2AF2                                                           ; $4BC8 execution token
        dw      XT_LIT                                                          ; $4BCA execution token
        dw      $F2FA                                                           ; $4BCC inline word
        dw      XT_DUP                                                          ; $4BCE execution token
        dw      XT_1plusBbang                                                   ; $4BD0 execution token
        dw      XT_Bat                                                          ; $4BD2 execution token
        dw      XT_LITbyte                                                      ; $4BD4 execution token
        db      $07                                                             ; $4BD6 inline byte
        dw      XT_gt                                                           ; $4BD7 execution token
        dw      XT_0BRANCH                                                      ; $4BD9 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2_R                             ; $4BDB branch target
        dw      XT_LIT                                                          ; $4BDD execution token
        dw      $F2FA                                                           ; $4BDF inline word
        dw      XT_BZERO                                                        ; $4BE1 execution token
        dw      $2B8C                                                           ; $4BE3 execution token
        dw      XT_RETURN                                                       ; $4BE5 execution token

VISUAL_PROGRESSION_CORRECT_THREAD:
        rst     $08                                                             ; $4BE7 colon entry
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1                               ; $4BE8 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2                               ; $4BEA execution token
        dw      XT_RETURN                                                       ; $4BEC execution token

IMAGE_MIRROR_DIST_THREAD_1:
        rst     $08                                                             ; $4BEE colon entry
        dw      XT_0                                                            ; $4BEF execution token
        dw      XT_LIT                                                          ; $4BF1 execution token
        dw      $FD6D                                                           ; $4BF3 inline word
        dw      $2BEF                                                           ; $4BF5 execution token
        dw      $3FEA                                                           ; $4BF7 execution token
        dw      XT_LITbyte                                                      ; $4BF9 execution token
        db      $18                                                             ; $4BFB inline byte
        dw      $2BA8                                                           ; $4BFC execution token
        dw      XT_LITbyte                                                      ; $4BFE execution token
        db      $30                                                             ; $4C00 inline byte
        dw      $2AF2                                                           ; $4C01 execution token
        dw      XT_LITbyte                                                      ; $4C03 execution token
        db      $3F                                                             ; $4C05 inline byte
        dw      XT_LIT                                                          ; $4C06 execution token
        dw      $00FF                                                           ; $4C08 inline word
        dw      $2B2E                                                           ; $4C0A execution token
        dw      XT_LIT                                                          ; $4C0C execution token
        dw      QUESTION_BANK_BASE                                              ; $4C0E inline word
        dw      $2B01                                                           ; $4C10 execution token
        dw      XT_1                                                            ; $4C12 execution token
        dw      XT_1                                                            ; $4C14 execution token
        dw      XT_LITbyte                                                      ; $4C16 execution token
        db      $03                                                             ; $4C18 inline byte
        dw      XT_LIT                                                          ; $4C19 execution token
        dw      $FFFD                                                           ; $4C1B inline word
        dw      XT_0                                                            ; $4C1D execution token
        dw      XT_LITbyte                                                      ; $4C1F execution token
        db      $0F                                                             ; $4C21 inline byte
        dw      XT_LIT                                                          ; $4C22 execution token
        dw      $FFF2                                                           ; $4C24 inline word
        dw      $2BBB                                                           ; $4C26 execution token
        dw      XT_LITbyte                                                      ; $4C28 execution token
        db      $0B                                                             ; $4C2A inline byte
        dw      $2BA8                                                           ; $4C2B execution token
        dw      XT_LITbyte                                                      ; $4C2D execution token
        db      $00                                                             ; $4C2F inline byte
        dw      XT_LITbyte                                                      ; $4C30 execution token
        db      $00                                                             ; $4C32 inline byte
        dw      $2B2E                                                           ; $4C33 execution token
        dw      XT_LITbyte                                                      ; $4C35 execution token
        db      $03                                                             ; $4C37 inline byte
        dw      $2BA8                                                           ; $4C38 execution token
        dw      XT_LITbyte                                                      ; $4C3A execution token
        db      $30                                                             ; $4C3C inline byte
        dw      $2B01                                                           ; $4C3D execution token
        dw      XT_LITbyte                                                      ; $4C3F execution token
        db      $3F                                                             ; $4C41 inline byte
        dw      XT_LIT                                                          ; $4C42 execution token
        dw      $00FF                                                           ; $4C44 inline word
        dw      $2B2E                                                           ; $4C46 execution token
        dw      XT_1                                                            ; $4C48 execution token
        dw      XT_1                                                            ; $4C4A execution token
        dw      XT_LITbyte                                                      ; $4C4C execution token
        db      $03                                                             ; $4C4E inline byte
        dw      XT_LIT                                                          ; $4C4F execution token
        dw      $FFFD                                                           ; $4C51 inline word
        dw      XT_0                                                            ; $4C53 execution token
        dw      XT_LITbyte                                                      ; $4C55 execution token
        db      $0F                                                             ; $4C57 inline byte
        dw      XT_LIT                                                          ; $4C58 execution token
        dw      $FFF2                                                           ; $4C5A inline word
        dw      $2BBB                                                           ; $4C5C execution token
        dw      XT_LITbyte                                                      ; $4C5E execution token
        db      $0B                                                             ; $4C60 inline byte
        dw      $2BA8                                                           ; $4C61 execution token
        dw      XT_LITbyte                                                      ; $4C63 execution token
        db      $00                                                             ; $4C65 inline byte
        dw      XT_LITbyte                                                      ; $4C66 execution token
        db      $00                                                             ; $4C68 inline byte
        dw      $2B2E                                                           ; $4C69 execution token
        dw      XT_LITbyte                                                      ; $4C6B execution token
        db      $03                                                             ; $4C6D inline byte
        dw      $2BA8                                                           ; $4C6E execution token
        dw      XT_LITbyte                                                      ; $4C70 execution token
        db      $20                                                             ; $4C72 inline byte
        dw      $2B01                                                           ; $4C73 execution token
        dw      XT_LITbyte                                                      ; $4C75 execution token
        db      $3F                                                             ; $4C77 inline byte
        dw      XT_LIT                                                          ; $4C78 execution token
        dw      $00FF                                                           ; $4C7A inline word
        dw      $2B2E                                                           ; $4C7C execution token
        dw      XT_1                                                            ; $4C7E execution token
        dw      XT_1                                                            ; $4C80 execution token
        dw      XT_LITbyte                                                      ; $4C82 execution token
        db      $03                                                             ; $4C84 inline byte
        dw      XT_LIT                                                          ; $4C85 execution token
        dw      $FFFD                                                           ; $4C87 inline word
        dw      XT_0                                                            ; $4C89 execution token
        dw      XT_LITbyte                                                      ; $4C8B execution token
        db      $0F                                                             ; $4C8D inline byte
        dw      XT_LIT                                                          ; $4C8E execution token
        dw      $FFF2                                                           ; $4C90 inline word
        dw      $2BBB                                                           ; $4C92 execution token
        dw      XT_LITbyte                                                      ; $4C94 execution token
        db      $0B                                                             ; $4C96 inline byte
        dw      $2BA8                                                           ; $4C97 execution token
        dw      XT_LITbyte                                                      ; $4C99 execution token
        db      $00                                                             ; $4C9B inline byte
        dw      XT_LITbyte                                                      ; $4C9C execution token
        db      $00                                                             ; $4C9E inline byte
        dw      $2B2E                                                           ; $4C9F execution token
        dw      XT_LITbyte                                                      ; $4CA1 execution token
        db      $03                                                             ; $4CA3 inline byte
        dw      $2BA8                                                           ; $4CA4 execution token
        dw      $3EAD                                                           ; $4CA6 execution token
        dw      XT_LITbyte                                                      ; $4CA8 execution token
        db      $18                                                             ; $4CAA inline byte
        dw      $2BA8                                                           ; $4CAB execution token
        dw      $2B8C                                                           ; $4CAD execution token
        dw      XT_RETURN                                                       ; $4CAF execution token

IMAGE_MIRROR_DIST_THREAD_2:
        rst     $08                                                             ; $4CB1 colon entry
        dw      XT_0                                                            ; $4CB2 execution token
        dw      XT_LIT                                                          ; $4CB4 execution token
        dw      $FD3D                                                           ; $4CB6 inline word
        dw      $2BEF                                                           ; $4CB8 execution token
        dw      $3FEA                                                           ; $4CBA execution token
        dw      XT_LITbyte                                                      ; $4CBC execution token
        db      $03                                                             ; $4CBE inline byte
        dw      $2BA8                                                           ; $4CBF execution token
        dw      $3FEA                                                           ; $4CC1 execution token
        dw      XT_LITbyte                                                      ; $4CC3 execution token
        db      $18                                                             ; $4CC5 inline byte
        dw      $2BA8                                                           ; $4CC6 execution token
        dw      XT_LITbyte                                                      ; $4CC8 execution token
        db      $30                                                             ; $4CCA inline byte
        dw      $2AF2                                                           ; $4CCB execution token
        dw      XT_LITbyte                                                      ; $4CCD execution token
        db      $3F                                                             ; $4CCF inline byte
        dw      XT_LIT                                                          ; $4CD0 execution token
        dw      $00FF                                                           ; $4CD2 inline word
        dw      $2B2E                                                           ; $4CD4 execution token
        dw      XT_LIT                                                          ; $4CD6 execution token
        dw      QUESTION_BANK_BASE                                              ; $4CD8 inline word
        dw      $2B01                                                           ; $4CDA execution token
        dw      XT_1                                                            ; $4CDC execution token
        dw      XT_1                                                            ; $4CDE execution token
        dw      XT_LITbyte                                                      ; $4CE0 execution token
        db      $03                                                             ; $4CE2 inline byte
        dw      XT_LIT                                                          ; $4CE3 execution token
        dw      $FFFD                                                           ; $4CE5 inline word
        dw      XT_0                                                            ; $4CE7 execution token
        dw      XT_LITbyte                                                      ; $4CE9 execution token
        db      $0F                                                             ; $4CEB inline byte
        dw      XT_LIT                                                          ; $4CEC execution token
        dw      $FFF2                                                           ; $4CEE inline word
        dw      $2BBB                                                           ; $4CF0 execution token
        dw      XT_LITbyte                                                      ; $4CF2 execution token
        db      $0B                                                             ; $4CF4 inline byte
        dw      $2BA8                                                           ; $4CF5 execution token
        dw      XT_LITbyte                                                      ; $4CF7 execution token
        db      $00                                                             ; $4CF9 inline byte
        dw      XT_LITbyte                                                      ; $4CFA execution token
        db      $00                                                             ; $4CFC inline byte
        dw      $2B2E                                                           ; $4CFD execution token
        dw      XT_LITbyte                                                      ; $4CFF execution token
        db      $03                                                             ; $4D01 inline byte
        dw      $2BA8                                                           ; $4D02 execution token
        dw      XT_LITbyte                                                      ; $4D04 execution token
        db      $30                                                             ; $4D06 inline byte
        dw      $2B01                                                           ; $4D07 execution token
        dw      XT_LITbyte                                                      ; $4D09 execution token
        db      $3F                                                             ; $4D0B inline byte
        dw      XT_LIT                                                          ; $4D0C execution token
        dw      $00FF                                                           ; $4D0E inline word
        dw      $2B2E                                                           ; $4D10 execution token
        dw      XT_1                                                            ; $4D12 execution token
        dw      XT_1                                                            ; $4D14 execution token
        dw      XT_LITbyte                                                      ; $4D16 execution token
        db      $03                                                             ; $4D18 inline byte
        dw      XT_LIT                                                          ; $4D19 execution token
        dw      $FFFD                                                           ; $4D1B inline word
        dw      XT_0                                                            ; $4D1D execution token
        dw      XT_LITbyte                                                      ; $4D1F execution token
        db      $0F                                                             ; $4D21 inline byte
        dw      XT_LIT                                                          ; $4D22 execution token
        dw      $FFF2                                                           ; $4D24 inline word
        dw      $2BBB                                                           ; $4D26 execution token
        dw      XT_LITbyte                                                      ; $4D28 execution token
        db      $0B                                                             ; $4D2A inline byte
        dw      $2BA8                                                           ; $4D2B execution token
        dw      XT_LITbyte                                                      ; $4D2D execution token
        db      $00                                                             ; $4D2F inline byte
        dw      XT_LITbyte                                                      ; $4D30 execution token
        db      $00                                                             ; $4D32 inline byte
        dw      $2B2E                                                           ; $4D33 execution token
        dw      XT_LITbyte                                                      ; $4D35 execution token
        db      $03                                                             ; $4D37 inline byte
        dw      $2BA8                                                           ; $4D38 execution token
        dw      XT_LITbyte                                                      ; $4D3A execution token
        db      $20                                                             ; $4D3C inline byte
        dw      $2B01                                                           ; $4D3D execution token
        dw      XT_LITbyte                                                      ; $4D3F execution token
        db      $3F                                                             ; $4D41 inline byte
        dw      XT_LIT                                                          ; $4D42 execution token
        dw      $00FF                                                           ; $4D44 inline word
        dw      $2B2E                                                           ; $4D46 execution token
        dw      XT_1                                                            ; $4D48 execution token
        dw      XT_1                                                            ; $4D4A execution token
        dw      XT_LITbyte                                                      ; $4D4C execution token
        db      $03                                                             ; $4D4E inline byte
        dw      XT_LIT                                                          ; $4D4F execution token
        dw      $FFFD                                                           ; $4D51 inline word
        dw      XT_0                                                            ; $4D53 execution token
        dw      XT_LITbyte                                                      ; $4D55 execution token
        db      $0F                                                             ; $4D57 inline byte
        dw      XT_LIT                                                          ; $4D58 execution token
        dw      $FFF2                                                           ; $4D5A inline word
        dw      $2BBB                                                           ; $4D5C execution token
        dw      XT_LITbyte                                                      ; $4D5E execution token
        db      $0B                                                             ; $4D60 inline byte
        dw      $2BA8                                                           ; $4D61 execution token
        dw      XT_LITbyte                                                      ; $4D63 execution token
        db      $00                                                             ; $4D65 inline byte
        dw      XT_LITbyte                                                      ; $4D66 execution token
        db      $00                                                             ; $4D68 inline byte
        dw      $2B2E                                                           ; $4D69 execution token
        dw      XT_LITbyte                                                      ; $4D6B execution token
        db      $03                                                             ; $4D6D inline byte
        dw      $2BA8                                                           ; $4D6E execution token
        dw      $3EAD                                                           ; $4D70 execution token
        dw      XT_LITbyte                                                      ; $4D72 execution token
        db      $18                                                             ; $4D74 inline byte
        dw      $2BA8                                                           ; $4D75 execution token
        dw      $2B8C                                                           ; $4D77 execution token
        dw      XT_RETURN                                                       ; $4D79 execution token

IMAGE_MIRROR_DIST_THREAD_3:
        rst     $08                                                             ; $4D7B colon entry
        dw      IMAGE_MIRROR_DIST_THREAD_1                                      ; $4D7C execution token
        dw      IMAGE_MIRROR_DIST_THREAD_2                                      ; $4D7E execution token
        dw      XT_RETURN                                                       ; $4D80 execution token
TABLE_MEMORY_CORRECT_LOOP_1:
        rst     $08                                                             ; $4D82 colon entry
        dw      XT_0                                                            ; $4D83 execution token
        dw      XT_LIT                                                          ; $4D85 execution token
        dw      $FD6D                                                           ; $4D87 inline word
        dw      $2BEF                                                           ; $4D89 execution token
        dw      XT_LIT                                                          ; $4D8B execution token
        dw      $F2F8                                                           ; $4D8D inline word
        dw      XT_BZERO                                                        ; $4D8F execution token
        dw      XT_LIT                                                          ; $4D91 execution token
        dw      $F2F9                                                           ; $4D93 inline word
        dw      XT_BZERO                                                        ; $4D95 execution token
        dw      XT_LITbyte                                                      ; $4D97 execution token
        db      $30                                                             ; $4D99 inline byte
        dw      $2AF2                                                           ; $4D9A execution token
        dw      XT_LITbyte                                                      ; $4D9C execution token
        db      $00                                                             ; $4D9E inline byte
        dw      XT_LIT                                                          ; $4D9F execution token
        dw      $00B8                                                           ; $4DA1 inline word
        dw      $2B2E                                                           ; $4DA3 execution token
TABLE_MEMORY_CORRECT_LOOP_1_R:
        dw      XT_LIT                                                          ; $4DA5 execution token
        dw      $F2F8                                                           ; $4DA7 inline word
        dw      XT_Bat                                                          ; $4DA9 execution token
        dw      XT_BARRAY                                                       ; $4DAB execution token
        dw      $8427                                                           ; $4DAD inline word
        dw      XT_Bat                                                          ; $4DAF execution token
        dw      $2B44                                                           ; $4DB1 execution token
        dw      XT_LIT                                                          ; $4DB3 execution token
        dw      $F2F8                                                           ; $4DB5 inline word
        dw      XT_Bat                                                          ; $4DB7 execution token
        dw      XT_BARRAY                                                       ; $4DB9 execution token
        dw      $8430                                                           ; $4DBB inline word
        dw      XT_Bat                                                          ; $4DBD execution token
        dw      $2B53                                                           ; $4DBF execution token
        dw      XT_LITbyte                                                      ; $4DC1 execution token
        db      $02                                                             ; $4DC3 inline byte
        dw      $2BA8                                                           ; $4DC4 execution token
        dw      XT_LIT                                                          ; $4DC6 execution token
        dw      $F2F8                                                           ; $4DC8 inline word
        dw      XT_DUP                                                          ; $4DCA execution token
        dw      XT_1plusBbang                                                   ; $4DCC execution token
        dw      XT_Bat                                                          ; $4DCE execution token
        dw      XT_LITbyte                                                      ; $4DD0 execution token
        db      $08                                                             ; $4DD2 inline byte
        dw      XT_gt                                                           ; $4DD3 execution token
        dw      XT_0BRANCH                                                      ; $4DD5 execution token
        dw      TABLE_MEMORY_CORRECT_LOOP_1_R                                   ; $4DD7 branch target
        dw      XT_LIT                                                          ; $4DD9 execution token
        dw      $F2F8                                                           ; $4DDB inline word
        dw      XT_BZERO                                                        ; $4DDD execution token
        dw      XT_LIT                                                          ; $4DDF execution token
        dw      $F2F9                                                           ; $4DE1 inline word
        dw      XT_DUP                                                          ; $4DE3 execution token
        dw      XT_1plusBbang                                                   ; $4DE5 execution token
        dw      XT_Bat                                                          ; $4DE7 execution token
        dw      XT_LITbyte                                                      ; $4DE9 execution token
        db      $0A                                                             ; $4DEB inline byte
        dw      XT_gt                                                           ; $4DEC execution token
        dw      XT_0BRANCH                                                      ; $4DEE execution token
        dw      TABLE_MEMORY_CORRECT_LOOP_1_R                                   ; $4DF0 branch target
        dw      XT_LIT                                                          ; $4DF2 execution token
        dw      $F2F9                                                           ; $4DF4 inline word
        dw      XT_BZERO                                                        ; $4DF6 execution token
        dw      $2B8C                                                           ; $4DF8 execution token
        dw      XT_RETURN                                                       ; $4DFA execution token

TABLE_MEMORY_CORRECT_LOOP_2:
        rst     $08                                                             ; $4DFC colon entry
        dw      XT_0                                                            ; $4DFD execution token
        dw      XT_LIT                                                          ; $4DFF execution token
        dw      $FD3D                                                           ; $4E01 inline word
        dw      $2BEF                                                           ; $4E03 execution token
        dw      XT_LIT                                                          ; $4E05 execution token
        dw      $F2F6                                                           ; $4E07 inline word
        dw      XT_BZERO                                                        ; $4E09 execution token
        dw      XT_LIT                                                          ; $4E0B execution token
        dw      $F2F7                                                           ; $4E0D inline word
        dw      XT_BZERO                                                        ; $4E0F execution token
        dw      XT_LITbyte                                                      ; $4E11 execution token
        db      $30                                                             ; $4E13 inline byte
        dw      $2AF2                                                           ; $4E14 execution token
        dw      XT_LITbyte                                                      ; $4E16 execution token
        db      $00                                                             ; $4E18 inline byte
        dw      XT_LIT                                                          ; $4E19 execution token
        dw      $00B8                                                           ; $4E1B inline word
        dw      $2B2E                                                           ; $4E1D execution token
TABLE_MEMORY_CORRECT_LOOP_2_R:
        dw      XT_LIT                                                          ; $4E1F execution token
        dw      $F2F6                                                           ; $4E21 inline word
        dw      XT_Bat                                                          ; $4E23 execution token
        dw      XT_BARRAY                                                       ; $4E25 execution token
        dw      $8427                                                           ; $4E27 inline word
        dw      XT_Bat                                                          ; $4E29 execution token
        dw      $2B44                                                           ; $4E2B execution token
        dw      XT_LIT                                                          ; $4E2D execution token
        dw      $F2F6                                                           ; $4E2F inline word
        dw      XT_Bat                                                          ; $4E31 execution token
        dw      XT_BARRAY                                                       ; $4E33 execution token
        dw      $8430                                                           ; $4E35 inline word
        dw      XT_Bat                                                          ; $4E37 execution token
        dw      $2B53                                                           ; $4E39 execution token
        dw      XT_LITbyte                                                      ; $4E3B execution token
        db      $02                                                             ; $4E3D inline byte
        dw      $2BA8                                                           ; $4E3E execution token
        dw      XT_LIT                                                          ; $4E40 execution token
        dw      $F2F6                                                           ; $4E42 inline word
        dw      XT_DUP                                                          ; $4E44 execution token
        dw      XT_1plusBbang                                                   ; $4E46 execution token
        dw      XT_Bat                                                          ; $4E48 execution token
        dw      XT_LITbyte                                                      ; $4E4A execution token
        db      $08                                                             ; $4E4C inline byte
        dw      XT_gt                                                           ; $4E4D execution token
        dw      XT_0BRANCH                                                      ; $4E4F execution token
        dw      TABLE_MEMORY_CORRECT_LOOP_2_R                                   ; $4E51 branch target
        dw      XT_LIT                                                          ; $4E53 execution token
        dw      $F2F6                                                           ; $4E55 inline word
        dw      XT_BZERO                                                        ; $4E57 execution token
        dw      XT_LIT                                                          ; $4E59 execution token
        dw      $F2F7                                                           ; $4E5B inline word
        dw      XT_DUP                                                          ; $4E5D execution token
        dw      XT_1plusBbang                                                   ; $4E5F execution token
        dw      XT_Bat                                                          ; $4E61 execution token
        dw      XT_LITbyte                                                      ; $4E63 execution token
        db      $0A                                                             ; $4E65 inline byte
        dw      XT_gt                                                           ; $4E66 execution token
        dw      XT_0BRANCH                                                      ; $4E68 execution token
        dw      TABLE_MEMORY_CORRECT_LOOP_2_R                                   ; $4E6A branch target
        dw      XT_LIT                                                          ; $4E6C execution token
        dw      $F2F7                                                           ; $4E6E inline word
        dw      XT_BZERO                                                        ; $4E70 execution token
        dw      $2B8C                                                           ; $4E72 execution token
        dw      XT_RETURN                                                       ; $4E74 execution token

TABLE_MEMORY_CORRECT_THREAD:
        rst     $08                                                             ; $4E76 colon entry
        dw      TABLE_MEMORY_CORRECT_LOOP_1                                     ; $4E77 execution token
        dw      TABLE_MEMORY_CORRECT_LOOP_2                                     ; $4E79 execution token
        dw      XT_RETURN                                                       ; $4E7B execution token

        db      $0F,$0F,$08,$1F,$00                                             ; $4E7D preserved bytes
        db      $00,$03,$FF,$FF,$00,$00,$00,$00,$00,$3F,$00,$03,$F0,$00,$00,$00 ; $4E82
        db      $03,$C0,$00,$00,$0F,$00,$00,$00,$0F,$00,$00,$00,$03,$C0,$00,$00 ; $4E92
        db      $F0,$00,$00,$00,$00,$3C,$00,$00,$C0,$00,$00,$00,$00,$0C,$00,$03 ; $4EA2
        db      $00,$00,$00,$00,$00,$03,$00,$0F,$00,$00,$00,$00,$00,$03,$C0,$0C ; $4EB2
        db      $00,$00,$00,$00,$00,$00,$C0,$30,$00,$00,$00,$00,$00,$00,$30,$30 ; $4EC2
        db      $00,$00,$00,$00,$00,$00,$30,$F0,$00,$00,$00,$00,$00,$00,$3C,$C0 ; $4ED2
        db      $00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0 ; $4EE2
        db      $00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0 ; $4EF2
        db      $00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0 ; $4F02
        db      $00,$00,$00,$00,$00,$00,$0C,$F0,$00,$00,$00,$00,$00,$00,$3C,$30 ; $4F12
        db      $00,$00,$00,$00,$00,$00,$30,$30,$00,$00,$00,$00,$00,$00,$30,$0C ; $4F22
        db      $00,$00,$00,$00,$00,$00,$C0,$0F,$00,$00,$00,$00,$00,$03,$C0,$03 ; $4F32
        db      $00,$00,$00,$00,$00,$03,$00,$00,$C0,$00,$00,$00,$00,$0C,$00,$00 ; $4F42
        db      $F0,$00,$00,$00,$00,$3C,$00,$00,$0F,$00,$00,$00,$03,$C0,$00,$00 ; $4F52
        db      $03,$C0,$00,$00,$0F,$00,$00,$00,$00,$3F,$00,$03,$F0,$00,$00,$00 ; $4F62
        db      $00,$03,$FF,$FF,$00,$00,$00,$0F,$0F,$08,$1F,$00,$00,$03,$FF,$FF ; $4F72
        db      $00,$00,$00,$00,$00,$3F,$00,$03,$F0,$00,$00,$00,$03,$C0,$00,$00 ; $4F82
        db      $0F,$00,$00,$00,$0F,$00,$00,$00,$03,$C0,$00,$00,$F0,$00,$00,$00 ; $4F92
        db      $00,$3C,$00,$00,$C0,$00,$00,$00,$00,$0C,$00,$03,$00,$00,$00,$00 ; $4FA2
        db      $00,$03,$00,$0F,$00,$00,$00,$00,$00,$03,$C0,$0C,$0F,$FF,$FF,$FF ; $4FB2
        db      $FF,$C0,$C0,$30,$00,$00,$00,$00,$00,$00,$30,$30,$00,$00,$00,$00 ; $4FC2
        db      $00,$00,$30,$F0,$00,$00,$00,$00,$00,$00,$3C,$C0,$00,$00,$00,$00 ; $4FD2
        db      $00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00 ; $4FE2
        db      $00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00 ; $4FF2
        db      $00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$00 ; $5002
        db      $00,$00,$0C,$F0,$00,$00,$00,$00,$00,$00,$3C,$30,$00,$00,$00,$00 ; $5012
        db      $00,$00,$30,$30,$00,$00,$00,$00,$00,$00,$30,$0C,$00,$00,$00,$00 ; $5022
        db      $00,$00,$C0,$0F,$00,$00,$00,$00,$00,$03,$C0,$03,$00,$00,$00,$00 ; $5032
        db      $00,$03,$00,$00,$C0,$00,$00,$00,$00,$0C,$00,$00,$F0,$00,$00,$00 ; $5042
        db      $00,$3C,$00,$00,$0F,$00,$00,$00,$03,$C0,$00,$00,$03,$C0,$00,$00 ; $5052
        db      $0F,$00,$00,$00,$00,$3F,$00,$03,$F0,$00,$00,$00,$00,$03,$FF,$FF ; $5062
        db      $00,$00,$00,$0F,$12,$08,$25,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5072
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5082
        db      $00,$03,$FF,$FF,$00,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00 ; $5092
        db      $03,$C0,$03,$00,$0F,$00,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00 ; $50A2
        db      $F0,$00,$03,$00,$00,$3C,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$03 ; $50B2
        db      $00,$00,$03,$00,$00,$03,$00,$0F,$00,$00,$03,$00,$00,$03,$C0,$0C ; $50C2
        db      $00,$00,$03,$00,$00,$00,$C0,$30,$00,$00,$03,$00,$00,$00,$30,$30 ; $50D2
        db      $00,$00,$03,$00,$00,$00,$30,$F0,$00,$00,$03,$00,$00,$00,$3C,$C0 ; $50E2
        db      $00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0 ; $50F2
        db      $00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0 ; $5102
        db      $00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0 ; $5112
        db      $00,$00,$03,$00,$00,$00,$0C,$F0,$00,$00,$03,$00,$00,$00,$3C,$30 ; $5122
        db      $00,$00,$03,$00,$00,$00,$30,$30,$00,$00,$03,$00,$00,$00,$30,$0C ; $5132
        db      $00,$00,$03,$00,$00,$00,$C0,$0F,$00,$00,$03,$00,$00,$03,$C0,$03 ; $5142
        db      $00,$00,$03,$00,$00,$03,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$00 ; $5152
        db      $F0,$00,$03,$00,$00,$3C,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00 ; $5162
        db      $03,$C0,$03,$00,$0F,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00 ; $5172
        db      $00,$03,$FF,$FF,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5182
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$0F ; $5192
        db      $12,$08,$25,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00 ; $51A2
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$FF,$FF ; $51B2
        db      $00,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00,$03,$C0,$03,$00 ; $51C2
        db      $0F,$00,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00,$F0,$00,$03,$00 ; $51D2
        db      $00,$3C,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$03,$00,$00,$03,$00 ; $51E2
        db      $00,$03,$00,$0F,$00,$00,$03,$00,$00,$03,$C0,$0C,$0F,$FF,$FF,$FF ; $51F2
        db      $FF,$C0,$C0,$30,$00,$00,$03,$00,$00,$00,$30,$30,$00,$00,$03,$00 ; $5202
        db      $00,$00,$30,$F0,$00,$00,$03,$00,$00,$00,$3C,$C0,$00,$00,$03,$00 ; $5212
        db      $00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00 ; $5222
        db      $00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00 ; $5232
        db      $00,$00,$0C,$C0,$00,$00,$03,$00,$00,$00,$0C,$C0,$00,$00,$03,$00 ; $5242
        db      $00,$00,$0C,$F0,$00,$00,$03,$00,$00,$00,$3C,$30,$00,$00,$03,$00 ; $5252
        db      $00,$00,$30,$30,$00,$00,$03,$00,$00,$00,$30,$0C,$00,$00,$03,$00 ; $5262
        db      $00,$00,$C0,$0F,$00,$00,$03,$00,$00,$03,$C0,$03,$00,$00,$03,$00 ; $5272
        db      $00,$03,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$00,$F0,$00,$03,$00 ; $5282
        db      $00,$3C,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00,$03,$C0,$03,$00 ; $5292
        db      $0F,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00,$00,$03,$FF,$FF ; $52A2
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00 ; $52B2
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$0F,$12,$08,$25,$00 ; $52C2
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $52D2
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$FF,$FF,$00,$00,$00,$00 ; $52E2
        db      $00,$3F,$03,$03,$F0,$00,$00,$00,$03,$C0,$03,$00,$0F,$00,$00,$00 ; $52F2
        db      $0F,$00,$03,$00,$03,$C0,$00,$00,$F0,$00,$03,$00,$00,$3C,$00,$00 ; $5302
        db      $C0,$00,$03,$00,$00,$0C,$00,$03,$00,$00,$03,$00,$00,$03,$00,$0F ; $5312
        db      $00,$00,$03,$00,$00,$03,$C0,$0C,$0F,$FF,$FF,$FF,$FF,$C0,$C0,$30 ; $5322
        db      $0C,$00,$03,$00,$00,$00,$30,$30,$0C,$00,$03,$00,$00,$00,$30,$F0 ; $5332
        db      $0C,$00,$03,$00,$00,$00,$3C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0 ; $5342
        db      $0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0 ; $5352
        db      $0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0 ; $5362
        db      $0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$F0 ; $5372
        db      $0C,$00,$03,$00,$00,$00,$3C,$30,$0C,$00,$03,$00,$00,$00,$30,$30 ; $5382
        db      $0C,$00,$03,$00,$00,$00,$30,$0C,$0C,$00,$03,$00,$00,$00,$C0,$0F ; $5392
        db      $00,$00,$03,$00,$00,$03,$C0,$03,$00,$00,$03,$00,$00,$03,$00,$00 ; $53A2
        db      $C0,$00,$03,$00,$00,$0C,$00,$00,$F0,$00,$03,$00,$00,$3C,$00,$00 ; $53B2
        db      $0F,$00,$03,$00,$03,$C0,$00,$00,$03,$C0,$03,$00,$0F,$00,$00,$00 ; $53C2
        db      $00,$3F,$03,$03,$F0,$00,$00,$00,$00,$03,$FF,$FF,$00,$00,$00,$00 ; $53D2
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $53E2
        db      $00,$00,$03,$00,$00,$00,$00,$0F,$12,$08,$25,$00,$00,$00,$03,$00 ; $53F2
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00 ; $5402
        db      $00,$00,$00,$00,$00,$03,$FF,$FF,$00,$00,$00,$00,$00,$3F,$03,$03 ; $5412
        db      $F0,$00,$00,$00,$03,$C0,$03,$00,$0F,$00,$00,$00,$0F,$00,$03,$00 ; $5422
        db      $03,$C0,$00,$00,$F0,$00,$03,$00,$00,$3C,$00,$00,$C0,$00,$03,$00 ; $5432
        db      $00,$0C,$00,$03,$00,$00,$03,$00,$00,$03,$00,$0F,$00,$00,$03,$00 ; $5442
        db      $00,$03,$C0,$0C,$0F,$FF,$FF,$FF,$FF,$C0,$C0,$30,$0C,$00,$03,$00 ; $5452
        db      $00,$00,$30,$30,$0C,$00,$03,$00,$00,$00,$30,$F0,$0C,$00,$03,$00 ; $5462
        db      $00,$00,$3C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00 ; $5472
        db      $00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00 ; $5482
        db      $00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$C0,$0C,$00,$03,$00 ; $5492
        db      $00,$00,$0C,$C0,$0C,$00,$03,$00,$00,$00,$0C,$F0,$0C,$00,$03,$00 ; $54A2
        db      $00,$00,$3C,$30,$0C,$00,$03,$00,$00,$00,$30,$30,$0C,$00,$03,$00 ; $54B2
        db      $00,$00,$30,$0C,$0F,$FF,$FF,$FF,$FF,$C0,$C0,$0F,$00,$00,$03,$00 ; $54C2
        db      $00,$03,$C0,$03,$00,$00,$03,$00,$00,$03,$00,$00,$C0,$00,$03,$00 ; $54D2
        db      $00,$0C,$00,$00,$F0,$00,$03,$00,$00,$3C,$00,$00,$0F,$00,$03,$00 ; $54E2
        db      $03,$C0,$00,$00,$03,$C0,$03,$00,$0F,$00,$00,$00,$00,$3F,$03,$03 ; $54F2
        db      $F0,$00,$00,$00,$00,$03,$FF,$FF,$00,$00,$00,$00,$00,$00,$03,$00 ; $5502
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00 ; $5512
        db      $00,$00,$00,$0F,$12,$08,$25,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5522
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5532
        db      $00,$03,$FF,$FF,$00,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00 ; $5542
        db      $03,$C0,$03,$00,$0F,$00,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00 ; $5552
        db      $F0,$00,$03,$00,$00,$3C,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$03 ; $5562
        db      $00,$00,$03,$00,$00,$03,$00,$0F,$00,$00,$03,$00,$00,$03,$C0,$0C ; $5572
        db      $0F,$FF,$FF,$FF,$FF,$C0,$C0,$30,$0C,$00,$03,$00,$00,$C0,$30,$30 ; $5582
        db      $0C,$00,$03,$00,$00,$C0,$30,$F0,$0C,$00,$03,$00,$00,$C0,$3C,$C0 ; $5592
        db      $0C,$00,$03,$00,$00,$C0,$0C,$C0,$0C,$00,$03,$00,$00,$C0,$0C,$C0 ; $55A2
        db      $0C,$00,$03,$00,$00,$C0,$0C,$C0,$0C,$00,$03,$00,$00,$C0,$0C,$C0 ; $55B2
        db      $0C,$00,$03,$00,$00,$C0,$0C,$C0,$0C,$00,$03,$00,$00,$C0,$0C,$C0 ; $55C2
        db      $0C,$00,$03,$00,$00,$C0,$0C,$F0,$0C,$00,$03,$00,$00,$C0,$3C,$30 ; $55D2
        db      $0C,$00,$03,$00,$00,$C0,$30,$30,$0C,$00,$03,$00,$00,$C0,$30,$0C ; $55E2
        db      $0F,$FF,$FF,$FF,$FF,$C0,$C0,$0F,$00,$00,$03,$00,$00,$03,$C0,$03 ; $55F2
        db      $00,$00,$03,$00,$00,$03,$00,$00,$C0,$00,$03,$00,$00,$0C,$00,$00 ; $5602
        db      $F0,$00,$03,$00,$00,$3C,$00,$00,$0F,$00,$03,$00,$03,$C0,$00,$00 ; $5612
        db      $03,$C0,$03,$00,$0F,$00,$00,$00,$00,$3F,$03,$03,$F0,$00,$00,$00 ; $5622
        db      $00,$03,$FF,$FF,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; $5632
        db      $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$11 ; $5642
        db      $11,$09,$24,$55,$55,$55,$55,$55,$55,$55,$55,$54,$7F,$FF,$FF,$FF ; $5652
        db      $FF,$FF,$FF,$FF,$F4,$75,$55,$55,$55,$55,$55,$55,$55,$74,$74,$00 ; $5662
        db      $00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74 ; $5672
        db      $74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00 ; $5682
        db      $08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88 ; $5692
        db      $00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA ; $56A2
        db      $A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74 ; $56B2
        db      $8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08 ; $56C2
        db      $74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00 ; $56D2
        db      $00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74,$74,$00,$00,$00 ; $56E2
        db      $00,$00,$00,$00,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74,$74,$80 ; $56F2
        db      $00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74 ; $5702
        db      $74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00 ; $5712
        db      $08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88 ; $5722
        db      $00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00 ; $5732
        db      $00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74 ; $5742
        db      $80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08 ; $5752
        db      $74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74,$74,$00,$00,$00,$00,$00 ; $5762
        db      $00,$00,$74,$75,$55,$55,$55,$55,$55,$55,$55,$74,$7F,$FF,$FF,$FF ; $5772
        db      $FF,$FF,$FF,$FF,$F4,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00 ; $5782
        db      $00,$00,$00,$00,$00,$00,$00,$11,$11,$09,$23,$55,$55,$55,$55,$55 ; $5792
        db      $55,$55,$55,$54,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$75,$55,$55 ; $57A2
        db      $55,$55,$55,$55,$55,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74 ; $57B2
        db      $AA,$AA,$AA,$8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08 ; $57C2
        db      $74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA ; $57D2
        db      $AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00 ; $57E2
        db      $88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80 ; $57F2
        db      $00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74 ; $5802
        db      $74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA ; $5812
        db      $88,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A ; $5822
        db      $AA,$AA,$A8,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA ; $5832
        db      $AA,$8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74 ; $5842
        db      $80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08 ; $5852
        db      $74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00 ; $5862
        db      $00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00 ; $5872
        db      $88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80 ; $5882
        db      $00,$00,$88,$00,$00,$08,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74 ; $5892
        db      $74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA ; $58A2
        db      $A8,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$75,$55,$55,$55,$55 ; $58B2
        db      $55,$55,$55,$74,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$55,$55,$55 ; $58C2
        db      $55,$55,$55,$55,$55,$54,$11,$11,$09,$23,$55,$55,$55,$55,$55,$55 ; $58D2
        db      $55,$55,$54,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$75,$55,$55,$55 ; $58E2
        db      $55,$55,$55,$55,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA ; $58F2
        db      $AA,$AA,$8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74 ; $5902
        db      $74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA ; $5912
        db      $88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88 ; $5922
        db      $AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00 ; $5932
        db      $00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74 ; $5942
        db      $80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88 ; $5952
        db      $74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA ; $5962
        db      $AA,$A8,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA,$AA ; $5972
        db      $8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80 ; $5982
        db      $00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74 ; $5992
        db      $74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA ; $59A2
        db      $88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88 ; $59B2
        db      $AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00 ; $59C2
        db      $00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74 ; $59D2
        db      $80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8 ; $59E2
        db      $74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$75,$55,$55,$55,$55,$55 ; $59F2
        db      $55,$55,$74,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$55,$55,$55,$55 ; $5A02
        db      $55,$55,$55,$55,$54,$11,$11,$09,$23,$55,$55,$55,$55,$55,$55,$55 ; $5A12
        db      $55,$54,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$75,$55,$55,$55,$55 ; $5A22
        db      $55,$55,$55,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA ; $5A32
        db      $AA,$8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74 ; $5A42
        db      $8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08 ; $5A52
        db      $74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00 ; $5A62
        db      $00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8 ; $5A72
        db      $88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A ; $5A82
        db      $AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74 ; $5A92
        db      $74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA ; $5AA2
        db      $A8,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA,$AA,$8A ; $5AB2
        db      $AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80,$00 ; $5AC2
        db      $00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74 ; $5AD2
        db      $80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88 ; $5AE2
        db      $74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA ; $5AF2
        db      $AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00 ; $5B02
        db      $88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80 ; $5B12
        db      $00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74 ; $5B22
        db      $74,$00,$00,$00,$00,$00,$00,$00,$74,$75,$55,$55,$55,$55,$55,$55 ; $5B32
        db      $55,$74,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$55,$55,$55,$55,$55 ; $5B42
        db      $55,$55,$55,$54,$11,$11,$09,$23,$55,$55,$55,$55,$55,$55,$55,$55 ; $5B52
        db      $54,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$75,$55,$55,$55,$55,$55 ; $5B62
        db      $55,$55,$74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA,$AA ; $5B72
        db      $8A,$AA,$AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$80 ; $5B82
        db      $00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74 ; $5B92
        db      $74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA ; $5BA2
        db      $88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88 ; $5BB2
        db      $AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74,$80,$00 ; $5BC2
        db      $00,$88,$AA,$AA,$88,$74,$74,$80,$00,$00,$88,$AA,$AA,$88,$74,$74 ; $5BD2
        db      $80,$00,$00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8 ; $5BE2
        db      $74,$74,$00,$00,$00,$00,$00,$00,$00,$74,$74,$AA,$AA,$AA,$8A,$AA ; $5BF2
        db      $AA,$A8,$74,$74,$80,$00,$00,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8 ; $5C02
        db      $88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A ; $5C12
        db      $AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74 ; $5C22
        db      $74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00 ; $5C32
        db      $08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$8A,$AA,$A8,$88 ; $5C42
        db      $00,$00,$08,$74,$74,$8A,$AA,$A8,$88,$00,$00,$08,$74,$74,$80,$00 ; $5C52
        db      $00,$88,$00,$00,$08,$74,$74,$AA,$AA,$AA,$8A,$AA,$AA,$A8,$74,$74 ; $5C62
        db      $00,$00,$00,$00,$00,$00,$00,$74,$75,$55,$55,$55,$55,$55,$55,$55 ; $5C72
        db      $74,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F4,$55,$55,$55,$55,$55,$55 ; $5C82
        db      $55,$55,$54,$11,$08,$09,$1A,$00,$00,$00,$0A,$A8,$00,$00,$00,$00 ; $5C92
        db      $00,$00,$00,$2A,$AA,$00,$00,$00,$00,$00,$00,$00,$A0,$02,$80,$00 ; $5CA2
        db      $00,$00,$00,$00,$02,$80,$00,$A0,$00,$00,$00,$00,$00,$02,$80,$00 ; $5CB2
        db      $A0,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00,$00,$00,$00,$00,$00 ; $5CC2
        db      $00,$00,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00,$00,$00,$00 ; $5CD2
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$0A,$00,$00,$00 ; $5CE2
        db      $00,$00,$00,$00,$00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00 ; $5CF2
        db      $00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$02 ; $5D02
        db      $80,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00 ; $5D12
        db      $00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D22
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00 ; $5D32
        db      $00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D42
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D52
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D62
        db      $00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ; $5D72
        db      $A8,$05,$00,$81,$14,$25,$55,$14,$F9,$53,$14,$CD,$52,$14,$A1,$51 ; $5D82
        db      $14,$75,$50,$00,$86,$5D,$25,$55,$F9,$53,$CD,$52,$A1,$51,$00,$00 ; $5D92
        db      $00,$00,$04,$00,$89,$00,$2C,$51,$56,$00,$2C,$99,$57,$C0,$2C,$51 ; $5DA2
        db      $56,$C0,$2C,$99,$57,$00,$00,$A7,$5D,$04,$00,$89,$00,$2C,$17,$5A ; $5DB2
        db      $00,$2C,$56,$5B,$C0,$2C,$17,$5A,$C0,$2C,$56,$5B,$00,$00,$BE,$5D ; $5DC2
        db      $51,$56,$51,$56,$51,$56,$51,$56,$17,$5A,$17,$5A,$17,$5A,$17,$5A ; $5DD2
        db      $00,$40,$C0,$80,$00,$40,$00,$40,$A4,$5D,$BB,$5D,$83,$5D,$D2,$5D ; $5DE2
        db      $DA,$5D,$98,$5D,$E2,$5D,$E6,$5D,$A0,$5D,$51,$56,$17,$5A,$75,$50 ; $5DF2
        db      $00,$00,$00,$51,$56,$17,$5A,$7D,$4E,$C0,$40,$00,$51,$56,$D8,$58 ; $5E02
        db      $79,$4F,$40,$C0,$00,$00,$00,$90,$B0,$FF,$BA,$FF,$C0,$03,$00,$00 ; $5E12
        db      $C0,$00,$00,$23,$00,$00,$00,$B0,$04,$00,$00,$00,$A0,$00,$00,$00 ; $5E22
        db      $B0,$04,$00,$00,$00,$00,$C0,$00,$00,$23,$00,$00,$00,$B0,$04,$00 ; $5E32
        db      $00,$00,$90,$00,$00,$BA,$FF,$C0,$03,$00,$00,$C0,$00,$00,$23,$00 ; $5E42
        db      $00,$00,$B0,$04,$00,$00,$00,$50,$00,$00,$00,$B0,$04,$00,$00,$00 ; $5E52
        db      $00,$C0,$00,$00,$23,$00,$00,$00,$B0,$04,$00,$00,$00,$90,$50,$00 ; $5E62
        db      $BA,$FF,$C0,$01,$00,$00,$C0,$00,$00,$46,$00,$00,$00,$B0,$04,$00 ; $5E72
VISUAL_PROGRESSION_SETUP_RENDER:
        rst     $08                                                             ; $5E82 colon entry
        dw      XT_SET_OBJECT_MODE_2                                            ; $5E83 execution token
        dw      XT_LIT                                                          ; $5E85 execution token
        dw      $FF9C                                                           ; $5E87 inline word
        dw      XT_0                                                            ; $5E89 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5E8B execution token
        dw      XT_LITbyte                                                      ; $5E8D execution token
        db      $04                                                             ; $5E8F inline byte
        dw      XT_0                                                            ; $5E90 execution token
        dw      XT_DO                                                           ; $5E92 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5E94 execution token
        dw      XT_ARRAY                                                        ; $5E96 execution token
        dw      $5DF0                                                           ; $5E98 inline word
        dw      XT_at                                                           ; $5E9A execution token
        dw      XT_I                                                            ; $5E9C execution token
        dw      XT_2splat                                                       ; $5E9E execution token
        dw      XT_plus                                                         ; $5EA0 execution token
        dw      XT_at                                                           ; $5EA2 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5EA4 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5EA6 execution token
        dw      XT_ARRAY                                                        ; $5EA8 execution token
        dw      $5DF6                                                           ; $5EAA inline word
        dw      XT_at                                                           ; $5EAC execution token
        dw      XT_I                                                            ; $5EAE execution token
        dw      XT_plus                                                         ; $5EB0 execution token
        dw      XT_Bat                                                          ; $5EB2 execution token
        dw      $1F03                                                           ; $5EB4 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5EB6 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $5EB8 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $5EBA execution token
        dw      XT_LITbyte                                                      ; $5EBC execution token
        db      $2D                                                             ; $5EBE inline byte
        dw      XT_plus                                                         ; $5EBF execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5EC1 execution token
        dw      XT_LOOP                                                         ; $5EC3 execution token
        dw      XT_RETURN                                                       ; $5EC5 execution token

VISUAL_PROGRESSION_PRESENT_THREAD:
        rst     $08                                                             ; $5EC7 colon entry
        dw      XT_SET_OBJECT_MODE_2                                            ; $5EC8 execution token
        dw      XT_LITbyte                                                      ; $5ECA execution token
        db      $3C                                                             ; $5ECC inline byte
        dw      XT_LIT                                                          ; $5ECD execution token
        dw      $FFEE                                                           ; $5ECF inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5ED1 execution token
        dw      XT_LITbyte                                                      ; $5ED3 execution token
        db      $02                                                             ; $5ED5 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $5ED6 execution token
        dw      XT_LIT                                                          ; $5ED8 execution token
        dw      $0064                                                           ; $5EDA inline word
        dw      $1C5F                                                           ; $5EDC execution token
        dw      XT_LIT                                                          ; $5EDE execution token
        dw      $FFEE                                                           ; $5EE0 inline word
        dw      $1C71                                                           ; $5EE2 execution token
        dw      $2630                                                           ; $5EE4 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $5EE6 execution token
        dw      XT_RETURN                                                       ; $5EE8 execution token

        db      $17,$5E,$42,$5E,$6D,$5E,$18,$63                                 ; $5EEA preserved bytes
        db      $6F,$6E,$74,$69,$6E,$75,$65,$20,$74,$68,$65,$20,$70,$72,$6F,$67 ; $5EF2
        db      $72,$65,$73,$73,$69,$6F,$6E                                     ; $5F02 preserved bytes

VISUAL_PROGRESSION_SETUP_ACTION:
        rst     $08                                                             ; $5F09 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5F0A execution token
        dw      XT_LIT                                                          ; $5F0C execution token
        dw      $FFBA                                                           ; $5F0E inline word
        dw      XT_LITbyte                                                      ; $5F10 execution token
        db      $16                                                             ; $5F12 inline byte
        dw      XT_LIT                                                          ; $5F13 execution token
        dw      $5EF0                                                           ; $5F15 inline word
        dw      XT_LIT                                                          ; $5F17 execution token
        dw      $5EEA                                                           ; $5F19 inline word
        dw      XT_LIT                                                          ; $5F1B execution token
        dw      $2D8C                                                           ; $5F1D inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $5F1F execution token
        dw      VISUAL_PROGRESSION_SETUP_RENDER                                 ; $5F21 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5F23 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5F25 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5F27 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5F29 execution token
        dw      XT_RETURN                                                       ; $5F2B execution token

VISUAL_PROGRESSION_CORRECT_ACTION:
        rst     $08                                                             ; $5F2D colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5F2E execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5F30 execution token
        dw      XT_LIT                                                          ; $5F32 execution token
        dw      $FFD3                                                           ; $5F34 inline word
        dw      XT_LITbyte                                                      ; $5F36 execution token
        db      $05                                                             ; $5F38 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5F39 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5F3B execution token
        dw      XT_DUP                                                          ; $5F3D execution token
        dw      XT_BARRAY                                                       ; $5F3F execution token
        dw      $5E02                                                           ; $5F41 inline word
        dw      XT_at                                                           ; $5F43 execution token
        dw      $1F03                                                           ; $5F45 execution token
        dw      XT_ARRAY                                                        ; $5F47 execution token
        dw      $5DFC                                                           ; $5F49 inline word
        dw      XT_at                                                           ; $5F4B execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5F4D execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5F4F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5F51 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5F53 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5F55 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5F57 execution token
        dw      $1DE0                                                           ; $5F59 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5F5B execution token
        dw      XT_LITbyte                                                      ; $5F5D execution token
        db      $50                                                             ; $5F5F inline byte
        dw      XT_0                                                            ; $5F60 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5F62 execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD                               ; $5F64 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5F66 execution token
        dw      XT_ARRAY                                                        ; $5F68 execution token
        dw      $5DEA                                                           ; $5F6A inline word
        dw      XT_at                                                           ; $5F6C execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5F6E execution token
        dw      XT_LIT                                                          ; $5F70 execution token
        dw      PORT_SCREEN_CONTROL_1                                           ; $5F72 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5F74 execution token
        dw      $19E9                                                           ; $5F76 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5F78 execution token
        dw      XT_RETURN                                                       ; $5F7A execution token

VISUAL_PROGRESSION_SECOND_ACTION:
        rst     $08                                                             ; $5F7C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5F7D execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $5F7F execution token
        dw      XT_LIT                                                          ; $5F81 execution token
        dw      $FFD3                                                           ; $5F83 inline word
        dw      XT_LITbyte                                                      ; $5F85 execution token
        db      $05                                                             ; $5F87 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5F88 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5F8A execution token
        dw      XT_DUP                                                          ; $5F8C execution token
        dw      XT_BARRAY                                                       ; $5F8E execution token
        dw      $5E0B                                                           ; $5F90 inline word
        dw      XT_at                                                           ; $5F92 execution token
        dw      $1F03                                                           ; $5F94 execution token
        dw      XT_ARRAY                                                        ; $5F96 execution token
        dw      $5E05                                                           ; $5F98 inline word
        dw      XT_at                                                           ; $5F9A execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5F9C execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5F9E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5FA0 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5FA2 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5FA4 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5FA6 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5FA8 execution token
        dw      XT_LITbyte                                                      ; $5FAA execution token
        db      $1E                                                             ; $5FAC inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5FAD execution token
        dw      $1A2C                                                           ; $5FAF execution token
        dw      $1DE0                                                           ; $5FB1 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5FB3 execution token
        dw      XT_LITbyte                                                      ; $5FB5 execution token
        db      $50                                                             ; $5FB7 inline byte
        dw      XT_0                                                            ; $5FB8 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5FBA execution token
        dw      XT_LIT                                                          ; $5FBC execution token
        dw      $482E                                                           ; $5FBE inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $5FC0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5FC2 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5FC4 execution token
        dw      XT_RETURN                                                       ; $5FC6 execution token

VISUAL_PROGRESSION_REMAINING_ACTION:
        rst     $08                                                             ; $5FC8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5FC9 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $5FCB execution token
        dw      XT_LIT                                                          ; $5FCD execution token
        dw      $FFD3                                                           ; $5FCF inline word
        dw      XT_LITbyte                                                      ; $5FD1 execution token
        db      $05                                                             ; $5FD3 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5FD4 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5FD6 execution token
        dw      XT_DUP                                                          ; $5FD8 execution token
        dw      XT_BARRAY                                                       ; $5FDA execution token
        dw      $5E14                                                           ; $5FDC inline word
        dw      XT_at                                                           ; $5FDE execution token
        dw      $1F03                                                           ; $5FE0 execution token
        dw      XT_ARRAY                                                        ; $5FE2 execution token
        dw      $5E0E                                                           ; $5FE4 inline word
        dw      XT_at                                                           ; $5FE6 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5FE8 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5FEA execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5FEC execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5FEE execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5FF0 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5FF2 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5FF4 execution token
        dw      XT_LITbyte                                                      ; $5FF6 execution token
        db      $1E                                                             ; $5FF8 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5FF9 execution token
        dw      $1A2C                                                           ; $5FFB execution token
        dw      $1DE0                                                           ; $5FFD execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5FFF execution token
        dw      XT_LITbyte                                                      ; $6001 execution token
        db      $50                                                             ; $6003 inline byte
        dw      XT_0                                                            ; $6004 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6006 execution token
        dw      XT_LIT                                                          ; $6008 execution token
        dw      $482E                                                           ; $600A inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $600C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $600E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6010 execution token
        dw      XT_RETURN                                                       ; $6012 execution token

VISUAL_PROGRESSION_ACTIONS:
        db      $04                                                             ; $6014 action count
        dw      VISUAL_PROGRESSION_SETUP_ACTION                                 ; $6015 setup action
        dw      VISUAL_PROGRESSION_CORRECT_ACTION                               ; $6017 correct answer
        dw      VISUAL_PROGRESSION_SECOND_ACTION                                ; $6019 second answer
        dw      VISUAL_PROGRESSION_REMAINING_ACTION                             ; $601B remaining answer

; Rooted by tier slot 3.
VISUAL_PROGRESSION_VFIXED_T3_INIT:
        rst     $08                                                          ; $601D
        dw      XT_LIT                                                          ; $601E
        dw      QUESTION_VARIANT_ADDR                                           ; $6020
        dw      XT_BZERO                                                        ; $6022
        dw      XT_LIT                                                          ; $6024
        dw      PPQ8_VISUAL_PROGRESSION_ACTIONS                                 ; $6026
        dw      XT_RETURN                                                       ; $6028

; Rooted by tier slot 5.
VISUAL_PROGRESSION_VFIXED_T5_INIT:
        rst     $08                                                          ; $602A
        dw      XT_LIT                                                          ; $602B
        dw      QUESTION_VARIANT_ADDR                                           ; $602D
        dw      XT_BONE                                                         ; $602F
        dw      XT_LIT                                                          ; $6031
        dw      PPQ8_VISUAL_PROGRESSION_ACTIONS                                 ; $6033
        dw      XT_RETURN                                                       ; $6035

; Rooted by tier slot 1.
VISUAL_PROGRESSION_V2_T1_INIT:
        rst     $08                                                          ; $6037
        dw      XT_LITbyte                                                      ; $6038
        db      $02                                                              ; $603A
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $603B
        dw      XT_LIT                                                          ; $603D
        dw      PPQ8_VISUAL_PROGRESSION_ACTIONS                                 ; $603F
        dw      XT_RETURN                                                       ; $6041
        db      $10,$10,$09,$21                                                 ; $6043
        db      $00,$00,$00,$0C,$03,$00,$00,$00,$00,$00,$00,$00,$0C,$0C,$00,$00 ; $6047
        db      $00,$00,$00,$00,$0C,$03,$0C,$30,$00,$00,$00,$00,$00,$0C,$0C,$0C ; $6057
        db      $30,$00,$00,$00,$00,$00,$03,$0C,$0C,$0C,$00,$00,$00,$00,$00,$03 ; $6067
        db      $30,$30,$0C,$00,$00,$00,$00,$00,$03,$30,$30,$30,$00,$00,$00,$00 ; $6077
        db      $00,$03,$0C,$30,$C0,$00,$00,$00,$00,$00,$0C,$0C,$30,$C0,$00,$00 ; $6087
        db      $00,$00,$00,$0C,$FF,$FF,$F0,$00,$00,$00,$00,$00,$FF,$75,$5D,$DF ; $6097
        db      $C0,$00,$00,$00,$0F,$D5,$75,$5D,$75,$7C,$00,$00,$00,$3F,$55,$55 ; $60A7
        db      $55,$55,$5F,$00,$00,$00,$0F,$D5,$55,$55,$55,$FC,$00,$00,$00,$0C ; $60B7
        db      $FD,$55,$55,$7F,$0C,$00,$00,$00,$0F,$03,$FF,$FF,$C0,$FC,$FF,$40 ; $60C7
        db      $00,$0F,$FC,$00,$00,$3F,$FF,$C3,$D0,$00,$0F,$FF,$FF,$FF,$FF,$FF ; $60D7
        db      $00,$D0,$00,$0E,$BF,$FF,$FF,$FF,$FD,$00,$D0,$00,$0F,$9F,$FF,$FF ; $60E7
        db      $FF,$FD,$00,$D0,$00,$0F,$9F,$FF,$FF,$FF,$FD,$00,$D0,$00,$0F,$E7 ; $60F7
        db      $FF,$FF,$FF,$FD,$03,$40,$00,$F3,$FF,$FF,$FF,$FF,$F4,$0D,$00,$0F ; $6107
        db      $F3,$EB,$FF,$FF,$FF,$F4,$F4,$00,$3F,$FC,$F9,$FF,$FF,$FF,$FF,$00 ; $6117
        db      $00,$FE,$7C,$3E,$7F,$FF,$FF,$40,$3F,$00,$F9,$FF,$0F,$E7,$FF,$F5 ; $6127
        db      $1F,$FF,$00,$FF,$FF,$C0,$FF,$FF,$D3,$FF,$FF,$00,$3E,$7F,$FF,$00 ; $6137
        db      $00,$0F,$FF,$FC,$00,$0F,$A7,$FF,$FF,$FF,$FF,$FF,$F0,$00,$03,$FE ; $6147
        db      $DF,$FF,$FF,$FF,$FF,$C0,$00,$00,$0F,$FF,$FF,$FF,$FF,$F0,$00,$00 ; $6157
        db      $00,$00,$3F,$FF,$FF,$FC,$00,$00,$00,$10,$0D,$09,$1E,$00,$00,$00 ; $6167
        db      $00,$30,$00,$00,$00,$00,$00,$00,$00,$C0,$30,$C0,$00,$00,$00,$00 ; $6177
        db      $00,$00,$30,$C0,$C0,$00,$00,$00,$00,$00,$30,$30,$C3,$00,$00,$00 ; $6187
        db      $00,$00,$00,$0C,$0C,$30,$C0,$00,$00,$00,$00,$00,$0C,$0C,$30,$C0 ; $6197
        db      $00,$00,$00,$00,$00,$0C,$FF,$FF,$F0,$00,$00,$00,$00,$00,$FF,$5D ; $61A7
        db      $75,$DF,$C0,$00,$00,$00,$0F,$D5,$5D,$57,$55,$7C,$00,$00,$00,$3F ; $61B7
        db      $55,$55,$55,$55,$5F,$00,$00,$00,$0F,$D5,$55,$55,$55,$FC,$00,$00 ; $61C7
        db      $00,$0C,$FD,$55,$55,$7F,$0C,$00,$00,$00,$0F,$03,$FF,$FF,$C0,$FC ; $61D7
        db      $FF,$40,$00,$0F,$FC,$00,$00,$3F,$FF,$C3,$D0,$00,$0F,$FF,$FF,$FF ; $61E7
        db      $FF,$FF,$00,$D0,$00,$0E,$BF,$FF,$FF,$FF,$FD,$00,$D0,$00,$0F,$9F ; $61F7
        db      $FF,$FF,$FF,$FD,$00,$D0,$00,$0F,$9F,$FF,$FF,$FF,$FD,$00,$D0,$00 ; $6207
        db      $0F,$E7,$FF,$FF,$FF,$FD,$03,$40,$00,$F3,$FF,$FF,$FF,$FF,$F4,$0D ; $6217
        db      $00,$0F,$F3,$EB,$FF,$FF,$FF,$F4,$F4,$00,$3F,$FC,$F9,$FF,$FF,$FF ; $6227
        db      $FF,$00,$00,$FE,$7C,$3E,$7F,$FF,$FF,$40,$3F,$00,$F9,$FF,$0F,$E7 ; $6237
        db      $FF,$F5,$1F,$FF,$00,$FF,$FF,$C0,$FF,$FF,$D3,$FF,$FF,$00,$3E,$7F ; $6247
        db      $FF,$00,$00,$0F,$FF,$FC,$00,$0F,$A7,$FF,$FF,$FF,$FF,$FF,$F0,$00 ; $6257
        db      $03,$FE,$DF,$FF,$FF,$FF,$FF,$C0,$00,$00,$0F,$FF,$FF,$FF,$FF,$F0 ; $6267
        db      $00,$00,$00,$00,$3F,$FF,$FF,$FC,$00,$00,$00,$10,$10,$09,$21,$00 ; $6277
        db      $00,$00,$0C,$03,$00,$00,$00,$00,$00,$00,$00,$03,$03,$00,$00,$00 ; $6287
        db      $00,$00,$00,$00,$C3,$0C,$03,$00,$00,$00,$00,$00,$00,$C3,$03,$03 ; $6297
        db      $00,$00,$00,$00,$00,$03,$03,$03,$0C,$00,$00,$00,$00,$00,$03,$00 ; $62A7
        db      $C0,$CC,$00,$00,$00,$00,$00,$00,$C0,$C0,$CC,$00,$00,$00,$00,$00 ; $62B7
        db      $00,$30,$C3,$0C,$00,$00,$00,$00,$00,$00,$30,$C3,$03,$00,$00,$00 ; $62C7
        db      $00,$00,$00,$FF,$FF,$F3,$00,$00,$00,$00,$00,$3F,$77,$55,$DF,$F0 ; $62D7
        db      $00,$00,$00,$03,$D5,$D7,$55,$D5,$7F,$00,$00,$00,$0F,$55,$55,$55 ; $62E7
        db      $55,$5F,$C0,$00,$00,$03,$F5,$55,$55,$55,$7F,$00,$00,$00,$03,$0F ; $62F7
        db      $D5,$55,$57,$F3,$00,$00,$1F,$F3,$F0,$3F,$FF,$FC,$0F,$00,$00,$7C ; $6307
        db      $3F,$FF,$C0,$00,$03,$FF,$00,$00,$70,$0F,$FF,$FF,$FF,$FF,$FF,$00 ; $6317
        db      $00,$70,$07,$EF,$FF,$FF,$FF,$FF,$00,$00,$70,$07,$E7,$FF,$FF,$FF ; $6327
        db      $FF,$00,$00,$70,$07,$F9,$FF,$FF,$FF,$FF,$00,$00,$1C,$07,$FA,$FF ; $6337
        db      $FF,$FF,$FF,$00,$00,$07,$01,$FF,$FF,$FF,$FF,$FC,$F0,$00,$01,$F1 ; $6347
        db      $F9,$FF,$FF,$FF,$FC,$FF,$00,$00,$0F,$FE,$7F,$FF,$FF,$F3,$FF,$C0 ; $6357
        db      $0F,$C0,$1F,$EF,$FF,$FF,$C3,$FF,$F0,$0F,$FF,$45,$FF,$FF,$FF,$0F ; $6367
        db      $FF,$F0,$0F,$EF,$FC,$7F,$FF,$F0,$3F,$FF,$F0,$03,$E7,$FF,$C0,$00 ; $6377
        db      $03,$FF,$FF,$C0,$00,$FB,$9F,$FF,$FF,$FF,$FF,$FF,$00,$00,$3F,$E9 ; $6387
        db      $FF,$FF,$FF,$FF,$FC,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00 ; $6397
        db      $00,$03,$FF,$FF,$FF,$C0,$00,$00,$10,$10,$09,$21,$00,$00,$03,$00 ; $63A7
        db      $03,$00,$00,$00,$00,$00,$00,$00,$C0,$0C,$00,$00,$00,$00,$00,$00 ; $63B7
        db      $C0,$30,$0C,$00,$C0,$00,$00,$00,$03,$00,$30,$30,$00,$C0,$00,$00 ; $63C7
        db      $00,$03,$00,$0C,$30,$00,$30,$00,$00,$00,$00,$C0,$0C,$30,$00,$30 ; $63D7
        db      $00,$00,$00,$00,$C0,$0C,$0C,$00,$30,$00,$00,$00,$00,$30,$0C,$0C ; $63E7
        db      $00,$C0,$00,$00,$00,$00,$0C,$03,$03,$03,$00,$00,$00,$00,$00,$03 ; $63F7
        db      $FF,$FF,$F3,$00,$00,$00,$00,$00,$3F,$57,$55,$DF,$F0,$00,$00,$00 ; $6407
        db      $03,$D7,$55,$D5,$75,$7F,$00,$00,$00,$0F,$55,$55,$55,$55,$5F,$C0 ; $6417
        db      $00,$00,$03,$F5,$55,$55,$55,$7F,$00,$00,$00,$03,$0F,$D5,$55,$57 ; $6427
        db      $F3,$00,$00,$1F,$F3,$F0,$3F,$FF,$FC,$0F,$00,$00,$7C,$3F,$FF,$C0 ; $6437
        db      $00,$03,$FF,$00,$00,$70,$0F,$FF,$FF,$FF,$FF,$FF,$00,$00,$70,$07 ; $6447
        db      $EF,$FF,$FF,$FF,$FF,$00,$00,$70,$07,$E7,$FF,$FF,$FF,$FF,$00,$00 ; $6457
        db      $70,$07,$F9,$FF,$FF,$FF,$FF,$00,$00,$1C,$07,$FA,$FF,$FF,$FF,$FF ; $6467
        db      $00,$00,$07,$01,$FF,$FF,$FF,$FF,$FC,$F0,$00,$01,$F1,$F9,$FF,$FF ; $6477
        db      $FF,$FC,$FF,$00,$00,$0F,$FE,$7F,$FF,$FF,$F3,$FF,$C0,$0F,$C0,$1F ; $6487
        db      $EF,$FF,$FF,$C3,$FF,$F0,$0F,$FF,$45,$FF,$FF,$FF,$0F,$FF,$F0,$0F ; $6497
        db      $EF,$FC,$7F,$FF,$F0,$3F,$FF,$F0,$03,$E7,$FF,$C0,$00,$03,$FF,$FF ; $64A7
        db      $C0,$00,$FB,$9F,$FF,$FF,$FF,$FF,$FF,$00,$00,$3F,$E9,$FF,$FF,$FF ; $64B7
        db      $FF,$FC,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$03,$FF ; $64C7
        db      $FF,$FF,$C0,$00,$00,$10,$0D,$09,$1E,$00,$00,$00,$00,$30,$00,$00 ; $64D7
        db      $00,$00,$00,$00,$00,$C0,$30,$C0,$00,$00,$00,$00,$00,$00,$30,$C0 ; $64E7
        db      $C0,$00,$00,$00,$00,$00,$30,$30,$C3,$00,$00,$00,$00,$00,$00,$0C ; $64F7
        db      $0C,$30,$C0,$00,$00,$00,$00,$00,$0C,$0C,$30,$C0,$00,$00,$00,$00 ; $6507
        db      $00,$0C,$FF,$FF,$F0,$00,$00,$00,$00,$00,$C3,$5D,$75,$DF,$C0,$00 ; $6517
        db      $00,$00,$0F,$D5,$5D,$57,$55,$3C,$00,$00,$00,$3F,$55,$55,$55,$55 ; $6527
        db      $4F,$00,$00,$00,$0F,$D5,$55,$55,$50,$FC,$00,$00,$00,$0C,$FD,$55 ; $6537
        db      $55,$3F,$0C,$00,$00,$00,$0F,$03,$FF,$FF,$C0,$FC,$FF,$40,$00,$0F ; $6547
        db      $FC,$00,$00,$3F,$FF,$C3,$D0,$00,$0F,$FF,$3F,$FF,$FF,$FF,$00,$D0 ; $6557
        db      $00,$0E,$BF,$C3,$FF,$FF,$FD,$00,$D0,$00,$0F,$9F,$FC,$03,$FF,$FD ; $6567
        db      $00,$D0,$00,$0F,$9F,$FF,$F3,$FF,$FD,$00,$D0,$00,$0F,$E7,$FF,$CF ; $6577
        db      $FF,$FD,$03,$40,$00,$F3,$FF,$FF,$CF,$FF,$F4,$0D,$00,$0F,$F3,$EB ; $6587
        db      $FF,$CF,$FF,$F4,$F4,$00,$3F,$FC,$F9,$FF,$C0,$0F,$FF,$00,$00,$FE ; $6597
        db      $7F,$3E,$7F,$FF,$F3,$40,$3F,$00,$F9,$FF,$CF,$E7,$FF,$F5,$1F,$FF ; $65A7
        db      $00,$FF,$FC,$00,$FF,$FF,$D3,$03,$FF,$00,$3E,$7C,$F0,$00,$00,$0F ; $65B7
        db      $FC,$FC,$00,$00,$03,$FF,$FC,$FF,$FF,$FF,$00,$00,$03,$FE,$DF,$FF ; $65C7
        db      $3F,$FF,$FF,$C0,$00,$00,$0F,$FF,$FF,$C0,$FF,$F0,$00,$00,$00,$00 ; $65D7
        db      $3F,$FF,$FF,$3C,$00,$00,$00,$11,$07,$09,$19,$00,$00,$00,$3F,$FF ; $65E7
        db      $FC,$00,$00,$00,$00,$00,$30,$C0,$00,$03,$F0,$00,$00,$00,$03,$F0 ; $65F7
        db      $00,$00,$00,$0F,$00,$00,$00,$0F,$C0,$00,$00,$00,$03,$C0,$00,$00 ; $6607
        db      $03,$F0,$00,$00,$00,$3F,$00,$00,$00,$03,$3F,$00,$00,$0F,$C3,$00 ; $6617
        db      $00,$00,$03,$C0,$FF,$FF,$F0,$3F,$3F,$D0,$00,$03,$FF,$00,$00,$0F ; $6627
        db      $FF,$F0,$F4,$00,$03,$FF,$CF,$FF,$FF,$FF,$C0,$34,$00,$03,$AF,$F0 ; $6637
        db      $FF,$FF,$FF,$40,$34,$00,$03,$E7,$FF,$00,$FF,$FF,$40,$34,$00,$03 ; $6647
        db      $E7,$FF,$FC,$FF,$FF,$40,$34,$00,$03,$F9,$FF,$F3,$FF,$FF,$40,$D0 ; $6657
        db      $00,$3C,$FF,$FF,$F3,$FF,$FD,$03,$40,$03,$FC,$FA,$FF,$F3,$FF,$FD ; $6667
        db      $3D,$00,$0F,$FF,$3E,$7F,$F0,$03,$FF,$C0,$00,$3F,$9F,$CF,$9F,$FF ; $6677
        db      $FC,$D0,$0F,$C0,$3E,$75,$73,$F9,$FF,$FD,$47,$FF,$D0,$55,$55,$50 ; $6687
        db      $3F,$FF,$F5,$54,$5F,$50,$15,$55,$55,$55,$50,$03,$FD,$15,$50,$55 ; $6697
        db      $15,$5F,$DF,$7F,$FF,$FD,$54,$00,$55,$55,$B7,$FF,$CF,$FF,$FF,$D5 ; $66A7
        db      $40,$41,$11,$FF,$FF,$F0,$3F,$FC,$15,$40,$11,$55,$0F,$FF,$FF,$CF ; $66B7
        db      $00,$01,$50,$00,$00,$00,$00,$00,$00,$00,$01,$00,$10,$0D,$09,$1E ; $66C7
        db      $00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0C,$00 ; $66D7
        db      $00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0,$C0 ; $66E7
        db      $CC,$00,$00,$00,$00,$00,$00,$30,$C3,$0C,$00,$00,$00,$00,$00,$00 ; $66F7
        db      $30,$C3,$03,$00,$00,$00,$00,$00,$00,$FF,$FC,$33,$00,$00,$00,$00 ; $6707
        db      $00,$3F,$77,$55,$0F,$F0,$00,$00,$00,$03,$D5,$D7,$55,$D5,$7F,$00 ; $6717
        db      $00,$00,$0F,$55,$55,$55,$55,$5F,$C0,$00,$00,$03,$F5,$55,$55,$55 ; $6727
        db      $7F,$00,$00,$00,$03,$0F,$D5,$55,$77,$F3,$00,$00,$1F,$F3,$F0,$3F ; $6737
        db      $FF,$3C,$0F,$00,$00,$7C,$3F,$FF,$C0,$00,$03,$FF,$00,$00,$70,$0F ; $6747
        db      $FF,$FF,$FC,$FF,$FF,$00,$00,$70,$07,$EF,$FF,$C0,$FF,$FF,$00,$00 ; $6757
        db      $70,$07,$E7,$FF,$0F,$FF,$FF,$00,$00,$70,$07,$F9,$FF,$3F,$FF,$FF ; $6767
        db      $00,$00,$1C,$07,$FA,$FC,$FF,$FF,$FF,$00,$00,$07,$01,$FF,$FC,$FF ; $6777
        db      $FF,$FC,$F0,$00,$01,$F1,$F9,$FC,$FF,$FF,$FC,$FF,$00,$00,$0F,$FE ; $6787
        db      $7F,$03,$FF,$F3,$FF,$C0,$0F,$C0,$1F,$EF,$F3,$FF,$CF,$FF,$F0,$0F ; $6797
        db      $FF,$45,$FF,$CF,$FF,$3F,$FF,$F0,$0F,$EF,$FC,$7F,$0F,$F0,$FF,$FF ; $67A7
        db      $F0,$03,$E7,$F0,$00,$00,$03,$FF,$FF,$C0,$00,$FB,$0F,$FF,$FF,$0F ; $67B7
        db      $FF,$FF,$00,$00,$3C,$E9,$FF,$FF,$F0,$C3,$FC,$00,$00,$00,$FF,$FF ; $67C7
        db      $FF,$FC,$0F,$00,$00,$00,$00,$03,$FF,$FF,$FF,$C0,$00,$00,$10,$07 ; $67D7
        db      $09,$18,$00,$00,$00,$FF,$FC,$30,$00,$00,$00,$00,$00,$3F,$00,$00 ; $67E7
        db      $0F,$F0,$00,$00,$00,$03,$C0,$00,$00,$00,$3F,$00,$00,$00,$0F,$00 ; $67F7
        db      $00,$00,$00,$0F,$C0,$00,$00,$03,$F0,$00,$00,$00,$3F,$00,$00,$00 ; $6807
        db      $03,$0F,$C0,$00,$03,$F3,$00,$00,$1F,$F3,$F0,$3F,$FF,$3C,$0F,$00 ; $6817
        db      $00,$7C,$3F,$FF,$C0,$00,$03,$FF,$00,$00,$70,$0F,$FF,$FF,$FC,$FF ; $6827
        db      $FF,$00,$00,$70,$07,$EF,$FF,$C0,$FF,$FF,$00,$00,$70,$07,$E7,$FF ; $6837
        db      $0F,$FF,$FF,$00,$00,$70,$07,$F9,$FF,$3F,$FF,$FF,$00,$00,$1C,$07 ; $6847
        db      $FA,$FC,$FF,$FF,$FF,$00,$00,$07,$01,$FF,$FC,$FF,$FF,$FC,$F0,$00 ; $6857
        db      $01,$F1,$F9,$FC,$FF,$FF,$FC,$FF,$00,$00,$0F,$FE,$7F,$03,$FF,$F3 ; $6867
        db      $FF,$C0,$0F,$C0,$1F,$EF,$F7,$FF,$CF,$FF,$F0,$0F,$FF,$45,$FF,$5F ; $6877
        db      $FD,$7F,$FF,$F0,$0F,$E5,$54,$7F,$5F,$F4,$57,$FF,$F0,$03,$D5,$55 ; $6887
        db      $55,$55,$41,$55,$D5,$C0,$15,$55,$05,$55,$5F,$1D,$55,$55,$40,$55 ; $6897
        db      $5C,$E9,$55,$FF,$F0,$C5,$55,$54,$51,$50,$FF,$77,$FF,$FC,$0D,$41 ; $68A7
        db      $54,$05,$40,$03,$FF,$FF,$FF,$C0,$50,$50,$00,$00,$90,$51,$00,$05 ; $68B7
        db      $00,$00,$02,$00,$00,$80,$A7,$FF,$00,$00,$18,$FC,$00,$00,$00,$00 ; $68C7
        db      $40,$00,$00,$CB,$FF,$00,$00,$18,$FC,$00,$00,$00,$90,$48,$00,$DD ; $68D7
        db      $FF,$00,$02,$00,$00,$80,$B0,$FF,$00,$00,$18,$FC,$00,$00,$00,$00 ; $68E7
        db      $40,$00,$00,$F3,$FF,$00,$00,$18,$FC,$00,$00,$00,$90,$51,$00,$B6 ; $68F7
        db      $FF,$00,$02,$00,$00,$80,$A7,$FF,$00,$00,$18,$FC,$00,$00,$00,$00 ; $6907
        db      $C0,$00,$00,$19,$00,$00,$00,$E8,$03,$00,$C1,$68,$E1,$68,$01,$69 ; $6917
        db      $09,$00,$00,$0F,$0F,$0F,$0B,$07,$06,$1C,$77,$68,$69,$63,$68,$20 ; $6927
        db      $69,$73,$20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69,$6D ; $6937
        db      $61,$67,$65,$20,$3F,$20,$14,$77,$68,$69,$63,$68,$20,$69,$73,$20 ; $6947
        db      $74,$68,$65,$20,$73,$61,$6D,$65,$20,$3F,$20,$30,$69,$4D,$69,$02 ; $6957
        db      $00,$81,$0A,$43,$60,$06,$70,$61,$00,$69,$69,$02,$00,$81,$0A,$82 ; $6967
        db      $62,$06,$AF,$63,$00,$75,$69,$03,$00,$81,$0A,$43,$60,$0A,$DC,$64 ; $6977
        db      $0A,$EE,$65,$00,$81,$69,$03,$00,$81,$0A,$82,$62,$0A,$D3,$66,$0A ; $6987
        db      $E5,$67,$00,$90,$69                                             ; $6997 preserved bytes

IMAGE_MIRROR_SETUP_ACTION:
        rst     $08                                                             ; $699C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $699D execution token
        dw      XT_LIT                                                          ; $699F execution token
        dw      $FF74                                                           ; $69A1 inline word
        dw      XT_LIT                                                          ; $69A3 execution token
        dw      $FFF6                                                           ; $69A5 inline word
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $69A7 execution token
        dw      XT_ARRAY                                                        ; $69A9 execution token
        dw      $6962                                                           ; $69AB inline word
        dw      XT_at                                                           ; $69AD execution token
        dw      XT_LIT                                                          ; $69AF execution token
        dw      $6921                                                           ; $69B1 inline word
        dw      XT_LIT                                                          ; $69B3 execution token
        dw      $6927                                                           ; $69B5 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $69B7 execution token
        dw      XT_LIT                                                          ; $69B9 execution token
        dw      $6966                                                           ; $69BB inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $69BD execution token
        dw      XT_LIT                                                          ; $69BF execution token
        dw      $FFBE                                                           ; $69C1 inline word
        dw      XT_LIT                                                          ; $69C3 execution token
        dw      $FFD0                                                           ; $69C5 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $69C7 execution token
        dw      XT_LIT                                                          ; $69C9 execution token
        dw      PORT_PATTERN_SOURCE_LO                                          ; $69CB inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $69CD execution token
        dw      $19E9                                                           ; $69CF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $69D1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $69D3 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $69D5 execution token
        dw      XT_RETURN                                                       ; $69D7 execution token

IMAGE_MIRROR_CORRECT_ACTION:
        rst     $08                                                             ; $69D9 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $69DA execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $69DC execution token
        dw      XT_LITbyte                                                      ; $69DE execution token
        db      $28                                                             ; $69E0 inline byte
        dw      XT_LITbyte                                                      ; $69E1 execution token
        db      $0A                                                             ; $69E3 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $69E4 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $69E6 execution token
        dw      XT_ARRAY                                                        ; $69E8 execution token
        dw      $6962                                                           ; $69EA inline word
        dw      XT_at                                                           ; $69EC execution token
        dw      XT_LIT                                                          ; $69EE execution token
        dw      $6930                                                           ; $69F0 inline word
        dw      XT_equal                                                        ; $69F2 execution token
        dw      XT_0BRANCH                                                      ; $69F4 execution token
        dw      IMAGE_MIRROR_CORRECT_ACTION_C                                   ; $69F6 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $69F8 execution token
IMAGE_MIRROR_CORRECT_ACTION_C:
        dw      XT_LIT                                                          ; $69FA execution token
        dw      $6966                                                           ; $69FC inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $69FE execution token
        dw      XT_LITbyte                                                      ; $6A00 execution token
        db      $50                                                             ; $6A02 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A03 execution token
        dw      $19E9                                                           ; $6A05 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6A07 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6A09 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6A0B execution token
        dw      XT_LITbyte                                                      ; $6A0D execution token
        db      $28                                                             ; $6A0F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A10 execution token
        dw      $1A2C                                                           ; $6A12 execution token
        dw      $1EF6                                                           ; $6A14 execution token
        dw      XT_LITbyte                                                      ; $6A16 execution token
        db      $14                                                             ; $6A18 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A19 execution token
        dw      $1A2C                                                           ; $6A1B execution token
        dw      XT_LIT                                                          ; $6A1D execution token
        dw      $4135                                                           ; $6A1F inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $6A21 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6A23 execution token
        dw      XT_LIT                                                          ; $6A25 execution token
        dw      $6927                                                           ; $6A27 inline word
        dw      XT_CLEAR_PRESENTATION_TABLE                                     ; $6A29 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6A2B execution token
        dw      XT_RETURN                                                       ; $6A2D execution token

IMAGE_MIRROR_SECOND_ACTION:
        rst     $08                                                             ; $6A2F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6A30 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $6A32 execution token
        dw      XT_LITbyte                                                      ; $6A34 execution token
        db      $28                                                             ; $6A36 inline byte
        dw      XT_LITbyte                                                      ; $6A37 execution token
        db      $0A                                                             ; $6A39 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6A3A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $6A3C execution token
        dw      XT_ARRAY                                                        ; $6A3E execution token
        dw      $6962                                                           ; $6A40 inline word
        dw      XT_at                                                           ; $6A42 execution token
        dw      XT_LIT                                                          ; $6A44 execution token
        dw      $694D                                                           ; $6A46 inline word
        dw      XT_equal                                                        ; $6A48 execution token
        dw      XT_0BRANCH                                                      ; $6A4A execution token
        dw      IMAGE_MIRROR_SECOND_ACTION_C                                    ; $6A4C branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $6A4E execution token
IMAGE_MIRROR_SECOND_ACTION_C:
        dw      XT_LIT                                                          ; $6A50 execution token
        dw      $6972                                                           ; $6A52 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $6A54 execution token
        dw      XT_LITbyte                                                      ; $6A56 execution token
        db      $50                                                             ; $6A58 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A59 execution token
        dw      $19E9                                                           ; $6A5B execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6A5D execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6A5F execution token
        dw      IMAGE_MIRROR_DIST_THREAD_3                                      ; $6A61 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6A63 execution token
        dw      $1DE0                                                           ; $6A65 execution token
        dw      XT_LITbyte                                                      ; $6A67 execution token
        db      $28                                                             ; $6A69 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A6A execution token
        dw      $1A2C                                                           ; $6A6C execution token
        dw      XT_LIT                                                          ; $6A6E execution token
        dw      $698D                                                           ; $6A70 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $6A72 execution token
        dw      XT_LITbyte                                                      ; $6A74 execution token
        db      $1D                                                             ; $6A76 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6A77 execution token
        dw      $19E9                                                           ; $6A79 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6A7B execution token
        dw      XT_RETURN                                                       ; $6A7D execution token

IMAGE_MIRROR_REMAINING_ACTION:
        rst     $08                                                             ; $6A7F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6A80 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $6A82 execution token
        dw      XT_LITbyte                                                      ; $6A84 execution token
        db      $28                                                             ; $6A86 inline byte
        dw      XT_LITbyte                                                      ; $6A87 execution token
        db      $0A                                                             ; $6A89 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6A8A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $6A8C execution token
        dw      XT_ARRAY                                                        ; $6A8E execution token
        dw      $6962                                                           ; $6A90 inline word
        dw      XT_at                                                           ; $6A92 execution token
        dw      XT_LIT                                                          ; $6A94 execution token
        dw      $694D                                                           ; $6A96 inline word
        dw      XT_equal                                                        ; $6A98 execution token
        dw      XT_0BRANCH                                                      ; $6A9A execution token
        dw      IMAGE_MIRROR_REMAINING_ACTION_C                                 ; $6A9C branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $6A9E execution token
IMAGE_MIRROR_REMAINING_ACTION_C:
        dw      XT_LIT                                                          ; $6AA0 execution token
        dw      $6966                                                           ; $6AA2 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $6AA4 execution token
        dw      XT_LITbyte                                                      ; $6AA6 execution token
        db      $50                                                             ; $6AA8 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6AA9 execution token
        dw      $19E9                                                           ; $6AAB execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6AAD execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6AAF execution token
        dw      IMAGE_MIRROR_DIST_THREAD_3                                      ; $6AB1 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6AB3 execution token
        dw      $1DE0                                                           ; $6AB5 execution token
        dw      XT_LITbyte                                                      ; $6AB7 execution token
        db      $28                                                             ; $6AB9 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6ABA execution token
        dw      $1A2C                                                           ; $6ABC execution token
        dw      XT_LIT                                                          ; $6ABE execution token
        dw      $697E                                                           ; $6AC0 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $6AC2 execution token
        dw      XT_LITbyte                                                      ; $6AC4 execution token
        db      $1D                                                             ; $6AC6 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6AC7 execution token
        dw      $19E9                                                           ; $6AC9 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6ACB execution token
        dw      XT_RETURN                                                       ; $6ACD execution token

IMAGE_MIRROR_ACTIONS:
        db      $04                                                             ; $6ACF action count
        dw      IMAGE_MIRROR_SETUP_ACTION                                       ; $6AD0 setup action
        dw      IMAGE_MIRROR_CORRECT_ACTION                                     ; $6AD2 correct answer
        dw      IMAGE_MIRROR_SECOND_ACTION                                      ; $6AD4 second answer
        dw      IMAGE_MIRROR_REMAINING_ACTION                                   ; $6AD6 remaining answer

; Rooted by tier slots 0, 2.
IMAGE_MIRROR_V0_1_T0_2_INIT:
        rst     $08                                                          ; $6AD8
        dw      XT_LITbyte                                                      ; $6AD9
        db      $02                                                              ; $6ADB
        dw      XT_RANDOM_BELOW                                                 ; $6ADC
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6ADE
        dw      XT_LIT                                                          ; $6AE0
        dw      PPQ8_IMAGE_MIRROR_ACTIONS                                       ; $6AE2
        dw      XT_RETURN                                                       ; $6AE4
        db      $0E,$0E                                                         ; $6AE6
        db      $08,$1E,$55,$55,$55,$55,$55,$55,$55,$50,$40,$00,$00,$00,$00,$00 ; $6AE8
        db      $00,$10,$4F,$FF,$FF,$FF,$FF,$FF,$FF,$10,$4C,$00,$00,$00,$00,$00 ; $6AF8
        db      $03,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B08
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B18
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B28
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B38
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B48
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B58
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B68
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B78
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B88
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6B98
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6BA8
        db      $A3,$10,$4C,$00,$00,$00,$00,$00,$03,$10,$4F,$FF,$FF,$FF,$FF,$FF ; $6BB8
        db      $FF,$10,$40,$00,$00,$00,$00,$00,$00,$10,$55,$55,$55,$55,$55,$55 ; $6BC8
        db      $55,$50,$0E,$0E,$08,$1D,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00 ; $6BD8
        db      $00,$10,$40,$00,$00,$00,$00,$00,$00,$10,$40,$00,$00,$00,$00,$00 ; $6BE8
        db      $00,$4F,$10,$00,$00,$00,$00,$00,$00,$4F,$10,$00,$00,$00,$00,$00 ; $6BF8
        db      $01,$30,$C4,$00,$00,$00,$00,$00,$01,$30,$C4,$00,$00,$00,$00,$00 ; $6C08
        db      $04,$CA,$31,$00,$00,$00,$00,$00,$04,$CA,$31,$00,$00,$00,$00,$00 ; $6C18
        db      $13,$2A,$8C,$40,$00,$00,$00,$00,$13,$2A,$8C,$40,$00,$00,$00,$00 ; $6C28
        db      $4C,$AA,$A3,$10,$00,$00,$00,$00,$4C,$AA,$A3,$10,$00,$00,$00,$01 ; $6C38
        db      $32,$AA,$A8,$C4,$00,$00,$00,$01,$32,$AA,$A8,$C4,$00,$00,$00,$04 ; $6C48
        db      $CA,$AA,$AA,$31,$00,$00,$00,$04,$CA,$AA,$AA,$31,$00,$00,$00,$13 ; $6C58
        db      $2A,$AA,$AA,$8C,$40,$00,$00,$13,$2A,$AA,$AA,$8C,$40,$00,$00,$4C ; $6C68
        db      $AA,$AA,$AA,$A3,$10,$00,$00,$4C,$AA,$AA,$AA,$A3,$10,$00,$01,$32 ; $6C78
        db      $AA,$AA,$AA,$A8,$C4,$00,$01,$32,$AA,$AA,$AA,$A8,$C4,$00,$04,$CA ; $6C88
        db      $AA,$AA,$AA,$AA,$31,$00,$04,$CA,$AA,$AA,$AA,$AA,$31,$00,$13,$00 ; $6C98
        db      $00,$00,$00,$00,$0C,$40,$13,$FF,$FF,$FF,$FF,$FF,$FC,$40,$40,$00 ; $6CA8
        db      $00,$00,$00,$00,$00,$10,$55,$55,$55,$55,$55,$55,$55,$50,$0F,$0F ; $6CB8
        db      $08,$20,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$04,$10,$00 ; $6CC8
        db      $00,$00,$00,$00,$00,$13,$C4,$00,$00,$00,$00,$00,$00,$4C,$31,$00 ; $6CD8
        db      $00,$00,$00,$00,$01,$32,$8C,$40,$00,$00,$00,$00,$04,$CA,$A3,$10 ; $6CE8
        db      $00,$00,$00,$00,$13,$2A,$A8,$C4,$00,$00,$00,$00,$4C,$AA,$AA,$31 ; $6CF8
        db      $00,$00,$00,$01,$32,$AA,$AA,$8C,$40,$00,$00,$04,$CA,$AA,$AA,$A3 ; $6D08
        db      $10,$00,$00,$13,$2A,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$AA ; $6D18
        db      $31,$00,$01,$32,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA ; $6D28
        db      $A3,$10,$13,$2A,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6D38
        db      $AA,$31,$4C,$AA,$AA,$AA,$AA,$AA,$AA,$31,$13,$2A,$AA,$AA,$AA,$AA ; $6D48
        db      $A8,$C4,$04,$CA,$AA,$AA,$AA,$AA,$A3,$10,$01,$32,$AA,$AA,$AA,$AA ; $6D58
        db      $8C,$40,$00,$4C,$AA,$AA,$AA,$AA,$31,$00,$00,$13,$2A,$AA,$AA,$A8 ; $6D68
        db      $C4,$00,$00,$04,$CA,$AA,$AA,$A3,$10,$00,$00,$01,$32,$AA,$AA,$8C ; $6D78
        db      $40,$00,$00,$00,$4C,$AA,$AA,$31,$00,$00,$00,$00,$13,$2A,$A8,$C4 ; $6D88
        db      $00,$00,$00,$00,$04,$CA,$A3,$10,$00,$00,$00,$00,$01,$32,$8C,$40 ; $6D98
        db      $00,$00,$00,$00,$00,$4C,$31,$00,$00,$00,$00,$00,$00,$13,$C4,$00 ; $6DA8
        db      $00,$00,$00,$00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$01,$40,$00 ; $6DB8
        db      $00,$00,$0F,$0F,$08,$1F,$00,$00,$00,$55,$54,$00,$00,$00,$00,$00 ; $6DC8
        db      $05,$40,$05,$40,$00,$00,$00,$00,$54,$3F,$F0,$54,$00,$00,$00,$01 ; $6DD8
        db      $43,$C0,$0F,$05,$00,$00,$00,$05,$3C,$2A,$A0,$F1,$40,$00,$00,$14 ; $6DE8
        db      $C2,$AA,$AA,$0C,$50,$00,$00,$53,$2A,$AA,$AA,$A3,$14,$00,$01,$4C ; $6DF8
        db      $AA,$AA,$AA,$A8,$C5,$00,$05,$32,$AA,$AA,$AA,$AA,$31,$40,$04,$CA ; $6E08
        db      $AA,$AA,$AA,$AA,$8C,$40,$14,$CA,$AA,$AA,$AA,$AA,$8C,$50,$13,$2A ; $6E18
        db      $AA,$AA,$AA,$AA,$A3,$10,$53,$2A,$AA,$AA,$AA,$AA,$A3,$14,$4C,$AA ; $6E28
        db      $AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA ; $6E38
        db      $AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA ; $6E48
        db      $AA,$AA,$AA,$AA,$A8,$C4,$53,$2A,$AA,$AA,$AA,$AA,$A3,$14,$13,$2A ; $6E58
        db      $AA,$AA,$AA,$AA,$A3,$10,$14,$CA,$AA,$AA,$AA,$AA,$8C,$50,$04,$CA ; $6E68
        db      $AA,$AA,$AA,$AA,$8C,$40,$05,$32,$AA,$AA,$AA,$AA,$31,$40,$01,$4C ; $6E78
        db      $AA,$AA,$AA,$A8,$C5,$00,$00,$53,$2A,$AA,$AA,$A3,$14,$00,$00,$14 ; $6E88
        db      $C2,$AA,$AA,$0C,$50,$00,$00,$05,$3C,$2A,$A0,$F1,$40,$00,$00,$01 ; $6E98
        db      $43,$C0,$0F,$05,$00,$00,$00,$00,$54,$3F,$F0,$54,$00,$00,$00,$00 ; $6EA8
        db      $05,$40,$05,$40,$00,$00,$00,$00,$00,$55,$54,$00,$00,$00,$0F,$0F ; $6EB8
        db      $08,$1F,$00,$00,$15,$55,$55,$50,$00,$00,$00,$00,$40,$00,$00,$04 ; $6EC8
        db      $00,$00,$00,$01,$3F,$FF,$FF,$F1,$00,$00,$00,$04,$C0,$00,$00,$0C ; $6ED8
        db      $40,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$4C,$AA,$AA,$AA,$A8 ; $6EE8
        db      $C4,$00,$01,$32,$AA,$AA,$AA,$AA,$31,$00,$04,$CA,$AA,$AA,$AA,$AA ; $6EF8
        db      $8C,$40,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA ; $6F08
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F18
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F28
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F38
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F48
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F58
        db      $A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $6F68
        db      $A8,$C4,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$04,$CA,$AA,$AA,$AA,$AA ; $6F78
        db      $8C,$40,$01,$32,$AA,$AA,$AA,$AA,$31,$00,$00,$4C,$AA,$AA,$AA,$A8 ; $6F88
        db      $C4,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$04,$C0,$00,$00,$0C ; $6F98
        db      $40,$00,$00,$01,$3F,$FF,$FF,$F1,$00,$00,$00,$00,$40,$00,$00,$04 ; $6FA8
        db      $00,$00,$00,$00,$15,$55,$55,$50,$00,$00,$0E,$0E,$08,$1E,$00,$00 ; $6FB8
        db      $00,$05,$00,$00,$00,$00,$00,$00,$00,$50,$50,$00,$00,$00,$00,$00 ; $6FC8
        db      $05,$0F,$05,$00,$00,$00,$00,$00,$50,$F0,$F0,$50,$00,$00,$00,$05 ; $6FD8
        db      $0F,$0A,$0F,$05,$00,$00,$00,$50,$F0,$AA,$A0,$F0,$50,$00,$05,$0F ; $6FE8
        db      $0A,$AA,$AA,$0F,$05,$00,$10,$F0,$AA,$AA,$AA,$A0,$F0,$40,$4F,$0A ; $6FF8
        db      $AA,$AA,$AA,$AA,$0F,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7008
        db      $AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7018
        db      $AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7028
        db      $AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7038
        db      $AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7048
        db      $AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA ; $7058
        db      $AA,$AA,$AA,$AA,$A3,$10,$4F,$0A,$AA,$AA,$AA,$AA,$0F,$10,$10,$F0 ; $7068
        db      $AA,$AA,$AA,$A0,$F0,$40,$05,$0F,$0A,$AA,$AA,$0F,$05,$00,$00,$50 ; $7078
        db      $F0,$AA,$A0,$F0,$50,$00,$00,$05,$0F,$0A,$0F,$05,$00,$00,$00,$00 ; $7088
        db      $50,$F0,$F0,$50,$00,$00,$00,$00,$05,$0F,$05,$00,$00,$00,$00,$00 ; $7098
        db      $00,$50,$50,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$0F,$0E ; $70A8
        db      $08,$1E,$00,$00,$55,$55,$55,$54,$00,$00,$00,$01,$00,$00,$00,$01 ; $70B8
        db      $00,$00,$00,$04,$FF,$FF,$FF,$FC,$40,$00,$00,$04,$C0,$00,$00,$0C ; $70C8
        db      $40,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$13,$2A,$AA,$AA,$A3 ; $70D8
        db      $10,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$A8 ; $70E8
        db      $C4,$00,$01,$32,$AA,$AA,$AA,$AA,$31,$00,$01,$32,$AA,$AA,$AA,$AA ; $70F8
        db      $31,$00,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA ; $7108
        db      $8C,$40,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$13,$2A,$AA,$AA,$AA,$AA ; $7118
        db      $A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA ; $7128
        db      $A8,$C4,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$13,$2A,$AA,$AA,$AA,$AA ; $7138
        db      $A3,$10,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA ; $7148
        db      $8C,$40,$01,$32,$AA,$AA,$AA,$AA,$31,$00,$01,$32,$AA,$AA,$AA,$AA ; $7158
        db      $31,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$A8 ; $7168
        db      $C4,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$13,$2A,$AA,$AA,$A3 ; $7178
        db      $10,$00,$00,$04,$C0,$00,$00,$0C,$40,$00,$00,$04,$FF,$FF,$FF,$FC ; $7188
        db      $40,$00,$00,$01,$00,$00,$00,$01,$00,$00,$00,$00,$55,$55,$55,$54 ; $7198
        db      $00,$00,$EF,$10,$04,$1F,$14,$25,$3E,$01,$00,$00,$00,$06,$00,$00 ; $71A8
        db      $00,$0A,$00,$00,$00,$1A,$01,$A9,$00,$2A,$02,$5A,$00,$2A,$06,$6A ; $71B8
        db      $40,$6A,$09,$AA,$80,$6A,$09,$AA,$80,$6A,$09,$AA,$80,$6A,$09,$AA ; $71C8
        db      $80,$6A,$09,$AA,$80,$66,$06,$66,$40,$66,$01,$A9,$00,$26,$00,$64 ; $71D8
        db      $00,$16,$00,$64,$00,$06,$00,$64,$00,$06,$00,$64,$00,$06,$00,$64 ; $71E8
        db      $00,$06,$00,$64,$00,$3F,$00,$FC,$00,$3F,$00,$FC,$00,$3F,$00,$FC ; $71F8
        db      $00,$3F,$00,$FC,$00,$3F,$00,$FC,$00,$3F,$00,$FC,$00,$3F,$00,$FC ; $7208
        db      $00,$3F,$00,$FC,$00,$3F,$00,$FC,$00,$3F,$00,$FC,$00,$3F,$00,$FC ; $7218
        db      $00,$3F,$00,$FC,$00,$15,$0D,$02,$1C,$14,$25,$3E,$44,$40,$88,$80 ; $7228
        db      $88,$80,$88,$80,$88,$80,$88,$80,$88,$80,$99,$80,$AA,$80,$99,$80 ; $7238
        db      $6A,$40,$19,$00,$19,$00,$19,$00,$19,$00,$19,$00,$3F,$00,$3F,$00 ; $7248
        db      $3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00 ; $7258
        db      $3F,$00,$3F,$00,$08,$09,$03,$16,$08,$00,$00,$02,$00,$00,$02,$00 ; $7268
        db      $00,$00,$80,$00,$00,$20,$00,$00,$20,$00,$00,$80,$2A,$00,$80,$80 ; $7278
        db      $00,$22,$00,$00,$0A,$00,$00,$08,$00,$00,$08,$00,$00,$20,$00,$00 ; $7288
        db      $80,$00,$00,$80,$00,$02,$00,$00,$08,$00,$00,$20,$00,$00,$20,$00 ; $7298
        db      $00,$80,$00,$00,$80,$00,$00,$80,$00,$00,$14,$13,$0C,$27,$1D,$20 ; $72A8
        db      $30,$00,$00,$00,$01,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $72B8
        db      $55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55 ; $72C8
        db      $40,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$55,$50,$00,$00,$00 ; $72D8
        db      $00,$00,$01,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$05,$55 ; $72E8
        db      $55,$55,$55,$55,$55,$40,$00,$00,$00,$00,$15,$55,$55,$55,$55,$55 ; $72F8
        db      $55,$50,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00 ; $7308
        db      $00,$00,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00,$00,$01,$55,$55 ; $7318
        db      $55,$55,$55,$55,$55,$55,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55 ; $7328
        db      $55,$55,$40,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00 ; $7338
        db      $00,$15,$55,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$55 ; $7348
        db      $55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$55,$55,$55,$55,$55 ; $7358
        db      $55,$55,$50,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00 ; $7368
        db      $00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00,$55,$55,$55 ; $7378
        db      $55,$55,$55,$55,$55,$55,$54,$00,$00,$55,$55,$55,$55,$55,$55,$55 ; $7388
        db      $55,$55,$54,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00 ; $7398
        db      $00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00,$55,$55,$55 ; $73A8
        db      $55,$55,$55,$55,$55,$55,$54,$00,$00,$55,$55,$55,$55,$55,$55,$55 ; $73B8
        db      $55,$55,$54,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$54,$00 ; $73C8
        db      $00,$15,$55,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$55 ; $73D8
        db      $55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$55,$55,$55,$55,$55 ; $73E8
        db      $55,$55,$50,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00 ; $73F8
        db      $00,$05,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00,$00,$01,$55,$55 ; $7408
        db      $55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55 ; $7418
        db      $55,$54,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$54,$00,$00 ; $7428
        db      $00,$00,$15,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$05,$55 ; $7438
        db      $55,$55,$55,$55,$55,$40,$00,$00,$00,$00,$01,$55,$55,$55,$55,$55 ; $7448
        db      $55,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$55,$50,$00,$00,$00 ; $7458
        db      $00,$00,$00,$05,$55,$55,$55,$55,$40,$00,$00,$00,$00,$00,$00,$00 ; $7468
        db      $55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$00 ; $7478
        db      $00,$00,$00,$00,$00,$13,$13,$0C,$27,$1D,$20,$30,$00,$00,$00,$05 ; $7488
        db      $55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55,$50,$00 ; $7498
        db      $00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$55,$00,$00,$00,$00,$00 ; $74A8
        db      $00,$00,$55,$55,$55,$55,$55,$40,$00,$00,$00,$00,$00,$05,$55,$55 ; $74B8
        db      $55,$55,$55,$54,$00,$00,$00,$00,$00,$15,$55,$55,$55,$55,$55,$55 ; $74C8
        db      $00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$40,$00,$00,$00 ; $74D8
        db      $01,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$01,$55,$55,$55 ; $74E8
        db      $55,$55,$55,$55,$50,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55 ; $74F8
        db      $54,$00,$00,$00,$15,$55,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00 ; $7508
        db      $15,$55,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55 ; $7518
        db      $55,$55,$55,$55,$55,$40,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55 ; $7528
        db      $55,$40,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00,$00 ; $7538
        db      $00,$01,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$55 ; $7548
        db      $55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55 ; $7558
        db      $55,$50,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$50,$00,$00 ; $7568
        db      $00,$00,$00,$00,$00,$00,$01,$55,$55,$50,$00,$00,$00,$00,$00,$00 ; $7578
        db      $00,$05,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55 ; $7588
        db      $55,$50,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$50,$00,$00 ; $7598
        db      $00,$01,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$05,$55,$55,$55 ; $75A8
        db      $55,$55,$55,$55,$55,$40,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55 ; $75B8
        db      $55,$40,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$40,$00,$00 ; $75C8
        db      $15,$55,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$15,$55,$55,$55 ; $75D8
        db      $55,$55,$55,$55,$55,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55 ; $75E8
        db      $54,$00,$00,$00,$01,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00 ; $75F8
        db      $01,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$55,$55,$55 ; $7608
        db      $55,$55,$55,$55,$40,$00,$00,$00,$00,$15,$55,$55,$55,$55,$55,$55 ; $7618
        db      $00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$54,$00,$00,$00,$00 ; $7628
        db      $00,$00,$55,$55,$55,$55,$55,$40,$00,$00,$00,$00,$00,$00,$15,$55 ; $7638
        db      $55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55,$50,$00 ; $7648
        db      $00,$00,$00,$00,$00,$00,$00,$05,$55,$54,$00,$00,$00,$00,$00,$00 ; $7658
        db      $14,$13,$0C,$27,$1D,$20,$30,$00,$00,$00,$00,$55,$55,$40,$00,$00 ; $7668
        db      $00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$00,$00,$00,$00,$00,$00 ; $7678
        db      $00,$01,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$05,$55,$55 ; $7688
        db      $55,$55,$54,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$40 ; $7698
        db      $00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00 ; $76A8
        db      $00,$05,$55,$55,$55,$55,$55,$54,$00,$00,$00,$00,$00,$01,$55,$55 ; $76B8
        db      $55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$55,$55 ; $76C8
        db      $00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$40,$00,$00,$00 ; $76D8
        db      $00,$00,$00,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$15 ; $76E8
        db      $55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55,$55 ; $76F8
        db      $54,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$54,$00,$00,$00 ; $7708
        db      $00,$00,$00,$00,$05,$55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00 ; $7718
        db      $01,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55,$55 ; $7728
        db      $55,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$00 ; $7738
        db      $00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00 ; $7748
        db      $00,$00,$15,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55 ; $7758
        db      $55,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$00 ; $7768
        db      $00,$00,$00,$00,$00,$15,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00 ; $7778
        db      $01,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55 ; $7788
        db      $54,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$54,$00,$00,$00 ; $7798
        db      $00,$00,$00,$01,$55,$55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$15 ; $77A8
        db      $55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55 ; $77B8
        db      $50,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$40,$00,$00,$00 ; $77C8
        db      $00,$00,$15,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$01,$55,$55 ; $77D8
        db      $55,$55,$55,$55,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$54 ; $77E8
        db      $00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00 ; $77F8
        db      $00,$55,$55,$55,$55,$55,$55,$40,$00,$00,$00,$00,$00,$05,$55,$55 ; $7808
        db      $55,$55,$54,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55,$55,$50,$00 ; $7818
        db      $00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$00,$00,$00,$00,$00,$00 ; $7828
        db      $00,$00,$00,$55,$55,$40,$00,$00,$00,$00,$00,$00,$00,$90,$A6,$FF ; $7838
        db      $00,$00,$00,$00,$00,$00,$00,$90,$A6,$FF,$DA,$FF,$00,$00,$00,$00 ; $7848
        db      $00,$90,$A6,$FF,$B5,$FF,$00,$00,$00,$43,$78,$4D,$78,$57,$78,$00 ; $7858
        db      $00,$90,$A6,$FF,$CE,$FF,$00,$00,$00,$00,$00,$90,$00,$00,$EA,$FF ; $7868
        db      $00,$00,$00,$00,$00,$90,$5A,$00,$CE,$FF,$00,$00,$00,$67,$78,$71 ; $7878
        db      $78,$7B,$78,$04,$00,$81,$02,$B2,$72,$02,$8D,$74,$02,$68,$76,$02 ; $7888
        db      $8D,$74,$00,$8E,$78,$00,$00,$00,$0D,$06,$06,$0F,$03,$07,$00,$0F ; $7898
        db      $00,$04,$04,$04,$08,$08,$08,$00,$00,$00,$00,$0E,$07,$08,$00,$06 ; $78A8
        db      $00,$0A,$0F,$0D,$00,$00,$00,$0A,$00,$00,$00,$0B,$0F,$0D,$00,$0F ; $78B8
        db      $07,$00,$0F,$0F,$0F,$1A,$6C,$6F,$6F,$6B,$20,$61,$74,$20,$74,$68 ; $78C8
        db      $69,$73,$20,$74,$61,$62,$6C,$65,$20,$73,$65,$74,$74,$69,$6E,$67 ; $78D8
        db      $21,$77,$68,$69,$63,$68,$20,$70,$6C,$61,$74,$65,$20,$77,$61,$73 ; $78E8
        db      $20,$6E,$6F,$74,$20,$6F,$6E,$20,$74,$68,$65,$20,$74,$61,$62,$6C ; $78F8
        db      $65,$3F,$23,$77,$68,$69,$63,$68,$20,$73,$65,$72,$69,$65,$73,$20 ; $7908
        db      $6F,$66,$20,$70,$6C,$61,$74,$65,$73,$20,$69,$73,$20,$74,$68,$65 ; $7918
        db      $20,$73,$61,$6D,$65,$3F,$1C,$68,$6F,$77,$20,$6D,$61,$6E,$79,$20 ; $7928
        db      $70,$6C,$61,$74,$65,$73,$20,$77,$65,$72,$65,$20,$72,$6F,$75,$6E ; $7938
        db      $64,$3F,$20,$1C,$68,$6F,$77,$20,$6D,$61,$6E,$79,$20,$70,$6C,$61 ; $7948
        db      $74,$65,$73,$20,$77,$65,$72,$65,$20,$73,$71,$75,$61,$72,$65,$3F ; $7958
        db      $26,$68,$6F,$77,$20,$6D,$61,$6E,$79,$20,$74,$68,$72,$65,$65,$20 ; $7968
        db      $73,$69,$64,$65,$64,$20,$70,$6C,$61,$74,$65,$73,$20,$61,$72,$65 ; $7978
        db      $20,$74,$68,$65,$72,$65,$3F,$31,$48,$D1,$48,$23,$49,$C3,$49,$E6 ; $7988
        db      $6A,$DA,$6B,$CA,$6D,$C6,$6E,$C6,$6C,$E6,$6A,$DA,$6B,$C6,$6E,$CA ; $7998
        db      $6D,$C2,$6F,$DA,$6B,$E6,$6A,$C2,$6F,$CA,$6D,$C6,$6E,$CA,$6D,$C6 ; $79A8
        db      $6E,$CA,$6D,$C6,$6C,$CA,$6D,$C6,$6E,$CA,$6D,$DA,$6B,$B6,$70,$E6 ; $79B8
        db      $6A,$B6,$70,$C6,$6E,$E6,$6A,$DA,$6B,$CA,$6D,$DA,$6B,$C6,$6C,$CA ; $79C8
        db      $6D,$C6,$6E,$B6,$70,$DA,$6B,$C6,$6C,$C6,$6E,$CA,$6D,$C2,$6F,$C2 ; $79D8
        db      $6F,$C6,$6E,$E6,$6A,$C6,$6C,$CA,$6D,$C2,$6F,$CA,$6D,$DA,$6B,$E6 ; $79E8
        db      $6A,$C6,$6E,$C6,$6C,$CA,$6D,$E6,$6A,$DA,$6B,$C6,$6C,$E6,$6A,$CA ; $79F8
        db      $6D,$C6,$6C,$DA,$6B,$C6,$6E,$C6,$6C,$E6,$6A,$C6,$6C,$B6,$70,$CA ; $7A08
        db      $6D,$B6,$70,$C6,$6E,$E6,$6A,$C6,$6C,$C6,$6E,$C2,$6F,$CA,$6D,$E6 ; $7A18
        db      $6A,$CA,$6D,$C6,$6C,$C6,$6E,$E6,$6A,$C6,$6C,$E6,$6A,$E6,$6A,$C6 ; $7A28
        db      $6C,$DA,$6B,$DA,$6B,$C2,$6F,$B6,$70,$97,$79,$19,$7A,$D3,$79,$E7 ; $7A38
        db      $79,$FB,$79,$A1,$79,$DD,$79,$C9,$79,$97,$79,$C9,$79,$23,$7A,$97 ; $7A48
        db      $79,$B5,$79,$BF,$79,$B5,$79,$23,$7A,$DD,$79,$2D,$7A,$37,$7A,$E7 ; $7A58
        db      $79,$97,$79,$19,$7A,$D3,$79,$E7,$79,$FB,$79,$A1,$79,$DD,$79,$C9 ; $7A68
        db      $79,$97,$79,$C9,$79,$D3,$79,$C9,$79,$E7,$79,$FB,$79,$95,$79,$93 ; $7A78
        db      $79,$8F,$79,$95,$79,$93,$79,$8F,$79,$A1,$79,$BF,$79,$DD,$79,$F1 ; $7A88
        db      $79,$D3,$79,$97,$79,$AB,$79,$E7,$79,$A1,$79,$19,$7A,$F1,$79,$FB ; $7A98
        db      $79,$BF,$79,$AB,$79,$93,$79,$95,$79,$91,$79,$91,$79,$95,$79,$93 ; $7AA8
        db      $79,$AB,$79,$C9,$79,$A1,$79,$FB,$79,$AB,$79,$05,$7A,$D3,$79,$BF ; $7AB8
        db      $79,$05,$7A,$23,$7A,$0F,$7A,$BF,$79,$FB,$79,$97,$79,$91,$79,$91 ; $7AC8
        db      $79,$93,$79,$93,$79,$91,$79,$91,$79,$0A,$79,$0A,$79,$0A,$79,$0A ; $7AD8
        db      $79,$0A,$79,$0A,$79,$0A,$79,$0A,$79,$0A,$79,$0A,$79,$E8,$78,$E8 ; $7AE8
        db      $78,$E8,$78,$E8,$78,$2E,$79,$2E,$79,$4B,$79,$4B,$79,$68,$79,$68 ; $7AF8
        db      $79,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$05,$05,$05,$05,$05 ; $7B08
        db      $05,$05,$05,$05,$05,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01 ; $7B18
        db      $01,$01,$01,$01,$01,$01,$01,$01,$01                             ; $7B28 preserved bytes

TABLE_MEMORY_PRESENT_RENDER:
        rst     $08                                                             ; $7B31 colon entry
        dw      XT_0                                                            ; $7B32 execution token
        dw      XT_DO                                                           ; $7B34 execution token
        dw      XT_DUP                                                          ; $7B36 execution token
        dw      XT_I                                                            ; $7B38 execution token
        dw      XT_2splat                                                       ; $7B3A execution token
        dw      XT_plus                                                         ; $7B3C execution token
        dw      XT_at                                                           ; $7B3E execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7B40 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7B42 execution token
        dw      XT_LIT                                                          ; $7B44 execution token
        dw      $722D                                                           ; $7B46 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7B48 execution token
        dw      XT_LIT                                                          ; $7B4A execution token
        dw      $71AA                                                           ; $7B4C inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7B4E execution token
        dw      XT_GET_CURRENT_TASK                                             ; $7B50 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $7B52 execution token
        dw      XT_LITbyte                                                      ; $7B54 execution token
        db      $3E                                                             ; $7B56 inline byte
        dw      XT_plus                                                         ; $7B57 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7B59 execution token
        dw      XT_LOOP                                                         ; $7B5B execution token
        dw      XT_DROP                                                         ; $7B5D execution token
        dw      XT_RETURN                                                       ; $7B5F execution token

        db      $CF,$36,$01,$12,$01,$04,$CF                                     ; $7B61 preserved bytes
        db      $01,$EA,$03,$77,$7B,$09,$01,$A5,$FF,$24,$1D,$E2,$03,$7D,$7B,$09 ; $7B68
        db      $01,$82,$FF,$24,$1D,$09,$01,$EB,$FF,$3C,$1D,$2A,$01,$6F,$02,$09 ; $7B78
        db      $01,$6C,$72,$F2,$2C,$0E,$1F,$9B,$1D,$12,$01,$3E,$5A,$01,$24,$1D ; $7B88
        db      $8A,$02,$FD,$00                                                 ; $7B98 preserved bytes

TABLE_MEMORY_CORRECT_RENDER:
        rst     $08                                                             ; $7B9C colon entry
        dw      XT_DUP                                                          ; $7B9D execution token
        dw      XT_LITbyte                                                      ; $7B9F execution token
        db      $04                                                             ; $7BA1 inline byte
        dw      XT_equal                                                        ; $7BA2 execution token
        dw      XT_0BRANCH                                                      ; $7BA4 execution token
        dw      TABLE_MEMORY_CORRECT_RENDER_C_1                                 ; $7BA6 branch target
        dw      XT_LIT                                                          ; $7BA8 execution token
        dw      $FF9B                                                           ; $7BAA inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7BAC execution token
        dw      XT_BRANCH                                                       ; $7BAE execution token
        dw      TABLE_MEMORY_CORRECT_RENDER_C_2                                 ; $7BB0 branch target
TABLE_MEMORY_CORRECT_RENDER_C_1:
        dw      XT_LIT                                                          ; $7BB2 execution token
        dw      $FF79                                                           ; $7BB4 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7BB6 execution token
TABLE_MEMORY_CORRECT_RENDER_C_2:
        dw      XT_LIT                                                          ; $7BB8 execution token
        dw      $FFEF                                                           ; $7BBA inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $7BBC execution token
        dw      XT_0                                                            ; $7BBE execution token
        dw      XT_DO                                                           ; $7BC0 execution token
        dw      XT_I                                                            ; $7BC2 execution token
        dw      XT_ARRAY                                                        ; $7BC4 execution token
        dw      $3188                                                           ; $7BC6 inline word
        dw      XT_at                                                           ; $7BC8 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7BCA execution token
        dw      XT_GET_CURRENT_TASK                                             ; $7BCC execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $7BCE execution token
        dw      XT_LITbyte                                                      ; $7BD0 execution token
        db      $3E                                                             ; $7BD2 inline byte
        dw      XT_plus                                                         ; $7BD3 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7BD5 execution token
        dw      XT_LOOP                                                         ; $7BD7 execution token
        dw      XT_RETURN                                                       ; $7BD9 execution token

TABLE_MEMORY_PRESENT_THREAD:
        rst     $08                                                             ; $7BDB colon entry
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7BDC execution token
        dw      XT_BARRAY                                                       ; $7BDE execution token
        dw      $7B09                                                           ; $7BE0 inline word
        dw      XT_Bat                                                          ; $7BE2 execution token
        dw      XT_DUP                                                          ; $7BE4 execution token
        dw      XT_LITbyte                                                      ; $7BE6 execution token
        db      $05                                                             ; $7BE8 inline byte
        dw      XT_equal                                                        ; $7BE9 execution token
        dw      XT_0BRANCH                                                      ; $7BEB execution token
        dw      TABLE_MEMORY_PRESENT_THREAD_C_1                                 ; $7BED branch target
        dw      XT_LIT                                                          ; $7BEF execution token
        dw      $FF7E                                                           ; $7BF1 inline word
        dw      XT_BRANCH                                                       ; $7BF3 execution token
        dw      TABLE_MEMORY_PRESENT_THREAD_C_2                                 ; $7BF5 branch target
TABLE_MEMORY_PRESENT_THREAD_C_1:
        dw      XT_LIT                                                          ; $7BF7 execution token
        dw      $FF9F                                                           ; $7BF9 inline word
TABLE_MEMORY_PRESENT_THREAD_C_2:
        dw      XT_LIT                                                          ; $7BFB execution token
        dw      $FFEC                                                           ; $7BFD inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7BFF execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $7C01 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7C03 execution token
        dw      XT_DUP                                                          ; $7C05 execution token
        dw      XT_ARRAY                                                        ; $7C07 execution token
        dw      $7A41                                                           ; $7C09 inline word
        dw      XT_at                                                           ; $7C0B execution token
        dw      XT_SWAP                                                         ; $7C0D execution token
        dw      XT_BARRAY                                                       ; $7C0F execution token
        dw      $7B09                                                           ; $7C11 inline word
        dw      XT_Bat                                                          ; $7C13 execution token
        dw      TABLE_MEMORY_PRESENT_RENDER                                     ; $7C15 execution token
        dw      XT_RETURN                                                       ; $7C17 execution token

        db      $CF,$DB,$7B,$12,$01,$2D,$DF,$1B,$2C,$1A,$7B,$4D,$F7,$2C,$1A     ; $7C19 preserved bytes
        db      $01,$09,$7B,$53,$01,$61,$7B,$12,$01,$1E,$DF,$1B,$2C,$1A,$09,$01 ; $7C28
        db      $80,$00,$03,$1F,$A8,$1E,$7B,$4D,$F7,$2C,$1A,$01,$09,$7B,$53,$01 ; $7C38
        db      $61,$7B,$12,$01,$1E,$DF,$1B,$2C,$1A,$37,$23,$FD,$00             ; $7C48 preserved bytes

TABLE_MEMORY_SETUP_ACTION:
        rst     $08                                                             ; $7C55 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7C56 execution token
        dw      XT_LIT                                                          ; $7C58 execution token
        dw      $789D                                                           ; $7C5A inline word
        dw      $2D7C                                                           ; $7C5C execution token
        dw      XT_LIT                                                          ; $7C5E execution token
        dw      $FF9C                                                           ; $7C60 inline word
        dw      XT_LITbyte                                                      ; $7C62 execution token
        db      $14                                                             ; $7C64 inline byte
        dw      XT_LIT                                                          ; $7C65 execution token
        dw      $78CD                                                           ; $7C67 inline word
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7C69 execution token
        dw      XT_BARRAY                                                       ; $7C6B execution token
        dw      $7B1D                                                           ; $7C6D inline word
        dw      XT_Bat                                                          ; $7C6F execution token
        dw      XT_LITbyte                                                      ; $7C71 execution token
        db      $04                                                             ; $7C73 inline byte
        dw      XT_equal                                                        ; $7C74 execution token
        dw      XT_0BRANCH                                                      ; $7C76 execution token
        dw      TABLE_MEMORY_SETUP_ACTION_C_1                                   ; $7C78 branch target
        dw      XT_LIT                                                          ; $7C7A execution token
        dw      $7861                                                           ; $7C7C inline word
        dw      XT_BRANCH                                                       ; $7C7E execution token
        dw      TABLE_MEMORY_SETUP_ACTION_C_2                                   ; $7C80 branch target
TABLE_MEMORY_SETUP_ACTION_C_1:
        dw      XT_LIT                                                          ; $7C82 execution token
        dw      $7885                                                           ; $7C84 inline word
TABLE_MEMORY_SETUP_ACTION_C_2:
        dw      XT_LIT                                                          ; $7C86 execution token
        dw      $2D8C                                                           ; $7C88 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7C8A execution token
        dw      TABLE_MEMORY_PRESENT_THREAD                                     ; $7C8C execution token
        dw      $1F21                                                           ; $7C8E execution token
        dw      XT_LIT                                                          ; $7C90 execution token
        dw      $00B4                                                           ; $7C92 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7C94 execution token
        dw      $1A2C                                                           ; $7C96 execution token
        dw      CFG0_XT_REAPPLY_CACHED_OBJECT_SETUP                             ; $7C98 execution token
        dw      $2D40                                                           ; $7C9A execution token
        dw      XT_LIT                                                          ; $7C9C execution token
        dw      $FF9C                                                           ; $7C9E inline word
        dw      XT_LITbyte                                                      ; $7CA0 execution token
        db      $16                                                             ; $7CA2 inline byte
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7CA3 execution token
        dw      XT_ARRAY                                                        ; $7CA5 execution token
        dw      $7AE1                                                           ; $7CA7 inline word
        dw      XT_at                                                           ; $7CA9 execution token
        dw      CFG0_XT_CACHE_AND_APPLY_OBJECT_SETUP                            ; $7CAB execution token
        dw      XT_LITbyte                                                      ; $7CAD execution token
        db      $03                                                             ; $7CAF inline byte
        dw      XT_0                                                            ; $7CB0 execution token
        dw      XT_DO                                                           ; $7CB2 execution token
        dw      XT_I                                                            ; $7CB4 execution token
        dw      XT_ARRAY                                                        ; $7CB6 execution token
        dw      QUESTION_SLOT_TASK_TABLE_ADDR                                   ; $7CB8 inline word
        dw      XT_at                                                           ; $7CBA execution token
        dw      $1608                                                           ; $7CBC execution token
        dw      XT_LOOP                                                         ; $7CBE execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7CC0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7CC2 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7CC4 execution token
        dw      XT_RETURN                                                       ; $7CC6 execution token
TABLE_MEMORY_CORRECT_ACTION:
        rst     $08                                                             ; $7CC8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7CC9 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7CCB execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7CCD execution token
        dw      XT_LIT                                                          ; $7CCF execution token
        dw      $FFD3                                                           ; $7CD1 inline word
        dw      XT_LITbyte                                                      ; $7CD3 execution token
        db      $05                                                             ; $7CD5 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7CD6 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7CD8 execution token
        dw      XT_DUP                                                          ; $7CDA execution token
        dw      XT_ARRAY                                                        ; $7CDC execution token
        dw      $7A69                                                           ; $7CDE inline word
        dw      XT_at                                                           ; $7CE0 execution token
        dw      XT_SWAP                                                         ; $7CE2 execution token
        dw      XT_BARRAY                                                       ; $7CE4 execution token
        dw      $7B1D                                                           ; $7CE6 inline word
        dw      XT_Bat                                                          ; $7CE8 execution token
        dw      TABLE_MEMORY_PRESENT_RENDER                                     ; $7CEA execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7CEC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7CEE execution token
        dw      $2D40                                                           ; $7CF0 execution token
        dw      TABLE_MEMORY_PRESENT_THREAD                                     ; $7CF2 execution token
        dw      $1E9B                                                           ; $7CF4 execution token
        dw      XT_LITbyte                                                      ; $7CF6 execution token
        db      $1E                                                             ; $7CF8 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7CF9 execution token
        dw      $1A2C                                                           ; $7CFB execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7CFD execution token
        dw      XT_BARRAY                                                       ; $7CFF execution token
        dw      $7B09                                                           ; $7D01 inline word
        dw      XT_Bat                                                          ; $7D03 execution token
        dw      TABLE_MEMORY_CORRECT_RENDER                                     ; $7D05 execution token
        dw      XT_LITbyte                                                      ; $7D07 execution token
        db      $1E                                                             ; $7D09 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D0A execution token
        dw      $1A2C                                                           ; $7D0C execution token
        dw      XT_LIT                                                          ; $7D0E execution token
        dw      $F6E7                                                           ; $7D10 inline word
        dw      XT_BONE                                                         ; $7D12 execution token
        dw      XT_LIT                                                          ; $7D14 execution token
        dw      $0086                                                           ; $7D16 inline word
        dw      XT_LIT                                                          ; $7D18 execution token
        dw      $FFEC                                                           ; $7D1A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D1C execution token
        dw      $1E9B                                                           ; $7D1E execution token
        dw      XT_LIT                                                          ; $7D20 execution token
        dw      $7668                                                           ; $7D22 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D24 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7D26 execution token
        dw      XT_LITbyte                                                      ; $7D28 execution token
        db      $2D                                                             ; $7D2A inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D2B execution token
        dw      $1A2C                                                           ; $7D2D execution token
        dw      $1EDC                                                           ; $7D2F execution token
        dw      XT_LIT                                                          ; $7D31 execution token
        dw      $007F                                                           ; $7D33 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7D35 execution token
        dw      XT_LIT                                                          ; $7D37 execution token
        dw      $FDB2                                                           ; $7D39 inline word
        dw      $1D5B                                                           ; $7D3B execution token
        dw      XT_LIT                                                          ; $7D3D execution token
        dw      $FF7B                                                           ; $7D3F inline word
        dw      $1C5F                                                           ; $7D41 execution token
        dw      $1F21                                                           ; $7D43 execution token
        dw      XT_1                                                            ; $7D45 execution token
        dw      XT_SET_TASK_BYTE_0C                                             ; $7D47 execution token
        dw      XT_LIT                                                          ; $7D49 execution token
        dw      $788B                                                           ; $7D4B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D4D execution token
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE                               ; $7D4F execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7D51 execution token
        dw      $15E7                                                           ; $7D53 execution token
        dw      TABLE_MEMORY_CORRECT_THREAD                                     ; $7D55 execution token
        dw      $1C43                                                           ; $7D57 execution token
        dw      $19E9                                                           ; $7D59 execution token
        dw      $1DE0                                                           ; $7D5B execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7D5D execution token
        dw      XT_RETURN                                                       ; $7D5F execution token

TABLE_MEMORY_SECOND_ACTION:
        rst     $08                                                             ; $7D61 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D62 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7D64 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D66 execution token
        dw      XT_LIT                                                          ; $7D68 execution token
        dw      $FFD3                                                           ; $7D6A inline word
        dw      XT_LITbyte                                                      ; $7D6C execution token
        db      $05                                                             ; $7D6E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7D6F execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7D71 execution token
        dw      XT_DUP                                                          ; $7D73 execution token
        dw      XT_ARRAY                                                        ; $7D75 execution token
        dw      $7A91                                                           ; $7D77 inline word
        dw      XT_at                                                           ; $7D79 execution token
        dw      XT_SWAP                                                         ; $7D7B execution token
        dw      XT_BARRAY                                                       ; $7D7D execution token
        dw      $7B1D                                                           ; $7D7F inline word
        dw      XT_Bat                                                          ; $7D81 execution token
        dw      TABLE_MEMORY_PRESENT_RENDER                                     ; $7D83 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7D85 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D87 execution token
        dw      $2D40                                                           ; $7D89 execution token
        dw      XT_LIT                                                          ; $7D8B execution token
        dw      $7C19                                                           ; $7D8D inline word
        dw      $2CDD                                                           ; $7D8F execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7D91 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7D93 execution token
        dw      XT_RETURN                                                       ; $7D95 execution token

TABLE_MEMORY_REMAINING_ACTION:
        rst     $08                                                             ; $7D97 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D98 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7D9A execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D9C execution token
        dw      XT_LIT                                                          ; $7D9E execution token
        dw      $FFD3                                                           ; $7DA0 inline word
        dw      XT_LITbyte                                                      ; $7DA2 execution token
        db      $05                                                             ; $7DA4 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7DA5 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7DA7 execution token
        dw      XT_DUP                                                          ; $7DA9 execution token
        dw      XT_ARRAY                                                        ; $7DAB execution token
        dw      $7AB9                                                           ; $7DAD inline word
        dw      XT_at                                                           ; $7DAF execution token
        dw      XT_SWAP                                                         ; $7DB1 execution token
        dw      XT_BARRAY                                                       ; $7DB3 execution token
        dw      $7B1D                                                           ; $7DB5 inline word
        dw      XT_Bat                                                          ; $7DB7 execution token
        dw      TABLE_MEMORY_PRESENT_RENDER                                     ; $7DB9 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7DBB execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DBD execution token
        dw      $2D40                                                           ; $7DBF execution token
        dw      XT_LIT                                                          ; $7DC1 execution token
        dw      $7C19                                                           ; $7DC3 inline word
        dw      $2CDD                                                           ; $7DC5 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7DC7 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7DC9 execution token
        dw      XT_RETURN                                                       ; $7DCB execution token

TABLE_MEMORY_ACTIONS:
        db      $04                                                             ; $7DCD action count
        dw      TABLE_MEMORY_SETUP_ACTION                                       ; $7DCE setup action
        dw      TABLE_MEMORY_CORRECT_ACTION                                     ; $7DD0 correct answer
        dw      TABLE_MEMORY_SECOND_ACTION                                      ; $7DD2 second answer
        dw      TABLE_MEMORY_REMAINING_ACTION                                   ; $7DD4 remaining answer

; Rooted by tier slot 2.
TABLE_MEMORY_V10_19_T2_INIT:
        rst     $08                                                          ; $7DD6
        dw      XT_LITbyte                                                      ; $7DD7
        db      $0A                                                              ; $7DD9
        dw      XT_RANDOM_BELOW                                                 ; $7DDA
        dw      XT_LITbyte                                                      ; $7DDC
        db      $0A                                                              ; $7DDE
        dw      XT_plus                                                         ; $7DDF
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7DE1
        dw      XT_LIT                                                          ; $7DE3
        dw      PPQ8_TABLE_MEMORY_ACTIONS                                       ; $7DE5
        dw      XT_RETURN                                                       ; $7DE7

; Rooted by tier slot 4.
TABLE_MEMORY_V5_19_T4_INIT:
        rst     $08                                                          ; $7DE9
        dw      XT_LITbyte                                                      ; $7DEA
        db      $0F                                                              ; $7DEC
        dw      XT_RANDOM_BELOW                                                 ; $7DED
        dw      XT_LITbyte                                                      ; $7DEF
        db      $05                                                              ; $7DF1
        dw      XT_plus                                                         ; $7DF2
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7DF4
        dw      XT_LIT                                                          ; $7DF6
        dw      PPQ8_TABLE_MEMORY_ACTIONS                                       ; $7DF8
        dw      XT_RETURN                                                       ; $7DFA

; Rooted by tier slot 7.
TABLE_MEMORY_V0_9_T7_INIT:
        rst     $08                                                          ; $7DFC
        dw      XT_LITbyte                                                      ; $7DFD
        db      $0A                                                              ; $7DFF
        dw      XT_RANDOM_BELOW                                                 ; $7E00
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7E02
        dw      XT_LIT                                                          ; $7E04
        dw      PPQ8_TABLE_MEMORY_ACTIONS                                       ; $7E06
        dw      XT_RETURN                                                       ; $7E08

; Rooted by tier slot 6.
TABLE_MEMORY_V14_19_T6_INIT:
        rst     $08                                                          ; $7E0A
        dw      XT_LITbyte                                                      ; $7E0B
        db      $06                                                              ; $7E0D
        dw      XT_RANDOM_BELOW                                                 ; $7E0E
        dw      XT_LITbyte                                                      ; $7E10
        db      $0E                                                              ; $7E12
        dw      XT_plus                                                         ; $7E13
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7E15
        dw      XT_LIT                                                          ; $7E17
        dw      PPQ8_TABLE_MEMORY_ACTIONS                                       ; $7E19
        dw      XT_RETURN                                                       ; $7E1B

; Root tier slot 0.
QUESTION_TIER_0_BUCKET:
        db      $01                                                             ; $7E1D initializer count
        dw      IMAGE_MIRROR_V0_1_T0_2_INIT                                     ; $7E1E entry 0

; Root tier slot 1.
QUESTION_TIER_1_BUCKET:
        db      $01                                                             ; $7E20 initializer count
        dw      VISUAL_PROGRESSION_V2_T1_INIT                                   ; $7E21 entry 0

; Root tier slot 2.
QUESTION_TIER_2_BUCKET:
        db      $02                                                             ; $7E23 initializer count
        dw      IMAGE_MIRROR_V0_1_T0_2_INIT                                     ; $7E24 entry 0
        dw      TABLE_MEMORY_V10_19_T2_INIT                                     ; $7E26 entry 1

; Root tier slot 3.
QUESTION_TIER_3_BUCKET:
        db      $01                                                             ; $7E28 initializer count
        dw      VISUAL_PROGRESSION_VFIXED_T3_INIT                               ; $7E29 entry 0

; Root tier slot 4.
QUESTION_TIER_4_BUCKET:
        db      $01                                                             ; $7E2B initializer count
        dw      TABLE_MEMORY_V5_19_T4_INIT                                      ; $7E2C entry 0

; Root tier slot 5.
QUESTION_TIER_5_BUCKET:
        db      $01                                                             ; $7E2E initializer count
        dw      VISUAL_PROGRESSION_VFIXED_T5_INIT                               ; $7E2F entry 0

; Root tier slot 6.
QUESTION_TIER_6_BUCKET:
        db      $01                                                             ; $7E31 initializer count
        dw      TABLE_MEMORY_V14_19_T6_INIT                                     ; $7E32 entry 0

; Root tier slot 7.
QUESTION_TIER_7_BUCKET:
        db      $01                                                             ; $7E34 initializer count
        dw      TABLE_MEMORY_V0_9_T7_INIT                                       ; $7E35 entry 0

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_TIER_0_BUCKET                                          ; $7E37 tier 0
        dw      QUESTION_TIER_1_BUCKET                                          ; $7E39 tier 1
        dw      QUESTION_TIER_2_BUCKET                                          ; $7E3B tier 2
        dw      QUESTION_TIER_3_BUCKET                                          ; $7E3D tier 3
        dw      QUESTION_TIER_4_BUCKET                                          ; $7E3F tier 4
        dw      QUESTION_TIER_5_BUCKET                                          ; $7E41 tier 5
        dw      QUESTION_TIER_6_BUCKET                                          ; $7E43 tier 6
        dw      QUESTION_TIER_7_BUCKET                                          ; $7E45 tier 7
        db      $09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$12,$01,$3C,$09 ; $7E47
        db      $01,$D8,$FF,$54,$1D,$0C,$1E,$12,$01,$0F,$DF,$1B,$2C,$1A,$50,$8C ; $7E57
        db      $FD,$00,$04,$56,$7D,$A1,$7D,$EB,$7D,$26,$7E,$CF,$12,$01,$04,$32 ; $7E67
        db      $1B,$2B,$8B,$09,$01,$69,$7E,$FD,$00,$02,$9E,$6E,$72,$7E,$02,$B7 ; $7E77
        db      $6E,$9D,$79,$03,$D5,$6E,$6A,$54,$72,$7E,$03,$F3,$6E,$7C,$54,$29 ; $7E87
        db      $68,$03,$11,$6F,$93,$54,$9D,$79,$02,$2F,$6F,$29,$68,$02,$4D,$6F ; $7E97
        db      $29,$68,$02,$6B,$6F,$29,$68,$80,$7E,$85,$7E,$8A,$7E,$91,$7E,$98 ; $7EA7
        db      $7E,$9F,$7E,$A4,$7E,$A9,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EB7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F07
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F17
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F27
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F37
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F47
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F57
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F67
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F77
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F87
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F97
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF                             ; $7FF7
