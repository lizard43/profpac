; Professor Pac-Man question ROM PPQ13
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ13_CUBE_COUNT_ACTIONS                     equ     $5101
PPQ13_ODD_ONE_OUT_ACTIONS                    equ     $7A92
PPQ13_VISUAL_PROGRESSION_ACTIONS             equ     $7E5F


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
        db      $01,$0C,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$09,$48,$0E ; $4822
        db      $0E,$08,$0F,$AF,$78,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4832
        db      $00,$04,$00,$00,$00,$00,$00,$00,$00,$80,$40,$00,$00,$00,$00,$00 ; $4842
        db      $08,$04,$04,$00,$00,$00,$00,$00,$80,$80,$40,$40,$00,$00,$00,$09 ; $4852
        db      $08,$04,$04,$04,$00,$00,$00,$90,$80,$40,$40,$40,$40,$00,$09,$29 ; $4862
        db      $24,$08,$04,$04,$04,$00,$00,$90,$80,$82,$40,$40,$40,$00,$00,$09 ; $4872
        db      $08,$04,$04,$04,$00,$00,$00,$00,$90,$82,$40,$40,$00,$00,$00,$00 ; $4882
        db      $09,$04,$04,$00,$00,$00,$00,$00,$00,$82,$80,$00,$00,$00,$00,$00 ; $4892
        db      $00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $48A2
        db      $00,$0F,$00,$00,$00,$00,$00,$00,$00,$FB,$F0,$00,$00,$00,$00,$00 ; $48B2
        db      $0F,$FF,$BF,$00,$00,$00,$00,$00,$FF,$FB,$FB,$F0,$00,$00,$00,$0F ; $48C2
        db      $FF,$FF,$BF,$BF,$00,$00,$00,$FF,$FF,$FB,$FB,$FB,$F0,$00,$0F,$FF ; $48D2
        db      $FF,$BF,$BF,$BF,$BF,$00,$FF,$FF,$FB,$FF,$FB,$FB,$FB,$F0,$0F,$FF ; $48E2
        db      $FF,$FF,$BF,$BF,$BF,$00,$00,$FF,$FF,$FB,$FB,$FB,$F0,$00,$00,$0F ; $48F2
        db      $FF,$FF,$BF,$BF,$00,$00,$00,$00,$FF,$FB,$FB,$F0,$00,$00,$00,$00 ; $4902
        db      $0F,$FF,$FF,$00,$00,$00,$00,$00,$00,$FF,$F0,$00,$00,$00,$00,$00 ; $4912
        db      $00,$0F,$00,$00,$00,$00,$0E,$0E,$08,$0F,$1C,$29,$30,$00,$00,$00 ; $4922
        db      $05,$00,$00,$00,$00,$00,$00,$00,$59,$50,$00,$00,$00,$00,$00,$05 ; $4932
        db      $95,$95,$00,$00,$00,$00,$00,$59,$59,$59,$50,$00,$00,$00,$05,$95 ; $4942
        db      $95,$95,$95,$00,$00,$00,$59,$59,$59,$59,$59,$50,$00,$05,$95,$95 ; $4952
        db      $95,$95,$95,$95,$00,$59,$59,$59,$59,$59,$59,$59,$50,$05,$95,$95 ; $4962
        db      $95,$95,$95,$95,$00,$00,$59,$59,$59,$59,$59,$50,$00,$00,$05,$95 ; $4972
        db      $95,$95,$95,$00,$00,$00,$00,$59,$59,$59,$50,$00,$00,$00,$00,$05 ; $4982
        db      $95,$95,$00,$00,$00,$00,$00,$00,$59,$50,$00,$00,$00,$00,$00,$00 ; $4992
        db      $05,$00,$00,$00,$00,$FE,$05,$04,$16,$AF,$58,$00,$00,$00,$00,$10 ; $49A2
        db      $00,$00,$00,$D0,$00,$00,$14,$D0,$00,$00,$D4,$D0,$00,$14,$D4,$D0 ; $49B2
        db      $00,$D4,$D4,$D0,$04,$D4,$D4,$D0,$D4,$D4,$D4,$D0,$D4,$D4,$D4,$D0 ; $49C2
        db      $D4,$D4,$D4,$D0,$D4,$D4,$D4,$D0,$D4,$D4,$D4,$D0,$D4,$D4,$D4,$D0 ; $49D2
        db      $D4,$D4,$D4,$D0,$D4,$D4,$D4,$D0,$D4,$D4,$D4,$C0,$D4,$D4,$D4,$00 ; $49E2
        db      $D4,$D4,$C0,$00,$D4,$D4,$00,$00,$D4,$C0,$00,$00,$D4,$00,$00,$00 ; $49F2
        db      $C0,$00,$00,$00,$00,$00,$00,$20,$00,$00,$03,$20,$00,$00,$27,$20 ; $4A02
        db      $00,$03,$27,$20,$00,$27,$27,$20,$03,$27,$27,$20,$07,$27,$27,$20 ; $4A12
        db      $27,$27,$27,$20,$27,$27,$27,$20,$27,$27,$27,$20,$27,$27,$27,$20 ; $4A22
        db      $27,$27,$27,$20,$27,$27,$27,$20,$27,$27,$27,$20,$27,$27,$27,$20 ; $4A32
        db      $27,$27,$27,$00,$27,$27,$24,$00,$27,$27,$00,$00,$27,$24,$00,$00 ; $4A42
        db      $27,$00,$00,$00,$24,$00,$00,$00,$00,$00,$00,$00,$0E,$05,$04,$16 ; $4A52
        db      $AF,$58,$00,$40,$00,$00,$00,$78,$00,$00,$00,$79,$00,$00,$00,$79 ; $4A62
        db      $1C,$00,$00,$79,$1E,$40,$00,$79,$1E,$44,$00,$79,$1E,$47,$80,$79 ; $4A72
        db      $1E,$47,$90,$79,$1E,$47,$90,$79,$1E,$47,$90,$79,$1E,$47,$90,$79 ; $4A82
        db      $1E,$47,$90,$79,$1E,$47,$90,$79,$1E,$47,$90,$79,$1E,$47,$90,$39 ; $4A92
        db      $1E,$47,$90,$01,$1E,$47,$90,$00,$1E,$47,$90,$00,$02,$47,$90,$00 ; $4AA2
        db      $00,$07,$90,$00,$00,$03,$90,$00,$00,$00,$10,$40,$00,$00,$00,$4C ; $4AB2
        db      $00,$00,$00,$4F,$C0,$00,$00,$4F,$D0,$00,$00,$4F,$D3,$C0,$00,$4F ; $4AC2
        db      $D3,$F4,$00,$4F,$D3,$F4,$C0,$4F,$D3,$F4,$F0,$4F,$D3,$F4,$F0,$4F ; $4AD2
        db      $D3,$F4,$F0,$4F,$D3,$F4,$F0,$4F,$D3,$F4,$F0,$4F,$D3,$F4,$F0,$4F ; $4AE2
        db      $D3,$F4,$F0,$4F,$D3,$F4,$F0,$0F,$D3,$F4,$F0,$03,$D3,$F4,$F0,$00 ; $4AF2
        db      $13,$F4,$F0,$00,$03,$F4,$F0,$00,$00,$34,$F0,$00,$00,$00,$F0,$00 ; $4B02
        db      $00,$00,$30,$00,$00,$90,$78,$00,$00,$00,$00,$00,$00,$00,$00,$90 ; $4B12
        db      $78,$00,$E2,$FF,$00,$00,$00,$00,$00,$90,$78,$00,$C4,$FF,$00,$00 ; $4B22
        db      $00,$15,$4B,$1F,$4B,$29,$4B,$26,$68,$6F,$77,$20,$6D,$61,$6E,$79 ; $4B32
        db      $20,$63,$75,$62,$65,$73,$20,$61,$72,$65,$20,$69,$6E,$20,$74,$68 ; $4B42
        db      $69,$73,$20,$73,$74,$72,$75,$63,$74,$75,$72,$65,$20,$3F,$06,$06 ; $4B52
        db      $06,$04,$04,$04,$08,$00,$09,$00,$00,$00,$06,$06,$06,$04,$04,$04 ; $4B62
        db      $08,$00,$09,$09,$00,$07,$0F,$00,$09,$00,$06,$00,$0C,$08,$06,$08 ; $4B72
        db      $00,$00,$00,$0A,$0F,$0D,$00,$00,$00,$0A,$00,$00,$00,$0B,$0F,$0D ; $4B82
        db      $00,$0F,$07,$00,$0F,$0F,$0F,$A1,$FF,$B1,$FF,$C1,$FF,$B1,$FF,$C1 ; $4B92
        db      $FF,$D1,$FF,$E1,$FF,$F1,$FF,$D1,$FF,$C1,$FF,$D1,$FF,$E1,$FF,$F1 ; $4BA2
        db      $FF,$01,$00,$91,$FF,$81,$FF,$A1,$FF,$91,$FF,$B1,$FF,$C1,$FF,$D1 ; $4BB2
        db      $FF,$E1,$FF,$F1,$FF,$02,$00,$11,$00,$01,$00,$12,$00,$22,$00,$22 ; $4BC2
        db      $00,$32,$00,$22,$00,$32,$00,$41,$00,$22,$00,$32,$00,$41,$00,$11 ; $4BD2
        db      $00,$21,$00,$32,$00,$41,$00,$C0,$FF,$B8,$FF,$B0,$FF,$C8,$FF,$C0 ; $4BE2
        db      $FF,$B8,$FF,$C0,$FF,$B8,$FF,$D9,$FF,$E1,$FF,$E9,$FF,$E1,$FF,$C8 ; $4BF2
        db      $FF,$C0,$FF,$C8,$FF,$D0,$FF,$D0,$FF,$D8,$FF,$E9,$FF,$F1,$FF,$0A ; $4C02
        db      $00,$02,$00,$FA,$FF,$D0,$FF,$C8,$FF,$02,$00,$D8,$FF,$D0,$FF,$C0 ; $4C12
        db      $FF,$C8,$FF,$F1,$FF,$E9,$FF,$E1,$FF,$F1,$FF,$E9,$FF,$E1,$FF,$0A ; $4C22
        db      $00,$02,$00,$FA,$FF,$F2,$FF,$A1,$FF,$B1,$FF,$C1,$FF,$F1,$FF,$C1 ; $4C32
        db      $FF,$D1,$FF,$91,$FF,$81,$FF,$B1,$FF,$D1,$FF,$E1,$FF,$F1,$FF,$22 ; $4C42
        db      $00,$22,$00,$32,$00,$42,$00,$22,$00,$32,$00,$42,$00,$C0,$FF,$B8 ; $4C52
        db      $FF,$B0,$FF,$B8,$FF,$E1,$FF,$D9,$FF,$C8,$FF,$D0,$FF,$E9,$FF,$0A ; $4C62
        db      $00,$02,$00,$FA,$FF,$C0,$FF,$F1,$FF,$E9,$FF,$E1,$FF,$02,$00,$FA ; $4C72
        db      $FF,$F2,$FF,$C1,$FF,$D1,$FF,$F1,$FF,$D1,$FF,$E1,$FF,$01,$00,$F1 ; $4C82
        db      $FF,$F1,$FF,$11,$00,$01,$00,$01,$00,$21,$00,$21,$00,$11,$00,$22 ; $4C92
        db      $00,$32,$00,$41,$00,$41,$00,$41,$00,$B0,$FF,$B8,$FF,$B8,$FF,$D9 ; $4CA2
        db      $FF,$E1,$FF,$C0,$FF,$FA,$FF,$E9,$FF,$C8,$FF,$02,$00,$F1,$FF,$D0 ; $4CB2
        db      $FF,$D0,$FF,$C8,$FF,$C0,$FF,$C8,$FF,$E1,$FF,$D0,$FF,$F2,$FF,$EF ; $4CC2
        db      $FF,$DF,$FF,$CE,$FF,$FF,$FF,$EF,$FF,$DF,$FF,$0F,$00,$FF,$FF,$EF ; $4CD2
        db      $FF,$BE,$FF,$AE,$FF,$9E,$FF,$CF,$FF,$DF,$FF,$8D,$FF,$9D,$FF,$AE ; $4CE2
        db      $FF,$BF,$FF,$CF,$FF,$CF,$FF,$BF,$FF,$7D,$FF,$8D,$FF,$9E,$FF,$BF ; $4CF2
        db      $FF,$CF,$FF,$9E,$FF,$9E,$FF,$AE,$FF,$EF,$FF,$FF,$FF,$0F,$00,$1F ; $4D02
        db      $00,$2F,$00,$3F,$00,$B0,$FF,$B8,$FF,$C0,$FF,$B8,$FF,$C0,$FF,$D9 ; $4D12
        db      $FF,$D1,$FF,$D9,$FF,$E1,$FF,$C8,$FF,$C0,$FF,$B8,$FF,$E1,$FF,$E9 ; $4D22
        db      $FF,$D1,$FF,$D9,$FF,$E1,$FF,$E9,$FF,$F1,$FF,$F1,$FF,$E9,$FF,$D9 ; $4D32
        db      $FF,$E1,$FF,$E9,$FF,$FA,$FF,$02,$00,$E9,$FF,$FA,$FF,$02,$00,$02 ; $4D42
        db      $00,$FA,$FF,$F2,$FF,$EA,$FF,$C0,$FF,$C8,$FF,$EF,$FF,$DF,$FF,$CE ; $4D52
        db      $FF,$DF,$FF,$FF,$FF,$0F,$00,$9E,$FF,$CF,$FF,$8D,$FF,$8D,$FF,$7D ; $4D62
        db      $FF,$7D,$FF,$BF,$FF,$9D,$FF,$EF,$FF,$FF,$FF,$0F,$00,$1F,$00,$2F ; $4D72
        db      $00,$B0,$FF,$B8,$FF,$C0,$FF,$D9,$FF,$D9,$FF,$D1,$FF,$B8,$FF,$E1 ; $4D82
        db      $FF,$D1,$FF,$C0,$FF,$C8,$FF,$D9,$FF,$FA,$FF,$FA,$FF,$02,$00,$FA ; $4D92
        db      $FF,$F2,$FF,$EA,$FF,$C0,$FF,$EF,$FF,$FF,$FF,$0F,$00,$0F,$00,$DF ; $4DA2
        db      $FF,$AE,$FF,$9E,$FF,$8D,$FF,$9D,$FF,$AE,$FF,$BF,$FF,$CF,$FF,$9E ; $4DB2
        db      $FF,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$2F,$00,$3F,$00,$B0,$FF,$B8 ; $4DC2
        db      $FF,$C0,$FF,$D1,$FF,$D9,$FF,$C0,$FF,$B8,$FF,$D1,$FF,$D9,$FF,$E1 ; $4DD2
        db      $FF,$FA,$FF,$02,$00,$FA,$FF,$EA,$FF,$D9,$FF,$C8,$FF,$C8,$FF,$C0 ; $4DE2
        db      $FF,$C8,$FF,$99,$4B,$D1,$4C,$99,$4B,$D1,$4C,$99,$4B,$D1,$4C,$99 ; $4DF2
        db      $4B,$D1,$4C,$99,$4B,$D1,$4C,$99,$4B,$D1,$4C,$99,$4B,$D1,$4C,$99 ; $4E02
        db      $4B,$D1,$4C,$E9,$4B,$17,$4D,$E9,$4B,$17,$4D,$E9,$4B,$17,$4D,$E9 ; $4E12
        db      $4B,$17,$4D,$E9,$4B,$17,$4D,$E9,$4B,$17,$4D,$E9,$4B,$17,$4D,$E9 ; $4E22
        db      $4B,$17,$4D,$0A,$09,$0E,$0C,$14,$0E,$19,$13,$1C,$1A,$1E,$1D,$21 ; $4E32
        db      $21,$28,$23,$39,$4C,$5D,$4D,$39,$4C,$5D,$4D,$39,$4C,$5D,$4D,$39 ; $4E42
        db      $4C,$5D,$4D,$39,$4C,$5D,$4D,$39,$4C,$5D,$4D,$39,$4C,$5D,$4D,$39 ; $4E52
        db      $4C,$5D,$4D,$5F,$4C,$83,$4D,$5F,$4C,$83,$4D,$5F,$4C,$83,$4D,$5F ; $4E62
        db      $4C,$83,$4D,$5F,$4C,$83,$4D,$5F,$4C,$83,$4D,$5F,$4C,$83,$4D,$5F ; $4E72
        db      $4C,$83,$4D,$06,$06,$06,$07,$09,$08,$0C,$0A,$0C,$0D,$0D,$0E,$10 ; $4E82
        db      $12,$13,$13,$85,$4C,$A9,$4D,$85,$4C,$A9,$4D,$85,$4C,$A9,$4D,$85 ; $4E92
        db      $4C,$A9,$4D,$85,$4C,$A9,$4D,$85,$4C,$A9,$4D,$85,$4C,$A9,$4D,$85 ; $4EA2
        db      $4C,$A9,$4D,$AB,$4C,$CF,$4D,$AB,$4C,$CF,$4D,$AB,$4C,$CF,$4D,$AB ; $4EB2
        db      $4C,$CF,$4D,$AB,$4C,$CF,$4D,$AB,$4C,$CF,$4D,$AB,$4C,$CF,$4D,$AB ; $4EC2
        db      $4C,$CF,$4D,$04,$05,$06,$07,$06,$07,$09,$0A,$0C,$0C,$10,$0D,$12 ; $4ED2
        db      $10,$13,$13,$02,$31,$30,$02,$31,$32,$02,$31,$33,$02,$31,$34,$02 ; $4EE2
        db      $31,$36,$02,$31,$38,$02,$32,$30,$02,$32,$31,$02,$32,$33,$02,$32 ; $4EF2
        db      $36,$02,$32,$38,$02,$33,$30,$02,$33,$32,$02,$33,$34,$02,$33,$37 ; $4F02
        db      $02,$33,$38,$02,$34,$32,$02,$34,$34,$02,$34,$35,$02,$34,$38,$02 ; $4F12
        db      $35,$30,$02,$35,$33,$02,$35,$34,$02,$35,$36,$02,$36,$30,$02,$36 ; $4F22
        db      $32,$E8,$4E,$EB,$4E,$F4,$4E,$F1,$4E,$00,$4F,$F7,$4E,$0F,$4F,$06 ; $4F32
        db      $4F,$15,$4F,$12,$4F,$18,$4F,$15,$4F,$21,$4F,$27,$4F,$24,$4F,$2A ; $4F42
        db      $4F,$E5,$4E,$E5,$4E,$EE,$4E,$EE,$4E,$09,$4F,$EE,$4E,$03,$4F,$FA ; $4F52
        db      $4E,$06,$4F,$0C,$4F,$09,$4F,$06,$4F,$15,$4F,$30,$4F,$30,$4F,$2D ; $4F62
        db      $4F,$EE,$4E,$E8,$4E,$F7,$4E,$F7,$4E,$FD,$4E,$F1,$4E,$09,$4F,$03 ; $4F72
        db      $4F,$18,$4F,$15,$4F,$1E,$4F,$1E,$4F,$2A,$4F,$15,$4F,$1B,$4F,$1E ; $4F82
        db      $4F                                                             ; $4F92 preserved bytes

CUBE_COUNT_SETUP_RENDER:
        rst     $08                                                             ; $4F93 colon entry
        dw      XT_0                                                            ; $4F94 execution token
        dw      XT_DO                                                           ; $4F96 execution token
        dw      XT_OVER                                                         ; $4F98 execution token
        dw      XT_I                                                            ; $4F9A execution token
        dw      XT_2splat                                                       ; $4F9C execution token
        dw      XT_plus                                                         ; $4F9E execution token
        dw      XT_at                                                           ; $4FA0 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $4FA2 execution token
        dw      XT_DUP                                                          ; $4FA4 execution token
        dw      XT_I                                                            ; $4FA6 execution token
        dw      XT_2splat                                                       ; $4FA8 execution token
        dw      XT_plus                                                         ; $4FAA execution token
        dw      XT_at                                                           ; $4FAC execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $4FAE execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $4FB0 execution token
        dw      XT_LOOP                                                         ; $4FB2 execution token
        dw      XT_2DROP                                                        ; $4FB4 execution token
        dw      XT_RETURN                                                       ; $4FB6 execution token

CUBE_COUNT_SETUP_ACTION:
        rst     $08                                                             ; $4FB8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $4FB9 execution token
        dw      XT_LIT                                                          ; $4FBB execution token
        dw      $4B69                                                           ; $4FBD inline word
        dw      $2D7C                                                           ; $4FBF execution token
        dw      XT_LIT                                                          ; $4FC1 execution token
        dw      $FF79                                                           ; $4FC3 inline word
        dw      XT_LITbyte                                                      ; $4FC5 execution token
        db      $16                                                             ; $4FC7 inline byte
        dw      XT_LIT                                                          ; $4FC8 execution token
        dw      $4B39                                                           ; $4FCA inline word
        dw      XT_LIT                                                          ; $4FCC execution token
        dw      $4B33                                                           ; $4FCE inline word
        dw      XT_LIT                                                          ; $4FD0 execution token
        dw      $4B60                                                           ; $4FD2 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $4FD4 execution token
        dw      XT_LIT                                                          ; $4FD6 execution token
        dw      $4831                                                           ; $4FD8 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $4FDA execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $4FDC execution token
        dw      XT_ARRAY                                                        ; $4FDE execution token
        dw      $4E15                                                           ; $4FE0 inline word
        dw      XT_at                                                           ; $4FE2 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $4FE4 execution token
        dw      XT_ARRAY                                                        ; $4FE6 execution token
        dw      $4DF5                                                           ; $4FE8 inline word
        dw      XT_at                                                           ; $4FEA execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $4FEC execution token
        dw      XT_BARRAY                                                       ; $4FEE execution token
        dw      $4E35                                                           ; $4FF0 inline word
        dw      XT_Bat                                                          ; $4FF2 execution token
        dw      CUBE_COUNT_SETUP_RENDER                                         ; $4FF4 execution token
        dw      XT_LIT                                                          ; $4FF6 execution token
        dw      $4A5E                                                           ; $4FF8 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $4FFA execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $4FFC execution token
        dw      XT_ARRAY                                                        ; $4FFE execution token
        dw      $4E65                                                           ; $5000 inline word
        dw      XT_at                                                           ; $5002 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5004 execution token
        dw      XT_ARRAY                                                        ; $5006 execution token
        dw      $4E45                                                           ; $5008 inline word
        dw      XT_at                                                           ; $500A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $500C execution token
        dw      XT_BARRAY                                                       ; $500E execution token
        dw      $4E85                                                           ; $5010 inline word
        dw      XT_Bat                                                          ; $5012 execution token
        dw      CUBE_COUNT_SETUP_RENDER                                         ; $5014 execution token
        dw      XT_LIT                                                          ; $5016 execution token
        dw      $49A7                                                           ; $5018 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $501A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $501C execution token
        dw      XT_ARRAY                                                        ; $501E execution token
        dw      $4EB5                                                           ; $5020 inline word
        dw      XT_at                                                           ; $5022 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5024 execution token
        dw      XT_ARRAY                                                        ; $5026 execution token
        dw      $4E95                                                           ; $5028 inline word
        dw      XT_at                                                           ; $502A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $502C execution token
        dw      XT_BARRAY                                                       ; $502E execution token
        dw      $4ED5                                                           ; $5030 inline word
        dw      XT_Bat                                                          ; $5032 execution token
        dw      CUBE_COUNT_SETUP_RENDER                                         ; $5034 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5036 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5038 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $503A execution token
        dw      XT_RETURN                                                       ; $503C execution token

CUBE_COUNT_CORRECT_ACTION:
        rst     $08                                                             ; $503E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $503F execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5041 execution token
        dw      XT_LIT                                                          ; $5043 execution token
        dw      $FFDD                                                           ; $5045 inline word
        dw      XT_LITbyte                                                      ; $5047 execution token
        db      $0F                                                             ; $5049 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $504A execution token
        dw      XT_LITbyte                                                      ; $504C execution token
        db      $48                                                             ; $504E inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $504F execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5051 execution token
        dw      XT_ARRAY                                                        ; $5053 execution token
        dw      $4F33                                                           ; $5055 inline word
        dw      XT_at                                                           ; $5057 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5059 execution token
        dw      $2083                                                           ; $505B execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $505D execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $505F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5061 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5063 execution token
        dw      XT_LIT                                                          ; $5065 execution token
        dw      $4135                                                           ; $5067 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $5069 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $506B execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $506D execution token
        dw      XT_RETURN                                                       ; $506F execution token

CUBE_COUNT_SECOND_ACTION:
        rst     $08                                                             ; $5071 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5072 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $5074 execution token
        dw      XT_LIT                                                          ; $5076 execution token
        dw      $FFDD                                                           ; $5078 inline word
        dw      XT_LITbyte                                                      ; $507A execution token
        db      $0F                                                             ; $507C inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $507D execution token
        dw      XT_LITbyte                                                      ; $507F execution token
        db      $48                                                             ; $5081 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $5082 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5084 execution token
        dw      XT_ARRAY                                                        ; $5086 execution token
        dw      $4F53                                                           ; $5088 inline word
        dw      XT_at                                                           ; $508A execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $508C execution token
        dw      $2083                                                           ; $508E execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5090 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5092 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5094 execution token
        dw      XT_ARRAY                                                        ; $5096 execution token
        dw      $4F53                                                           ; $5098 inline word
        dw      XT_at                                                           ; $509A execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $509C execution token
        dw      $2083                                                           ; $509E execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $50A0 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $50A2 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_2                                   ; $50A4 execution token
        dw      XT_LITbyte                                                      ; $50A6 execution token
        db      $0E                                                             ; $50A8 inline byte
        dw      XT_plus                                                         ; $50A9 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $50AB execution token
        dw      XT_LIT                                                          ; $50AD execution token
        dw      $482E                                                           ; $50AF inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $50B1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $50B3 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $50B5 execution token
        dw      XT_RETURN                                                       ; $50B7 execution token

CUBE_COUNT_REMAINING_ACTION:
        rst     $08                                                             ; $50B9 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $50BA execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $50BC execution token
        dw      XT_LIT                                                          ; $50BE execution token
        dw      $FFDD                                                           ; $50C0 inline word
        dw      XT_LITbyte                                                      ; $50C2 execution token
        db      $0F                                                             ; $50C4 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $50C5 execution token
        dw      XT_LITbyte                                                      ; $50C7 execution token
        db      $48                                                             ; $50C9 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $50CA execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $50CC execution token
        dw      XT_ARRAY                                                        ; $50CE execution token
        dw      $4F73                                                           ; $50D0 inline word
        dw      XT_at                                                           ; $50D2 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $50D4 execution token
        dw      $2083                                                           ; $50D6 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $50D8 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $50DA execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $50DC execution token
        dw      XT_ARRAY                                                        ; $50DE execution token
        dw      $4F73                                                           ; $50E0 inline word
        dw      XT_at                                                           ; $50E2 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $50E4 execution token
        dw      $2083                                                           ; $50E6 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $50E8 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $50EA execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_2                                   ; $50EC execution token
        dw      XT_LITbyte                                                      ; $50EE execution token
        db      $0E                                                             ; $50F0 inline byte
        dw      XT_plus                                                         ; $50F1 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $50F3 execution token
        dw      XT_LIT                                                          ; $50F5 execution token
        dw      $482E                                                           ; $50F7 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $50F9 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $50FB execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $50FD execution token
        dw      XT_RETURN                                                       ; $50FF execution token

CUBE_COUNT_ACTIONS:
        db      $04                                                             ; $5101 action count
        dw      CUBE_COUNT_SETUP_ACTION                                         ; $5102 setup action
        dw      CUBE_COUNT_CORRECT_ACTION                                       ; $5104 correct answer
        dw      CUBE_COUNT_SECOND_ACTION                                        ; $5106 second answer
        dw      CUBE_COUNT_REMAINING_ACTION                                     ; $5108 remaining answer

; Rooted by tier slot 1.
CUBE_COUNT_V0_2_T1_INIT:
        rst     $08                                                          ; $510A
        dw      XT_LITbyte                                                      ; $510B
        db      $03                                                              ; $510D
        dw      XT_RANDOM_BELOW                                                 ; $510E
        dw      XT_LIT                                                          ; $5110
        dw      QUESTION_VARIANT_ADDR                                           ; $5112
        dw      XT_SBbang                                                       ; $5114
        dw      XT_LIT                                                          ; $5116
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $5118
        dw      XT_RETURN                                                       ; $511A

; Rooted by tier slot 2.
CUBE_COUNT_V3_4_T2_INIT:
        rst     $08                                                          ; $511C
        dw      XT_LITbyte                                                      ; $511D
        db      $02                                                              ; $511F
        dw      XT_RANDOM_BELOW                                                 ; $5120
        dw      XT_LITbyte                                                      ; $5122
        db      $03                                                              ; $5124
        dw      XT_plus                                                         ; $5125
        dw      XT_LIT                                                          ; $5127
        dw      QUESTION_VARIANT_ADDR                                           ; $5129
        dw      XT_SBbang                                                       ; $512B
        dw      XT_LIT                                                          ; $512D
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $512F
        dw      XT_RETURN                                                       ; $5131

; Rooted by tier slot 3.
CUBE_COUNT_V5_7_T3_INIT:
        rst     $08                                                          ; $5133
        dw      XT_LITbyte                                                      ; $5134
        db      $03                                                              ; $5136
        dw      XT_RANDOM_BELOW                                                 ; $5137
        dw      XT_LITbyte                                                      ; $5139
        db      $05                                                              ; $513B
        dw      XT_plus                                                         ; $513C
        dw      XT_LIT                                                          ; $513E
        dw      QUESTION_VARIANT_ADDR                                           ; $5140
        dw      XT_SBbang                                                       ; $5142
        dw      XT_LIT                                                          ; $5144
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $5146
        dw      XT_RETURN                                                       ; $5148

; Rooted by tier slot 4.
CUBE_COUNT_V8_9_T4_INIT:
        rst     $08                                                          ; $514A
        dw      XT_LITbyte                                                      ; $514B
        db      $02                                                              ; $514D
        dw      XT_RANDOM_BELOW                                                 ; $514E
        dw      XT_LITbyte                                                      ; $5150
        db      $08                                                              ; $5152
        dw      XT_plus                                                         ; $5153
        dw      XT_LIT                                                          ; $5155
        dw      QUESTION_VARIANT_ADDR                                           ; $5157
        dw      XT_SBbang                                                       ; $5159
        dw      XT_LIT                                                          ; $515B
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $515D
        dw      XT_RETURN                                                       ; $515F

; Rooted by tier slot 5.
CUBE_COUNT_V10_11_T5_INIT:
        rst     $08                                                          ; $5161
        dw      XT_LITbyte                                                      ; $5162
        db      $02                                                              ; $5164
        dw      XT_RANDOM_BELOW                                                 ; $5165
        dw      XT_LITbyte                                                      ; $5167
        db      $0A                                                              ; $5169
        dw      XT_plus                                                         ; $516A
        dw      XT_LIT                                                          ; $516C
        dw      QUESTION_VARIANT_ADDR                                           ; $516E
        dw      XT_SBbang                                                       ; $5170
        dw      XT_LIT                                                          ; $5172
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $5174
        dw      XT_RETURN                                                       ; $5176

; Rooted by tier slot 6.
CUBE_COUNT_V12_13_T6_INIT:
        rst     $08                                                          ; $5178
        dw      XT_LITbyte                                                      ; $5179
        db      $02                                                              ; $517B
        dw      XT_RANDOM_BELOW                                                 ; $517C
        dw      XT_LITbyte                                                      ; $517E
        db      $0C                                                              ; $5180
        dw      XT_plus                                                         ; $5181
        dw      XT_LIT                                                          ; $5183
        dw      QUESTION_VARIANT_ADDR                                           ; $5185
        dw      XT_SBbang                                                       ; $5187
        dw      XT_LIT                                                          ; $5189
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $518B
        dw      XT_RETURN                                                       ; $518D

; Rooted by tier slot 7.
CUBE_COUNT_V14_15_T7_INIT:
        rst     $08                                                          ; $518F
        dw      XT_LITbyte                                                      ; $5190
        db      $02                                                              ; $5192
        dw      XT_RANDOM_BELOW                                                 ; $5193
        dw      XT_LITbyte                                                      ; $5195
        db      $0E                                                              ; $5197
        dw      XT_plus                                                         ; $5198
        dw      XT_LIT                                                          ; $519A
        dw      QUESTION_VARIANT_ADDR                                           ; $519C
        dw      XT_SBbang                                                       ; $519E
        dw      XT_LIT                                                          ; $51A0
        dw      PPQ13_CUBE_COUNT_ACTIONS                                        ; $51A2
        dw      XT_RETURN                                                       ; $51A4
        db      $16,$16,$0C,$2F,$AF,$34,$02,$00,$00                             ; $51A6
        db      $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $51AF
        db      $00,$00,$2A,$82,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A2,$8A ; $51BF
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$2A,$00,$00,$00,$00 ; $51CF
        db      $00,$00,$00,$00,$00,$00,$08,$28,$00,$00,$00,$00,$00,$00,$00,$00 ; $51DF
        db      $00,$00,$06,$38,$00,$00,$00,$03,$FF,$F0,$00,$00,$00,$00,$14,$CA ; $51EF
        db      $80,$00,$00,$FF,$EF,$FF,$00,$00,$00,$00,$14,$3A,$A8,$00,$03,$EB ; $51FF
        db      $BA,$EF,$C0,$00,$00,$00,$55,$A2,$95,$40,$0F,$AA,$AA,$BB,$F0,$00 ; $520F
        db      $00,$00,$55,$A2,$A4,$00,$3E,$80,$0A,$AB,$B0,$00,$00,$01,$56,$62 ; $521F
        db      $A0,$00,$3A,$00,$00,$AA,$FC,$00,$00,$01,$55,$68,$A8,$00,$E8,$3F ; $522F
        db      $FF,$FA,$FC,$00,$00,$05,$59,$A8,$A8,$00,$C3,$EF,$BF,$FF,$BC,$00 ; $523F
        db      $00,$05,$56,$68,$A8,$00,$CF,$EE,$EA,$AB,$FF,$00,$00,$25,$56,$68 ; $524F
        db      $A0,$00,$0E,$EA,$AA,$AB,$BF,$00,$03,$A6,$56,$A9,$00,$00,$0F,$A2 ; $525F
        db      $02,$AA,$BF,$00,$EA,$A9,$59,$9A,$00,$00,$0C,$A0,$00,$0A,$9B,$1A ; $526F
        db      $AA,$A9,$A5,$9B,$00,$00,$0C,$80,$FF,$C2,$A7,$55,$AA,$AA,$99,$9F ; $527F
        db      $00,$00,$00,$0F,$FF,$F2,$A9,$55,$AA,$AA,$A9,$BB,$00,$00,$00,$3F ; $528F
        db      $FF,$FE,$95,$56,$AA,$AA,$BB,$EF,$00,$00,$00,$FF,$BA,$EF,$55,$55 ; $529F
        db      $AA,$AA,$EB,$FB,$00,$00,$00,$FB,$EA,$A7,$55,$62,$AA,$AA,$BF,$EA ; $52AF
        db      $00,$00,$03,$AE,$AA,$A9,$55,$69,$AA,$AA,$EB,$E8,$00,$00,$03,$BE ; $52BF
        db      $A0,$A9,$55,$99,$AA,$AA,$AF,$A0,$00,$00,$00,$AE,$8F,$E9,$5A,$AA ; $52CF
        db      $AA,$AA,$EA,$80,$00,$00,$00,$BA,$3F,$D5,$59,$AA,$AA,$AA,$A8,$00 ; $52DF
        db      $00,$00,$00,$A8,$FB,$56,$4A,$AA,$AA,$BB,$A0,$00,$00,$00,$00,$28 ; $52EF
        db      $EA,$68,$2A,$AA,$AA,$AA,$80,$00,$00,$00,$00,$28,$EA,$AA,$AA,$AA ; $52FF
        db      $AA,$F8,$00,$00,$00,$00,$00,$28,$E2,$AA,$AA,$AB,$FA,$A0,$00,$00 ; $530F
        db      $00,$00,$00,$20,$E2,$AA,$AB,$BF,$EA,$80,$00,$00,$00,$00,$00,$00 ; $531F
        db      $E0,$AA,$BF,$FA,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$AA,$AA ; $532F
        db      $A8,$00,$00,$00,$00,$00,$00,$00,$00,$02,$AA,$AA,$A0,$00,$00,$00 ; $533F
        db      $00,$00,$00,$00,$00,$00,$0A,$A8,$00,$00,$00,$00,$00,$00,$00,$00 ; $534F
        db      $00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$10 ; $535F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$14,$00,$00,$00,$00 ; $536F
        db      $00,$00,$00,$00,$00,$00,$15,$10,$00,$00,$00,$00,$00,$00,$00,$00 ; $537F
        db      $00,$00,$40,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$41,$00,$10 ; $538F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$10,$00,$00,$00,$00 ; $539F
        db      $00,$00,$00,$00,$00,$11,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00 ; $53AF
        db      $00,$10,$40,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04 ; $53BF
        db      $40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$10,$00,$00,$00 ; $53CF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00 ; $53DF
        db      $00,$00,$00,$00,$00,$00,$2A,$82,$80,$00,$00,$00,$00,$00,$00,$00 ; $53EF
        db      $00,$00,$AA,$8A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$AA ; $53FF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$A8,$00,$00,$00,$00 ; $540F
        db      $00,$00,$00,$00,$00,$00,$0E,$38,$00,$00,$00,$02,$AA,$A0,$00,$00 ; $541F
        db      $00,$00,$3C,$CB,$C0,$00,$00,$AA,$9A,$AA,$00,$00,$00,$00,$3C,$3A ; $542F
        db      $FC,$00,$02,$B6,$65,$9A,$80,$00,$00,$00,$FF,$FA,$BF,$C0,$0A,$D5 ; $543F
        db      $55,$26,$A0,$00,$00,$00,$FF,$FA,$AC,$00,$29,$40,$05,$52,$60,$00 ; $544F
        db      $00,$03,$FF,$FA,$A8,$00,$2D,$00,$00,$54,$A8,$00,$00,$03,$FF,$FE ; $545F
        db      $A8,$00,$94,$2A,$AA,$A5,$A8,$00,$00,$0F,$FF,$FE,$A8,$00,$82,$BA ; $546F
        db      $EA,$AA,$68,$00,$00,$0F,$FF,$FE,$A8,$00,$8A,$99,$95,$16,$AA,$00 ; $547F
        db      $00,$3F,$FF,$FE,$A8,$00,$0B,$95,$55,$52,$6A,$00,$01,$EE,$FF,$FF ; $548F
        db      $A0,$00,$0A,$51,$01,$55,$2A,$00,$7F,$FF,$FF,$FF,$00,$00,$08,$50 ; $549F
        db      $00,$05,$76,$3F,$FF,$FF,$FF,$FE,$00,$00,$08,$40,$AA,$81,$4E,$FF ; $54AF
        db      $FF,$FF,$FF,$FA,$00,$00,$00,$0A,$AA,$A1,$57,$FF,$EF,$FF,$EF,$EE ; $54BF
        db      $00,$00,$00,$2A,$AA,$A9,$7F,$FE,$AE,$BF,$E6,$BA,$00,$00,$00,$AA ; $54CF
        db      $E5,$9A,$FF,$FF,$BB,$AE,$BE,$A6,$00,$00,$00,$AE,$95,$5E,$FF,$FB ; $54DF
        db      $AE,$E7,$6A,$95,$00,$00,$02,$7B,$55,$57,$FF,$EF,$EA,$A5,$96,$94 ; $54EF
        db      $00,$00,$02,$69,$50,$37,$FF,$FF,$BA,$99,$5A,$50,$00,$00,$00,$79 ; $54FF
        db      $4A,$9F,$FE,$EE,$E5,$65,$95,$40,$00,$00,$00,$65,$2A,$BF,$FF,$FA ; $550F
        db      $69,$95,$54,$00,$00,$00,$00,$74,$A6,$FF,$EA,$69,$59,$66,$50,$00 ; $551F
        db      $00,$00,$00,$14,$95,$FE,$AA,$59,$55,$55,$40,$00,$00,$00,$00,$14 ; $552F
        db      $9D,$F5,$D5,$55,$55,$A4,$00,$00,$00,$00,$00,$14,$93,$D5,$55,$56 ; $553F
        db      $A5,$50,$00,$00,$00,$00,$00,$10,$93,$DD,$56,$6A,$95,$40,$00,$00 ; $554F
        db      $00,$00,$00,$00,$90,$D5,$6A,$A5,$55,$00,$00,$00,$00,$00,$00,$00 ; $555F
        db      $00,$15,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55 ; $556F
        db      $50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$54,$00,$00,$00,$00 ; $557F
        db      $00,$00,$00,$00,$00,$00,$0C,$30,$00,$00,$00,$00,$00,$00,$00,$00 ; $558F
        db      $00,$00,$0C,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$3C ; $559F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$30,$00,$00,$00,$00 ; $55AF
        db      $00,$00,$00,$00,$00,$00,$C0,$30,$00,$00,$00,$00,$00,$00,$00,$00 ; $55BF
        db      $00,$C3,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$30 ; $55CF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$33,$00,$30,$00,$00,$00,$00 ; $55DF
        db      $00,$00,$00,$00,$00,$30,$C0,$FF,$00,$00,$00,$00,$00,$00,$00,$00 ; $55EF
        db      $00,$00,$00,$0C,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C ; $55FF
        db      $30,$00,$00,$00,$00,$00,$17,$15,$0C,$31,$AF,$4C,$02,$00,$00,$00 ; $560F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$00,$00 ; $561F
        db      $00,$00,$00,$00,$00,$00,$00,$0A,$55,$55,$AA,$00,$00,$00,$00,$00 ; $562F
        db      $00,$00,$00,$A5,$AA,$AA,$55,$A0,$00,$00,$00,$00,$00,$00,$02,$5A ; $563F
        db      $55,$55,$AA,$58,$00,$00,$00,$00,$00,$00,$09,$A5,$AA,$AA,$55,$A6 ; $564F
        db      $00,$00,$00,$00,$00,$00,$26,$5A,$AA,$AA,$AA,$59,$80,$00,$00,$00 ; $565F
        db      $00,$00,$99,$AA,$AA,$AA,$AA,$99,$80,$00,$01,$A4,$00,$02,$66,$AA ; $566F
        db      $A5,$56,$AA,$A6,$60,$00,$06,$AA,$00,$09,$9A,$AA,$50,$01,$5A,$A9 ; $567F
        db      $98,$00,$2A,$0A,$40,$09,$9A,$AA,$42,$A8,$06,$A9,$98,$00,$28,$42 ; $568F
        db      $80,$09,$9A,$A9,$2A,$AA,$A1,$A9,$98,$00,$2A,$01,$90,$26,$6A,$A4 ; $569F
        db      $AA,$AB,$FF,$FF,$FD,$00,$2A,$80,$A0,$26,$6A,$92,$AA,$EF,$EA,$AF ; $56AF
        db      $EF,$F0,$0A,$A0,$20,$26,$6A,$42,$AB,$BE,$AB,$FF,$FE,$EC,$0A,$A0 ; $56BF
        db      $20,$26,$6A,$4A,$AE,$FB,$AE,$FF,$FF,$DB,$02,$A0,$20,$99,$AA,$4A ; $56CF
        db      $BB,$EE,$AA,$AB,$FF,$BB,$C2,$A8,$20,$99,$AA,$4A,$BB,$BA,$AA,$AB ; $56DF
        db      $FF,$ED,$B2,$28,$20,$99,$AA,$4A,$AF,$AA,$EA,$AA,$BA,$FE,$F6,$80 ; $56EF
        db      $00,$99,$AA,$4A,$BA,$AB,$AA,$BA,$FF,$FF,$5A,$AA,$00,$99,$AA,$4A ; $56FF
        db      $AA,$AA,$A8,$AF,$EE,$FF,$DA,$AA,$00,$99,$AA,$4A,$AE,$A8,$0F,$BA ; $570F
        db      $BF,$FF,$DA,$80,$00,$99,$AA,$92,$AA,$8A,$2F,$BA,$FB,$FF,$CA,$AA ; $571F
        db      $80,$99,$AA,$92,$AA,$80,$0F,$BA,$FB,$FF,$F6,$00,$30,$99,$AA,$95 ; $572F
        db      $5A,$A8,$80,$BA,$EA,$FF,$F1,$AA,$B0,$99,$AA,$55,$56,$40,$02,$BA ; $573F
        db      $AF,$BE,$BC,$AA,$30,$26,$6A,$99,$54,$AA,$08,$0A,$EF,$AA,$EC,$6A ; $574F
        db      $20,$26,$69,$6A,$A6,$A6,$A0,$02,$EF,$AB,$A8,$58,$E0,$09,$96,$66 ; $575F
        db      $55,$59,$BF,$F2,$EE,$BB,$AA,$02,$80,$02,$65,$55,$AA,$A6,$AA,$A2 ; $576F
        db      $AE,$AB,$AA,$AF,$C0,$00,$9A,$95,$55,$55,$28,$AA,$AA,$AA,$AF,$FA ; $577F
        db      $00,$00,$25,$A6,$A9,$99,$6A,$AA,$AA,$AF,$EF,$AF,$00,$00,$0A,$5F ; $578F
        db      $EA,$AA,$AA,$AA,$AA,$FF,$FA,$BC,$00,$00,$00,$A5,$56,$AA,$AA,$AE ; $579F
        db      $AF,$EA,$AF,$F0,$00,$00,$00,$0A,$AA,$56,$6A,$AF,$FE,$AA,$AF,$C0 ; $57AF
        db      $00,$00,$00,$00,$25,$59,$A8,$AA,$AA,$BF,$FF,$00,$00,$00,$00,$00 ; $57BF
        db      $95,$66,$A8,$AA,$AA,$AF,$D5,$00,$00,$00,$00,$02,$55,$9A,$A8,$3F ; $57CF
        db      $FF,$E9,$94,$00,$00,$00,$00,$09,$56,$6A,$80,$A4,$A4,$26,$50,$00 ; $57DF
        db      $00,$00,$00,$05,$59,$A8,$00,$24,$24,$19,$40,$00,$00,$00,$00,$01 ; $57EF
        db      $66,$A0,$00,$08,$08,$05,$40,$00,$00,$00,$00,$00,$9A,$80,$00,$08 ; $57FF
        db      $02,$01,$00,$00,$00,$00,$00,$00,$2A,$00,$00,$02,$00,$80,$00,$00 ; $580F
        db      $00,$00,$00,$00,$08,$00,$00,$02,$00,$20,$00,$00,$00,$00,$00,$00 ; $581F
        db      $00,$00,$00,$00,$80,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $582F
        db      $20,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$A0,$0A,$A8,$00 ; $583F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0A,$00,$22,$00,$00,$00,$00,$00 ; $584F
        db      $00,$00,$00,$00,$20,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $585F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $586F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $587F
        db      $AA,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$FF,$FF,$AA,$00 ; $588F
        db      $00,$00,$00,$00,$00,$00,$00,$AF,$FF,$FF,$FF,$A0,$00,$00,$00,$00 ; $589F
        db      $00,$00,$02,$FF,$FF,$FF,$FF,$F8,$00,$00,$00,$00,$00,$00,$0B,$FF ; $58AF
        db      $F0,$03,$FF,$F8,$00,$00,$03,$FC,$00,$00,$2F,$FF,$00,$00,$0F,$FE ; $58BF
        db      $00,$00,$0F,$FF,$00,$00,$BF,$FC,$0A,$A8,$03,$FF,$80,$00,$2B,$8F ; $58CF
        db      $C0,$00,$BF,$F0,$2A,$AA,$A0,$FF,$80,$00,$2E,$03,$C0,$00,$BF,$C0 ; $58DF
        db      $AA,$AA,$A8,$3F,$80,$00,$2B,$A0,$F0,$02,$FF,$02,$AA,$AA,$AA,$AA ; $58EF
        db      $A8,$00,$2B,$AA,$F0,$02,$FF,$0A,$AA,$AA,$95,$56,$9A,$A0,$0A,$AA ; $58FF
        db      $B0,$02,$FC,$2A,$AA,$A9,$56,$5A,$A8,$98,$0B,$A2,$B0,$02,$FC,$2A ; $590F
        db      $AA,$A5,$55,$AA,$AA,$86,$02,$A0,$B0,$0B,$FC,$2A,$AA,$99,$55,$56 ; $591F
        db      $AA,$22,$82,$E8,$30,$0B,$FC,$2A,$AA,$55,$55,$56,$AA,$88,$22,$BC ; $592F
        db      $30,$0B,$FC,$2A,$AA,$55,$55,$41,$65,$A8,$A2,$AA,$00,$0B,$FC,$2A ; $593F
        db      $A5,$55,$54,$25,$AA,$AA,$0A,$EA,$00,$0B,$FC,$2A,$96,$05,$50,$5A ; $594F
        db      $99,$AA,$8A,$3F,$00,$0B,$FC,$2A,$88,$16,$0A,$65,$6A,$AA,$8B,$AA ; $595F
        db      $00,$0B,$FF,$0A,$00,$0A,$9A,$65,$A6,$AA,$A8,$FF,$C0,$0B,$FF,$0A ; $596F
        db      $A8,$AA,$AA,$65,$A6,$AA,$A2,$AA,$A0,$0B,$FF,$C0,$08,$FE,$EA,$65 ; $597F
        db      $95,$AA,$A8,$AA,$E0,$0B,$FF,$00,$00,$EA,$AB,$65,$5A,$69,$6A,$AB ; $598F
        db      $A0,$02,$FF,$00,$00,$3F,$AE,$A9,$9A,$55,$9A,$2B,$90,$02,$FC,$00 ; $599F
        db      $00,$AF,$FA,$A9,$9A,$56,$56,$0E,$90,$00,$B0,$00,$00,$03,$EA,$A9 ; $59AF
        db      $99,$66,$55,$A9,$40,$00,$2F,$00,$00,$00,$AA,$A0,$59,$56,$55,$5A ; $59BF
        db      $80,$00,$0A,$F0,$00,$00,$14,$05,$55,$55,$5A,$A5,$00,$00,$00,$AC ; $59CF
        db      $00,$00,$15,$55,$55,$5A,$9A,$5A,$00,$00,$00,$05,$40,$00,$15,$55 ; $59DF
        db      $55,$AA,$A5,$68,$00,$00,$00,$00,$00,$00,$15,$59,$5A,$95,$5A,$A0 ; $59EF
        db      $00,$00,$00,$00,$00,$00,$15,$5A,$A9,$55,$5A,$80,$00,$00,$00,$00 ; $59FF
        db      $00,$00,$00,$55,$55,$6A,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$55 ; $5A0F
        db      $55,$5A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$AA,$80,$00,$00 ; $5A1F
        db      $00,$00,$00,$00,$00,$00,$00,$BC,$BC,$00,$00,$00,$00,$00,$00,$00 ; $5A2F
        db      $00,$00,$00,$3C,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C ; $5A3F
        db      $0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$03,$00,$00,$00 ; $5A4F
        db      $00,$00,$00,$00,$00,$00,$00,$03,$00,$C0,$00,$00,$00,$00,$00,$00 ; $5A5F
        db      $00,$00,$00,$03,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5A6F
        db      $C0,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$03,$00,$00 ; $5A7F
        db      $00,$00,$00,$00,$00,$00,$00,$0C,$F0,$0F,$FC,$00,$00,$00,$00,$00 ; $5A8F
        db      $00,$00,$00,$00,$0F,$00,$33,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5A9F
        db      $30,$C0,$C0,$C0,$00,$11,$11,$09,$24,$AF,$44,$01,$00,$00,$00,$00 ; $5AAF
        db      $00,$00,$02,$00,$80,$03,$00,$00,$00,$00,$00,$08,$0A,$80,$03,$C0 ; $5ABF
        db      $00,$00,$00,$00,$22,$82,$08,$0F,$C0,$00,$00,$00,$00,$8A,$88,$2A ; $5ACF
        db      $37,$C0,$00,$00,$00,$00,$95,$70,$20,$37,$C0,$00,$00,$00,$00,$9F ; $5ADF
        db      $FF,$80,$37,$F0,$00,$00,$00,$00,$7F,$D7,$C0,$73,$FC,$00,$00,$00 ; $5AEF
        db      $00,$7F,$43,$E0,$77,$FC,$00,$00,$00,$01,$FF,$FF,$A8,$7F,$FC,$00 ; $5AFF
        db      $00,$00,$07,$FF,$FF,$55,$FF,$FF,$40,$00,$00,$17,$FF,$FD,$50,$4F ; $5B0F
        db      $F3,$FD,$00,$00,$DF,$FF,$FE,$20,$73,$F3,$7F,$F5,$57,$FF,$FF,$F4 ; $5B1F
        db      $20,$7D,$F7,$FD,$CD,$7F,$FC,$FF,$F6,$00,$1F,$3F,$DF,$FF,$3F,$F3 ; $5B2F
        db      $FF,$F6,$00,$17,$CF,$3F,$FF,$CF,$3F,$FF,$DC,$00,$17,$FF,$CF,$FF ; $5B3F
        db      $FF,$FF,$FF,$DC,$00,$05,$3F,$F0,$CF,$FF,$FF,$FF,$F0,$00,$0C,$FF ; $5B4F
        db      $FF,$FF,$FF,$FF,$7F,$70,$00,$01,$F3,$FC,$33,$FF,$FD,$F3,$30,$00 ; $5B5F
        db      $00,$CF,$3F,$FF,$5F,$F7,$CF,$70,$00,$00,$3D,$FF,$C3,$FF,$5F,$FC ; $5B6F
        db      $C0,$00,$00,$01,$FF,$FC,$7C,$FF,$F3,$00,$00,$00,$03,$73,$FF,$DC ; $5B7F
        db      $FF,$5C,$00,$00,$00,$00,$07,$FF,$F3,$FD,$70,$00,$00,$00,$00,$0D ; $5B8F
        db      $FF,$CF,$F5,$00,$00,$00,$00,$00,$01,$7F,$F5,$D4,$00,$00,$00,$00 ; $5B9F
        db      $00,$00,$7F,$F7,$D4,$00,$00,$00,$00,$00,$00,$1D,$C1,$FC,$00,$00 ; $5BAF
        db      $00,$00,$00,$00,$1F,$00,$5C,$00,$00,$00,$00,$00,$00,$1C,$00,$1D ; $5BBF
        db      $00,$00,$00,$00,$00,$00,$18,$00,$0A,$00,$00,$00,$00,$00,$00,$18 ; $5BCF
        db      $00,$02,$40,$00,$00,$00,$00,$00,$08,$00,$00,$40,$00,$00,$00,$00 ; $5BDF
        db      $00,$0A,$00,$00,$A0,$00,$00,$00,$00,$00,$60,$A0,$02,$0A,$40,$00 ; $5BEF
        db      $00,$00,$00,$00,$00,$00,$02,$82,$80,$03,$00,$00,$00,$00,$00,$0A ; $5BFF
        db      $8B,$C0,$03,$C0,$00,$00,$00,$00,$2B,$EB,$A8,$0F,$C0,$00,$00,$00 ; $5C0F
        db      $00,$AF,$EE,$AE,$33,$C0,$00,$00,$00,$00,$95,$7A,$A0,$33,$C0,$00 ; $5C1F
        db      $00,$00,$00,$9F,$FF,$80,$33,$F0,$00,$00,$00,$00,$7F,$D7,$C0,$33 ; $5C2F
        db      $FC,$00,$00,$00,$00,$7F,$43,$F0,$37,$FC,$00,$00,$00,$01,$FF,$FF ; $5C3F
        db      $FC,$7F,$FC,$00,$00,$00,$03,$FF,$FF,$FF,$FF,$FF,$40,$00,$00,$03 ; $5C4F
        db      $FF,$FF,$F0,$0F,$F3,$FC,$00,$00,$DF,$FF,$FF,$A0,$33,$F3,$7F,$F0 ; $5C5F
        db      $43,$FF,$FF,$F6,$A0,$3D,$F7,$FD,$CD,$3F,$FC,$FF,$F6,$80,$0F,$3F ; $5C6F
        db      $DF,$FF,$3F,$F3,$FF,$F7,$80,$07,$CF,$3F,$FF,$CF,$3F,$FF,$DC,$00 ; $5C7F
        db      $03,$FF,$CF,$FF,$FF,$FF,$FF,$DC,$00,$04,$3F,$F0,$CF,$FF,$FF,$FF ; $5C8F
        db      $F0,$00,$0C,$FF,$FF,$FF,$FF,$FF,$7F,$70,$00,$00,$F3,$FC,$33,$FF ; $5C9F
        db      $FD,$F3,$30,$00,$00,$CF,$3F,$FF,$5F,$F7,$CF,$70,$00,$00,$3C,$FF ; $5CAF
        db      $C3,$FF,$5F,$FC,$C0,$00,$00,$01,$FF,$FC,$7C,$FF,$F3,$00,$00,$00 ; $5CBF
        db      $03,$73,$FF,$DC,$FF,$0C,$00,$00,$00,$00,$03,$FF,$F3,$FC,$30,$00 ; $5CCF
        db      $00,$00,$00,$0C,$FF,$CF,$F0,$00,$00,$00,$00,$00,$01,$3F,$F1,$D0 ; $5CDF
        db      $00,$00,$00,$00,$00,$00,$3F,$F3,$C4,$00,$00,$00,$00,$00,$00,$0D ; $5CEF
        db      $C0,$FC,$00,$00,$00,$00,$00,$00,$0F,$00,$0C,$00,$00,$00,$00,$00 ; $5CFF
        db      $00,$1C,$00,$0D,$00,$00,$00,$00,$00,$00,$3C,$00,$0F,$00,$00,$00 ; $5D0F
        db      $00,$00,$00,$3C,$00,$03,$C0,$00,$00,$00,$00,$00,$0C,$00,$00,$C0 ; $5D1F
        db      $00,$00,$00,$00,$00,$0F,$00,$00,$F0,$00,$00,$00,$00,$00,$F0,$F0 ; $5D2F
        db      $03,$0F,$C0,$00,$22,$1C,$0E,$31,$AF,$AE,$02,$00,$00,$00,$00,$00 ; $5D3F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D4F
        db      $00,$00,$00,$03,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5D5F
        db      $00,$0F,$F3,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F ; $5D6F
        db      $F3,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$7F ; $5D7F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$FC,$0F,$C0,$00 ; $5D8F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$F0,$00,$F0,$00,$00,$00 ; $5D9F
        db      $00,$00,$00,$00,$00,$00,$00,$3F,$D0,$00,$00,$00,$00,$00,$00,$00 ; $5DAF
        db      $00,$00,$00,$00,$00,$3F,$D0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5DBF
        db      $00,$00,$00,$0F,$D0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5DCF
        db      $00,$0F,$D0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F ; $5DDF
        db      $D0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$F0,$00 ; $5DEF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$F0,$00,$00,$00 ; $5DFF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$FC,$00,$00,$00,$00,$00 ; $5E0F
        db      $00,$07,$FF,$F5,$00,$00,$00,$00,$FC,$00,$00,$00,$00,$00,$00,$00 ; $5E1F
        db      $FF,$FF,$FF,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$1F,$FF ; $5E2F
        db      $FF,$FC,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$0F,$7F,$FF,$FF ; $5E3F
        db      $C0,$00,$0F,$C0,$00,$00,$00,$00,$00,$00,$03,$D7,$FF,$FF,$F0,$00 ; $5E4F
        db      $0F,$F0,$00,$00,$00,$00,$00,$00,$03,$FF,$7F,$FF,$FF,$00,$03,$F0 ; $5E5F
        db      $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$C0,$03,$FC,$00,$00 ; $5E6F
        db      $00,$0F,$D3,$FF,$00,$3B,$FF,$DF,$FF,$F0,$00,$FC,$00,$00,$00,$03 ; $5E7F
        db      $FF,$FF,$FF,$5F,$FF,$FF,$7F,$FC,$00,$FF,$00,$00,$00,$7F,$FF,$FF ; $5E8F
        db      $FF,$F1,$FF,$FF,$C7,$FF,$00,$FF,$00,$00,$00,$3F,$FF,$FF,$FF,$FF ; $5E9F
        db      $55,$3F,$FD,$FF,$00,$3F,$C0,$00,$00,$0F,$FF,$FF,$FF,$FF,$FD,$5F ; $5EAF
        db      $FF,$FF,$C0,$3F,$C0,$00,$00,$03,$FF,$FF,$FF,$FD,$FD,$D4,$FF,$FF ; $5EBF
        db      $C0,$3F,$F0,$00,$00,$00,$FF,$FF,$FF,$FF,$DF,$F5,$7F,$FF,$F0,$FF ; $5ECF
        db      $F0,$00,$00,$00,$3F,$FF,$FF,$FF,$FD,$FF,$5F,$FF,$FD,$7F,$FC,$00 ; $5EDF
        db      $00,$00,$3D,$FF,$FF,$FF,$FF,$DF,$F7,$FF,$FF,$FF,$FC,$00,$00,$00 ; $5EEF
        db      $3F,$FF,$FF,$FF,$FF,$FF,$DD,$7F,$F7,$FF,$FC,$00,$00,$00,$0D,$DF ; $5EFF
        db      $FF,$FF,$FF,$FF,$FD,$DD,$FF,$FF,$FC,$00,$00,$00,$01,$FD,$FF,$FF ; $5F0F
        db      $FF,$FF,$FF,$FF,$FF,$FF,$DC,$00,$03,$F0,$03,$DD,$FF,$FF,$FF,$FF ; $5F1F
        db      $FF,$FF,$FF,$FF,$FC,$00,$01,$FF,$FF,$F7,$FF,$FF,$FF,$FF,$FF,$FF ; $5F2F
        db      $FF,$FF,$DC,$00,$00,$DF,$FF,$DD,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FD ; $5F3F
        db      $FC,$00,$00,$37,$FF,$F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$74,$00 ; $5F4F
        db      $00,$1F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$F0,$00,$00,$01 ; $5F5F
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$C0,$00,$00,$00,$FF,$7F ; $5F6F
        db      $FF,$FF,$FF,$FF,$FF,$F7,$FF,$77,$00,$00,$00,$00,$1F,$7F,$FF,$FF ; $5F7F
        db      $FF,$FF,$FF,$FF,$FF,$DC,$00,$00,$00,$00,$01,$FF,$FF,$FF,$FF,$FF ; $5F8F
        db      $FF,$F7,$77,$F0,$00,$00,$00,$00,$00,$C7,$FF,$FF,$FF,$FF,$0F,$FD ; $5F9F
        db      $F4,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$50,$00,$04,$00 ; $5FAF
        db      $00,$00,$15,$54,$00,$00,$15,$55,$55,$55,$41,$10,$00,$00,$00,$41 ; $5FBF
        db      $50,$01,$51,$55,$50,$00,$00,$00,$01,$51,$55,$55,$00,$00,$00,$00 ; $5FCF
        db      $05,$00,$00,$00,$00,$00,$10,$00,$01,$40,$55,$00,$00,$00,$40,$00 ; $5FDF
        db      $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5FEF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5FFF
        db      $00,$03,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F ; $600F
        db      $F0,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$F0,$00 ; $601F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$15,$00,$00 ; $602F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$FC,$05,$40,$00,$00,$00 ; $603F
        db      $00,$00,$00,$00,$00,$00,$00,$3F,$F0,$00,$50,$00,$00,$00,$00,$00 ; $604F
        db      $00,$00,$00,$00,$00,$3F,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $605F
        db      $00,$00,$00,$3F,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $606F
        db      $00,$0F,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F ; $607F
        db      $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$C0,$00 ; $608F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$F0,$00,$00,$00 ; $609F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$F0,$00,$00,$00,$00,$00 ; $60AF
        db      $00,$00,$00,$00,$00,$00,$00,$03,$FC,$00,$00,$00,$00,$00,$00,$03 ; $60BF
        db      $FF,$F0,$00,$00,$00,$00,$FC,$00,$00,$00,$00,$00,$00,$00,$FF,$FD ; $60CF
        db      $F7,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$1F,$FF,$FF,$FC ; $60DF
        db      $00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$0C,$7F,$FF,$FD,$C0,$00 ; $60EF
        db      $0F,$C0,$00,$00,$00,$00,$00,$00,$03,$07,$FF,$FF,$F0,$00,$0F,$F0 ; $60FF
        db      $00,$00,$00,$00,$00,$00,$03,$F0,$7F,$FF,$DF,$00,$03,$F0,$00,$00 ; $610F
        db      $00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$C0,$03,$FC,$00,$00,$00,$0F ; $611F
        db      $C3,$FF,$00,$03,$FC,$1F,$FF,$70,$00,$FC,$00,$00,$00,$03,$FF,$F5 ; $612F
        db      $FF,$00,$FF,$FC,$3F,$DC,$00,$FF,$00,$00,$00,$30,$FF,$FF,$77,$F0 ; $613F
        db      $0F,$FF,$C3,$FF,$00,$FF,$00,$00,$00,$3F,$FF,$FF,$FF,$DF,$00,$3F ; $614F
        db      $FC,$FF,$00,$3F,$C0,$00,$00,$0F,$0F,$FF,$FF,$FF,$FC,$0F,$FF,$3F ; $615F
        db      $C0,$3F,$C0,$00,$00,$03,$FF,$FF,$FF,$FC,$7D,$C0,$FF,$CF,$C0,$3F ; $616F
        db      $F0,$00,$00,$00,$F0,$FF,$FF,$FF,$C7,$F0,$3F,$FF,$F0,$FF,$F0,$00 ; $617F
        db      $00,$00,$3F,$FF,$FF,$FF,$FC,$FF,$0F,$FF,$FC,$3F,$FC,$00,$00,$00 ; $618F
        db      $0C,$FF,$FF,$FF,$FF,$CF,$F3,$FF,$FF,$3F,$FC,$00,$00,$00,$3F,$03 ; $619F
        db      $FF,$FF,$FF,$FF,$DC,$3F,$F3,$FF,$FC,$00,$00,$00,$0C,$CF,$FF,$FF ; $61AF
        db      $FF,$FF,$FD,$CC,$FC,$FF,$FC,$00,$00,$00,$00,$F0,$3F,$FF,$FF,$FF ; $61BF
        db      $FF,$F3,$CF,$FF,$CC,$00,$03,$F0,$00,$CC,$FF,$FF,$FF,$FF,$FF,$FF ; $61CF
        db      $FF,$FF,$FC,$00,$00,$FF,$FF,$33,$03,$FF,$FF,$FF,$FF,$CF,$FF,$FF ; $61DF
        db      $CC,$00,$00,$CF,$FF,$CC,$FF,$FF,$FF,$FF,$FF,$CF,$FF,$FC,$FC,$00 ; $61EF
        db      $00,$30,$3F,$F3,$3F,$FF,$FF,$FF,$F0,$FF,$FF,$FF,$30,$00,$00,$0F ; $61FF
        db      $FF,$FC,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$33,$F0,$00,$00,$00,$C0,$FF ; $620F
        db      $CF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$C0,$00,$00,$00,$FF,$3F,$FF,$FF ; $621F
        db      $FF,$FF,$FF,$F3,$F3,$33,$00,$00,$00,$00,$0F,$03,$3F,$3C,$FF,$FF ; $622F
        db      $FF,$FF,$FF,$CC,$00,$00,$00,$00,$00,$FC,$CC,$CF,$FF,$FF,$FF,$F3 ; $623F
        db      $33,$F0,$00,$00,$00,$00,$00,$C3,$33,$3F,$33,$FC,$FF,$3C,$F0,$00 ; $624F
        db      $00,$F0,$0C,$FF,$C3,$FF,$F3,$FF,$FF,$FC,$AF,$FF,$FB,$33,$C0,$3F ; $625F
        db      $EA,$A8,$FF,$00,$2A,$AA,$AA,$AA,$8E,$EF,$FF,$FF,$FF,$82,$A3,$F2 ; $626F
        db      $A2,$AA,$A0,$00,$0F,$F0,$02,$AE,$AA,$AA,$00,$00,$00,$00,$FA,$3F ; $627F
        db      $FF,$FF,$FC,$03,$E0,$FF,$FE,$80,$AA,$00,$00,$00,$BF,$F0,$00,$00 ; $628F
        db      $02,$30,$00,$F0,$0F,$FF,$C0,$16,$12,$0E,$23,$15,$27,$34,$00,$00 ; $629F
        db      $00,$01,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05 ; $62AF
        db      $44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$5A,$00 ; $62BF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$40,$80,$00,$00 ; $62CF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00 ; $62DF
        db      $00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00 ; $62EF
        db      $00,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $62FF
        db      $00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $630F
        db      $00,$01,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $631F
        db      $50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00 ; $632F
        db      $03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$00,$03,$F0 ; $633F
        db      $D5,$50,$00,$00,$00,$00,$00,$00,$00,$00,$15,$01,$50,$DD,$55,$55 ; $634F
        db      $00,$00,$00,$00,$00,$00,$01,$50,$15,$00,$55,$F7,$F5,$55,$40,$00 ; $635F
        db      $00,$00,$00,$00,$55,$55,$15,$00,$15,$7F,$7F,$D9,$50,$00,$00,$00 ; $636F
        db      $00,$05,$55,$55,$55,$00,$05,$57,$F5,$5D,$5C,$00,$00,$00,$3C,$19 ; $637F
        db      $55,$55,$55,$00,$01,$56,$BD,$FB,$5C,$00,$00,$00,$37,$FF,$56,$E6 ; $638F
        db      $55,$00,$00,$55,$6B,$6D,$54,$00,$00,$00,$0D,$57,$FD,$57,$55,$00 ; $639F
        db      $00,$05,$55,$55,$54,$00,$00,$00,$15,$F5,$55,$7E,$D4,$00,$00,$01 ; $63AF
        db      $45,$40,$54,$00,$00,$00,$51,$57,$7F,$DB,$50,$00,$00,$00,$41,$00 ; $63BF
        db      $14,$00,$00,$00,$40,$15,$55,$55,$40,$00,$00,$00,$82,$00,$14,$00 ; $63CF
        db      $15,$00,$00,$01,$51,$50,$00,$00,$00,$00,$82,$00,$05,$00,$54,$80 ; $63DF
        db      $00,$00,$10,$40,$00,$00,$00,$00,$82,$00,$05,$41,$55,$A0,$00,$00 ; $63EF
        db      $20,$80,$00,$00,$20,$00,$82,$00,$01,$55,$00,$28,$00,$00,$20,$80 ; $63FF
        db      $00,$00,$0A,$AA,$A2,$00,$00,$54,$00,$00,$00,$00,$20,$80,$00,$00 ; $640F
        db      $20,$00,$00,$80,$00,$00,$00,$00,$00,$00,$20,$80,$00,$00,$80,$00 ; $641F
        db      $02,$00,$00,$00,$00,$00,$00,$00,$28,$80,$00,$00,$00,$00,$02,$00 ; $642F
        db      $00,$00,$00,$00,$00,$00,$80,$20,$00,$00,$00,$00,$02,$00,$00,$00 ; $643F
        db      $00,$00,$00,$02,$00,$80,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00 ; $644F
        db      $00,$88,$00,$80,$00,$00,$00,$00,$20,$A8,$00,$00,$00,$00,$00,$20 ; $645F
        db      $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$02,$80 ; $646F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$2A,$00,$00 ; $647F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$11,$0F,$0C,$23,$AF,$A4,$01,$00 ; $648F
        db      $00,$00,$00,$00,$00,$55,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00 ; $649F
        db      $05,$00,$50,$01,$40,$50,$00,$00,$00,$00,$00,$00,$10,$00,$04,$04 ; $64AF
        db      $00,$04,$00,$00,$00,$00,$00,$00,$40,$28,$84,$06,$28,$04,$00,$00 ; $64BF
        db      $00,$00,$00,$00,$40,$AA,$FF,$FF,$AA,$01,$00,$00,$00,$00,$00,$00 ; $64CF
        db      $40,$2F,$FF,$FF,$FA,$01,$00,$00,$00,$0F,$FF,$00,$10,$BF,$FF,$FF ; $64DF
        db      $FE,$14,$00,$00,$00,$FF,$FF,$FF,$05,$FF,$FF,$FF,$FF,$40,$00,$00 ; $64EF
        db      $0F,$FF,$FF,$FF,$F3,$FC,$0F,$C0,$FF,$C0,$00,$00,$3F,$FF,$FF,$FF ; $64FF
        db      $1F,$F0,$27,$60,$3F,$F0,$00,$00,$FF,$FF,$FF,$FC,$4F,$F0,$0F,$C0 ; $650F
        db      $3F,$F0,$00,$01,$FF,$FF,$FF,$F1,$0F,$F0,$3F,$F0,$3F,$F0,$00,$03 ; $651F
        db      $FF,$FF,$FF,$F4,$4F,$FF,$FF,$FF,$FF,$F0,$00,$07,$FF,$FF,$FF,$C1 ; $652F
        db      $03,$FF,$FF,$FF,$FF,$C0,$00,$0D,$FF,$FF,$FF,$10,$03,$FF,$C0,$0F ; $653F
        db      $FF,$C0,$00,$07,$FF,$FF,$FF,$04,$00,$3F,$C0,$0F,$FC,$50,$00,$0D ; $654F
        db      $FF,$FF,$FC,$40,$00,$0E,$F0,$3E,$C0,$04,$00,$07,$FF,$FF,$FC,$10 ; $655F
        db      $00,$03,$BF,$FB,$00,$04,$00,$0F,$7F,$FF,$F1,$00,$00,$00,$EA,$AC ; $656F
        db      $00,$01,$00,$09,$DF,$FF,$70,$00,$00,$00,$0F,$C0,$00,$01,$00,$0B ; $657F
        db      $7F,$FD,$F1,$00,$00,$00,$00,$00,$00,$00,$40,$0A,$F7,$FF,$70,$00 ; $658F
        db      $00,$00,$00,$00,$00,$08,$40,$22,$2F,$7D,$F0,$00,$00,$00,$00,$00 ; $659F
        db      $00,$00,$40,$28,$02,$F7,$70,$00,$00,$00,$00,$00,$00,$08,$40,$A2 ; $65AF
        db      $00,$2F,$DC,$00,$00,$00,$00,$00,$00,$22,$40,$88,$00,$08,$3E,$00 ; $65BF
        db      $00,$0A,$AA,$00,$00,$08,$40,$A0,$00,$20,$02,$00,$00,$28,$00,$A0 ; $65CF
        db      $00,$22,$40,$88,$80,$20,$02,$00,$00,$80,$00,$28,$00,$88,$40,$A2 ; $65DF
        db      $00,$20,$02,$00,$02,$80,$00,$08,$00,$20,$40,$2A,$00,$20,$02,$80 ; $65EF
        db      $00,$A0,$00,$08,$00,$09,$00,$06,$66,$40,$00,$A0,$02,$20,$00,$20 ; $65FF
        db      $00,$81,$00,$00,$00,$00,$00,$A0,$00,$20,$00,$20,$02,$24,$00,$00 ; $660F
        db      $00,$00,$00,$28,$00,$88,$00,$20,$00,$20,$00,$00,$00,$00,$00,$0A ; $661F
        db      $00,$08,$00,$10,$00,$10,$00,$00,$00,$00,$00,$01,$99,$90,$00,$06 ; $662F
        db      $66,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $663F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $664F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $665F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00 ; $666F
        db      $00,$00,$00,$00,$00,$0F,$FF,$FF,$F0,$00,$00,$00,$00,$0F,$FF,$00 ; $667F
        db      $00,$3F,$FF,$FF,$FC,$00,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF ; $668F
        db      $FF,$00,$00,$00,$0F,$FF,$FF,$FF,$F3,$FC,$0F,$C0,$FF,$C0,$00,$00 ; $669F
        db      $3F,$FF,$FF,$FF,$0F,$F0,$23,$20,$3F,$F0,$00,$00,$FF,$FF,$FF,$FC ; $66AF
        db      $0F,$F0,$0F,$C0,$3F,$F0,$00,$00,$FF,$FF,$FF,$F0,$0F,$F0,$3F,$F0 ; $66BF
        db      $3F,$F0,$00,$03,$FF,$FF,$FF,$F0,$0F,$FF,$FF,$FF,$FF,$F0,$00,$03 ; $66CF
        db      $FF,$FF,$FF,$C0,$03,$FF,$FF,$FF,$FF,$C0,$00,$0C,$FF,$FF,$FF,$00 ; $66DF
        db      $03,$FF,$C0,$0F,$FF,$C0,$00,$03,$FF,$FF,$FF,$00,$00,$3F,$C0,$0F ; $66EF
        db      $FC,$00,$00,$0C,$FF,$FF,$FC,$00,$00,$0E,$F0,$3E,$C0,$00,$00,$03 ; $66FF
        db      $FF,$FF,$FC,$00,$00,$03,$BF,$FB,$00,$00,$00,$0F,$3F,$FF,$F0,$00 ; $670F
        db      $00,$00,$EA,$AC,$00,$00,$00,$00,$CF,$FF,$30,$00,$00,$00,$0F,$C0 ; $671F
        db      $00,$00,$00,$03,$3F,$FC,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $672F
        db      $F3,$FF,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$3C,$F0,$00 ; $673F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$F3,$30,$00,$00,$00,$00,$00 ; $674F
        db      $00,$00,$00,$00,$00,$0F,$CC,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $675F
        db      $00,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $676F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $677F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $678F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $679F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $67AF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $67BF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $67CF
        db      $00,$00,$00,$00,$00,$00,$00,$15,$0C,$0F,$19,$AF,$77,$01,$00,$00 ; $67DF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $67EF
        db      $00,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55 ; $67FF
        db      $55,$45,$55,$55,$55,$55,$54,$00,$00,$00,$00,$05,$55,$55,$55,$40 ; $680F
        db      $10,$05,$55,$55,$55,$50,$00,$00,$54,$00,$00,$00,$00,$00,$00,$10 ; $681F
        db      $00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00,$00,$10,$00 ; $682F
        db      $00,$00,$00,$00,$00,$04,$00,$40,$00,$00,$00,$05,$55,$55,$55,$55 ; $683F
        db      $55,$55,$55,$55,$55,$50,$40,$00,$00,$00,$55,$55,$55,$55,$55,$55 ; $684F
        db      $55,$55,$40,$04,$00,$40,$00,$00,$01,$55,$55,$55,$55,$55,$55,$54 ; $685F
        db      $00,$00,$01,$01,$00,$00,$00,$04,$01,$00,$10,$00,$05,$51,$00,$00 ; $686F
        db      $00,$00,$54,$00,$00,$00,$10,$F1,$0A,$90,$00,$05,$44,$00,$00,$00 ; $687F
        db      $00,$00,$00,$00,$00,$43,$31,$0C,$90,$00,$15,$50,$00,$00,$00,$00 ; $688F
        db      $00,$00,$00,$01,$03,$C1,$0F,$90,$00,$54,$40,$00,$00,$00,$00,$00 ; $689F
        db      $00,$00,$04,$00,$31,$00,$D0,$01,$51,$00,$00,$00,$00,$00,$00,$00 ; $68AF
        db      $00,$04,$00,$F1,$03,$D0,$05,$54,$00,$00,$00,$00,$00,$00,$00,$00 ; $68BF
        db      $15,$55,$55,$55,$55,$55,$70,$00,$00,$00,$00,$00,$00,$00,$00,$3F ; $68CF
        db      $FF,$FD,$FD,$DF,$FD,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55 ; $68DF
        db      $55,$55,$55,$57,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$FF,$FD ; $68EF
        db      $FF,$DF,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55 ; $68FF
        db      $55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$54 ; $690F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$40,$00 ; $691F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$01,$00,$00,$00 ; $692F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00 ; $693F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$00,$00 ; $694F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $695F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $696F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $697F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $698F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $699F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $69AF
        db      $00,$00,$0A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$00,$00 ; $69BF
        db      $00,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$80,$00,$00,$00,$00,$00,$02 ; $69CF
        db      $02,$00,$20,$00,$0A,$AA,$A8,$00,$00,$00,$00,$00,$00,$00,$08,$02 ; $69DF
        db      $00,$20,$00,$0A,$82,$00,$00,$00,$00,$00,$00,$00,$00,$20,$02,$0A ; $69EF
        db      $A0,$00,$0A,$88,$00,$00,$00,$00,$00,$00,$00,$00,$81,$02,$04,$A0 ; $69FF
        db      $00,$2A,$A0,$00,$00,$00,$00,$00,$00,$00,$02,$01,$42,$05,$A0,$00 ; $6A0F
        db      $A0,$80,$00,$00,$00,$00,$00,$00,$00,$08,$00,$12,$00,$60,$02,$82 ; $6A1F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$52,$01,$60,$0A,$28,$00 ; $6A2F
        db      $00,$00,$00,$00,$00,$00,$00,$2A,$AA,$A8,$AA,$8A,$AA,$80,$00,$00 ; $6A3F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6A4F
        db      $00,$00,$00,$00,$00,$2A,$AA,$A8,$AA,$8A,$A8,$00,$00,$00,$00,$00 ; $6A5F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6A6F
        db      $00,$00,$00,$02,$AA,$AA,$AA,$AA,$80,$00,$00,$00,$00,$00,$00,$00 ; $6A7F
        db      $00,$00,$00,$AA,$AA,$AA,$A8,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6A8F
        db      $00,$00,$0A,$AA,$AA,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6A9F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6AAF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6ABF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$19,$14,$0D,$2D ; $6ACF
        db      $1B,$2E,$36,$00,$00,$00,$00,$05,$40,$00,$15,$00,$00,$00,$00,$00 ; $6ADF
        db      $00,$00,$00,$00,$05,$40,$00,$25,$00,$00,$00,$00,$00,$00,$00,$00 ; $6AEF
        db      $00,$05,$40,$00,$35,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$40 ; $6AFF
        db      $00,$25,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$10,$00,$D5,$00 ; $6B0F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$90,$01,$55,$00,$00,$00,$00 ; $6B1F
        db      $00,$00,$00,$00,$00,$26,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6B2F
        db      $00,$00,$14,$50,$01,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11 ; $6B3F
        db      $50,$00,$51,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$50,$00,$44 ; $6B4F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$50,$00,$44,$00,$00,$00 ; $6B5F
        db      $00,$00,$03,$FF,$AC,$00,$05,$50,$00,$54,$00,$00,$00,$00,$00,$00 ; $6B6F
        db      $3F,$3E,$F0,$04,$50,$00,$54,$00,$00,$00,$00,$00,$00,$03,$FF,$3F ; $6B7F
        db      $05,$50,$00,$74,$00,$00,$00,$00,$00,$00,$00,$03,$FF,$C1,$50,$00 ; $6B8F
        db      $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C1,$50,$00,$54,$00,$00 ; $6B9F
        db      $00,$00,$00,$00,$00,$0F,$FC,$3D,$50,$00,$64,$00,$3F,$FB,$00,$00 ; $6BAF
        db      $00,$03,$BF,$03,$BD,$D0,$00,$D4,$00,$FF,$3F,$B0,$00,$00,$3B,$F0 ; $6BBF
        db      $0B,$F3,$50,$00,$B4,$33,$00,$FC,$FF,$00,$00,$FF,$00,$0F,$C2,$D0 ; $6BCF
        db      $00,$C3,$FF,$C0,$03,$FF,$C0,$0F,$F0,$00,$3F,$03,$50,$00,$3B,$F3 ; $6BDF
        db      $F0,$00,$03,$F0,$3F,$C0,$00,$BC,$02,$D0,$00,$EF,$CF,$F0,$00,$00 ; $6BEF
        db      $3C,$FC,$00,$00,$F0,$03,$50,$03,$FF,$33,$FC,$00,$00,$00,$C0,$00 ; $6BFF
        db      $03,$F0,$02,$50,$03,$FC,$30,$FC,$00,$00,$00,$00,$00,$0F,$C0,$00 ; $6C0F
        db      $50,$0F,$F0,$C0,$F8,$00,$00,$00,$00,$00,$0F,$00,$01,$40,$3F,$07 ; $6C1F
        db      $00,$FF,$00,$00,$00,$00,$00,$0F,$00,$30,$20,$3F,$17,$00,$3B,$00 ; $6C2F
        db      $00,$00,$00,$00,$0C,$00,$3E,$90,$F0,$D4,$40,$3F,$00,$00,$00,$00 ; $6C3F
        db      $00,$0C,$00,$1D,$50,$C0,$51,$40,$0F,$00,$00,$00,$00,$00,$00,$00 ; $6C4F
        db      $0F,$50,$00,$05,$00,$0F,$00,$00,$00,$00,$00,$00,$00,$03,$50,$00 ; $6C5F
        db      $55,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$90,$00,$E4,$00,$03 ; $6C6F
        db      $00,$00,$00,$00,$00,$00,$00,$03,$50,$00,$74,$00,$00,$00,$00,$00 ; $6C7F
        db      $00,$00,$00,$00,$01,$90,$00,$E4,$00,$00,$00,$00,$00,$00,$00,$00 ; $6C8F
        db      $00,$03,$50,$00,$74,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$D0 ; $6C9F
        db      $00,$D4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$50,$00,$74,$00 ; $6CAF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$D0,$00,$E4,$00,$00,$00,$00 ; $6CBF
        db      $00,$00,$00,$00,$00,$03,$50,$00,$74,$00,$00,$00,$00,$00,$00,$00 ; $6CCF
        db      $00,$00,$01,$D0,$00,$D4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; $6CDF
        db      $50,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$50,$00,$54 ; $6CEF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$50,$00,$54,$00,$00,$00 ; $6CFF
        db      $00,$00,$00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D0F
        db      $00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$09,$06,$0E,$13 ; $6D1F
        db      $AF,$0A,$01,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$00,$00,$00 ; $6D2F
        db      $00,$00,$00,$00,$00,$D5,$55,$55,$55,$55,$54,$00,$00,$00,$00,$00 ; $6D3F
        db      $00,$00,$01,$65,$00,$56,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00 ; $6D4F
        db      $05,$65,$FC,$16,$55,$69,$55,$40,$00,$00,$00,$00,$00,$00,$05,$65 ; $6D5F
        db      $BF,$16,$55,$79,$D5,$40,$00,$00,$00,$00,$00,$00,$15,$65,$B0,$16 ; $6D6F
        db      $55,$F5,$55,$50,$00,$00,$00,$00,$00,$00,$15,$65,$C0,$06,$55,$7A ; $6D7F
        db      $95,$50,$00,$00,$00,$05,$55,$55,$55,$95,$50,$16,$55,$55,$59,$55 ; $6D8F
        db      $55,$57,$20,$45,$55,$55,$55,$BF,$00,$36,$55,$57,$D9,$55,$55,$55 ; $6D9F
        db      $00,$45,$55,$55,$55,$BF,$00,$26,$55,$54,$99,$55,$55,$57,$20,$45 ; $6DAF
        db      $55,$55,$55,$84,$01,$56,$55,$55,$59,$55,$55,$57,$00,$05,$50,$00 ; $6DBF
        db      $55,$91,$55,$56,$55,$55,$59,$55,$55,$55,$20,$0E,$90,$00,$05,$94 ; $6DCF
        db      $44,$56,$55,$55,$58,$00,$01,$55,$00,$01,$40,$54,$05,$95,$55,$56 ; $6DDF
        db      $55,$55,$50,$40,$00,$58,$00,$74,$40,$94,$41,$94,$44,$56,$55,$55 ; $6DEF
        db      $51,$05,$44,$13,$F0,$00,$86,$E8,$50,$95,$55,$56,$55,$55,$45,$6E ; $6DFF
        db      $84,$11,$10,$54,$15,$A1,$54,$00,$00,$00,$00,$00,$05,$6A,$15,$01 ; $6E0F
        db      $50,$00,$05,$55,$50,$00,$00,$00,$00,$00,$01,$55,$54,$00,$00,$00 ; $6E1F
        db      $01,$55,$40,$00,$00,$00,$00,$00,$00,$55,$50,$00,$00,$00,$00,$00 ; $6E2F
        db      $00,$00,$00,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF ; $6E3F
        db      $FF,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$00,$00,$00,$02,$FA,$00,$AF ; $6E4F
        db      $AA,$AA,$AE,$00,$00,$00,$00,$00,$00,$00,$0A,$FA,$54,$2F,$AA,$FF ; $6E5F
        db      $AE,$80,$00,$00,$00,$00,$00,$00,$0A,$FA,$D5,$EF,$AA,$9F,$EF,$80 ; $6E6F
        db      $00,$00,$00,$00,$00,$00,$2A,$FA,$90,$2F,$AA,$5F,$EF,$A0,$00,$00 ; $6E7F
        db      $00,$00,$00,$00,$2A,$FA,$6A,$8F,$AA,$9A,$AF,$F0,$00,$00,$00,$0F ; $6E8F
        db      $FF,$FF,$FF,$3F,$FA,$3C,$FF,$FF,$F3,$FF,$FF,$FF,$20,$8F,$FF,$FF ; $6E9F
        db      $FF,$35,$AA,$3C,$FF,$FF,$F3,$FF,$FF,$FE,$00,$8F,$FF,$FF,$FF,$15 ; $6EAF
        db      $A8,$7C,$FF,$FD,$F3,$FF,$FF,$FF,$20,$8F,$FF,$FF,$FF,$00,$03,$FC ; $6EBF
        db      $FF,$FF,$F3,$FF,$FF,$FF,$00,$0F,$F0,$00,$FF,$33,$FF,$FC,$FF,$FF ; $6ECF
        db      $F3,$FF,$FF,$FE,$20,$0F,$F0,$00,$0F,$3C,$CC,$FC,$FF,$FF,$F0,$00 ; $6EDF
        db      $03,$FE,$00,$03,$C0,$00,$0F,$3F,$FF,$FC,$FF,$FF,$F0,$00,$00,$FF ; $6EEF
        db      $00,$B8,$C0,$00,$03,$3C,$CC,$FC,$FF,$FF,$F0,$00,$00,$33,$F0,$FC ; $6EFF
        db      $C0,$C0,$00,$3F,$FF,$FC,$FF,$FF,$C0,$0C,$00,$32,$E0,$A8,$00,$00 ; $6F0F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00,$00,$00,$00 ; $6F1F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F2F
        db      $00,$00,$00,$00,$00,$00,$00,$17,$0D,$0F,$1C,$17,$2A,$32,$00,$00 ; $6F3F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00 ; $6F4F
        db      $00,$02,$AA,$A8,$00,$00,$00,$54,$14,$00,$00,$00,$00,$00,$00,$00 ; $6F5F
        db      $00,$00,$2A,$00,$00,$54,$45,$45,$40,$00,$00,$00,$00,$00,$00,$AA ; $6F6F
        db      $AA,$8A,$80,$05,$55,$45,$04,$50,$00,$00,$00,$00,$00,$02,$80,$00 ; $6F7F
        db      $A2,$A0,$15,$15,$55,$55,$54,$00,$00,$00,$00,$00,$02,$02,$A8,$22 ; $6F8F
        db      $AA,$AA,$AA,$AA,$AA,$AA,$AA,$00,$00,$00,$00,$0A,$2A,$AA,$22,$00 ; $6F9F
        db      $00,$00,$00,$00,$00,$A0,$00,$00,$00,$00,$0A,$01,$1F,$22,$28,$A8 ; $6FAF
        db      $A8,$A8,$A8,$A8,$A0,$00,$00,$00,$00,$0A,$00,$57,$22,$28,$A8,$A8 ; $6FBF
        db      $A8,$A8,$A8,$A0,$00,$00,$00,$00,$2A,$80,$57,$22,$28,$A8,$A8,$A8 ; $6FCF
        db      $A8,$A8,$A0,$00,$00,$2A,$65,$AA,$20,$04,$22,$28,$A8,$A8,$A8,$A8 ; $6FDF
        db      $A8,$80,$00,$00,$AA,$A8,$22,$88,$14,$A0,$88,$A8,$A8,$A8,$A8,$A2 ; $6FEF
        db      $00,$00,$02,$00,$00,$22,$2A,$AA,$20,$20,$A8,$A8,$A8,$A8,$88,$00 ; $6FFF
        db      $00,$02,$2A,$80,$A2,$2A,$A8,$20,$08,$00,$00,$00,$00,$20,$00,$00 ; $700F
        db      $02,$AA,$AA,$A2,$2A,$AA,$20,$02,$AA,$AA,$AA,$AA,$82,$A0,$00,$02 ; $701F
        db      $AA,$AA,$A2,$2A,$AA,$20,$00,$00,$00,$00,$00,$0A,$A0,$00,$00,$00 ; $702F
        db      $2A,$22,$2A,$AA,$22,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$2A,$AA,$8A ; $703F
        db      $22,$2A,$AA,$22,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$2A,$AA,$A2,$A2 ; $704F
        db      $80,$00,$A2,$AA,$80,$CC,$AA,$83,$32,$A0,$00,$03,$CC,$E8,$A2,$AA ; $705F
        db      $AA,$A2,$A8,$3F,$FF,$28,$3F,$FC,$A0,$00,$0D,$FF,$FA,$00,$00,$00 ; $706F
        db      $00,$00,$F7,$FF,$C0,$DF,$FF,$00,$00,$37,$AB,$FE,$2A,$AA,$AA,$AA ; $707F
        db      $A3,$7E,$AF,$F3,$FA,$BF,$C0,$00,$3E,$02,$FC,$00,$00,$00,$00,$03 ; $708F
        db      $78,$0B,$F3,$E0,$2F,$C0,$00,$DE,$02,$F3,$00,$00,$00,$00,$03,$F8 ; $709F
        db      $0B,$FF,$E0,$2F,$30,$00,$3F,$AB,$FC,$00,$00,$00,$00,$03,$FE,$AF ; $70AF
        db      $F3,$FA,$BF,$C0,$00,$3F,$FF,$CC,$00,$00,$00,$00,$00,$FF,$FF,$33 ; $70BF
        db      $FF,$FC,$C0,$00,$0F,$FF,$F0,$00,$00,$00,$00,$00,$3F,$33,$C0,$FF ; $70CF
        db      $CF,$00,$00,$03,$33,$00,$00,$00,$00,$00,$00,$0C,$CC,$00,$33,$30 ; $70DF
        db      $00,$00,$17,$1A,$10,$29,$1A,$27,$32,$00,$00,$00,$00,$00,$00,$00 ; $70EF
        db      $00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $70FF
        db      $00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $710F
        db      $00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $711F
        db      $00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $712F
        db      $00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $713F
        db      $00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $714F
        db      $00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $715F
        db      $00,$00,$10,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $716F
        db      $00,$00,$41,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $717F
        db      $00,$01,$05,$50,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $718F
        db      $00,$01,$15,$44,$10,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $719F
        db      $00,$01,$15,$15,$04,$A8,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $71AF
        db      $00,$01,$14,$55,$41,$2A,$20,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $71BF
        db      $00,$01,$11,$55,$10,$4A,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $71CF
        db      $00,$01,$05,$54,$54,$10,$AA,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $71DF
        db      $00,$01,$15,$51,$55,$04,$2A,$A0,$00,$00,$00,$00,$00,$55,$55,$40 ; $71EF
        db      $00,$01,$05,$45,$54,$41,$2A,$88,$00,$00,$00,$00,$01,$40,$00,$50 ; $71FF
        db      $00,$00,$41,$15,$51,$50,$6A,$AA,$80,$00,$00,$00,$01,$01,$54,$10 ; $720F
        db      $00,$00,$10,$55,$45,$54,$1A,$2A,$00,$00,$00,$00,$05,$15,$55,$10 ; $721F
        db      $00,$00,$04,$15,$15,$51,$06,$00,$A0,$00,$00,$00,$05,$02,$2F,$10 ; $722F
        db      $00,$00,$01,$04,$55,$45,$41,$20,$88,$00,$00,$00,$05,$00,$AB,$10 ; $723F
        db      $00,$00,$00,$41,$55,$15,$50,$4A,$A8,$00,$00,$00,$15,$40,$AB,$10 ; $724F
        db      $00,$00,$00,$10,$54,$55,$44,$10,$A8,$00,$15,$9A,$55,$10,$08,$10 ; $725F
        db      $00,$00,$00,$04,$11,$55,$15,$04,$AA,$00,$55,$54,$11,$44,$28,$50 ; $726F
        db      $00,$00,$00,$01,$05,$54,$55,$45,$A8,$01,$00,$00,$11,$15,$55,$10 ; $727F
        db      $00,$00,$00,$00,$41,$51,$55,$14,$60,$01,$15,$40,$51,$15,$54,$10 ; $728F
        db      $00,$00,$00,$00,$10,$00,$00,$50,$08,$01,$55,$55,$51,$15,$55,$10 ; $729F
        db      $00,$00,$00,$00,$05,$55,$55,$40,$28,$01,$55,$55,$51,$15,$55,$10 ; $72AF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$22,$00,$00,$15,$11,$15,$55,$11 ; $72BF
        db      $55,$55,$55,$55,$55,$55,$50,$00,$8A,$15,$55,$45,$11,$15,$55,$11 ; $72CF
        db      $55,$55,$55,$55,$55,$55,$50,$00,$A8,$15,$55,$51,$51,$40,$00,$51 ; $72DF
        db      $55,$40,$CC,$55,$43,$31,$50,$00,$2A,$03,$CC,$D4,$51,$55,$55,$51 ; $72EF
        db      $54,$3F,$FF,$14,$3F,$FC,$50,$00,$00,$0E,$FF,$F5,$00,$00,$00,$00 ; $72FF
        db      $00,$FB,$FF,$C0,$EF,$FF,$00,$00,$08,$3B,$57,$FD,$15,$55,$55,$55 ; $730F
        db      $53,$BD,$5F,$F3,$F5,$7F,$C0,$00,$2A,$3D,$01,$FC,$00,$00,$00,$00 ; $731F
        db      $03,$B4,$07,$F3,$D0,$1F,$C0,$00,$02,$ED,$01,$F3,$00,$00,$00,$00 ; $732F
        db      $03,$F4,$07,$FF,$D0,$1F,$30,$00,$00,$3F,$57,$FC,$00,$00,$00,$00 ; $733F
        db      $03,$FD,$5F,$F3,$F5,$7F,$C0,$00,$00,$3F,$FF,$CC,$00,$00,$00,$00 ; $734F
        db      $00,$FF,$FF,$33,$FF,$FC,$C0,$00,$00,$0F,$FF,$F0,$00,$00,$00,$00 ; $735F
        db      $00,$3F,$33,$C0,$FF,$CF,$00,$00,$00,$03,$33,$00,$00,$00,$00,$00 ; $736F
        db      $00,$0C,$CC,$00,$33,$30,$00,$00,$00,$17,$1B,$12,$2A,$1A,$22,$37 ; $737F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $738F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00 ; $739F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00 ; $73AF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $73BF
        db      $40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73CF
        db      $00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73DF
        db      $00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73EF
        db      $00,$00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73FF
        db      $00,$00,$00,$00,$00,$00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$00 ; $740F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$04,$00,$00,$00,$00,$00 ; $741F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$41,$41,$00,$00,$00 ; $742F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$05,$50,$40 ; $743F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$15 ; $744F
        db      $44,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $745F
        db      $01,$15,$15,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $746F
        db      $00,$00,$01,$14,$55,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $747F
        db      $00,$00,$00,$00,$01,$11,$55,$10,$40,$00,$00,$00,$00,$00,$00,$00 ; $748F
        db      $00,$00,$00,$00,$00,$00,$01,$05,$54,$54,$10,$00,$00,$00,$00,$00 ; $749F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$15,$51,$55,$04,$00,$00,$00 ; $74AF
        db      $00,$00,$00,$00,$00,$00,$55,$55,$40,$00,$01,$05,$45,$54,$41,$00 ; $74BF
        db      $00,$00,$00,$00,$00,$00,$00,$01,$40,$00,$50,$00,$00,$41,$15,$51 ; $74CF
        db      $50,$40,$00,$00,$00,$00,$00,$00,$00,$01,$01,$55,$10,$00,$00,$10 ; $74DF
        db      $55,$45,$54,$10,$00,$00,$00,$00,$00,$00,$00,$05,$05,$55,$50,$00 ; $74EF
        db      $00,$04,$15,$15,$51,$04,$00,$00,$00,$00,$00,$00,$00,$05,$0B,$33 ; $74FF
        db      $90,$00,$00,$01,$04,$55,$45,$41,$00,$00,$00,$00,$00,$00,$00,$05 ; $750F
        db      $02,$DE,$10,$00,$00,$00,$41,$55,$15,$50,$40,$00,$00,$00,$00,$00 ; $751F
        db      $00,$15,$40,$FE,$10,$00,$00,$00,$10,$54,$55,$44,$10,$00,$00,$00 ; $752F
        db      $00,$15,$DF,$55,$10,$0C,$10,$00,$00,$00,$04,$11,$55,$15,$04,$00 ; $753F
        db      $00,$00,$00,$55,$54,$11,$44,$3F,$D0,$00,$00,$00,$01,$05,$54,$55 ; $754F
        db      $45,$00,$00,$00,$01,$00,$00,$11,$15,$55,$D0,$00,$00,$00,$00,$41 ; $755F
        db      $51,$55,$14,$40,$00,$00,$01,$15,$40,$51,$15,$54,$30,$00,$00,$00 ; $756F
        db      $00,$10,$00,$00,$50,$00,$00,$00,$01,$55,$55,$51,$15,$55,$F0,$00 ; $757F
        db      $00,$00,$00,$05,$55,$55,$40,$00,$00,$00,$01,$55,$55,$51,$15,$55 ; $758F
        db      $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$11 ; $759F
        db      $15,$55,$11,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$15,$55 ; $75AF
        db      $45,$11,$15,$55,$11,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00 ; $75BF
        db      $15,$55,$51,$51,$40,$00,$51,$55,$40,$88,$55,$42,$21,$50,$00,$3F ; $75CF
        db      $00,$00,$02,$88,$94,$51,$55,$55,$51,$54,$2A,$AA,$14,$2A,$A8,$50 ; $75DF
        db      $00,$0F,$00,$00,$0B,$AA,$A5,$00,$00,$00,$00,$00,$AE,$AA,$80,$BA ; $75EF
        db      $AA,$00,$03,$FC,$F0,$00,$2E,$56,$A9,$15,$55,$55,$55,$52,$E9,$5A ; $75FF
        db      $A2,$A5,$6A,$80,$03,$FF,$CC,$00,$29,$01,$A8,$00,$00,$00,$00,$02 ; $760F
        db      $E4,$06,$A2,$90,$1A,$80,$30,$F3,$F3,$00,$B9,$01,$A2,$00,$00,$00 ; $761F
        db      $00,$02,$A4,$06,$AA,$90,$1A,$20,$FC,$3F,$FF,$00,$2A,$56,$A8,$00 ; $762F
        db      $00,$00,$00,$02,$A9,$5A,$A2,$A5,$6A,$80,$FF,$FC,$FC,$00,$2A,$AA ; $763F
        db      $88,$00,$00,$00,$00,$00,$AA,$AA,$22,$AA,$A8,$80,$33,$FF,$03,$0C ; $764F
        db      $0A,$AA,$A0,$00,$00,$00,$00,$00,$2A,$22,$80,$AA,$8A,$0C,$FC,$F0 ; $765F
        db      $FC,$0F,$02,$22,$00,$00,$00,$00,$00,$00,$08,$88,$00,$22,$20,$03 ; $766F
        db      $F3,$FC,$CF,$3F,$17,$1B,$10,$2A,$1A,$22,$37,$00,$00,$00,$00,$00 ; $767F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $768F
        db      $00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $769F
        db      $00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76AF
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76BF
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76CF
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76DF
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76EF
        db      $00,$00,$00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $76FF
        db      $00,$00,$00,$00,$10,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $770F
        db      $00,$00,$00,$00,$41,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $771F
        db      $00,$00,$00,$01,$05,$50,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $772F
        db      $00,$00,$00,$01,$15,$44,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $773F
        db      $00,$00,$00,$01,$15,$15,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $774F
        db      $00,$00,$00,$01,$14,$55,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $775F
        db      $00,$00,$00,$01,$11,$55,$10,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $776F
        db      $00,$00,$00,$01,$05,$54,$54,$10,$00,$00,$00,$00,$00,$00,$00,$00 ; $777F
        db      $00,$00,$00,$01,$15,$51,$55,$04,$00,$00,$00,$00,$00,$00,$00,$55 ; $778F
        db      $55,$40,$00,$01,$05,$45,$54,$41,$00,$00,$00,$00,$00,$00,$01,$40 ; $779F
        db      $00,$50,$00,$00,$41,$15,$51,$50,$40,$00,$00,$00,$00,$00,$01,$01 ; $77AF
        db      $55,$10,$00,$00,$10,$55,$45,$54,$10,$00,$00,$00,$00,$00,$05,$05 ; $77BF
        db      $55,$50,$00,$00,$04,$15,$15,$51,$04,$00,$00,$00,$00,$00,$05,$0B ; $77CF
        db      $33,$90,$00,$00,$01,$04,$55,$45,$41,$00,$00,$00,$00,$00,$05,$02 ; $77DF
        db      $DE,$10,$00,$00,$00,$41,$55,$15,$50,$40,$00,$00,$00,$00,$15,$40 ; $77EF
        db      $FE,$10,$00,$00,$00,$10,$54,$55,$44,$10,$00,$00,$15,$DF,$55,$10 ; $77FF
        db      $0C,$10,$00,$00,$00,$04,$11,$55,$15,$04,$00,$00,$55,$54,$11,$44 ; $780F
        db      $3F,$D0,$00,$00,$00,$01,$05,$54,$55,$45,$00,$01,$00,$00,$11,$15 ; $781F
        db      $55,$D0,$00,$00,$00,$00,$41,$51,$55,$14,$40,$01,$15,$40,$51,$15 ; $782F
        db      $54,$30,$00,$00,$00,$00,$10,$00,$00,$50,$00,$01,$55,$55,$51,$15 ; $783F
        db      $55,$F0,$00,$00,$00,$00,$05,$55,$55,$40,$00,$01,$55,$55,$51,$15 ; $784F
        db      $55,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$11,$15 ; $785F
        db      $55,$11,$55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$45,$11,$15 ; $786F
        db      $55,$11,$55,$55,$55,$55,$55,$55,$50,$00,$00,$15,$55,$51,$51,$40 ; $787F
        db      $00,$51,$55,$40,$88,$55,$42,$21,$50,$00,$00,$02,$88,$94,$51,$55 ; $788F
        db      $55,$51,$54,$2A,$AA,$14,$2A,$A8,$50,$00,$00,$0B,$AA,$A5,$00,$00 ; $789F
        db      $00,$00,$00,$AE,$AA,$80,$BA,$AA,$00,$00,$00,$2E,$56,$A9,$15,$55 ; $78AF
        db      $55,$55,$52,$E9,$5A,$A2,$A5,$6A,$80,$00,$00,$29,$01,$A8,$00,$00 ; $78BF
        db      $00,$00,$02,$E4,$06,$A2,$90,$1A,$80,$00,$00,$B9,$01,$A2,$00,$00 ; $78CF
        db      $00,$00,$02,$A4,$06,$AA,$90,$1A,$20,$00,$00,$2A,$56,$A8,$00,$00 ; $78DF
        db      $00,$00,$02,$A9,$5A,$A2,$A5,$6A,$80,$00,$00,$2A,$AA,$88,$00,$00 ; $78EF
        db      $00,$00,$00,$AA,$AA,$22,$AA,$A8,$80,$00,$00,$0A,$AA,$A0,$00,$00 ; $78FF
        db      $00,$00,$00,$2A,$22,$80,$AA,$8A,$00,$00,$00,$02,$22,$00,$00,$00 ; $790F
        db      $00,$00,$00,$08,$88,$00,$22,$20,$00,$00,$00,$00,$00,$0C,$01,$FF ; $791F
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$90,$AE,$FF ; $792F
        db      $D7,$FF,$00,$00,$00,$00,$00,$90,$0C,$00,$D7,$FF,$00,$00,$00,$00 ; $793F
        db      $00,$90,$6A,$00,$D7,$FF,$00,$00,$00,$3A,$79,$44,$79,$4E,$79,$24 ; $794F
        db      $77,$68,$61,$74,$20,$64,$6F,$65,$73,$20,$6E,$6F,$74,$20,$62,$65 ; $795F
        db      $6C,$6F,$6E,$67,$20,$69,$6E,$20,$74,$68,$69,$73,$20,$67,$72,$6F ; $796F
        db      $75,$70,$20,$3F,$06,$06,$06,$04,$04,$04,$08,$00,$09,$00,$00,$00 ; $797F
        db      $06,$06,$06,$04,$04,$04,$08,$00,$09,$09,$00,$07,$0F,$00,$09,$00 ; $798F
        db      $06,$00,$0C,$08,$06,$08,$00,$00,$00,$0A,$0F,$0D,$00,$00,$00,$0A ; $799F
        db      $00,$00,$00,$0B,$0F,$0D,$00,$0F,$07,$00,$0F,$0F,$0F,$DB,$6A,$DB ; $79AF
        db      $6A,$97,$64,$43,$5D,$46,$6F,$A6,$51,$46,$6F,$E6,$67,$DB,$6A,$E6 ; $79BF
        db      $67,$E6,$67,$97,$64,$43,$5D,$15,$56,$B4,$5A,$43,$5D,$43,$5D,$97 ; $79CF
        db      $64,$E6,$67,$2B,$6D,$46,$6F,$43,$5D,$15,$56,$A6,$51,$A6,$51,$A6 ; $79DF
        db      $62,$DB,$6A,$DB,$6A,$46,$6F,$46,$6F                             ; $79EF preserved bytes

ODD_ONE_OUT_SETUP_ACTION:
        rst     $08                                                             ; $79F8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $79F9 execution token
        dw      XT_LIT                                                          ; $79FB execution token
        dw      $798C                                                           ; $79FD inline word
        dw      $2D7C                                                           ; $79FF execution token
        dw      XT_LIT                                                          ; $7A01 execution token
        dw      $FF72                                                           ; $7A03 inline word
        dw      XT_LITbyte                                                      ; $7A05 execution token
        db      $02                                                             ; $7A07 inline byte
        dw      XT_LIT                                                          ; $7A08 execution token
        dw      $795E                                                           ; $7A0A inline word
        dw      XT_LIT                                                          ; $7A0C execution token
        dw      $7958                                                           ; $7A0E inline word
        dw      XT_LIT                                                          ; $7A10 execution token
        dw      $7983                                                           ; $7A12 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7A14 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7A16 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A18 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7A1A execution token
        dw      XT_RETURN                                                       ; $7A1C execution token

ODD_ONE_OUT_CORRECT_ACTION:
        rst     $08                                                             ; $7A1E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7A1F execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7A21 execution token
        dw      XT_LIT                                                          ; $7A23 execution token
        dw      $FFCE                                                           ; $7A25 inline word
        dw      XT_LITbyte                                                      ; $7A27 execution token
        db      $05                                                             ; $7A29 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7A2A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7A2C execution token
        dw      XT_ARRAY                                                        ; $7A2E execution token
        dw      $79BC                                                           ; $7A30 inline word
        dw      XT_at                                                           ; $7A32 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7A34 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7A36 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A38 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7A3A execution token
        dw      XT_RETURN                                                       ; $7A3C execution token

ODD_ONE_OUT_SECOND_ACTION:
        rst     $08                                                             ; $7A3E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7A3F execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7A41 execution token
        dw      XT_LIT                                                          ; $7A43 execution token
        dw      $FFCE                                                           ; $7A45 inline word
        dw      XT_LITbyte                                                      ; $7A47 execution token
        db      $05                                                             ; $7A49 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7A4A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7A4C execution token
        dw      XT_ARRAY                                                        ; $7A4E execution token
        dw      $79D0                                                           ; $7A50 inline word
        dw      XT_at                                                           ; $7A52 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7A54 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7A56 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A58 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7A5A execution token
        dw      XT_LIT                                                          ; $7A5C execution token
        dw      $482E                                                           ; $7A5E inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7A60 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A62 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7A64 execution token
        dw      XT_RETURN                                                       ; $7A66 execution token

ODD_ONE_OUT_REMAINING_ACTION:
        rst     $08                                                             ; $7A68 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7A69 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7A6B execution token
        dw      XT_LIT                                                          ; $7A6D execution token
        dw      $FFCE                                                           ; $7A6F inline word
        dw      XT_LITbyte                                                      ; $7A71 execution token
        db      $05                                                             ; $7A73 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7A74 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7A76 execution token
        dw      XT_ARRAY                                                        ; $7A78 execution token
        dw      $79E4                                                           ; $7A7A inline word
        dw      XT_at                                                           ; $7A7C execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7A7E execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7A80 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A82 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7A84 execution token
        dw      XT_LIT                                                          ; $7A86 execution token
        dw      $482E                                                           ; $7A88 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7A8A execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A8C execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7A8E execution token
        dw      XT_RETURN                                                       ; $7A90 execution token

ODD_ONE_OUT_ACTIONS:
        db      $04                                                             ; $7A92 action count
        dw      ODD_ONE_OUT_SETUP_ACTION                                        ; $7A93 setup action
        dw      ODD_ONE_OUT_CORRECT_ACTION                                      ; $7A95 correct answer
        dw      ODD_ONE_OUT_SECOND_ACTION                                       ; $7A97 second answer
        dw      ODD_ONE_OUT_REMAINING_ACTION                                    ; $7A99 remaining answer

; Rooted by tier slot 0.
ODD_ONE_OUT_V0_1_T0_INIT:
        rst     $08                                                          ; $7A9B
        dw      XT_LITbyte                                                      ; $7A9C
        db      $02                                                              ; $7A9E
        dw      XT_RANDOM_BELOW                                                 ; $7A9F
        dw      XT_LIT                                                          ; $7AA1
        dw      QUESTION_VARIANT_ADDR                                           ; $7AA3
        dw      XT_SBbang                                                       ; $7AA5
        dw      XT_LIT                                                          ; $7AA7
        dw      PPQ13_ODD_ONE_OUT_ACTIONS                                       ; $7AA9
        dw      XT_RETURN                                                       ; $7AAB

; Rooted by tier slot 0.
ODD_ONE_OUT_V2_3_T0_INIT:
        rst     $08                                                          ; $7AAD
        dw      XT_LITbyte                                                      ; $7AAE
        db      $02                                                              ; $7AB0
        dw      XT_RANDOM_BELOW                                                 ; $7AB1
        dw      XT_LITbyte                                                      ; $7AB3
        db      $02                                                              ; $7AB5
        dw      XT_plus                                                         ; $7AB6
        dw      XT_LIT                                                          ; $7AB8
        dw      QUESTION_VARIANT_ADDR                                           ; $7ABA
        dw      XT_SBbang                                                       ; $7ABC
        dw      XT_LIT                                                          ; $7ABE
        dw      PPQ13_ODD_ONE_OUT_ACTIONS                                       ; $7AC0
        dw      XT_RETURN                                                       ; $7AC2

; Rooted by tier slot 1.
ODD_ONE_OUT_V4_5_T1_INIT:
        rst     $08                                                          ; $7AC4
        dw      XT_LITbyte                                                      ; $7AC5
        db      $02                                                              ; $7AC7
        dw      XT_RANDOM_BELOW                                                 ; $7AC8
        dw      XT_LITbyte                                                      ; $7ACA
        db      $04                                                              ; $7ACC
        dw      XT_plus                                                         ; $7ACD
        dw      XT_LIT                                                          ; $7ACF
        dw      QUESTION_VARIANT_ADDR                                           ; $7AD1
        dw      XT_SBbang                                                       ; $7AD3
        dw      XT_LIT                                                          ; $7AD5
        dw      PPQ13_ODD_ONE_OUT_ACTIONS                                       ; $7AD7
        dw      XT_RETURN                                                       ; $7AD9

; Rooted by tier slot 1.
ODD_ONE_OUT_V6_7_T1_INIT:
        rst     $08                                                          ; $7ADB
        dw      XT_LITbyte                                                      ; $7ADC
        db      $02                                                              ; $7ADE
        dw      XT_RANDOM_BELOW                                                 ; $7ADF
        dw      XT_LITbyte                                                      ; $7AE1
        db      $06                                                              ; $7AE3
        dw      XT_plus                                                         ; $7AE4
        dw      XT_LIT                                                          ; $7AE6
        dw      QUESTION_VARIANT_ADDR                                           ; $7AE8
        dw      XT_SBbang                                                       ; $7AEA
        dw      XT_LIT                                                          ; $7AEC
        dw      PPQ13_ODD_ONE_OUT_ACTIONS                                       ; $7AEE
        dw      XT_RETURN                                                       ; $7AF0

; Rooted by tier slot 2.
ODD_ONE_OUT_V8_9_T2_INIT:
        rst     $08                                                          ; $7AF2
        dw      XT_LITbyte                                                      ; $7AF3
        db      $02                                                              ; $7AF5
        dw      XT_RANDOM_BELOW                                                 ; $7AF6
        dw      XT_LITbyte                                                      ; $7AF8
        db      $08                                                              ; $7AFA
        dw      XT_plus                                                         ; $7AFB
        dw      XT_LIT                                                          ; $7AFD
        dw      QUESTION_VARIANT_ADDR                                           ; $7AFF
        dw      XT_SBbang                                                       ; $7B01
        dw      XT_LIT                                                          ; $7B03
        dw      PPQ13_ODD_ONE_OUT_ACTIONS                                       ; $7B05
        dw      XT_RETURN                                                       ; $7B07
VISUAL_PROGRESSION_SETUP_LOOP_1:
        rst     $08                                                             ; $7B09 colon entry
        dw      XT_0                                                            ; $7B0A execution token
        dw      XT_LIT                                                          ; $7B0C execution token
        dw      $FD6D                                                           ; $7B0E inline word
        dw      $2BEF                                                           ; $7B10 execution token
        dw      XT_LITbyte                                                      ; $7B12 execution token
        db      $38                                                             ; $7B14 inline byte
        dw      XT_LIT                                                          ; $7B15 execution token
        dw      $F2FD                                                           ; $7B17 inline word
        dw      XT_SBbang                                                       ; $7B19 execution token
VISUAL_PROGRESSION_SETUP_LOOP_1_R:
        dw      XT_LIT                                                          ; $7B1B execution token
        dw      $F2FD                                                           ; $7B1D inline word
        dw      XT_Bat                                                          ; $7B1F execution token
        dw      $2AF2                                                           ; $7B21 execution token
        dw      XT_LIT                                                          ; $7B23 execution token
        dw      $00F0                                                           ; $7B25 inline word
        dw      XT_LIT                                                          ; $7B27 execution token
        dw      $00D8                                                           ; $7B29 inline word
        dw      XT_LIT                                                          ; $7B2B execution token
        dw      $00E0                                                           ; $7B2D inline word
        dw      $2B71                                                           ; $7B2F execution token
        dw      XT_LIT                                                          ; $7B31 execution token
        dw      QUESTION_BANK_BASE                                              ; $7B33 inline word
        dw      $2B35                                                           ; $7B35 execution token
        dw      XT_LITbyte                                                      ; $7B37 execution token
        db      $0F                                                             ; $7B39 inline byte
        dw      XT_LIT                                                          ; $7B3A execution token
        dw      $00AF                                                           ; $7B3C inline word
        dw      $2B2E                                                           ; $7B3E execution token
        dw      XT_LIT                                                          ; $7B40 execution token
        dw      $F2FD                                                           ; $7B42 inline word
        dw      XT_Bat                                                          ; $7B44 execution token
        dw      XT_LITbyte                                                      ; $7B46 execution token
        db      $20                                                             ; $7B48 inline byte
        dw      XT_less                                                         ; $7B49 execution token
        dw      XT_0BRANCH                                                      ; $7B4B execution token
        dw      VISUAL_PROGRESSION_SETUP_LOOP_1_C                               ; $7B4D branch target
        dw      XT_LITbyte                                                      ; $7B4F execution token
        db      $08                                                             ; $7B51 inline byte
        dw      XT_LIT                                                          ; $7B52 execution token
        dw      $00A8                                                           ; $7B54 inline word
        dw      $2B2E                                                           ; $7B56 execution token
VISUAL_PROGRESSION_SETUP_LOOP_1_C:
        dw      XT_LIT                                                          ; $7B58 execution token
        dw      $F2FD                                                           ; $7B5A inline word
        dw      XT_Bat                                                          ; $7B5C execution token
        dw      XT_2slash                                                       ; $7B5E execution token
        dw      XT_2slash                                                       ; $7B60 execution token
        dw      XT_2slash                                                       ; $7B62 execution token
        dw      $2BA8                                                           ; $7B64 execution token
        dw      XT_LIT                                                          ; $7B66 execution token
        dw      $F2FD                                                           ; $7B68 inline word
        dw      XT_DUP                                                          ; $7B6A execution token
        dw      XT_1minusBbang                                                  ; $7B6C execution token
        dw      XT_Bat                                                          ; $7B6E execution token
        dw      XT_LITbyte                                                      ; $7B70 execution token
        db      $18                                                             ; $7B72 inline byte
        dw      XT_less                                                         ; $7B73 execution token
        dw      XT_0BRANCH                                                      ; $7B75 execution token
        dw      VISUAL_PROGRESSION_SETUP_LOOP_1_R                               ; $7B77 branch target
        dw      $2B8C                                                           ; $7B79 execution token
        dw      XT_RETURN                                                       ; $7B7B execution token

VISUAL_PROGRESSION_SETUP_LOOP_2:
        rst     $08                                                             ; $7B7D colon entry
        dw      XT_0                                                            ; $7B7E execution token
        dw      XT_LIT                                                          ; $7B80 execution token
        dw      $FD3D                                                           ; $7B82 inline word
        dw      $2BEF                                                           ; $7B84 execution token
        dw      XT_LITbyte                                                      ; $7B86 execution token
        db      $38                                                             ; $7B88 inline byte
        dw      XT_LIT                                                          ; $7B89 execution token
        dw      $F2FC                                                           ; $7B8B inline word
        dw      XT_SBbang                                                       ; $7B8D execution token
VISUAL_PROGRESSION_SETUP_LOOP_2_R:
        dw      XT_LIT                                                          ; $7B8F execution token
        dw      $F2FC                                                           ; $7B91 inline word
        dw      XT_Bat                                                          ; $7B93 execution token
        dw      $2AF2                                                           ; $7B95 execution token
        dw      XT_LIT                                                          ; $7B97 execution token
        dw      $00F0                                                           ; $7B99 inline word
        dw      XT_LIT                                                          ; $7B9B execution token
        dw      $00D8                                                           ; $7B9D inline word
        dw      XT_LIT                                                          ; $7B9F execution token
        dw      $00E0                                                           ; $7BA1 inline word
        dw      $2B71                                                           ; $7BA3 execution token
        dw      XT_LIT                                                          ; $7BA5 execution token
        dw      QUESTION_BANK_BASE                                              ; $7BA7 inline word
        dw      $2B35                                                           ; $7BA9 execution token
        dw      XT_LITbyte                                                      ; $7BAB execution token
        db      $0F                                                             ; $7BAD inline byte
        dw      XT_LIT                                                          ; $7BAE execution token
        dw      $00AF                                                           ; $7BB0 inline word
        dw      $2B2E                                                           ; $7BB2 execution token
        dw      XT_LIT                                                          ; $7BB4 execution token
        dw      $F2FC                                                           ; $7BB6 inline word
        dw      XT_Bat                                                          ; $7BB8 execution token
        dw      XT_LITbyte                                                      ; $7BBA execution token
        db      $20                                                             ; $7BBC inline byte
        dw      XT_less                                                         ; $7BBD execution token
        dw      XT_0BRANCH                                                      ; $7BBF execution token
        dw      VISUAL_PROGRESSION_SETUP_LOOP_2_C                               ; $7BC1 branch target
        dw      XT_LITbyte                                                      ; $7BC3 execution token
        db      $08                                                             ; $7BC5 inline byte
        dw      XT_LIT                                                          ; $7BC6 execution token
        dw      $00A8                                                           ; $7BC8 inline word
        dw      $2B2E                                                           ; $7BCA execution token
VISUAL_PROGRESSION_SETUP_LOOP_2_C:
        dw      XT_LIT                                                          ; $7BCC execution token
        dw      $F2FC                                                           ; $7BCE inline word
        dw      XT_Bat                                                          ; $7BD0 execution token
        dw      XT_2slash                                                       ; $7BD2 execution token
        dw      XT_2slash                                                       ; $7BD4 execution token
        dw      XT_2slash                                                       ; $7BD6 execution token
        dw      $2BA8                                                           ; $7BD8 execution token
        dw      XT_LIT                                                          ; $7BDA execution token
        dw      $F2FC                                                           ; $7BDC inline word
        dw      XT_DUP                                                          ; $7BDE execution token
        dw      XT_1minusBbang                                                  ; $7BE0 execution token
        dw      XT_Bat                                                          ; $7BE2 execution token
        dw      XT_LITbyte                                                      ; $7BE4 execution token
        db      $18                                                             ; $7BE6 inline byte
        dw      XT_less                                                         ; $7BE7 execution token
        dw      XT_0BRANCH                                                      ; $7BE9 execution token
        dw      VISUAL_PROGRESSION_SETUP_LOOP_2_R                               ; $7BEB branch target
        dw      $2B8C                                                           ; $7BED execution token
        dw      XT_RETURN                                                       ; $7BEF execution token

VISUAL_PROGRESSION_SETUP_THREAD_1:
        rst     $08                                                             ; $7BF1 colon entry
        dw      VISUAL_PROGRESSION_SETUP_LOOP_1                                 ; $7BF2 execution token
        dw      VISUAL_PROGRESSION_SETUP_LOOP_2                                 ; $7BF4 execution token
        dw      XT_RETURN                                                       ; $7BF6 execution token

VISUAL_PROGRESSION_CORRECT_THREAD_1:
        rst     $08                                                             ; $7BF8 colon entry
        dw      XT_LIT                                                          ; $7BF9 execution token
        dw      QUESTION_BANK_BASE                                              ; $7BFB inline word
        dw      XT_LITbyte                                                      ; $7BFD execution token
        db      $40                                                             ; $7BFF inline byte
        dw      XT_LITbyte                                                      ; $7C00 execution token
        db      $20                                                             ; $7C02 inline byte
        dw      $2B71                                                           ; $7C03 execution token
        dw      XT_LITbyte                                                      ; $7C05 execution token
        db      $0F                                                             ; $7C07 inline byte
        dw      XT_LIT                                                          ; $7C08 execution token
        dw      $00FF                                                           ; $7C0A inline word
        dw      $2B2E                                                           ; $7C0C execution token
        dw      XT_LIT                                                          ; $7C0E execution token
        dw      QUESTION_BANK_BASE                                              ; $7C10 inline word
        dw      $2B35                                                           ; $7C12 execution token
        dw      XT_LITbyte                                                      ; $7C14 execution token
        db      $30                                                             ; $7C16 inline byte
        dw      $2AF2                                                           ; $7C17 execution token
        dw      XT_LITbyte                                                      ; $7C19 execution token
        db      $00                                                             ; $7C1B inline byte
        dw      $2B01                                                           ; $7C1C execution token
        dw      XT_1                                                            ; $7C1E execution token
        dw      XT_LITbyte                                                      ; $7C20 execution token
        db      $05                                                             ; $7C22 inline byte
        dw      XT_LITbyte                                                      ; $7C23 execution token
        db      $03                                                             ; $7C25 inline byte
        dw      XT_LITbyte                                                      ; $7C26 execution token
        db      $02                                                             ; $7C28 inline byte
        dw      XT_LITbyte                                                      ; $7C29 execution token
        db      $00                                                             ; $7C2B inline byte
        dw      XT_LIT                                                          ; $7C2C execution token
        dw      $00FF                                                           ; $7C2E inline word
        dw      XT_LIT                                                          ; $7C30 execution token
        dw      $FFF9                                                           ; $7C32 inline word
        dw      $2BBB                                                           ; $7C34 execution token
        dw      XT_RETURN                                                       ; $7C36 execution token

VISUAL_PROGRESSION_CORRECT_THREAD_2:
        rst     $08                                                             ; $7C38 colon entry
        dw      XT_1                                                            ; $7C39 execution token
        dw      XT_LIT                                                          ; $7C3B execution token
        dw      $FD6D                                                           ; $7C3D inline word
        dw      $2BEF                                                           ; $7C3F execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD_1                             ; $7C41 execution token
        dw      XT_LITbyte                                                      ; $7C43 execution token
        db      $20                                                             ; $7C45 inline byte
        dw      $2BA8                                                           ; $7C46 execution token
        dw      $3FEA                                                           ; $7C48 execution token
        dw      XT_LITbyte                                                      ; $7C4A execution token
        db      $1A                                                             ; $7C4C inline byte
        dw      $2BA8                                                           ; $7C4D execution token
        dw      $3E73                                                           ; $7C4F execution token
        dw      $3E8B                                                           ; $7C51 execution token
        dw      $3FA6                                                           ; $7C53 execution token
        dw      XT_LITbyte                                                      ; $7C55 execution token
        db      $18                                                             ; $7C57 inline byte
        dw      $2BA8                                                           ; $7C58 execution token
        dw      $2B8C                                                           ; $7C5A execution token
        dw      XT_RETURN                                                       ; $7C5C execution token

VISUAL_PROGRESSION_CORRECT_THREAD_3:
        rst     $08                                                             ; $7C5E colon entry
        dw      XT_1                                                            ; $7C5F execution token
        dw      XT_LIT                                                          ; $7C61 execution token
        dw      $FD3D                                                           ; $7C63 inline word
        dw      $2BEF                                                           ; $7C65 execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD_1                             ; $7C67 execution token
        dw      XT_LITbyte                                                      ; $7C69 execution token
        db      $20                                                             ; $7C6B inline byte
        dw      $2BA8                                                           ; $7C6C execution token
        dw      $3FEA                                                           ; $7C6E execution token
        dw      XT_LITbyte                                                      ; $7C70 execution token
        db      $06                                                             ; $7C72 inline byte
        dw      $2BA8                                                           ; $7C73 execution token
        dw      $3E73                                                           ; $7C75 execution token
        dw      $3E8B                                                           ; $7C77 execution token
        dw      $3FA6                                                           ; $7C79 execution token
        dw      XT_LITbyte                                                      ; $7C7B execution token
        db      $10                                                             ; $7C7D inline byte
        dw      $2BA8                                                           ; $7C7E execution token
        dw      $3FEA                                                           ; $7C80 execution token
        dw      XT_LITbyte                                                      ; $7C82 execution token
        db      $04                                                             ; $7C84 inline byte
        dw      $2BA8                                                           ; $7C85 execution token
        dw      $3FA6                                                           ; $7C87 execution token
        dw      XT_LITbyte                                                      ; $7C89 execution token
        db      $10                                                             ; $7C8B inline byte
        dw      $2BA8                                                           ; $7C8C execution token
        dw      $2B8C                                                           ; $7C8E execution token
        dw      XT_RETURN                                                       ; $7C90 execution token
VISUAL_PROGRESSION_CORRECT_THREAD_4:
        rst     $08                                                             ; $7C92 colon entry
        dw      VISUAL_PROGRESSION_CORRECT_THREAD_2                             ; $7C93 execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD_3                             ; $7C95 execution token
        dw      XT_RETURN                                                       ; $7C97 execution token

        db      $00,$00,$90,$65,$00,$07,$00,$11,$01                             ; $7C99 preserved bytes
        db      $00,$00,$67,$AE,$FF,$C6,$FF,$D0,$FC,$C8,$FD,$00,$00,$00,$90,$65 ; $7CA2
        db      $00,$DB,$FF,$00,$01,$00,$00,$79,$AD,$FF,$F2,$FF,$28,$FC,$58,$FF ; $7CB2
        db      $00,$00,$00,$90,$65,$00,$B3,$FF,$C0,$01,$00,$00,$8C,$AD,$FF,$1A ; $7CC2
        db      $00,$48,$FC,$20,$01,$00                                         ; $7CD2 preserved bytes

VISUAL_PROGRESSION_SETUP_THREAD_2:
        rst     $08                                                             ; $7CD8 colon entry
        dw      $1C5F                                                           ; $7CD9 execution token
        dw      $1C43                                                           ; $7CDB execution token
        dw      XT_RETURN                                                       ; $7CDD execution token

        db      $99,$7C,$AE                                                     ; $7CDF preserved bytes
        db      $7C,$C3,$7C,$19,$63,$6F,$6D,$70,$6C,$65,$74,$65,$20,$74,$68,$69 ; $7CE2
        db      $73,$20,$70,$72,$6F,$67,$72,$65,$73,$73,$69,$6F,$6E,$06,$06,$06 ; $7CF2
        db      $05,$05,$05,$08,$00,$09,$00,$00,$00,$06,$06,$06,$05,$05,$05,$08 ; $7D02
        db      $00,$09,$09,$00,$07,$0F,$00,$09,$00,$06,$00,$0C,$08,$06,$08,$00 ; $7D12
        db      $00,$00,$0A,$0F,$0D,$00,$00,$00,$0A,$00,$00,$00,$0B,$0F,$0D,$00 ; $7D22
        db      $0F,$07,$00,$0F,$0F,$0F,$03,$00,$81,$32,$46,$6F,$0A,$F1,$70,$4B ; $7D32
        db      $88,$73,$00,$3B,$7D                                             ; $7D42 preserved bytes

VISUAL_PROGRESSION_SETUP_ACTION:
        rst     $08                                                             ; $7D47 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D48 execution token
        dw      XT_LIT                                                          ; $7D4A execution token
        dw      $7D08                                                           ; $7D4C inline word
        dw      $2D7C                                                           ; $7D4E execution token
        dw      XT_LIT                                                          ; $7D50 execution token
        dw      $FF79                                                           ; $7D52 inline word
        dw      XT_LIT                                                          ; $7D54 execution token
        dw      $FFF6                                                           ; $7D56 inline word
        dw      XT_LIT                                                          ; $7D58 execution token
        dw      $7CE5                                                           ; $7D5A inline word
        dw      XT_LIT                                                          ; $7D5C execution token
        dw      $7CDF                                                           ; $7D5E inline word
        dw      XT_LIT                                                          ; $7D60 execution token
        dw      $7CFF                                                           ; $7D62 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7D64 execution token
        dw      $1F21                                                           ; $7D66 execution token
        dw      VISUAL_PROGRESSION_SETUP_THREAD_1                               ; $7D68 execution token
        dw      XT_LIT                                                          ; $7D6A execution token
        dw      $0064                                                           ; $7D6C inline word
        dw      XT_LIT                                                          ; $7D6E execution token
        dw      $FFCD                                                           ; $7D70 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D72 execution token
        dw      XT_LIT                                                          ; $7D74 execution token
        dw      $6F46                                                           ; $7D76 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D78 execution token
        dw      XT_LIT                                                          ; $7D7A execution token
        dw      $FE70                                                           ; $7D7C inline word
        dw      $1D5B                                                           ; $7D7E execution token
        dw      XT_LIT                                                          ; $7D80 execution token
        dw      $FF8B                                                           ; $7D82 inline word
        dw      VISUAL_PROGRESSION_SETUP_THREAD_2                               ; $7D84 execution token
        dw      $19E9                                                           ; $7D86 execution token
        dw      $1DE0                                                           ; $7D88 execution token
        dw      XT_LIT                                                          ; $7D8A execution token
        dw      $FFCC                                                           ; $7D8C inline word
        dw      XT_LIT                                                          ; $7D8E execution token
        dw      $FFCD                                                           ; $7D90 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D92 execution token
        dw      XT_LIT                                                          ; $7D94 execution token
        dw      $70F1                                                           ; $7D96 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7D98 execution token
        dw      XT_LIT                                                          ; $7D9A execution token
        dw      $FFFE                                                           ; $7D9C inline word
        dw      XT_LIT                                                          ; $7D9E execution token
        dw      $FFBE                                                           ; $7DA0 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7DA2 execution token
        dw      XT_LIT                                                          ; $7DA4 execution token
        dw      $792A                                                           ; $7DA6 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7DA8 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7DAA execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DAC execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7DAE execution token
        dw      XT_RETURN                                                       ; $7DB0 execution token
VISUAL_PROGRESSION_CORRECT_ACTION:
        rst     $08                                                             ; $7DB2 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7DB3 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7DB5 execution token
        dw      XT_LIT                                                          ; $7DB7 execution token
        dw      PORT_PATTERN_DEST_HI                                            ; $7DB9 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7DBB execution token
        dw      $1A2C                                                           ; $7DBD execution token
        dw      XT_LIT                                                          ; $7DBF execution token
        dw      $FFD3                                                           ; $7DC1 inline word
        dw      XT_LITbyte                                                      ; $7DC3 execution token
        db      $05                                                             ; $7DC5 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7DC6 execution token
        dw      XT_LIT                                                          ; $7DC8 execution token
        dw      $7388                                                           ; $7DCA inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7DCC execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7DCE execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DD0 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7DD2 execution token
        dw      XT_LIT                                                          ; $7DD4 execution token
        dw      $6F46                                                           ; $7DD6 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7DD8 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7DDA execution token
        dw      $1DE0                                                           ; $7DDC execution token
        dw      $1E34                                                           ; $7DDE execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD_4                             ; $7DE0 execution token
        dw      XT_LIT                                                          ; $7DE2 execution token
        dw      $7D38                                                           ; $7DE4 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7DE6 execution token
        dw      XT_LIT                                                          ; $7DE8 execution token
        dw      PORT_PATTERN_SOURCE_LO                                          ; $7DEA inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7DEC execution token
        dw      $19E9                                                           ; $7DEE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7DF0 execution token
        dw      XT_RETURN                                                       ; $7DF2 execution token

VISUAL_PROGRESSION_DIST_RENDER:
        rst     $08                                                             ; $7DF4 colon entry
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7DF5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DF7 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7DF9 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7DFB execution token
        dw      $1DE0                                                           ; $7DFD execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7DFF execution token
        dw      XT_LIT                                                          ; $7E01 execution token
        dw      $FFFE                                                           ; $7E03 inline word
        dw      XT_LIT                                                          ; $7E05 execution token
        dw      $FFBE                                                           ; $7E07 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7E09 execution token
        dw      XT_LIT                                                          ; $7E0B execution token
        dw      $792A                                                           ; $7E0D inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7E0F execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $7E11 execution token
        dw      XT_LIT                                                          ; $7E13 execution token
        dw      $482E                                                           ; $7E15 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7E17 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7E19 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7E1B execution token
        dw      XT_RETURN                                                       ; $7E1D execution token

VISUAL_PROGRESSION_SECOND_ACTION:
        rst     $08                                                             ; $7E1F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7E20 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7E22 execution token
        dw      XT_LIT                                                          ; $7E24 execution token
        dw      PORT_PATTERN_DEST_HI                                            ; $7E26 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7E28 execution token
        dw      $1A2C                                                           ; $7E2A execution token
        dw      XT_LIT                                                          ; $7E2C execution token
        dw      $FFD3                                                           ; $7E2E inline word
        dw      XT_LITbyte                                                      ; $7E30 execution token
        db      $05                                                             ; $7E32 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7E33 execution token
        dw      XT_LIT                                                          ; $7E35 execution token
        dw      $7683                                                           ; $7E37 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7E39 execution token
        dw      VISUAL_PROGRESSION_DIST_RENDER                                  ; $7E3B execution token
        dw      XT_RETURN                                                       ; $7E3D execution token

VISUAL_PROGRESSION_REMAINING_ACTION:
        rst     $08                                                             ; $7E3F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7E40 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7E42 execution token
        dw      XT_LIT                                                          ; $7E44 execution token
        dw      PORT_PATTERN_DEST_HI                                            ; $7E46 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7E48 execution token
        dw      $1A2C                                                           ; $7E4A execution token
        dw      XT_LIT                                                          ; $7E4C execution token
        dw      $FFD3                                                           ; $7E4E inline word
        dw      XT_LITbyte                                                      ; $7E50 execution token
        db      $05                                                             ; $7E52 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7E53 execution token
        dw      XT_LIT                                                          ; $7E55 execution token
        dw      $6F46                                                           ; $7E57 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7E59 execution token
        dw      VISUAL_PROGRESSION_DIST_RENDER                                  ; $7E5B execution token
        dw      XT_RETURN                                                       ; $7E5D execution token

VISUAL_PROGRESSION_ACTIONS:
        db      $04                                                             ; $7E5F action count
        dw      VISUAL_PROGRESSION_SETUP_ACTION                                 ; $7E60 setup action
        dw      VISUAL_PROGRESSION_CORRECT_ACTION                               ; $7E62 correct answer
        dw      VISUAL_PROGRESSION_SECOND_ACTION                                ; $7E64 second answer
        dw      VISUAL_PROGRESSION_REMAINING_ACTION                             ; $7E66 remaining answer

; Rooted by tier slots 0, 1, 2.
VISUAL_PROGRESSION_T0_1_2_INIT:
        rst     $08                                                          ; $7E68
        dw      XT_LIT                                                          ; $7E69
        dw      PPQ13_VISUAL_PROGRESSION_ACTIONS                                ; $7E6B
        dw      XT_RETURN                                                       ; $7E6D

; Root tier slot 0.
QUESTION_TIER_0_BUCKET:
        db      $03                                                             ; $7E6F initializer count
        dw      ODD_ONE_OUT_V0_1_T0_INIT                                        ; $7E70 entry 0
        dw      VISUAL_PROGRESSION_T0_1_2_INIT                                  ; $7E72 entry 1
        dw      ODD_ONE_OUT_V2_3_T0_INIT                                        ; $7E74 entry 2

; Root tier slot 1.
QUESTION_TIER_1_BUCKET:
        db      $04                                                             ; $7E76 initializer count
        dw      ODD_ONE_OUT_V4_5_T1_INIT                                        ; $7E77 entry 0
        dw      VISUAL_PROGRESSION_T0_1_2_INIT                                  ; $7E79 entry 1
        dw      ODD_ONE_OUT_V6_7_T1_INIT                                        ; $7E7B entry 2
        dw      CUBE_COUNT_V0_2_T1_INIT                                         ; $7E7D entry 3

; Root tier slot 2.
QUESTION_TIER_2_BUCKET:
        db      $03                                                             ; $7E7F initializer count
        dw      ODD_ONE_OUT_V8_9_T2_INIT                                        ; $7E80 entry 0
        dw      VISUAL_PROGRESSION_T0_1_2_INIT                                  ; $7E82 entry 1
        dw      CUBE_COUNT_V3_4_T2_INIT                                         ; $7E84 entry 2

; Root tier slot 3.
QUESTION_TIER_3_BUCKET:
        db      $01                                                             ; $7E86 initializer count
        dw      CUBE_COUNT_V5_7_T3_INIT                                         ; $7E87 entry 0

; Root tier slot 4.
QUESTION_TIER_4_BUCKET:
        db      $01                                                             ; $7E89 initializer count
        dw      CUBE_COUNT_V8_9_T4_INIT                                         ; $7E8A entry 0

; Root tier slot 5.
QUESTION_TIER_5_BUCKET:
        db      $01                                                             ; $7E8C initializer count
        dw      CUBE_COUNT_V10_11_T5_INIT                                       ; $7E8D entry 0

; Root tier slot 6.
QUESTION_TIER_6_BUCKET:
        db      $01                                                             ; $7E8F initializer count
        dw      CUBE_COUNT_V12_13_T6_INIT                                       ; $7E90 entry 0

; Root tier slot 7.
QUESTION_TIER_7_BUCKET:
        db      $01                                                             ; $7E92 initializer count
        dw      CUBE_COUNT_V14_15_T7_INIT                                       ; $7E93 entry 0

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_TIER_0_BUCKET                                          ; $7E95 tier 0
        dw      QUESTION_TIER_1_BUCKET                                          ; $7E97 tier 1
        dw      QUESTION_TIER_2_BUCKET                                          ; $7E99 tier 2
        dw      QUESTION_TIER_3_BUCKET                                          ; $7E9B tier 3
        dw      QUESTION_TIER_4_BUCKET                                          ; $7E9D tier 4
        dw      QUESTION_TIER_5_BUCKET                                          ; $7E9F tier 5
        dw      QUESTION_TIER_6_BUCKET                                          ; $7EA1 tier 6
        dw      QUESTION_TIER_7_BUCKET                                          ; $7EA3 tier 7
        db      $4D,$6F,$29,$68,$02,$6B,$6F,$29,$68,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EA5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EB5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F05
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F15
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F25
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F35
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F45
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F55
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F65
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F75
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F85
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F95
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE5
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF                     ; $7FF5
