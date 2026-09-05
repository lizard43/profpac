; Professor Pac-Man question ROM PPQ3
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ3_COMPLETE_FIGURE_A_ACTION_LIST           equ     $51E2
PPQ3_IMAGE_MIRROR_MATCH_A_ACTION_LIST        equ     $5D5A
PPQ3_IMAGE_MIRROR_MATCH_B_ACTION_LIST        equ     $6717
PPQ3_JUGGLER_MEMORY_ACTION_LIST              equ     $7934

QUESTION_BANK_HEADER:
        dw      QUESTION_ROOT_DIRECTORY ; $4000 root-directory pointer
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
        db      $01,$0C,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$09,$48,$11 ; $4822
        db      $0C,$09,$19,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF ; $4832
        db      $FF,$FF,$FF,$FF,$F8,$B5,$55,$55,$55,$55,$55,$55,$55,$78,$B5,$55 ; $4842
        db      $6A,$AA,$AA,$AA,$95,$55,$78,$B5,$55,$60,$00,$00,$00,$95,$55,$78 ; $4852
        db      $B5,$7F,$E2,$AA,$AA,$A8,$BF,$F5,$78,$B5,$7F,$E2,$FF,$FF,$F8,$BF ; $4862
        db      $F5,$78,$B5,$7F,$E2,$FF,$FF,$F8,$BF,$F5,$78,$AA,$AA,$A2,$55,$55 ; $4872
        db      $58,$95,$55,$78,$00,$00,$02,$55,$55,$58,$95,$55,$78,$AA,$AA,$AA ; $4882
        db      $55,$55,$58,$95,$55,$78,$B5,$7F,$FF,$FF,$FF,$F8,$BF,$F5,$78,$B5 ; $4892
        db      $7F,$FF,$FF,$FF,$F8,$BF,$F5,$78,$B5,$7F,$FF,$FF,$FF,$F8,$BF,$F5 ; $48A2
        db      $78,$B5,$7F,$FF,$FF,$FF,$F8,$BF,$F5,$78,$B5,$55,$56,$AA,$AA,$A8 ; $48B2
        db      $95,$55,$78,$B5,$55,$56,$00,$00,$00,$95,$55,$78,$B5,$55,$56,$2A ; $48C2
        db      $AA,$AA,$95,$55,$78,$B5,$7F,$FE,$2F,$FF,$FF,$FF,$F5,$78,$B5,$7F ; $48D2
        db      $FE,$2F,$FF,$FF,$FF,$F5,$78,$B5,$7F,$FE,$2F,$FF,$FF,$FF,$F5,$78 ; $48E2
        db      $B5,$55,$56,$25,$55,$55,$55,$55,$78,$B5,$55,$56,$25,$55,$55,$55 ; $48F2
        db      $55,$78,$BF,$FF,$FE,$2F,$FF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$2A,$AA ; $4902
        db      $AA,$AA,$AA,$A8,$11,$0C,$09,$19,$00,$00,$00,$00,$00,$00,$00,$00 ; $4912
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4922
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4932
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4942
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4952
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4962
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4972
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4982
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4992
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $49A2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $49B2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $49C2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $49D2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $49E2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$0C,$09,$19,$AA,$AA,$AA ; $49F2
        db      $AA,$AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$B5 ; $4A02
        db      $55,$55,$55,$55,$55,$55,$55,$78,$B5,$55,$6A,$AA,$AA,$AA,$95,$55 ; $4A12
        db      $78,$B5,$7F,$E0,$00,$00,$00,$BF,$F5,$78,$B5,$7F,$E2,$AA,$AA,$A8 ; $4A22
        db      $BF,$F5,$78,$B5,$55,$62,$55,$55,$58,$95,$55,$78,$B5,$55,$62,$55 ; $4A32
        db      $55,$58,$95,$55,$78,$B5,$7F,$E2,$FF,$FF,$F8,$BF,$F5,$78,$B5,$7F ; $4A42
        db      $E2,$FF,$FF,$F8,$BF,$F5,$78,$B5,$55,$62,$55,$55,$58,$95,$55,$78 ; $4A52
        db      $AA,$AA,$A2,$55,$55,$58,$95,$55,$78,$00,$00,$02,$FF,$FF,$F8,$BF ; $4A62
        db      $F5,$78,$AA,$AA,$AA,$FF,$FF,$F8,$BF,$F5,$78,$B5,$55,$55,$55,$55 ; $4A72
        db      $58,$95,$55,$78,$B5,$55,$55,$5A,$AA,$A8,$95,$55,$78,$B5,$7F,$FF ; $4A82
        db      $F8,$00,$00,$BF,$F5,$78,$B5,$7F,$FF,$F8,$AA,$AA,$BF,$F5,$78,$B5 ; $4A92
        db      $55,$55,$58,$95,$55,$55,$55,$78,$B5,$55,$55,$58,$95,$55,$55,$55 ; $4AA2
        db      $78,$B5,$7F,$FF,$F8,$BF,$FF,$FF,$F5,$78,$B5,$7F,$FF,$F8,$BF,$FF ; $4AB2
        db      $FF,$F5,$78,$B5,$55,$55,$58,$95,$55,$55,$55,$78,$BF,$FF,$FF,$F8 ; $4AC2
        db      $BF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$A8,$AA,$AA,$AA,$AA,$A8,$11,$0C ; $4AD2
        db      $09,$19,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF,$FF ; $4AE2
        db      $FF,$FF,$FF,$F8,$B5,$55,$55,$55,$55,$55,$55,$55,$78,$B5,$55,$6A ; $4AF2
        db      $AA,$AA,$AA,$AA,$95,$78,$B5,$55,$60,$00,$00,$00,$00,$95,$78,$B5 ; $4B02
        db      $7F,$E2,$AA,$AA,$AA,$A8,$B5,$78,$B5,$7F,$E2,$FF,$FF,$FF,$F8,$B5 ; $4B12
        db      $78,$B5,$7F,$E2,$FF,$FF,$FF,$F8,$B5,$78,$B5,$55,$62,$55,$55,$55 ; $4B22
        db      $58,$95,$78,$B5,$55,$62,$55,$55,$55,$58,$95,$78,$B5,$55,$62,$55 ; $4B32
        db      $55,$55,$58,$95,$78,$AA,$AA,$A2,$FF,$FF,$FF,$F8,$B5,$78,$00,$00 ; $4B42
        db      $02,$FF,$FF,$FF,$F8,$B5,$78,$AA,$AA,$AA,$FF,$FF,$FF,$F8,$B5,$78 ; $4B52
        db      $B5,$7F,$FF,$FF,$FF,$FF,$F8,$B5,$78,$B5,$55,$55,$5A,$AA,$AA,$A8 ; $4B62
        db      $95,$78,$B5,$55,$55,$58,$00,$00,$00,$95,$78,$B5,$55,$55,$58,$AA ; $4B72
        db      $AA,$AA,$95,$78,$B5,$7F,$FF,$F8,$BF,$FF,$FF,$F5,$78,$B5,$7F,$FF ; $4B82
        db      $F8,$BF,$FF,$FF,$F5,$78,$B5,$7F,$FF,$F8,$BF,$FF,$FF,$F5,$78,$B5 ; $4B92
        db      $55,$55,$58,$95,$55,$55,$55,$78,$B5,$55,$55,$58,$95,$55,$55,$55 ; $4BA2
        db      $78,$BF,$FF,$FF,$F8,$BF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$A8,$AA,$AA ; $4BB2
        db      $AA,$AA,$A8,$11,$0C,$09,$19,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8 ; $4BC2
        db      $BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$B5,$55,$55,$55,$55,$55,$55 ; $4BD2
        db      $55,$78,$B5,$55,$6A,$AA,$AA,$AA,$95,$55,$78,$B5,$55,$60,$00,$00 ; $4BE2
        db      $00,$95,$55,$78,$B5,$7F,$E0,$00,$00,$00,$BF,$F5,$78,$B5,$7F,$E0 ; $4BF2
        db      $00,$00,$00,$BF,$F5,$78,$B5,$7F,$E0,$00,$00,$00,$BF,$F5,$78,$AA ; $4C02
        db      $AA,$A0,$00,$00,$00,$95,$55,$78,$00,$00,$00,$00,$00,$00,$95,$55 ; $4C12
        db      $78,$00,$00,$00,$00,$00,$00,$95,$55,$78,$00,$00,$00,$00,$00,$00 ; $4C22
        db      $BF,$F5,$78,$00,$00,$00,$00,$00,$00,$BF,$F5,$78,$00,$00,$00,$00 ; $4C32
        db      $00,$00,$BF,$F5,$78,$00,$00,$00,$00,$00,$00,$BF,$F5,$78,$00,$00 ; $4C42
        db      $00,$00,$00,$00,$95,$55,$78,$00,$00,$00,$00,$00,$00,$95,$55,$78 ; $4C52
        db      $00,$00,$00,$2A,$AA,$AA,$95,$55,$78,$00,$00,$00,$2F,$FF,$FF,$FF ; $4C62
        db      $F5,$78,$00,$00,$00,$2F,$FF,$FF,$FF,$F5,$78,$00,$00,$00,$2F,$FF ; $4C72
        db      $FF,$FF,$F5,$78,$00,$00,$00,$25,$55,$55,$55,$55,$78,$00,$00,$00 ; $4C82
        db      $25,$55,$55,$55,$55,$78,$00,$00,$00,$2F,$FF,$FF,$FF,$FF,$F8,$00 ; $4C92
        db      $00,$00,$2A,$AA,$AA,$AA,$AA,$A8,$11,$07,$06,$14,$00,$00,$02,$AA ; $4CA2
        db      $AA,$A8,$00,$00,$02,$FF,$FF,$F8,$00,$00,$02,$FF,$FF,$F8,$00,$00 ; $4CB2
        db      $02,$55,$55,$58,$00,$00,$02,$55,$55,$58,$AA,$AA,$AA,$55,$55,$58 ; $4CC2
        db      $B5,$7F,$FF,$FF,$FF,$F8,$B5,$7F,$FF,$FF,$FF,$F8,$B5,$7F,$FF,$FF ; $4CD2
        db      $FF,$F8,$B5,$7F,$FF,$FF,$FF,$F8,$B5,$55,$56,$AA,$AA,$A8,$B5,$55 ; $4CE2
        db      $56,$00,$00,$00,$B5,$55,$56,$00,$00,$00,$B5,$7F,$FE,$00,$00,$00 ; $4CF2
        db      $B5,$7F,$FE,$00,$00,$00,$B5,$7F,$FE,$00,$00,$00,$B5,$55,$56,$00 ; $4D02
        db      $00,$00,$B5,$55,$56,$00,$00,$00,$BF,$FF,$FE,$00,$00,$00,$AA,$AA ; $4D12
        db      $AA,$00,$00,$00,$0C,$11,$05,$17,$AA,$AA,$AA,$A8,$00,$BF,$FF,$FF ; $4D22
        db      $F8,$00,$B5,$55,$55,$58,$00,$B5,$55,$55,$58,$00,$B5,$55,$55,$58 ; $4D32
        db      $00,$B5,$FD,$5F,$F8,$00,$B5,$FD,$5F,$F8,$00,$B5,$FD,$5F,$F8,$00 ; $4D42
        db      $B5,$FD,$5F,$F8,$00,$B5,$FD,$5F,$F8,$00,$B5,$FD,$5F,$F8,$00,$AA ; $4D52
        db      $AA,$AF,$FA,$AA,$00,$00,$2F,$F5,$7E,$00,$00,$2F,$F5,$7E,$00,$00 ; $4D62
        db      $2F,$F5,$7E,$00,$00,$2F,$F5,$7E,$00,$00,$2F,$F5,$7E,$00,$00,$2F ; $4D72
        db      $F5,$7E,$00,$00,$2F,$F5,$7E,$00,$00,$2F,$F5,$7E,$00,$00,$2F,$F5 ; $4D82
        db      $7E,$00,$00,$2F,$F5,$7E,$00,$00,$2A,$AA,$AA,$80,$40,$60,$30,$FF ; $4D92
        db      $80,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40 ; $4DA2
        db      $30                                                             ; $4DB2 preserved bytes

PPQ3_TERSE_4DB3:
        rst     $08                                                             ; $4DB3 colon entry
        dw      XT_LIT                                                          ; $4DB4 execution token
        dw      $F2FC                                                           ; $4DB6 inline word
        dw      XT_DUP                                                          ; $4DB8 execution token
        dw      XT_1plusBbang                                                   ; $4DBA execution token
        dw      XT_Bat                                                          ; $4DBC execution token
        dw      XT_RETURN                                                       ; $4DBE execution token

PPQ3_TERSE_4DC0:
        rst     $08                                                             ; $4DC0 colon entry
        dw      XT_LIT                                                          ; $4DC1 execution token
        dw      $F2FD                                                           ; $4DC3 inline word
        dw      XT_Bat                                                          ; $4DC5 execution token
        dw      XT_BARRAY                                                       ; $4DC7 execution token
        dw      $4DA3                                                           ; $4DC9 inline word
        dw      XT_Bat                                                          ; $4DCB execution token
        dw      $2AF2                                                           ; $4DCD execution token
        dw      XT_LIT                                                          ; $4DCF execution token
        dw      $F2FD                                                           ; $4DD1 inline word
        dw      XT_DUP                                                          ; $4DD3 execution token
        dw      XT_1plusBbang                                                   ; $4DD5 execution token
        dw      XT_Bat                                                          ; $4DD7 execution token
        dw      XT_RETURN                                                       ; $4DD9 execution token

PPQ3_TERSE_4DDB:
        rst     $08                                                             ; $4DDB colon entry
        dw      XT_LIT                                                          ; $4DDC execution token
        dw      $F2FC                                                           ; $4DDE inline word
        dw      XT_Bat                                                          ; $4DE0 execution token
        dw      XT_BARRAY                                                       ; $4DE2 execution token
        dw      $4D9D                                                           ; $4DE4 inline word
        dw      XT_Bat                                                          ; $4DE6 execution token
        dw      XT_LIT                                                          ; $4DE8 execution token
        dw      $F2FC                                                           ; $4DEA inline word
        dw      XT_Bat                                                          ; $4DEC execution token
        dw      XT_BARRAY                                                       ; $4DEE execution token
        dw      $4D9F                                                           ; $4DF0 inline word
        dw      XT_Bat                                                          ; $4DF2 execution token
        dw      XT_LIT                                                          ; $4DF4 execution token
        dw      $F2FC                                                           ; $4DF6 inline word
        dw      XT_Bat                                                          ; $4DF8 execution token
        dw      XT_BARRAY                                                       ; $4DFA execution token
        dw      $4DA1                                                           ; $4DFC inline word
        dw      XT_Bat                                                          ; $4DFE execution token
        dw      $2B71                                                           ; $4E00 execution token
        dw      XT_RETURN                                                       ; $4E02 execution token

PPQ3_TERSE_4E04:
        rst     $08                                                             ; $4E04 colon entry
        dw      XT_LIT                                                          ; $4E05 execution token
        dw      $F2FA                                                           ; $4E07 inline word
        dw      XT_DUP                                                          ; $4E09 execution token
        dw      XT_1plusBbang                                                   ; $4E0B execution token
        dw      XT_Bat                                                          ; $4E0D execution token
        dw      XT_RETURN                                                       ; $4E0F execution token

PPQ3_TERSE_4E11:
        rst     $08                                                             ; $4E11 colon entry
        dw      XT_LIT                                                          ; $4E12 execution token
        dw      $F2FB                                                           ; $4E14 inline word
        dw      XT_Bat                                                          ; $4E16 execution token
        dw      XT_BARRAY                                                       ; $4E18 execution token
        dw      $4DA3                                                           ; $4E1A inline word
        dw      XT_Bat                                                          ; $4E1C execution token
        dw      $2AF2                                                           ; $4E1E execution token
        dw      XT_LIT                                                          ; $4E20 execution token
        dw      $F2FB                                                           ; $4E22 inline word
        dw      XT_DUP                                                          ; $4E24 execution token
        dw      XT_1plusBbang                                                   ; $4E26 execution token
        dw      XT_Bat                                                          ; $4E28 execution token
        dw      XT_RETURN                                                       ; $4E2A execution token

PPQ3_TERSE_4E2C:
        rst     $08                                                             ; $4E2C colon entry
        dw      XT_LIT                                                          ; $4E2D execution token
        dw      $F2FA                                                           ; $4E2F inline word
        dw      XT_Bat                                                          ; $4E31 execution token
        dw      XT_BARRAY                                                       ; $4E33 execution token
        dw      $4D9D                                                           ; $4E35 inline word
        dw      XT_Bat                                                          ; $4E37 execution token
        dw      XT_LIT                                                          ; $4E39 execution token
        dw      $F2FA                                                           ; $4E3B inline word
        dw      XT_Bat                                                          ; $4E3D execution token
        dw      XT_BARRAY                                                       ; $4E3F execution token
        dw      $4D9F                                                           ; $4E41 inline word
        dw      XT_Bat                                                          ; $4E43 execution token
        dw      XT_LIT                                                          ; $4E45 execution token
        dw      $F2FA                                                           ; $4E47 inline word
        dw      XT_Bat                                                          ; $4E49 execution token
        dw      XT_BARRAY                                                       ; $4E4B execution token
        dw      $4DA1                                                           ; $4E4D inline word
        dw      XT_Bat                                                          ; $4E4F execution token
        dw      $2B71                                                           ; $4E51 execution token
        dw      XT_RETURN                                                       ; $4E53 execution token

PPQ3_TERSE_4E55:
        rst     $08                                                             ; $4E55 colon entry
        dw      XT_0                                                            ; $4E56 execution token
        dw      XT_LIT                                                          ; $4E58 execution token
        dw      $FD3D                                                           ; $4E5A inline word
        dw      $2BEF                                                           ; $4E5C execution token
        dw      $3F38                                                           ; $4E5E execution token
        dw      XT_LIT                                                          ; $4E60 execution token
        dw      $F2FD                                                           ; $4E62 inline word
        dw      XT_BZERO                                                        ; $4E64 execution token
L4E66:
        dw      XT_LIT                                                          ; $4E66 execution token
        dw      $F2FC                                                           ; $4E68 inline word
        dw      XT_BZERO                                                        ; $4E6A execution token
L4E6C:
        dw      $3FD4                                                           ; $4E6C execution token
        dw      PPQ3_TERSE_4DDB                                                 ; $4E6E execution token
        dw      XT_LIT                                                          ; $4E70 execution token
        dw      $F2FD                                                           ; $4E72 inline word
        dw      XT_Bat                                                          ; $4E74 execution token
        dw      XT_1                                                            ; $4E76 execution token
        dw      XT_equal                                                        ; $4E78 execution token
        dw      XT_0BRANCH                                                      ; $4E7A execution token
        dw      L4E80                                                           ; $4E7C branch target
        dw      $3FB2                                                           ; $4E7E execution token
L4E80:
        dw      XT_LITbyte                                                      ; $4E80 execution token
        db      $08                                                             ; $4E82 inline byte
        dw      $2BA8                                                           ; $4E83 execution token
        dw      $3FEA                                                           ; $4E85 execution token
        dw      XT_LITbyte                                                      ; $4E87 execution token
        db      $02                                                             ; $4E89 inline byte
        dw      $2BA8                                                           ; $4E8A execution token
        dw      PPQ3_TERSE_4DB3                                                 ; $4E8C execution token
        dw      XT_1                                                            ; $4E8E execution token
        dw      XT_gt                                                           ; $4E90 execution token
        dw      XT_0BRANCH                                                      ; $4E92 execution token
        dw      L4E6C                                                           ; $4E94 branch target
        dw      XT_LIT                                                          ; $4E96 execution token
        dw      $F2FC                                                           ; $4E98 inline word
        dw      XT_BZERO                                                        ; $4E9A execution token
        dw      PPQ3_TERSE_4DC0                                                 ; $4E9C execution token
        dw      XT_LITbyte                                                      ; $4E9E execution token
        db      $02                                                             ; $4EA0 inline byte
        dw      XT_gt                                                           ; $4EA1 execution token
        dw      XT_0BRANCH                                                      ; $4EA3 execution token
        dw      L4E66                                                           ; $4EA5 branch target
        dw      XT_LIT                                                          ; $4EA7 execution token
        dw      $F2FD                                                           ; $4EA9 inline word
        dw      XT_BZERO                                                        ; $4EAB execution token
        dw      $2B8C                                                           ; $4EAD execution token
        dw      XT_RETURN                                                       ; $4EAF execution token

PPQ3_TERSE_4EB1:
        rst     $08                                                             ; $4EB1 colon entry
        dw      XT_0                                                            ; $4EB2 execution token
        dw      XT_LIT                                                          ; $4EB4 execution token
        dw      $FD6D                                                           ; $4EB6 inline word
        dw      $2BEF                                                           ; $4EB8 execution token
        dw      $3FEA                                                           ; $4EBA execution token
        dw      XT_LITbyte                                                      ; $4EBC execution token
        db      $02                                                             ; $4EBE inline byte
        dw      $2BA8                                                           ; $4EBF execution token
        dw      $3F38                                                           ; $4EC1 execution token
        dw      XT_LIT                                                          ; $4EC3 execution token
        dw      $F2FB                                                           ; $4EC5 inline word
        dw      XT_BZERO                                                        ; $4EC7 execution token
L4EC9:
        dw      XT_LIT                                                          ; $4EC9 execution token
        dw      $F2FA                                                           ; $4ECB inline word
        dw      XT_BZERO                                                        ; $4ECD execution token
L4ECF:
        dw      $3FD4                                                           ; $4ECF execution token
        dw      PPQ3_TERSE_4E2C                                                 ; $4ED1 execution token
        dw      XT_LIT                                                          ; $4ED3 execution token
        dw      $F2FB                                                           ; $4ED5 inline word
        dw      XT_Bat                                                          ; $4ED7 execution token
        dw      XT_1                                                            ; $4ED9 execution token
        dw      XT_equal                                                        ; $4EDB execution token
        dw      XT_0BRANCH                                                      ; $4EDD execution token
        dw      L4EE3                                                           ; $4EDF branch target
        dw      $3FB2                                                           ; $4EE1 execution token
L4EE3:
        dw      XT_LITbyte                                                      ; $4EE3 execution token
        db      $08                                                             ; $4EE5 inline byte
        dw      $2BA8                                                           ; $4EE6 execution token
        dw      $3FEA                                                           ; $4EE8 execution token
        dw      XT_LITbyte                                                      ; $4EEA execution token
        db      $02                                                             ; $4EEC inline byte
        dw      $2BA8                                                           ; $4EED execution token
        dw      PPQ3_TERSE_4E04                                                 ; $4EEF execution token
        dw      XT_1                                                            ; $4EF1 execution token
        dw      XT_gt                                                           ; $4EF3 execution token
        dw      XT_0BRANCH                                                      ; $4EF5 execution token
        dw      L4ECF                                                           ; $4EF7 branch target
        dw      XT_LIT                                                          ; $4EF9 execution token
        dw      $F2FA                                                           ; $4EFB inline word
        dw      XT_BZERO                                                        ; $4EFD execution token
        dw      PPQ3_TERSE_4E11                                                 ; $4EFF execution token
        dw      XT_LITbyte                                                      ; $4F01 execution token
        db      $02                                                             ; $4F03 inline byte
        dw      XT_gt                                                           ; $4F04 execution token
        dw      XT_0BRANCH                                                      ; $4F06 execution token
        dw      L4EC9                                                           ; $4F08 branch target
        dw      XT_LIT                                                          ; $4F0A execution token
        dw      $F2FB                                                           ; $4F0C inline word
        dw      XT_BZERO                                                        ; $4F0E execution token
        dw      $2B8C                                                           ; $4F10 execution token
        dw      XT_RETURN                                                       ; $4F12 execution token

PPQ3_TERSE_4F14:
        rst     $08                                                             ; $4F14 colon entry
        dw      XT_0                                                            ; $4F15 execution token
        dw      XT_LIT                                                          ; $4F17 execution token
        dw      $FD6D                                                           ; $4F19 inline word
        dw      $2BEF                                                           ; $4F1B execution token
        dw      $3FEA                                                           ; $4F1D execution token
        dw      XT_LITbyte                                                      ; $4F1F execution token
        db      $08                                                             ; $4F21 inline byte
        dw      $2BA8                                                           ; $4F22 execution token
        dw      $3EAD                                                           ; $4F24 execution token
        dw      XT_LITbyte                                                      ; $4F26 execution token
        db      $18                                                             ; $4F28 inline byte
        dw      $2BA8                                                           ; $4F29 execution token
        dw      $3E73                                                           ; $4F2B execution token
        dw      $3FEA                                                           ; $4F2D execution token
        dw      XT_LITbyte                                                      ; $4F2F execution token
        db      $03                                                             ; $4F31 inline byte
        dw      $2BA8                                                           ; $4F32 execution token
        dw      $3E8B                                                           ; $4F34 execution token
        dw      $3FA6                                                           ; $4F36 execution token
        dw      XT_LITbyte                                                      ; $4F38 execution token
        db      $12                                                             ; $4F3A inline byte
        dw      $2BA8                                                           ; $4F3B execution token
        dw      $2B8C                                                           ; $4F3D execution token
        dw      XT_RETURN                                                       ; $4F3F execution token

PPQ3_TERSE_4F41:
        rst     $08                                                             ; $4F41 colon entry
        dw      XT_0                                                            ; $4F42 execution token
        dw      XT_LIT                                                          ; $4F44 execution token
        dw      $FD3D                                                           ; $4F46 inline word
        dw      $2BEF                                                           ; $4F48 execution token
        dw      $3FEA                                                           ; $4F4A execution token
        dw      XT_LITbyte                                                      ; $4F4C execution token
        db      $0C                                                             ; $4F4E inline byte
        dw      $2BA8                                                           ; $4F4F execution token
        dw      $3EAD                                                           ; $4F51 execution token
        dw      XT_LITbyte                                                      ; $4F53 execution token
        db      $18                                                             ; $4F55 inline byte
        dw      $2BA8                                                           ; $4F56 execution token
        dw      $3E73                                                           ; $4F58 execution token
        dw      $3FEA                                                           ; $4F5A execution token
        dw      XT_LITbyte                                                      ; $4F5C execution token
        db      $03                                                             ; $4F5E inline byte
        dw      $2BA8                                                           ; $4F5F execution token
        dw      $3E8B                                                           ; $4F61 execution token
        dw      $3FEA                                                           ; $4F63 execution token
        dw      XT_LITbyte                                                      ; $4F65 execution token
        db      $13                                                             ; $4F67 inline byte
        dw      $2BA8                                                           ; $4F68 execution token
        dw      $3FA6                                                           ; $4F6A execution token
        dw      XT_LITbyte                                                      ; $4F6C execution token
        db      $08                                                             ; $4F6E inline byte
        dw      $2BA8                                                           ; $4F6F execution token
        dw      $2B8C                                                           ; $4F71 execution token
        dw      XT_RETURN                                                       ; $4F73 execution token

PPQ3_TERSE_4F75:
        rst     $08                                                             ; $4F75 colon entry
        dw      PPQ3_TERSE_4F14                                                 ; $4F76 execution token
        dw      PPQ3_TERSE_4F41                                                 ; $4F78 execution token
        dw      XT_RETURN                                                       ; $4F7A execution token

PPQ3_TERSE_4F7C:
        rst     $08                                                             ; $4F7C colon entry
        dw      PPQ3_TERSE_4EB1                                                 ; $4F7D execution token
        dw      PPQ3_TERSE_4E55                                                 ; $4F7F execution token
        dw      XT_RETURN                                                       ; $4F81 execution token

        db      $00,$00,$90,$3C,$00,$FD,$FF,$80,$05,$00,$00,$80,$A3,$FF,$00     ; $4F83 preserved bytes
        db      $00,$58,$FB,$00,$00,$00,$00,$DC,$11,$00,$15,$00,$D8,$02,$80,$03 ; $4F92
        db      $00,$00,$33,$1E,$00,$A8,$FF,$68,$01,$B0,$FB,$00,$00,$68,$F4,$FF ; $4FA2
        db      $FA,$FF,$38,$FC,$80,$FD,$00,$00,$97,$F0,$FF,$0A,$00,$40,$FC,$60 ; $4FB2
        db      $02,$01,$0A,$00,$F0,$36,$00,$17,$00,$90,$08,$80,$03,$00,$00,$00 ; $4FC2
        db      $90,$FB,$FF,$D3,$FF,$C0,$03,$1E,$00,$3E,$02,$00,$D7,$FF,$30,$00 ; $4FD2
        db      $18,$FC,$00,$00,$EA,$16,$00,$0D,$00,$58,$03,$00,$02,$00,$00,$1B ; $4FE2
        db      $11,$00,$F3,$FF,$10,$03,$A0,$FD,$00,$00,$00,$90,$AA,$FF,$0A,$00 ; $4FF2
        db      $40,$03,$00,$00,$00,$3E,$00,$00,$00,$E8,$03,$00,$00,$00,$00,$40 ; $5002
        db      $00,$00,$CA,$FF,$00,$00,$18,$FC,$00,$00,$00,$40,$00,$00,$00,$E8 ; $5012
        db      $03,$00,$00,$00,$00,$00,$90,$AA,$FF,$E2,$FF,$80,$01,$00,$00,$05 ; $5022
        db      $7C,$00,$F0,$FF,$E0,$03,$88,$FF,$00,$00,$00,$90,$AA,$FF,$BA,$FF ; $5032
        db      $00,$03,$00,$00,$00,$39,$00,$00,$00,$E8,$03,$00,$00,$00,$00,$C0 ; $5042
        db      $00,$00,$1C,$00,$00,$00,$E8,$03,$00,$00,$00,$44,$00,$00,$00,$E8 ; $5052
        db      $03,$00,$00,$00,$FB,$4F,$26,$50,$3B,$50,$1E,$77,$68,$69,$63,$68 ; $5062
        db      $20,$69,$73,$20,$74,$68,$65,$20,$63,$6F,$6D,$70,$6C,$65,$74,$65 ; $5072
        db      $64,$20,$66,$69,$67,$75,$72,$65,$20,$04,$00,$89,$00,$04,$AA,$4C ; $5082
        db      $00,$04,$26,$4D,$C0,$04,$AA,$4C,$C0,$04,$26,$4D,$00,$00,$8E,$50 ; $5092
COMPLETE_FIGURE_A_SETUP:
        rst     $08                                                             ; $50A2 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $50A3 execution token
        dw      XT_LIT                                                          ; $50A5 execution token
        dw      $FFA6                                                           ; $50A7 inline word
        dw      XT_LITbyte                                                      ; $50A9 execution token
        db      $18                                                             ; $50AB inline byte
        dw      XT_LIT                                                          ; $50AC execution token
        dw      $506C                                                           ; $50AE inline word
        dw      XT_LIT                                                          ; $50B0 execution token
        dw      $5066                                                           ; $50B2 inline word
        dw      XT_LIT                                                          ; $50B4 execution token
        dw      $2D8C                                                           ; $50B6 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $50B8 execution token
        dw      XT_LITbyte                                                      ; $50BA execution token
        db      $28                                                             ; $50BC inline byte
        dw      XT_LIT                                                          ; $50BD execution token
        dw      $FFD3                                                           ; $50BF inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $50C1 execution token
        dw      XT_LIT                                                          ; $50C3 execution token
        dw      $4BC5                                                           ; $50C5 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $50C7 execution token
        dw      XT_LIT                                                          ; $50C9 execution token
        dw      $4F83                                                           ; $50CB inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $50CD execution token
        dw      XT_LIT                                                          ; $50CF execution token
        dw      $4CAA                                                           ; $50D1 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $50D3 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $50D5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $50D7 execution token
        dw      XT_LIT                                                          ; $50D9 execution token
        dw      $F6E8                                                           ; $50DB inline word
        dw      XT_BONE                                                         ; $50DD execution token
        dw      XT_LIT                                                          ; $50DF execution token
        dw      $F6E7                                                           ; $50E1 inline word
        dw      XT_BONE                                                         ; $50E3 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $50E5 execution token
        dw      XT_LIT                                                          ; $50E7 execution token
        dw      $508B                                                           ; $50E9 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $50EB execution token
        dw      $866C                                                           ; $50ED execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $50EF execution token
        dw      $1EF6                                                           ; $50F1 execution token
        dw      XT_LIT                                                          ; $50F3 execution token
        dw      $4CAA                                                           ; $50F5 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $50F7 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $50F9 execution token
        dw      XT_LITbyte                                                      ; $50FB execution token
        db      $28                                                             ; $50FD inline byte
        dw      XT_LIT                                                          ; $50FE execution token
        dw      $FFD3                                                           ; $5100 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5102 execution token
        dw      $1E34                                                           ; $5104 execution token
        dw      XT_LITbyte                                                      ; $5106 execution token
        db      $0F                                                             ; $5108 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5109 execution token
        dw      $1A2C                                                           ; $510B execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $510D execution token
        dw      XT_RETURN                                                       ; $510F execution token

COMPLETE_FIGURE_A_CORRECT:
        rst     $08                                                             ; $5111 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5112 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5114 execution token
        dw      XT_LIT                                                          ; $5116 execution token
        dw      $FFD6                                                           ; $5118 inline word
        dw      XT_LITbyte                                                      ; $511A execution token
        db      $09                                                             ; $511C inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $511D execution token
        dw      XT_LIT                                                          ; $511F execution token
        dw      $4831                                                           ; $5121 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5123 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5125 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5127 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5129 execution token
        dw      XT_LITbyte                                                      ; $512B execution token
        db      $03                                                             ; $512D inline byte
        dw      XT_SET_TASK_BYTE_0C                                             ; $512E execution token
        dw      PPQ3_TERSE_4F7C                                                 ; $5130 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5132 execution token
        dw      XT_LITbyte                                                      ; $5134 execution token
        db      $28                                                             ; $5136 inline byte
        dw      XT_LIT                                                          ; $5137 execution token
        dw      $FFD3                                                           ; $5139 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $513B execution token
        dw      XT_LIT                                                          ; $513D execution token
        dw      $4831                                                           ; $513F inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5141 execution token
        dw      $1E34                                                           ; $5143 execution token
        dw      XT_LITbyte                                                      ; $5145 execution token
        db      $40                                                             ; $5147 inline byte
        dw      $1E5C                                                           ; $5148 execution token
        dw      XT_LITbyte                                                      ; $514A execution token
        db      $1E                                                             ; $514C inline byte
        dw      XT_LIT                                                          ; $514D execution token
        dw      $FFDD                                                           ; $514F inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5151 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5153 execution token
        dw      XT_LITbyte                                                      ; $5155 execution token
        db      $1E                                                             ; $5157 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5158 execution token
        dw      $1A2C                                                           ; $515A execution token
        dw      XT_LIT                                                          ; $515C execution token
        dw      $4135                                                           ; $515E inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $5160 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5162 execution token
        dw      XT_LIT                                                          ; $5164 execution token
        dw      $2D8C                                                           ; $5166 inline word
        dw      XT_CLEAR_PRESENTATION_TABLE                                     ; $5168 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $516A execution token
        dw      XT_RETURN                                                       ; $516C execution token

COMPLETE_FIGURE_A_WRONG_1:
        rst     $08                                                             ; $516E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $516F execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $5171 execution token
        dw      XT_LIT                                                          ; $5173 execution token
        dw      $FFD6                                                           ; $5175 inline word
        dw      XT_LITbyte                                                      ; $5177 execution token
        db      $09                                                             ; $5179 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $517A execution token
        dw      XT_LIT                                                          ; $517C execution token
        dw      $49FB                                                           ; $517E inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5180 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5182 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5184 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5186 execution token
        dw      XT_LIT                                                          ; $5188 execution token
        dw      $4FD0                                                           ; $518A inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $518C execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $518E execution token
        dw      XT_LITbyte                                                      ; $5190 execution token
        db      $1E                                                             ; $5192 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5193 execution token
        dw      $1A2C                                                           ; $5195 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5197 execution token
        dw      PPQ3_TERSE_4F75                                                 ; $5199 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $519B execution token
        dw      XT_LITbyte                                                      ; $519D execution token
        db      $0F                                                             ; $519F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $51A0 execution token
        dw      $1A2C                                                           ; $51A2 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $51A4 execution token
        dw      XT_RETURN                                                       ; $51A6 execution token

COMPLETE_FIGURE_A_WRONG_2:
        rst     $08                                                             ; $51A8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $51A9 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $51AB execution token
        dw      XT_LIT                                                          ; $51AD execution token
        dw      $FFD6                                                           ; $51AF inline word
        dw      XT_LITbyte                                                      ; $51B1 execution token
        db      $09                                                             ; $51B3 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $51B4 execution token
        dw      XT_LIT                                                          ; $51B6 execution token
        dw      $4AE0                                                           ; $51B8 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $51BA execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $51BC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $51BE execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $51C0 execution token
        dw      XT_LIT                                                          ; $51C2 execution token
        dw      $4FD0                                                           ; $51C4 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $51C6 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $51C8 execution token
        dw      XT_LITbyte                                                      ; $51CA execution token
        db      $1E                                                             ; $51CC inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $51CD execution token
        dw      $1A2C                                                           ; $51CF execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $51D1 execution token
        dw      PPQ3_TERSE_4F75                                                 ; $51D3 execution token
        dw      XT_LITbyte                                                      ; $51D5 execution token
        db      $0F                                                             ; $51D7 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $51D8 execution token
        dw      $1A2C                                                           ; $51DA execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $51DC execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $51DE execution token
        dw      XT_RETURN                                                       ; $51E0 execution token
COMPLETE_FIGURE_A_ACTIONS:
        db      $04                                                             ; $51E2 action count
        dw      COMPLETE_FIGURE_A_SETUP                                         ; $51E3 setup
        dw      COMPLETE_FIGURE_A_CORRECT                                       ; $51E5 correct
        dw      COMPLETE_FIGURE_A_WRONG_1                                       ; $51E7 wrong 1
        dw      COMPLETE_FIGURE_A_WRONG_2                                       ; $51E9 wrong 2

; Rooted by tier slots 0, 4.
QUESTION_INITIALIZER_51EB:
        rst     $08                                                          ; $51EB
        dw      XT_LIT                                                          ; $51EC
        dw      PPQ3_COMPLETE_FIGURE_A_ACTION_LIST                              ; $51EE
        dw      XT_RETURN                                                       ; $51F0
        db      $1E,$00,$0E,$20,$00,$00,$FF,$FE,$00                             ; $51F2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$AE,$AA,$F0,$00,$00 ; $51FB
        db      $00,$00,$00,$00,$00,$00,$00,$00,$2E,$BA,$00,$AE,$00,$00,$00,$00 ; $520B
        db      $00,$00,$00,$00,$00,$00,$BA,$E0,$00,$0A,$80,$00,$00,$00,$00,$00 ; $521B
        db      $00,$00,$00,$02,$EB,$80,$00,$00,$A0,$00,$00,$00,$00,$00,$00,$00 ; $522B
        db      $00,$0B,$AE,$80,$00,$00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$0B ; $523B
        db      $AE,$80,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$2C,$AE,$80 ; $524B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2C,$AB,$A0,$00,$00 ; $525B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$AB,$2A,$EA,$AA,$AA,$0A,$A8 ; $526B
        db      $00,$00,$00,$00,$00,$00,$00,$AA,$EA,$BC,$CC,$CC,$A8,$02,$00,$00 ; $527B
        db      $00,$00,$00,$00,$00,$AA,$F2,$AA,$AA,$A8,$CF,$A8,$80,$00,$00,$00 ; $528B
        db      $00,$00,$00,$AA,$AC,$CA,$AA,$AA,$AA,$8F,$88,$00,$00,$3A,$80,$00 ; $529B
        db      $00,$28,$AA,$B3,$3A,$AA,$AA,$A3,$E3,$AA,$00,$AA,$A0,$00,$00,$1C ; $52AB
        db      $AA,$AA,$CC,$EA,$AA,$AA,$8A,$02,$8A,$80,$A3,$A8,$E8,$0C,$2A,$AA ; $52BB
        db      $AB,$3C,$8F,$3E,$30,$F0,$80,$28,$0A,$08,$82,$02,$AA,$AA,$AA,$AA ; $52CB
        db      $FA,$A8,$83,$D0,$A2,$02,$AA,$0A,$82,$02,$AA,$A8,$AA,$AA,$AA,$A8 ; $52DB
        db      $8F,$44,$08,$AA,$AA,$AA,$AA,$0E,$AA,$02,$AA,$3A,$AA,$A8,$8F,$40 ; $52EB
        db      $AA,$AA,$A8,$00,$00,$3A,$AA,$34,$AA,$3A,$AA,$AA,$00,$0A,$AA,$AA ; $52FB
        db      $03,$DE,$EC,$2A,$AA,$1F,$02,$2A,$AA,$AA,$AA,$AA,$AA,$00,$75,$D8 ; $530B
        db      $00,$2A,$A8,$0F,$7C,$02,$AA,$A0,$AA,$A8,$00,$DD,$56,$00,$00,$3A ; $531B
        db      $AA,$00,$7D,$CA,$AA,$82,$A8,$00,$C5,$D5,$60,$00,$00,$C3,$CF,$00 ; $532B
        db      $0D,$C2,$AA,$80,$AA,$3D,$10,$00,$80,$00,$00,$03,$03,$00,$00,$2A ; $533B
        db      $AA,$3D,$0A,$81,$C4,$55,$E0,$00,$00,$00,$00,$00,$00,$AA,$A0,$7D ; $534B
        db      $F2,$A8,$D5,$55,$4C,$00,$00,$00,$00,$00,$00,$AA,$A8,$00,$3C,$2A ; $535B
        db      $0D,$55,$52,$00,$00,$00,$00,$00,$03,$EE,$EF,$00,$00,$FA,$A0,$F4 ; $536B
        db      $0C,$C0,$00,$00,$00,$00,$03,$0C,$C3,$00,$00,$03,$AA,$0D,$DF,$20 ; $537B
        db      $00,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$0A,$A0,$00,$28,$00,$00 ; $538B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$A0,$00,$00,$00,$00 ; $539B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$1E,$00,$0E,$20,$00 ; $53AB
        db      $00,$FF,$FE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$AE ; $53BB
        db      $AA,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2E,$BA,$00,$AE ; $53CB
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$BA,$E0,$00,$0A,$80,$00 ; $53DB
        db      $00,$00,$00,$00,$00,$00,$00,$02,$EB,$80,$00,$00,$A0,$00,$00,$00 ; $53EB
        db      $00,$00,$00,$00,$00,$0B,$AE,$80,$00,$00,$28,$00,$00,$00,$00,$00 ; $53FB
        db      $00,$00,$00,$0B,$AE,$80,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00 ; $540B
        db      $00,$2C,$AE,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2C ; $541B
        db      $AB,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AB,$2A,$EA ; $542B
        db      $AA,$AA,$0A,$A8,$00,$00,$00,$00,$00,$00,$00,$AA,$EA,$BC,$CC,$CC ; $543B
        db      $A8,$02,$00,$00,$00,$00,$00,$00,$00,$AA,$F2,$AA,$AA,$A8,$CF,$A8 ; $544B
        db      $80,$00,$00,$00,$00,$00,$00,$AA,$AC,$CA,$AA,$AA,$AA,$8F,$88,$00 ; $545B
        db      $00,$3A,$80,$00,$00,$28,$AA,$B3,$3A,$AA,$AA,$A3,$E3,$AA,$00,$AA ; $546B
        db      $A0,$00,$00,$1C,$AA,$AA,$CC,$EA,$AA,$AA,$8A,$02,$8A,$82,$A0,$00 ; $547B
        db      $00,$0C,$2A,$AA,$AB,$3C,$8F,$3E,$30,$F0,$8A,$A2,$A0,$00,$00,$02 ; $548B
        db      $AA,$AA,$AA,$AA,$FA,$A8,$83,$F0,$A2,$A0,$A0,$00,$00,$02,$AA,$A8 ; $549B
        db      $AA,$AA,$AA,$A8,$8D,$1C,$A8,$FE,$80,$00,$00,$0E,$AA,$02,$AA,$3A ; $54AB
        db      $AA,$A8,$8D,$10,$28,$AA,$A0,$00,$00,$3A,$AA,$34,$AA,$3A,$AA,$AA ; $54BB
        db      $00,$0A,$0A,$3F,$C8,$00,$00,$2A,$AA,$1F,$02,$2A,$AA,$AA,$AA,$AA ; $54CB
        db      $A8,$FA,$A8,$00,$00,$2A,$A8,$0F,$7C,$02,$AA,$A0,$A8,$2A,$A2,$AA ; $54DB
        db      $A3,$E0,$38,$3A,$AA,$00,$7D,$CA,$AA,$82,$AA,$52,$AA,$AA,$82,$A8 ; $54EB
        db      $EA,$C3,$CF,$00,$0D,$C2,$AA,$80,$AA,$B0,$AA,$AA,$A2,$0A,$82,$03 ; $54FB
        db      $03,$00,$00,$2A,$AA,$3D,$0A,$A1,$0A,$AA,$88,$02,$02,$00,$00,$00 ; $550B
        db      $00,$AA,$A0,$7D,$F2,$AA,$D0,$AA,$8A,$0A,$82,$00,$00,$00,$00,$AA ; $551B
        db      $A8,$00,$3C,$2A,$8C,$02,$AA,$AA,$AA,$00,$00,$00,$03,$EE,$EF,$00 ; $552B
        db      $00,$FA,$A8,$70,$00,$00,$08,$00,$00,$00,$03,$0C,$C3,$00,$00,$03 ; $553B
        db      $AA,$8D,$C7,$5D,$CC,$00,$00,$00,$00,$0C,$C0,$00,$00,$00,$0A,$A8 ; $554B
        db      $00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$EA,$AA ; $555B
        db      $A0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$00,$19 ; $556B
        db      $00,$0E,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$BF,$FF,$00 ; $557B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$AA,$BA,$E0,$00,$00 ; $558B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$BA,$00,$AE,$B8,$00,$00,$00,$00 ; $559B
        db      $00,$00,$00,$00,$00,$02,$A0,$00,$0B,$AE,$00,$00,$00,$00,$00,$00 ; $55AB
        db      $00,$00,$00,$0A,$00,$00,$02,$EB,$80,$00,$00,$00,$00,$00,$00,$00 ; $55BB
        db      $00,$28,$00,$00,$02,$BA,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $55CB
        db      $00,$00,$02,$BA,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $55DB
        db      $02,$BA,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$EA ; $55EB
        db      $38,$00,$00,$00,$00,$00,$00,$00,$2A,$A0,$AA,$AA,$AB,$A8,$EA,$00 ; $55FB
        db      $00,$00,$00,$00,$00,$00,$80,$2A,$33,$33,$3E,$AB,$AA,$00,$00,$00 ; $560B
        db      $00,$00,$00,$02,$2A,$F3,$2A,$AA,$AA,$8F,$AA,$00,$00,$02,$AC,$00 ; $561B
        db      $00,$22,$F2,$AA,$AA,$AA,$A3,$3A,$AA,$00,$00,$0A,$AA,$00,$AA,$CB ; $562B
        db      $CA,$AA,$AA,$AC,$CE,$AA,$28,$2B,$2A,$CA,$02,$A2,$80,$A2,$AA,$AA ; $563B
        db      $AB,$33,$AA,$AA,$34,$82,$20,$A0,$28,$02,$0F,$0C,$BC,$F2,$3C,$EA ; $564B
        db      $AA,$A8,$30,$82,$A0,$AA,$80,$8A,$0F,$42,$2A,$AF,$AA,$AA,$AA,$AA ; $565B
        db      $80,$AA,$AA,$AA,$AA,$20,$3D,$12,$2A,$AA,$AA,$AA,$2A,$AA,$80,$00 ; $566B
        db      $00,$2A,$AA,$AA,$01,$12,$2A,$AA,$AC,$AA,$80,$AA,$B0,$3B,$B7,$C0 ; $567B
        db      $AA,$AA,$A0,$00,$AA,$AA,$AC,$AA,$1C,$AA,$AC,$00,$27,$5D,$00,$AA ; $568B
        db      $AA,$AA,$AA,$AA,$A8,$80,$F4,$AA,$A8,$00,$00,$95,$77,$00,$2A,$AA ; $569B
        db      $0A,$AA,$80,$3D,$F0,$2A,$A8,$00,$00,$09,$57,$53,$00,$2A,$82,$AA ; $56AB
        db      $A3,$7D,$00,$AA,$AC,$00,$00,$02,$00,$04,$7C,$AA,$02,$AA,$83,$70 ; $56BB
        db      $00,$F3,$C3,$00,$00,$0B,$55,$13,$42,$A0,$7C,$AA,$A8,$00,$00,$C0 ; $56CB
        db      $C0,$00,$00,$31,$55,$57,$2A,$8F,$7D,$0A,$AA,$00,$00,$00,$00,$00 ; $56DB
        db      $00,$85,$55,$70,$A8,$3C,$00,$2A,$AA,$00,$00,$00,$00,$00,$03,$30 ; $56EB
        db      $1F,$0A,$AF,$00,$00,$FB,$BB,$C0,$00,$00,$00,$00,$08,$F7,$70,$AA ; $56FB
        db      $C0,$00,$00,$C3,$30,$C0,$00,$00,$00,$00,$28,$00,$0A,$A0,$00,$00 ; $570B
        db      $00,$03,$30,$00,$00,$00,$00,$00,$0A,$AA,$AA,$00,$00,$00,$00,$00 ; $571B
        db      $00,$00,$00,$00,$00,$00,$02,$AA,$00,$00,$00,$00,$00,$00,$00,$00 ; $572B
        db      $00,$00,$00,$1E,$00,$0E,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $573B
        db      $00,$00,$00,$00,$00,$00,$03,$BF,$FA,$C0,$00,$00,$00,$00,$00,$00 ; $574B
        db      $00,$00,$00,$00,$2E,$BE,$BF,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $575B
        db      $00,$00,$BA,$EA,$AA,$E8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $576B
        db      $EB,$88,$00,$BC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$AE,$A0 ; $577B
        db      $00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$AE,$A0,$00,$28 ; $578B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$AE,$88,$00,$A0,$00,$03 ; $579B
        db      $00,$00,$00,$00,$00,$00,$00,$2C,$AB,$A2,$80,$8A,$A8,$0C,$00,$00 ; $57AB
        db      $00,$00,$00,$00,$00,$AB,$2A,$EA,$AA,$AA,$0A,$A8,$F0,$00,$00,$00 ; $57BB
        db      $00,$00,$00,$A8,$EA,$BC,$CC,$CC,$A8,$02,$02,$00,$00,$00,$00,$00 ; $57CB
        db      $00,$82,$F2,$AA,$AA,$A8,$CF,$A8,$AA,$A0,$00,$00,$00,$00,$00,$0A ; $57DB
        db      $AC,$CA,$AA,$AA,$AA,$8F,$88,$00,$00,$3A,$80,$00,$00,$2A,$AA,$B3 ; $57EB
        db      $3A,$AA,$AA,$A3,$E3,$AA,$00,$AA,$A0,$00,$00,$AA,$8A,$AA,$CC,$EA ; $57FB
        db      $AA,$AA,$8A,$02,$8A,$80,$A3,$A8,$E8,$AA,$0A,$AA,$AB,$3C,$8F,$3E ; $580B
        db      $30,$F0,$80,$28,$0A,$08,$82,$AA,$02,$AA,$AA,$AA,$F8,$28,$83,$D0 ; $581B
        db      $A2,$02,$AA,$0A,$82,$AA,$A2,$A8,$AA,$AA,$AA,$80,$8F,$44,$08,$AA ; $582B
        db      $AA,$AA,$AA,$AA,$F2,$A8,$AA,$3A,$AA,$A8,$8F,$40,$AA,$AA,$A8,$00 ; $583B
        db      $00,$EE,$30,$80,$AA,$3A,$2A,$A8,$00,$0A,$AA,$AA,$03,$DE,$EC,$CC ; $584B
        db      $30,$13,$02,$28,$AA,$A8,$AA,$AA,$AA,$00,$75,$D8,$00,$0C,$00,$0F ; $585B
        db      $7C,$02,$AA,$A0,$AA,$A8,$00,$DD,$56,$00,$00,$00,$00,$00,$7D,$F2 ; $586B
        db      $0A,$A8,$A8,$00,$C5,$D5,$60,$00,$00,$00,$00,$00,$0D,$F0,$AA,$A8 ; $587B
        db      $AA,$3D,$10,$00,$80,$00,$00,$00,$00,$00,$00,$30,$AA,$A9,$0A,$81 ; $588B
        db      $C4,$55,$E0,$00,$00,$00,$00,$00,$00,$02,$BA,$AD,$F2,$A8,$D5,$55 ; $589B
        db      $4C,$00,$00,$00,$00,$00,$00,$00,$BA,$EC,$3C,$2A,$0D,$55,$52,$00 ; $58AB
        db      $00,$00,$00,$00,$00,$00,$33,$CC,$00,$FA,$A0,$F4,$CC,$C0,$00,$00 ; $58BB
        db      $00,$00,$00,$00,$C3,$0C,$00,$03,$AA,$0D,$DF,$20,$00,$00,$00,$00 ; $58CB
        db      $00,$00,$00,$00,$00,$00,$0A,$A0,$00,$28,$00,$00,$00,$00,$00,$00 ; $58DB
        db      $00,$00,$00,$00,$00,$AA,$AA,$A0,$00,$00,$00,$00,$00,$00,$00,$00 ; $58EB
        db      $00,$00,$00,$00,$AA,$80,$00,$80,$40,$60,$40,$FF,$80,$30,$40,$28 ; $58FB
        db      $30,$30,$40,$28,$30,$30,$40,$28,$30,$30,$40,$28,$30             ; $590B preserved bytes

PPQ3_TERSE_5918:
        rst     $08                                                             ; $5918 colon entry
        dw      XT_0                                                            ; $5919 execution token
        dw      XT_LIT                                                          ; $591B execution token
        dw      $FD6D                                                           ; $591D inline word
        dw      $2BEF                                                           ; $591F execution token
        dw      XT_LIT                                                          ; $5921 execution token
        dw      $F2F9                                                           ; $5923 inline word
        dw      XT_BZERO                                                        ; $5925 execution token
        dw      XT_LITbyte                                                      ; $5927 execution token
        db      $0F                                                             ; $5929 inline byte
        dw      XT_LIT                                                          ; $592A execution token
        dw      $00FF                                                           ; $592C inline word
        dw      $2B2E                                                           ; $592E execution token
        dw      XT_LITbyte                                                      ; $5930 execution token
        db      $30                                                             ; $5932 inline byte
        dw      $2AF2                                                           ; $5933 execution token
        dw      XT_LIT                                                          ; $5935 execution token
        dw      QUESTION_BANK_BASE                                              ; $5937 inline word
        dw      XT_LIT                                                          ; $5939 execution token
        dw      QUESTION_BANK_BASE                                              ; $593B inline word
        dw      XT_LIT                                                          ; $593D execution token
        dw      QUESTION_BANK_BASE                                              ; $593F inline word
        dw      $2B71                                                           ; $5941 execution token
L5943:
        dw      XT_LITbyte                                                      ; $5943 execution token
        db      $0F                                                             ; $5945 inline byte
        dw      XT_LIT                                                          ; $5946 execution token
        dw      $00FF                                                           ; $5948 inline word
        dw      $2B2E                                                           ; $594A execution token
        dw      XT_LIT                                                          ; $594C execution token
        dw      $F2F9                                                           ; $594E inline word
        dw      XT_Bat                                                          ; $5950 execution token
        dw      XT_BARRAY                                                       ; $5952 execution token
        dw      $5902                                                           ; $5954 inline word
        dw      XT_Bat                                                          ; $5956 execution token
        dw      XT_LIT                                                          ; $5958 execution token
        dw      $F2F9                                                           ; $595A inline word
        dw      XT_Bat                                                          ; $595C execution token
        dw      XT_BARRAY                                                       ; $595E execution token
        dw      $5904                                                           ; $5960 inline word
        dw      XT_Bat                                                          ; $5962 execution token
        dw      XT_LIT                                                          ; $5964 execution token
        dw      $F2F9                                                           ; $5966 inline word
        dw      XT_Bat                                                          ; $5968 execution token
        dw      XT_BARRAY                                                       ; $596A execution token
        dw      $5906                                                           ; $596C inline word
        dw      XT_Bat                                                          ; $596E execution token
        dw      $2B71                                                           ; $5970 execution token
        dw      XT_1                                                            ; $5972 execution token
        dw      XT_1                                                            ; $5974 execution token
        dw      XT_LITbyte                                                      ; $5976 execution token
        db      $03                                                             ; $5978 inline byte
        dw      XT_LIT                                                          ; $5979 execution token
        dw      $FFFD                                                           ; $597B inline word
        dw      XT_0                                                            ; $597D execution token
        dw      XT_LITbyte                                                      ; $597F execution token
        db      $0F                                                             ; $5981 inline byte
        dw      XT_LIT                                                          ; $5982 execution token
        dw      $FFF2                                                           ; $5984 inline word
        dw      $2BBB                                                           ; $5986 execution token
        dw      XT_LITbyte                                                      ; $5988 execution token
        db      $0A                                                             ; $598A inline byte
        dw      $2BA8                                                           ; $598B execution token
        dw      XT_LIT                                                          ; $598D execution token
        dw      $F2F9                                                           ; $598F inline word
        dw      XT_DUP                                                          ; $5991 execution token
        dw      XT_1plusBbang                                                   ; $5993 execution token
        dw      XT_Bat                                                          ; $5995 execution token
        dw      XT_1                                                            ; $5997 execution token
        dw      XT_gt                                                           ; $5999 execution token
        dw      XT_0BRANCH                                                      ; $599B execution token
        dw      L5943                                                           ; $599D branch target
        dw      XT_LIT                                                          ; $599F execution token
        dw      $F2F9                                                           ; $59A1 inline word
        dw      XT_BZERO                                                        ; $59A3 execution token
        dw      XT_LIT                                                          ; $59A5 execution token
        dw      $F2F8                                                           ; $59A7 inline word
        dw      XT_Bat                                                          ; $59A9 execution token
        dw      XT_BARRAY                                                       ; $59AB execution token
        dw      $5908                                                           ; $59AD inline word
        dw      XT_Bat                                                          ; $59AF execution token
        dw      $2AF2                                                           ; $59B1 execution token
        dw      XT_LIT                                                          ; $59B3 execution token
        dw      $F2F8                                                           ; $59B5 inline word
        dw      XT_DUP                                                          ; $59B7 execution token
        dw      XT_1plusBbang                                                   ; $59B9 execution token
        dw      XT_Bat                                                          ; $59BB execution token
        dw      XT_LITbyte                                                      ; $59BD execution token
        db      $07                                                             ; $59BF inline byte
        dw      XT_gt                                                           ; $59C0 execution token
        dw      XT_0BRANCH                                                      ; $59C2 execution token
        dw      L5943                                                           ; $59C4 branch target
        dw      XT_LIT                                                          ; $59C6 execution token
        dw      $F2F8                                                           ; $59C8 inline word
        dw      XT_BZERO                                                        ; $59CA execution token
        dw      $2B8C                                                           ; $59CC execution token
        dw      XT_RETURN                                                       ; $59CE execution token

PPQ3_TERSE_59D0:
        rst     $08                                                             ; $59D0 colon entry
        dw      XT_0                                                            ; $59D1 execution token
        dw      XT_LIT                                                          ; $59D3 execution token
        dw      $FD3D                                                           ; $59D5 inline word
        dw      $2BEF                                                           ; $59D7 execution token
        dw      XT_LIT                                                          ; $59D9 execution token
        dw      $F2F7                                                           ; $59DB inline word
        dw      XT_BZERO                                                        ; $59DD execution token
        dw      XT_LITbyte                                                      ; $59DF execution token
        db      $00                                                             ; $59E1 inline byte
        dw      XT_LITbyte                                                      ; $59E2 execution token
        db      $00                                                             ; $59E4 inline byte
        dw      $2B2E                                                           ; $59E5 execution token
        dw      XT_LITbyte                                                      ; $59E7 execution token
        db      $02                                                             ; $59E9 inline byte
        dw      $2BA8                                                           ; $59EA execution token
        dw      XT_LITbyte                                                      ; $59EC execution token
        db      $0F                                                             ; $59EE inline byte
        dw      XT_LIT                                                          ; $59EF execution token
        dw      $00FF                                                           ; $59F1 inline word
        dw      $2B2E                                                           ; $59F3 execution token
        dw      XT_LITbyte                                                      ; $59F5 execution token
        db      $30                                                             ; $59F7 inline byte
        dw      $2AF2                                                           ; $59F8 execution token
        dw      XT_LIT                                                          ; $59FA execution token
        dw      QUESTION_BANK_BASE                                              ; $59FC inline word
        dw      XT_LIT                                                          ; $59FE execution token
        dw      QUESTION_BANK_BASE                                              ; $5A00 inline word
        dw      XT_LIT                                                          ; $5A02 execution token
        dw      QUESTION_BANK_BASE                                              ; $5A04 inline word
        dw      $2B71                                                           ; $5A06 execution token
L5A08:
        dw      XT_LITbyte                                                      ; $5A08 execution token
        db      $0F                                                             ; $5A0A inline byte
        dw      XT_LIT                                                          ; $5A0B execution token
        dw      $00FF                                                           ; $5A0D inline word
        dw      $2B2E                                                           ; $5A0F execution token
        dw      XT_LIT                                                          ; $5A11 execution token
        dw      $F2F7                                                           ; $5A13 inline word
        dw      XT_Bat                                                          ; $5A15 execution token
        dw      XT_BARRAY                                                       ; $5A17 execution token
        dw      $5902                                                           ; $5A19 inline word
        dw      XT_Bat                                                          ; $5A1B execution token
        dw      XT_LIT                                                          ; $5A1D execution token
        dw      $F2F7                                                           ; $5A1F inline word
        dw      XT_Bat                                                          ; $5A21 execution token
        dw      XT_BARRAY                                                       ; $5A23 execution token
        dw      $5904                                                           ; $5A25 inline word
        dw      XT_Bat                                                          ; $5A27 execution token
        dw      XT_LIT                                                          ; $5A29 execution token
        dw      $F2F7                                                           ; $5A2B inline word
        dw      XT_Bat                                                          ; $5A2D execution token
        dw      XT_BARRAY                                                       ; $5A2F execution token
        dw      $5906                                                           ; $5A31 inline word
        dw      XT_Bat                                                          ; $5A33 execution token
        dw      $2B71                                                           ; $5A35 execution token
        dw      XT_1                                                            ; $5A37 execution token
        dw      XT_1                                                            ; $5A39 execution token
        dw      XT_LITbyte                                                      ; $5A3B execution token
        db      $03                                                             ; $5A3D inline byte
        dw      XT_LIT                                                          ; $5A3E execution token
        dw      $FFFD                                                           ; $5A40 inline word
        dw      XT_0                                                            ; $5A42 execution token
        dw      XT_LITbyte                                                      ; $5A44 execution token
        db      $0F                                                             ; $5A46 inline byte
        dw      XT_LIT                                                          ; $5A47 execution token
        dw      $FFF2                                                           ; $5A49 inline word
        dw      $2BBB                                                           ; $5A4B execution token
        dw      XT_LITbyte                                                      ; $5A4D execution token
        db      $0A                                                             ; $5A4F inline byte
        dw      $2BA8                                                           ; $5A50 execution token
        dw      XT_LIT                                                          ; $5A52 execution token
        dw      $F2F7                                                           ; $5A54 inline word
        dw      XT_DUP                                                          ; $5A56 execution token
        dw      XT_1plusBbang                                                   ; $5A58 execution token
        dw      XT_Bat                                                          ; $5A5A execution token
        dw      XT_1                                                            ; $5A5C execution token
        dw      XT_gt                                                           ; $5A5E execution token
        dw      XT_0BRANCH                                                      ; $5A60 execution token
        dw      L5A08                                                           ; $5A62 branch target
        dw      XT_LIT                                                          ; $5A64 execution token
        dw      $F2F7                                                           ; $5A66 inline word
        dw      XT_BZERO                                                        ; $5A68 execution token
        dw      XT_LIT                                                          ; $5A6A execution token
        dw      $F2F6                                                           ; $5A6C inline word
        dw      XT_Bat                                                          ; $5A6E execution token
        dw      XT_BARRAY                                                       ; $5A70 execution token
        dw      $5908                                                           ; $5A72 inline word
        dw      XT_Bat                                                          ; $5A74 execution token
        dw      $2AF2                                                           ; $5A76 execution token
        dw      XT_LIT                                                          ; $5A78 execution token
        dw      $F2F6                                                           ; $5A7A inline word
        dw      XT_DUP                                                          ; $5A7C execution token
        dw      XT_1plusBbang                                                   ; $5A7E execution token
        dw      XT_Bat                                                          ; $5A80 execution token
        dw      XT_LITbyte                                                      ; $5A82 execution token
        db      $07                                                             ; $5A84 inline byte
        dw      XT_gt                                                           ; $5A85 execution token
        dw      XT_0BRANCH                                                      ; $5A87 execution token
        dw      L5A08                                                           ; $5A89 branch target
        dw      XT_LIT                                                          ; $5A8B execution token
        dw      $F2F6                                                           ; $5A8D inline word
        dw      XT_BZERO                                                        ; $5A8F execution token
        dw      $2B8C                                                           ; $5A91 execution token
        dw      XT_RETURN                                                       ; $5A93 execution token

PPQ3_TERSE_5A95:
        rst     $08                                                             ; $5A95 colon entry
        dw      PPQ3_TERSE_5918                                                 ; $5A96 execution token
        dw      PPQ3_TERSE_59D0                                                 ; $5A98 execution token
        dw      XT_RETURN                                                       ; $5A9A execution token

PPQ3_TERSE_5A9C:
        rst     $08                                                             ; $5A9C colon entry
        dw      XT_LIT                                                          ; $5A9D execution token
        dw      QUESTION_BANK_BASE                                              ; $5A9F inline word
        dw      XT_LITbyte                                                      ; $5AA1 execution token
        db      $40                                                             ; $5AA3 inline byte
        dw      XT_LITbyte                                                      ; $5AA4 execution token
        db      $20                                                             ; $5AA6 inline byte
        dw      $2B71                                                           ; $5AA7 execution token
        dw      XT_LITbyte                                                      ; $5AA9 execution token
        db      $0F                                                             ; $5AAB inline byte
        dw      XT_LIT                                                          ; $5AAC execution token
        dw      $00FF                                                           ; $5AAE inline word
        dw      $2B2E                                                           ; $5AB0 execution token
        dw      XT_LIT                                                          ; $5AB2 execution token
        dw      QUESTION_BANK_BASE                                              ; $5AB4 inline word
        dw      $2B35                                                           ; $5AB6 execution token
        dw      XT_LITbyte                                                      ; $5AB8 execution token
        db      $40                                                             ; $5ABA inline byte
        dw      $2AF2                                                           ; $5ABB execution token
        dw      XT_LITbyte                                                      ; $5ABD execution token
        db      $00                                                             ; $5ABF inline byte
        dw      $2B01                                                           ; $5AC0 execution token
        dw      XT_1                                                            ; $5AC2 execution token
        dw      XT_LITbyte                                                      ; $5AC4 execution token
        db      $03                                                             ; $5AC6 inline byte
        dw      XT_LITbyte                                                      ; $5AC7 execution token
        db      $03                                                             ; $5AC9 inline byte
        dw      XT_1                                                            ; $5ACA execution token
        dw      XT_LITbyte                                                      ; $5ACC execution token
        db      $00                                                             ; $5ACE inline byte
        dw      XT_LIT                                                          ; $5ACF execution token
        dw      $00FF                                                           ; $5AD1 inline word
        dw      XT_LIT                                                          ; $5AD3 execution token
        dw      $FFF9                                                           ; $5AD5 inline word
        dw      $2BBB                                                           ; $5AD7 execution token
        dw      XT_RETURN                                                       ; $5AD9 execution token
PPQ3_TERSE_5ADB:
        rst     $08                                                             ; $5ADB colon entry
        dw      XT_0                                                            ; $5ADC execution token
        dw      XT_LIT                                                          ; $5ADE execution token
        dw      $FD6D                                                           ; $5AE0 inline word
        dw      $2BEF                                                           ; $5AE2 execution token
        dw      $3FEA                                                           ; $5AE4 execution token
        dw      XT_LITbyte                                                      ; $5AE6 execution token
        db      $08                                                             ; $5AE8 inline byte
        dw      $2BA8                                                           ; $5AE9 execution token
        dw      PPQ3_TERSE_5A9C                                                 ; $5AEB execution token
        dw      XT_LITbyte                                                      ; $5AED execution token
        db      $18                                                             ; $5AEF inline byte
        dw      $2BA8                                                           ; $5AF0 execution token
        dw      $3E73                                                           ; $5AF2 execution token
        dw      $3FEA                                                           ; $5AF4 execution token
        dw      XT_LITbyte                                                      ; $5AF6 execution token
        db      $09                                                             ; $5AF8 inline byte
        dw      $2BA8                                                           ; $5AF9 execution token
        dw      $3E8B                                                           ; $5AFB execution token
        dw      $3FEA                                                           ; $5AFD execution token
        dw      XT_LITbyte                                                      ; $5AFF execution token
        db      $17                                                             ; $5B01 inline byte
        dw      $2BA8                                                           ; $5B02 execution token
        dw      $3FA6                                                           ; $5B04 execution token
        dw      XT_LITbyte                                                      ; $5B06 execution token
        db      $10                                                             ; $5B08 inline byte
        dw      $2BA8                                                           ; $5B09 execution token
        dw      $2B8C                                                           ; $5B0B execution token
        dw      XT_RETURN                                                       ; $5B0D execution token

PPQ3_TERSE_5B0F:
        rst     $08                                                             ; $5B0F colon entry
        dw      XT_0                                                            ; $5B10 execution token
        dw      XT_LIT                                                          ; $5B12 execution token
        dw      $FD3D                                                           ; $5B14 inline word
        dw      $2BEF                                                           ; $5B16 execution token
        dw      $3FEA                                                           ; $5B18 execution token
        dw      XT_LITbyte                                                      ; $5B1A execution token
        db      $0C                                                             ; $5B1C inline byte
        dw      $2BA8                                                           ; $5B1D execution token
        dw      $3EAD                                                           ; $5B1F execution token
        dw      XT_LITbyte                                                      ; $5B21 execution token
        db      $18                                                             ; $5B23 inline byte
        dw      $2BA8                                                           ; $5B24 execution token
        dw      $3E73                                                           ; $5B26 execution token
        dw      $3FEA                                                           ; $5B28 execution token
        dw      XT_LITbyte                                                      ; $5B2A execution token
        db      $09                                                             ; $5B2C inline byte
        dw      $2BA8                                                           ; $5B2D execution token
        dw      $3E8B                                                           ; $5B2F execution token
        dw      $3FA6                                                           ; $5B31 execution token
        dw      XT_LITbyte                                                      ; $5B33 execution token
        db      $12                                                             ; $5B35 inline byte
        dw      $2BA8                                                           ; $5B36 execution token
        dw      $2B8C                                                           ; $5B38 execution token
        dw      XT_RETURN                                                       ; $5B3A execution token

PPQ3_TERSE_5B3C:
        rst     $08                                                             ; $5B3C colon entry
        dw      PPQ3_TERSE_5ADB                                                 ; $5B3D execution token
        dw      PPQ3_TERSE_5B0F                                                 ; $5B3F execution token
        dw      XT_RETURN                                                       ; $5B41 execution token

        db      $00,$00,$90,$50,$00,$11,$00,$00                                 ; $5B43 preserved bytes
        db      $02,$00,$00,$80,$83,$FF,$00,$00,$18,$FC,$00,$00,$00,$00,$40,$00 ; $5B4B
        db      $00,$DB,$FF,$00,$00,$18,$FC,$00,$00,$00,$90,$50,$00,$EC,$FF,$00 ; $5B5B
        db      $01,$00,$00,$80,$83,$FF,$00,$00,$18,$FC,$00,$00,$00,$00,$00,$90 ; $5B6B
        db      $50,$00,$C6,$FF,$00,$02,$00,$00,$80,$83,$FF,$00,$00,$18,$FC,$00 ; $5B7B
        db      $00,$00,$00,$C0,$00,$00,$26,$00,$E8,$03,$00,$00,$00,$00,$00,$90 ; $5B8B
        db      $D3,$FF,$EC,$FF,$40,$03,$00,$00,$00,$00,$00,$B2,$FF,$00,$00,$18 ; $5B9B
        db      $FC,$00,$00,$00,$00,$00,$12,$00,$00,$00,$E8,$03,$00,$00,$00,$00 ; $5BAB
        db      $00,$ED,$FF,$00,$00,$18,$FC,$00,$43,$5B,$63,$5B,$78,$5B,$0F,$00 ; $5BBB
        db      $00,$03,$07,$00,$0F,$0E,$05,$02,$00,$81,$02,$3E,$57,$02,$F2,$51 ; $5BCB
        db      $00,$D5,$5B,$04,$00,$81,$0A,$F2,$51,$0A,$B6,$53,$0A,$F2,$51,$0A ; $5BDB
        db      $B6,$53,$00,$E1,$5B,$1B,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74 ; $5BEB
        db      $68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69,$6D,$61,$67,$65,$20 ; $5BFB
        db      $3F,$20,$77,$68,$69,$63,$68,$20,$6F,$6E,$20,$74,$68,$65,$20,$72 ; $5C0B
        db      $69,$67,$68,$74,$20,$69,$73,$20,$74,$68,$65,$20,$73,$61,$6D,$65 ; $5C1B
        db      $20,$3F,$F0,$5B,$0C,$5C,$F0,$5B,$0C,$5C,$00,$40,$40,$00         ; $5C2B preserved bytes

IMAGE_MIRROR_MATCH_A_SETUP:
        rst     $08                                                             ; $5C39 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5C3A execution token
        dw      XT_LIT                                                          ; $5C3C execution token
        dw      $FFAB                                                           ; $5C3E inline word
        dw      XT_LITbyte                                                      ; $5C40 execution token
        db      $16                                                             ; $5C42 inline byte
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5C43 execution token
        dw      XT_ARRAY                                                        ; $5C45 execution token
        dw      $5C2D                                                           ; $5C47 inline word
        dw      XT_at                                                           ; $5C49 execution token
        dw      XT_LIT                                                          ; $5C4B execution token
        dw      $5BC3                                                           ; $5C4D inline word
        dw      XT_LIT                                                          ; $5C4F execution token
        dw      $5BC9                                                           ; $5C51 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $5C53 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5C55 execution token
        dw      XT_BARRAY                                                       ; $5C57 execution token
        dw      $5C35                                                           ; $5C59 inline word
        dw      XT_Bat                                                          ; $5C5B execution token
        dw      $1F03                                                           ; $5C5D execution token
        dw      XT_LIT                                                          ; $5C5F execution token
        dw      $FF94                                                           ; $5C61 inline word
        dw      XT_LIT                                                          ; $5C63 execution token
        dw      $FFEC                                                           ; $5C65 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5C67 execution token
        dw      XT_LIT                                                          ; $5C69 execution token
        dw      $51F2                                                           ; $5C6B inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5C6D execution token
        dw      $1EF6                                                           ; $5C6F execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5C71 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5C73 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5C75 execution token
        dw      XT_RETURN                                                       ; $5C77 execution token

IMAGE_MIRROR_MATCH_A_CORRECT:
        rst     $08                                                             ; $5C79 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5C7A execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5C7C execution token
        dw      XT_LITbyte                                                      ; $5C7E execution token
        db      $28                                                             ; $5C80 inline byte
        dw      XT_LIT                                                          ; $5C81 execution token
        dw      $FFFB                                                           ; $5C83 inline word
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5C85 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5C87 execution token
        dw      XT_LITbyte                                                      ; $5C89 execution token
        db      $02                                                             ; $5C8B inline byte
        dw      XT_less                                                         ; $5C8C execution token
        dw      XT_0BRANCH                                                      ; $5C8E execution token
        dw      L5C94                                                           ; $5C90 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $5C92 execution token
L5C94:
        dw      XT_SET_OBJECT_MODE_2                                            ; $5C94 execution token
        dw      XT_LIT                                                          ; $5C96 execution token
        dw      $51F2                                                           ; $5C98 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5C9A execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5C9C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5C9E execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5CA0 execution token
        dw      PPQ3_TERSE_5A95                                                 ; $5CA2 execution token
        dw      XT_LIT                                                          ; $5CA4 execution token
        dw      $5BD2                                                           ; $5CA6 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5CA8 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5CAA execution token
        dw      $1E34                                                           ; $5CAC execution token
        dw      $1DE0                                                           ; $5CAE execution token
        dw      XT_LIT                                                          ; $5CB0 execution token
        dw      $5BDE                                                           ; $5CB2 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5CB4 execution token
        dw      XT_LIT                                                          ; $5CB6 execution token
        dw      $0064                                                           ; $5CB8 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5CBA execution token
        dw      $19E9                                                           ; $5CBC execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5CBE execution token
        dw      XT_RETURN                                                       ; $5CC0 execution token

IMAGE_MIRROR_MATCH_A_WRONG_1:
        rst     $08                                                             ; $5CC2 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5CC3 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $5CC5 execution token
        dw      XT_LITbyte                                                      ; $5CC7 execution token
        db      $28                                                             ; $5CC9 inline byte
        dw      XT_LIT                                                          ; $5CCA execution token
        dw      $FFFB                                                           ; $5CCC inline word
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5CCE execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5CD0 execution token
        dw      XT_1                                                            ; $5CD2 execution token
        dw      XT_gt                                                           ; $5CD4 execution token
        dw      XT_0BRANCH                                                      ; $5CD6 execution token
        dw      L5CDC                                                           ; $5CD8 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $5CDA execution token
L5CDC:
        dw      XT_LIT                                                          ; $5CDC execution token
        dw      $51F2                                                           ; $5CDE inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5CE0 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5CE2 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5CE4 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5CE6 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5CE8 execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $5CEA execution token
        dw      $1E34                                                           ; $5CEC execution token
        dw      PPQ3_TERSE_5B3C                                                 ; $5CEE execution token
        dw      XT_LITbyte                                                      ; $5CF0 execution token
        db      $1E                                                             ; $5CF2 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5CF3 execution token
        dw      $1A2C                                                           ; $5CF5 execution token
        dw      XT_LIT                                                          ; $5CF7 execution token
        dw      $5B98                                                           ; $5CF9 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $5CFB execution token
        dw      $1EE9                                                           ; $5CFD execution token
        dw      $1E34                                                           ; $5CFF execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5D01 execution token
        dw      XT_LITbyte                                                      ; $5D03 execution token
        db      $0F                                                             ; $5D05 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5D06 execution token
        dw      $1A2C                                                           ; $5D08 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5D0A execution token
        dw      XT_RETURN                                                       ; $5D0C execution token

IMAGE_MIRROR_MATCH_A_WRONG_2:
        rst     $08                                                             ; $5D0E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5D0F execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $5D11 execution token
        dw      XT_LITbyte                                                      ; $5D13 execution token
        db      $28                                                             ; $5D15 inline byte
        dw      XT_LIT                                                          ; $5D16 execution token
        dw      $FFFB                                                           ; $5D18 inline word
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5D1A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5D1C execution token
        dw      XT_1                                                            ; $5D1E execution token
        dw      XT_gt                                                           ; $5D20 execution token
        dw      XT_0BRANCH                                                      ; $5D22 execution token
        dw      L5D28                                                           ; $5D24 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $5D26 execution token
L5D28:
        dw      XT_LIT                                                          ; $5D28 execution token
        dw      $557A                                                           ; $5D2A inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5D2C execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5D2E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5D30 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5D32 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5D34 execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $5D36 execution token
        dw      $1E34                                                           ; $5D38 execution token
        dw      PPQ3_TERSE_5B3C                                                 ; $5D3A execution token
        dw      XT_LITbyte                                                      ; $5D3C execution token
        db      $1E                                                             ; $5D3E inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5D3F execution token
        dw      $1A2C                                                           ; $5D41 execution token
        dw      XT_LIT                                                          ; $5D43 execution token
        dw      $5B98                                                           ; $5D45 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $5D47 execution token
        dw      $1EE9                                                           ; $5D49 execution token
        dw      $1E34                                                           ; $5D4B execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5D4D execution token
        dw      XT_LITbyte                                                      ; $5D4F execution token
        db      $0F                                                             ; $5D51 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5D52 execution token
        dw      $1A2C                                                           ; $5D54 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5D56 execution token
        dw      XT_RETURN                                                       ; $5D58 execution token

IMAGE_MIRROR_MATCH_A_ACTIONS:
        db      $04                                                             ; $5D5A action count
        dw      IMAGE_MIRROR_MATCH_A_SETUP                                      ; $5D5B setup
        dw      IMAGE_MIRROR_MATCH_A_CORRECT                                    ; $5D5D correct
        dw      IMAGE_MIRROR_MATCH_A_WRONG_1                                    ; $5D5F wrong 1
        dw      IMAGE_MIRROR_MATCH_A_WRONG_2                                    ; $5D61 wrong 2

; Rooted by tier slots 2, 6.
QUESTION_INITIALIZER_5D63:
        rst     $08                                                          ; $5D63
        dw      XT_LITbyte                                                      ; $5D64
        db      $04                                                              ; $5D66
        dw      XT_RANDOM_BELOW                                                 ; $5D67
        dw      XT_LIT                                                          ; $5D69
        dw      QUESTION_VARIANT_ADDR                                           ; $5D6B
        dw      XT_SBbang                                                       ; $5D6D
        dw      XT_LIT                                                          ; $5D6F
        dw      PPQ3_IMAGE_MIRROR_MATCH_A_ACTION_LIST                           ; $5D71
        dw      XT_RETURN                                                       ; $5D73
        db      $1D,$00,$0F,$19,$00,$00,$00,$00,$54,$05,$50,$00,$00,$00         ; $5D75
        db      $00,$00,$00,$00,$00,$00,$00,$01,$47,$D1,$FF,$45,$55,$40,$00,$00 ; $5D83
        db      $05,$54,$00,$00,$00,$00,$0D,$35,$47,$55,$15,$7F,$55,$00,$00,$15 ; $5D93
        db      $51,$54,$00,$00,$03,$35,$15,$45,$54,$55,$55,$FD,$50,$01,$45,$45 ; $5DA3
        db      $5D,$40,$00,$07,$15,$15,$45,$51,$57,$55,$57,$DC,$05,$50,$45,$5F ; $5DB3
        db      $50,$00,$45,$15,$15,$45,$51,$5D,$55,$75,$F5,$04,$00,$05,$55,$D4 ; $5DC3
        db      $01,$C5,$05,$45,$51,$51,$5D,$55,$D5,$40,$40,$00,$05,$55,$54,$03 ; $5DD3
        db      $45,$41,$51,$51,$51,$55,$55,$55,$15,$20,$00,$01,$45,$55,$51,$51 ; $5DE3
        db      $54,$00,$14,$54,$55,$57,$54,$40,$50,$00,$01,$51,$55,$50,$54,$00 ; $5DF3
        db      $01,$00,$01,$15,$57,$54,$D9,$14,$00,$00,$54,$55,$D4,$00,$00,$00 ; $5E03
        db      $51,$54,$55,$55,$55,$C5,$11,$40,$00,$15,$05,$15,$D4,$00,$00,$00 ; $5E13
        db      $01,$41,$15,$55,$50,$10,$15,$00,$01,$00,$17,$54,$00,$00,$00,$54 ; $5E23
        db      $04,$15,$55,$00,$55,$00,$50,$00,$00,$00,$50,$00,$00,$55,$40,$50 ; $5E33
        db      $11,$50,$00,$00,$55,$01,$50,$00,$00,$00,$00,$00,$00,$05,$00,$51 ; $5E43
        db      $50,$00,$00,$00,$50,$01,$55,$00,$00,$00,$00,$05,$50,$01,$41,$50 ; $5E53
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00,$00,$05,$00,$50,$00 ; $5E63
        db      $00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$05,$50,$00,$45,$11,$17 ; $5E73
        db      $D5,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$45,$FD,$55 ; $5E83
        db      $50,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$15,$15,$55,$05,$54 ; $5E93
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$15,$55,$50,$05,$00 ; $5EA3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55,$55,$50,$00,$00 ; $5EB3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$00 ; $5EC3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$54,$00,$00,$00,$00 ; $5ED3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$40,$00,$00,$1D,$01,$0F ; $5EE3
        db      $1A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$51,$54,$00 ; $5EF3
        db      $00,$00,$00,$00,$54,$05,$50,$00,$00,$00,$00,$55,$45,$5D,$40,$00 ; $5F03
        db      $00,$01,$47,$D1,$FF,$45,$55,$40,$00,$05,$15,$05,$5F,$50,$00,$00 ; $5F13
        db      $0D,$35,$47,$55,$15,$7F,$55,$00,$15,$45,$05,$55,$D4,$00,$03,$35 ; $5F23
        db      $15,$45,$54,$55,$55,$FD,$50,$15,$00,$05,$55,$54,$00,$07,$15,$15 ; $5F33
        db      $45,$51,$57,$55,$57,$DC,$54,$00,$05,$45,$55,$00,$45,$15,$15,$45 ; $5F43
        db      $51,$5D,$55,$75,$F5,$00,$00,$01,$01,$55,$01,$C5,$05,$45,$51,$51 ; $5F53
        db      $5D,$55,$D5,$40,$40,$00,$05,$00,$55,$03,$45,$41,$51,$51,$51,$55 ; $5F63
        db      $55,$55,$15,$20,$00,$05,$00,$05,$51,$51,$54,$00,$14,$54,$55,$57 ; $5F73
        db      $54,$40,$50,$00,$05,$00,$00,$50,$54,$00,$01,$00,$01,$15,$57,$54 ; $5F83
        db      $D8,$14,$00,$04,$00,$00,$D4,$00,$00,$00,$51,$54,$55,$55,$55,$C5 ; $5F93
        db      $11,$54,$00,$01,$54,$15,$D4,$00,$00,$00,$01,$41,$15,$55,$50,$14 ; $5FA3
        db      $41,$55,$54,$00,$17,$54,$00,$00,$00,$54,$05,$15,$55,$00,$01,$50 ; $5FB3
        db      $00,$00,$00,$00,$50,$00,$00,$55,$40,$04,$11,$50,$00,$00,$05,$40 ; $5FC3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$14,$11,$50,$00,$00,$00,$15,$54 ; $5FD3
        db      $00,$00,$00,$00,$00,$00,$00,$50,$11,$50,$00,$00,$00,$00,$01,$40 ; $5FE3
        db      $00,$00,$00,$00,$01,$55,$00,$40,$50,$00,$00,$00,$00,$00,$00,$00 ; $5FF3
        db      $00,$00,$00,$00,$00,$01,$40,$45,$11,$17,$D5,$00,$00,$00,$00,$00 ; $6003
        db      $00,$00,$00,$00,$15,$00,$15,$45,$FD,$55,$50,$00,$00,$00,$00,$00 ; $6013
        db      $00,$00,$00,$00,$00,$15,$15,$55,$05,$54,$00,$00,$00,$00,$00,$00 ; $6023
        db      $00,$00,$00,$00,$01,$15,$55,$50,$05,$00,$00,$00,$00,$00,$00,$00 ; $6033
        db      $00,$00,$00,$00,$15,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00 ; $6043
        db      $00,$00,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6053
        db      $00,$00,$01,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6063
        db      $00,$00,$05,$55,$40,$00,$00,$1D,$09,$0F,$24,$00,$00,$00,$00,$00 ; $6073
        db      $00,$00,$00,$00,$00,$00,$00,$05,$55,$00,$00,$00,$00,$00,$00,$00 ; $6083
        db      $00,$00,$00,$00,$00,$01,$5F,$55,$50,$00,$00,$00,$00,$00,$00,$00 ; $6093
        db      $00,$00,$00,$00,$05,$F5,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00 ; $60A3
        db      $00,$00,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $60B3
        db      $00,$00,$05,$55,$55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $60C3
        db      $00,$41,$55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $60D3
        db      $50,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55 ; $60E3
        db      $05,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$54,$00 ; $60F3
        db      $55,$00,$00,$00,$00,$00,$54,$05,$50,$00,$00,$00,$10,$00,$00,$01 ; $6103
        db      $50,$00,$00,$01,$47,$D1,$FF,$45,$55,$40,$00,$55,$00,$00,$00,$00 ; $6113
        db      $00,$00,$0D,$35,$47,$55,$15,$7F,$55,$00,$55,$00,$00,$00,$00,$00 ; $6123
        db      $03,$35,$15,$45,$54,$55,$55,$FD,$50,$54,$00,$00,$00,$00,$00,$07 ; $6133
        db      $15,$15,$45,$51,$57,$55,$57,$DC,$10,$00,$00,$00,$00,$00,$45,$15 ; $6143
        db      $15,$45,$51,$5D,$55,$75,$F5,$00,$00,$00,$00,$00,$01,$C5,$05,$45 ; $6153
        db      $51,$51,$5D,$55,$D5,$40,$40,$00,$00,$00,$00,$03,$45,$41,$51,$51 ; $6163
        db      $51,$55,$55,$55,$15,$20,$00,$00,$00,$00,$51,$51,$54,$00,$14,$54 ; $6173
        db      $55,$57,$54,$40,$50,$00,$00,$00,$00,$50,$54,$00,$00,$00,$01,$15 ; $6183
        db      $57,$54,$D8,$14,$00,$00,$00,$00,$D4,$00,$00,$00,$50,$04,$15,$55 ; $6193
        db      $55,$C5,$11,$54,$00,$01,$54,$15,$D4,$00,$00,$05,$50,$11,$15,$55 ; $61A3
        db      $50,$14,$41,$55,$54,$00,$17,$54,$00,$00,$00,$00,$41,$15,$55,$00 ; $61B3
        db      $01,$50,$00,$00,$00,$00,$50,$00,$00,$00,$05,$04,$11,$54,$00,$00 ; $61C3
        db      $05,$40,$00,$00,$00,$00,$00,$00,$15,$50,$14,$11,$50,$00,$00,$00 ; $61D3
        db      $05,$54,$00,$00,$00,$00,$00,$00,$00,$50,$11,$50,$00,$00,$00,$00 ; $61E3
        db      $01,$40,$00,$00,$00,$00,$01,$55,$00,$40,$50,$00,$00,$00,$00,$00 ; $61F3
        db      $00,$00,$00,$00,$00,$00,$00,$01,$40,$50,$00,$00,$55,$54,$00,$00 ; $6203
        db      $00,$00,$00,$00,$00,$00,$15,$00,$45,$00,$05,$55,$00,$00,$00,$00 ; $6213
        db      $00,$00,$00,$00,$00,$00,$00,$15,$51,$15,$40,$00,$00,$00,$00,$00 ; $6223
        db      $00,$00,$00,$00,$00,$00,$15,$45,$D4,$00,$00,$00,$00,$00,$00,$00 ; $6233
        db      $00,$00,$00,$00,$00,$15,$17,$55,$00,$00,$00,$00,$00,$00,$00,$00 ; $6243
        db      $00,$00,$00,$00,$01,$15,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00 ; $6253
        db      $00,$00,$00,$00,$15,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00 ; $6263
        db      $00,$00,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6273
        db      $00,$00,$01,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6283
        db      $00,$00,$05,$55,$40,$00,$00,$1D,$01,$0F,$1C,$00,$00,$00,$00,$00 ; $6293
        db      $00,$00,$00,$00,$00,$00,$15,$51,$54,$00,$00,$00,$00,$00,$54,$05 ; $62A3
        db      $50,$00,$00,$00,$00,$55,$45,$5D,$40,$00,$00,$01,$47,$D1,$FF,$45 ; $62B3
        db      $55,$40,$00,$05,$15,$05,$5F,$50,$00,$00,$0D,$35,$47,$55,$15,$7F ; $62C3
        db      $55,$00,$15,$45,$05,$55,$D4,$00,$03,$35,$15,$45,$54,$55,$55,$FD ; $62D3
        db      $50,$15,$00,$05,$55,$54,$00,$07,$15,$15,$45,$51,$57,$55,$57,$DC ; $62E3
        db      $54,$00,$05,$45,$55,$00,$45,$15,$15,$45,$51,$5D,$55,$75,$F5,$00 ; $62F3
        db      $00,$01,$01,$55,$01,$C5,$05,$45,$51,$51,$5D,$55,$D5,$40,$40,$00 ; $6303
        db      $05,$00,$55,$03,$45,$41,$51,$51,$51,$55,$55,$55,$15,$20,$00,$05 ; $6313
        db      $00,$05,$51,$51,$54,$00,$14,$54,$55,$57,$54,$40,$50,$00,$05,$00 ; $6323
        db      $00,$50,$54,$00,$00,$00,$01,$15,$57,$54,$D8,$14,$00,$04,$00,$00 ; $6333
        db      $D4,$00,$00,$00,$50,$04,$15,$55,$55,$C5,$11,$54,$00,$01,$54,$15 ; $6343
        db      $D4,$00,$00,$05,$50,$11,$15,$55,$50,$14,$41,$55,$54,$00,$17,$54 ; $6353
        db      $00,$00,$00,$00,$41,$15,$55,$00,$01,$50,$00,$00,$00,$00,$50,$00 ; $6363
        db      $00,$00,$05,$04,$11,$54,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00 ; $6373
        db      $15,$50,$14,$11,$50,$00,$00,$00,$05,$54,$00,$00,$00,$00,$00,$00 ; $6383
        db      $00,$50,$11,$50,$00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$01,$55 ; $6393
        db      $00,$40,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $63A3
        db      $40,$50,$00,$00,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$15,$00 ; $63B3
        db      $45,$00,$05,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15 ; $63C3
        db      $51,$15,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$45 ; $63D3
        db      $D4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$17,$55 ; $63E3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$15,$55,$50 ; $63F3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55,$55,$50 ; $6403
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00 ; $6413
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$54,$00,$00 ; $6423
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$40,$00,$00,$50 ; $6433
        db      $81,$50,$81,$80,$80,$70,$80,$60,$81,$60,$81,$80,$80,$70,$80,$70 ; $6443
        db      $81,$70,$81,$D0,$80,$40,$81,$04,$0F,$FF,$42,$64,$4A,$64,$52,$64 ; $6453
        db      $30                                                             ; $6463 preserved bytes

PPQ3_TERSE_6464:
        rst     $08                                                             ; $6464 colon entry
        dw      XT_0                                                            ; $6465 execution token
        dw      XT_LIT                                                          ; $6467 execution token
        dw      $FD6D                                                           ; $6469 inline word
        dw      $2BEF                                                           ; $646B execution token
        dw      $3FEA                                                           ; $646D execution token
        dw      XT_LITbyte                                                      ; $646F execution token
        db      $1C                                                             ; $6471 inline byte
        dw      $2BA8                                                           ; $6472 execution token
        dw      $3EAD                                                           ; $6474 execution token
        dw      XT_LITbyte                                                      ; $6476 execution token
        db      $18                                                             ; $6478 inline byte
        dw      $2BA8                                                           ; $6479 execution token
        dw      $3E73                                                           ; $647B execution token
        dw      $3FEA                                                           ; $647D execution token
        dw      XT_LITbyte                                                      ; $647F execution token
        db      $18                                                             ; $6481 inline byte
        dw      $2BA8                                                           ; $6482 execution token
        dw      $3E8B                                                           ; $6484 execution token
        dw      $3FA6                                                           ; $6486 execution token
        dw      XT_LITbyte                                                      ; $6488 execution token
        db      $12                                                             ; $648A inline byte
        dw      $2BA8                                                           ; $648B execution token
        dw      $2B8C                                                           ; $648D execution token
        dw      XT_RETURN                                                       ; $648F execution token

PPQ3_TERSE_6491:
        rst     $08                                                             ; $6491 colon entry
        dw      XT_0                                                            ; $6492 execution token
        dw      XT_LIT                                                          ; $6494 execution token
        dw      $FD3D                                                           ; $6496 inline word
        dw      $2BEF                                                           ; $6498 execution token
        dw      $3FEA                                                           ; $649A execution token
        dw      XT_LITbyte                                                      ; $649C execution token
        db      $20                                                             ; $649E inline byte
        dw      $2BA8                                                           ; $649F execution token
        dw      $3EAD                                                           ; $64A1 execution token
        dw      XT_LITbyte                                                      ; $64A3 execution token
        db      $18                                                             ; $64A5 inline byte
        dw      $2BA8                                                           ; $64A6 execution token
        dw      $3E73                                                           ; $64A8 execution token
        dw      $3FEA                                                           ; $64AA execution token
        dw      XT_LITbyte                                                      ; $64AC execution token
        db      $18                                                             ; $64AE inline byte
        dw      $2BA8                                                           ; $64AF execution token
        dw      $3E8B                                                           ; $64B1 execution token
        dw      $3FEA                                                           ; $64B3 execution token
        dw      XT_LITbyte                                                      ; $64B5 execution token
        db      $13                                                             ; $64B7 inline byte
        dw      $2BA8                                                           ; $64B8 execution token
        dw      $3FA6                                                           ; $64BA execution token
        dw      XT_LITbyte                                                      ; $64BC execution token
        db      $10                                                             ; $64BE inline byte
        dw      $2BA8                                                           ; $64BF execution token
        dw      $2B8C                                                           ; $64C1 execution token
        dw      XT_RETURN                                                       ; $64C3 execution token

PPQ3_TERSE_64C5:
        rst     $08                                                             ; $64C5 colon entry
        dw      PPQ3_TERSE_6464                                                 ; $64C6 execution token
        dw      PPQ3_TERSE_6491                                                 ; $64C8 execution token
        dw      XT_RETURN                                                       ; $64CA execution token

        db      $00,$00,$90,$37,$00,$13,$00                                     ; $64CC preserved bytes
        db      $80,$04,$00,$00,$71,$CE,$FF,$ED,$FF,$8C,$FE,$74,$FF,$00,$00,$56 ; $64D3
        db      $FA,$FF,$F6,$FF,$34,$FF,$AC,$FE,$00,$00,$63,$F9,$FF,$FA,$FF,$D4 ; $64E3
        db      $FE,$FC,$FE,$00,$00,$60,$F4,$FF,$F4,$FF,$E8,$FE,$E8,$FE,$00,$00 ; $64F3
        db      $00,$90,$53,$00,$E8,$FF,$00,$03,$00,$00,$7E,$CD,$FF,$FD,$FF,$E0 ; $6503
        db      $FC,$D8,$FF,$00,$00,$70,$ED,$FF,$F8,$FF,$20,$FD,$D0,$FE,$00,$00 ; $6513
        db      $87,$DE,$FF,$06,$00,$F0,$FC,$88,$00,$00,$00,$00,$90,$EC,$FF,$E3 ; $6523
        db      $FF,$40,$04,$00,$00,$C9,$02,$00,$09,$00,$AC,$00,$0C,$03,$00,$00 ; $6533
        db      $41,$FF,$FF,$B2,$FF,$F0,$FF,$E0,$FC,$00,$00,$D3,$06,$00,$0C,$00 ; $6543
        db      $64,$01,$C8,$02,$00,$00,$33,$04,$00,$F4,$FF,$F8,$00,$0C,$FD,$00 ; $6553
        db      $00,$00,$90,$37,$00,$C2,$FF,$00,$03,$00,$00,$8E,$EA,$FF,$08,$00 ; $6563
        db      $10,$FD,$08,$01,$00,$00,$7E,$E9,$FF,$FF,$FF,$E0,$FC,$D8,$FF,$00 ; $6573
        db      $00,$9D,$E2,$FF,$1A,$00,$A8,$FD,$08,$02,$00,$CC,$64,$02,$65,$63 ; $6583
        db      $65,$1A,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20,$6D ; $6593
        db      $69,$72,$72,$6F,$72,$20,$69,$6D,$61,$67,$65,$20,$15,$77,$68,$69 ; $65A3
        db      $63,$68,$20,$69,$73,$20,$74,$68,$65,$20,$73,$61,$6D,$65,$20,$61 ; $65B3
        db      $73,$20,$07,$00,$81,$06,$75,$5D,$06,$F0,$5E,$06,$9A,$62,$05,$F0 ; $65C3
        db      $5E,$0C,$7A,$60,$06,$9A,$62,$0A,$7A,$60,$00,$C8,$65,$F0,$5E,$75 ; $65D3
        db      $5D,$75,$5D,$9A,$62,$94,$65,$AF,$65,$08,$00,$00,$0F,$0F,$0F,$0B ; $65E3
        db      $07,$06                                                         ; $65F3 preserved bytes

IMAGE_MIRROR_MATCH_B_SETUP:
        rst     $08                                                             ; $65F5 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $65F6 execution token
        dw      XT_LIT                                                          ; $65F8 execution token
        dw      $FF6A                                                           ; $65FA inline word
        dw      XT_LIT                                                          ; $65FC execution token
        dw      $FFF6                                                           ; $65FE inline word
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $6600 execution token
        dw      XT_ARRAY                                                        ; $6602 execution token
        dw      $65E8                                                           ; $6604 inline word
        dw      XT_at                                                           ; $6606 execution token
        dw      XT_LIT                                                          ; $6608 execution token
        dw      $658E                                                           ; $660A inline word
        dw      XT_LIT                                                          ; $660C execution token
        dw      $65EC                                                           ; $660E inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $6610 execution token
        dw      XT_LIT                                                          ; $6612 execution token
        dw      $FFA4                                                           ; $6614 inline word
        dw      XT_LIT                                                          ; $6616 execution token
        dw      $FFE3                                                           ; $6618 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $661A execution token
        dw      XT_LIT                                                          ; $661C execution token
        dw      $5D75                                                           ; $661E inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $6620 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6622 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6624 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6626 execution token
        dw      XT_RETURN                                                       ; $6628 execution token

IMAGE_MIRROR_MATCH_B_CORRECT:
        rst     $08                                                             ; $662A colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $662B execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $662D execution token
        dw      XT_LITbyte                                                      ; $662F execution token
        db      $32                                                             ; $6631 inline byte
        dw      XT_LITbyte                                                      ; $6632 execution token
        db      $05                                                             ; $6634 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6635 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $6637 execution token
        dw      XT_ARRAY                                                        ; $6639 execution token
        dw      $65E8                                                           ; $663B inline word
        dw      XT_at                                                           ; $663D execution token
        dw      XT_LIT                                                          ; $663F execution token
        dw      $6594                                                           ; $6641 inline word
        dw      XT_equal                                                        ; $6643 execution token
        dw      XT_0BRANCH                                                      ; $6645 execution token
        dw      L664B                                                           ; $6647 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $6649 execution token
L664B:
        dw      XT_LIT                                                          ; $664B execution token
        dw      $5D75                                                           ; $664D inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $664F execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6651 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6653 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $6655 execution token
        dw      XT_LIT                                                          ; $6657 execution token
        dw      $65C5                                                           ; $6659 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $665B execution token
        dw      XT_LIT                                                          ; $665D execution token
        dw      $645A                                                           ; $665F inline word
        dw      XT_DUP                                                          ; $6661 execution token
        dw      $3D67                                                           ; $6663 execution token
        dw      $3DE7                                                           ; $6665 execution token
        dw      $15E7                                                           ; $6667 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6669 execution token
        dw      $1DE0                                                           ; $666B execution token
        dw      XT_LIT                                                          ; $666D execution token
        dw      $F6DD                                                           ; $666F inline word
        dw      $1C1D                                                           ; $6671 execution token
        dw      $19E9                                                           ; $6673 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6675 execution token
        dw      XT_RETURN                                                       ; $6677 execution token

IMAGE_MIRROR_MATCH_B_WRONG_1:
        rst     $08                                                             ; $6679 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $667A execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $667C execution token
        dw      XT_LITbyte                                                      ; $667E execution token
        db      $32                                                             ; $6680 inline byte
        dw      XT_LITbyte                                                      ; $6681 execution token
        db      $05                                                             ; $6683 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6684 execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $6686 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $6688 execution token
        dw      XT_ARRAY                                                        ; $668A execution token
        dw      $65E0                                                           ; $668C inline word
        dw      XT_at                                                           ; $668E execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $6690 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6692 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6694 execution token
        dw      PPQ3_TERSE_64C5                                                 ; $6696 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $6698 execution token
        dw      XT_LIT                                                          ; $669A execution token
        dw      $65C5                                                           ; $669C inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $669E execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $66A0 execution token
        dw      $1DE0                                                           ; $66A2 execution token
        dw      XT_LITbyte                                                      ; $66A4 execution token
        db      $14                                                             ; $66A6 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $66A7 execution token
        dw      $1A2C                                                           ; $66A9 execution token
        dw      $1EE9                                                           ; $66AB execution token
        dw      XT_LIT                                                          ; $66AD execution token
        dw      $652D                                                           ; $66AF inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $66B1 execution token
        dw      XT_LIT                                                          ; $66B3 execution token
        dw      $5D75                                                           ; $66B5 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $66B7 execution token
        dw      $1E34                                                           ; $66B9 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $66BB execution token
        dw      $1EF6                                                           ; $66BD execution token
        dw      XT_LITbyte                                                      ; $66BF execution token
        db      $0F                                                             ; $66C1 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $66C2 execution token
        dw      $1A2C                                                           ; $66C4 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $66C6 execution token
        dw      XT_RETURN                                                       ; $66C8 execution token

IMAGE_MIRROR_MATCH_B_WRONG_2:
        rst     $08                                                             ; $66CA colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $66CB execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $66CD execution token
        dw      XT_LITbyte                                                      ; $66CF execution token
        db      $32                                                             ; $66D1 inline byte
        dw      XT_LITbyte                                                      ; $66D2 execution token
        db      $05                                                             ; $66D4 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $66D5 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $66D7 execution token
        dw      XT_ARRAY                                                        ; $66D9 execution token
        dw      $65E4                                                           ; $66DB inline word
        dw      XT_at                                                           ; $66DD execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $66DF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $66E1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $66E3 execution token
        dw      PPQ3_TERSE_64C5                                                 ; $66E5 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $66E7 execution token
        dw      XT_LIT                                                          ; $66E9 execution token
        dw      $65C5                                                           ; $66EB inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $66ED execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $66EF execution token
        dw      $1DE0                                                           ; $66F1 execution token
        dw      XT_LITbyte                                                      ; $66F3 execution token
        db      $14                                                             ; $66F5 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $66F6 execution token
        dw      $1A2C                                                           ; $66F8 execution token
        dw      $1EE9                                                           ; $66FA execution token
        dw      XT_LIT                                                          ; $66FC execution token
        dw      $652D                                                           ; $66FE inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $6700 execution token
        dw      XT_LIT                                                          ; $6702 execution token
        dw      $5D75                                                           ; $6704 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $6706 execution token
        dw      $1E34                                                           ; $6708 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $670A execution token
        dw      XT_LITbyte                                                      ; $670C execution token
        db      $0F                                                             ; $670E inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $670F execution token
        dw      $1A2C                                                           ; $6711 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6713 execution token
        dw      XT_RETURN                                                       ; $6715 execution token

IMAGE_MIRROR_MATCH_B_ACTIONS:
        db      $04                                                             ; $6717 action count
        dw      IMAGE_MIRROR_MATCH_B_SETUP                                      ; $6718 setup
        dw      IMAGE_MIRROR_MATCH_B_CORRECT                                    ; $671A correct
        dw      IMAGE_MIRROR_MATCH_B_WRONG_1                                    ; $671C wrong 1
        dw      IMAGE_MIRROR_MATCH_B_WRONG_2                                    ; $671E wrong 2

; Rooted by tier slot 2.
QUESTION_INITIALIZER_6720:
        rst     $08                                                          ; $6720
        dw      XT_LIT                                                          ; $6721
        dw      QUESTION_VARIANT_ADDR                                           ; $6723
        dw      XT_BZERO                                                        ; $6725
        dw      XT_LIT                                                          ; $6727
        dw      PPQ3_IMAGE_MIRROR_MATCH_B_ACTION_LIST                           ; $6729
        dw      XT_RETURN                                                       ; $672B

; Rooted by tier slots 1, 4.
QUESTION_INITIALIZER_672D:
        rst     $08                                                          ; $672D
        dw      XT_1                                                            ; $672E
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6730
        dw      XT_LIT                                                          ; $6732
        dw      PPQ3_IMAGE_MIRROR_MATCH_B_ACTION_LIST                           ; $6734
        dw      XT_RETURN                                                       ; $6736
        db      $10,$0E,$09,$29,$1A                                             ; $6738
        db      $21,$3C,$00,$01,$50,$00,$00,$00,$00,$00,$00,$00,$15,$40,$00,$00 ; $673D
        db      $00,$00,$00,$00,$00,$56,$A0,$00,$00,$00,$00,$00,$00,$00,$56,$28 ; $674D
        db      $00,$00,$00,$8A,$00,$00,$00,$56,$A8,$00,$00,$02,$A8,$00,$00,$00 ; $675D
        db      $55,$A4,$00,$00,$0A,$00,$00,$00,$00,$15,$A8,$00,$00,$A8,$00,$00 ; $676D
        db      $00,$00,$16,$A0,$00,$0A,$A0,$00,$00,$00,$00,$04,$85,$6A,$AA,$80 ; $677D
        db      $00,$00,$00,$00,$04,$55,$AA,$AA,$00,$00,$00,$00,$00,$14,$56,$A9 ; $678D
        db      $00,$00,$00,$00,$00,$05,$50,$15,$01,$00,$00,$00,$00,$00,$14,$00 ; $679D
        db      $15,$55,$00,$0F,$FF,$F0,$00,$40,$00,$05,$55,$40,$15,$55,$55,$00 ; $67AD
        db      $40,$00,$01,$55,$1F,$FF,$FF,$F5,$C0,$40,$00,$01,$54,$55,$55,$55 ; $67BD
        db      $5D,$D0,$10,$00,$00,$53,$FF,$FF,$FF,$5D,$D0,$04,$00,$00,$45,$55 ; $67CD
        db      $55,$55,$DD,$D0,$00,$00,$00,$47,$FF,$FF,$FD,$DD,$D0,$00,$00,$00 ; $67DD
        db      $05,$55,$55,$5D,$DD,$D0,$00,$00,$00,$05,$7F,$FF,$1D,$DD,$D0,$00 ; $67ED
        db      $00,$00,$01,$55,$54,$1D,$DD,$C0,$00,$00,$00,$00,$77,$70,$0D,$DD ; $67FD
        db      $C0,$00,$00,$00,$03,$77,$74,$0D,$DD,$C0,$00,$00,$00,$03,$77,$74 ; $680D
        db      $01,$DD,$00,$00,$00,$00,$07,$77,$77,$00,$A0,$00,$00,$00,$00,$37 ; $681D
        db      $77,$77,$00,$A0,$00,$00,$00,$00,$37,$77,$77,$00,$A0,$00,$00,$00 ; $682D
        db      $00,$37,$77,$77,$00,$A0,$00,$00,$00,$00,$77,$77,$77,$02,$A8,$00 ; $683D
        db      $00,$00,$00,$77,$77,$77,$00,$28,$00,$00,$00,$00,$77,$77,$74,$00 ; $684D
        db      $0A,$00,$00,$00,$00,$37,$77,$70,$00,$00,$00,$00,$00,$00,$37,$77 ; $685D
        db      $70,$00,$00,$00,$00,$00,$00,$07,$77,$00,$00,$00,$00,$00,$00,$00 ; $686D
        db      $02,$74,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00 ; $687D
        db      $00,$00,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$00,$00,$00,$00 ; $688D
        db      $00,$00,$00,$00,$2A,$80,$00,$00,$00,$00,$00,$00,$00,$02,$A8,$00 ; $689D
        db      $00,$00,$00,$0E,$0E,$08,$29,$1A,$21,$3C,$00,$01,$50,$00,$00,$00 ; $68AD
        db      $00,$00,$00,$15,$40,$00,$00,$00,$00,$00,$00,$56,$A0,$00,$00,$00 ; $68BD
        db      $00,$00,$00,$56,$28,$00,$00,$00,$00,$00,$00,$56,$A8,$00,$00,$00 ; $68CD
        db      $00,$00,$00,$55,$A4,$00,$00,$00,$80,$00,$00,$15,$A8,$00,$00,$0A ; $68DD
        db      $80,$00,$00,$12,$80,$00,$00,$AA,$AA,$00,$00,$11,$15,$40,$0A,$A0 ; $68ED
        db      $00,$00,$00,$11,$5A,$AA,$AA,$80,$00,$00,$00,$51,$6A,$AA,$A8,$00 ; $68FD
        db      $00,$00,$01,$41,$50,$00,$00,$00,$00,$00,$14,$01,$55,$50,$00,$FF ; $690D
        db      $FF,$00,$10,$00,$55,$54,$01,$55,$55,$50,$40,$00,$15,$51,$FF,$FF ; $691D
        db      $FF,$5C,$40,$00,$15,$45,$55,$55,$55,$DD,$40,$00,$15,$3F,$FF,$FF ; $692D
        db      $F5,$DD,$10,$00,$04,$55,$55,$55,$5D,$DD,$04,$00,$04,$7F,$FF,$FF ; $693D
        db      $DD,$DD,$00,$00,$00,$55,$55,$55,$DD,$DD,$00,$00,$00,$57,$FF,$F1 ; $694D
        db      $DD,$DD,$00,$00,$00,$15,$55,$41,$DD,$DC,$00,$00,$00,$07,$77,$00 ; $695D
        db      $DD,$DC,$00,$00,$00,$37,$77,$40,$DD,$DC,$00,$00,$00,$37,$77,$40 ; $696D
        db      $1D,$D0,$00,$00,$00,$77,$77,$70,$0A,$00,$00,$00,$03,$77,$77,$70 ; $697D
        db      $0A,$00,$00,$00,$03,$77,$77,$70,$0A,$00,$00,$00,$03,$77,$77,$70 ; $698D
        db      $0A,$00,$00,$00,$07,$77,$77,$70,$2A,$80,$00,$00,$07,$77,$77,$70 ; $699D
        db      $02,$80,$00,$00,$07,$77,$77,$40,$00,$A0,$00,$00,$03,$77,$77,$00 ; $69AD
        db      $00,$00,$00,$00,$03,$77,$77,$00,$00,$00,$00,$00,$00,$77,$70,$00 ; $69BD
        db      $00,$00,$00,$00,$00,$27,$40,$00,$00,$00,$00,$00,$00,$28,$00,$00 ; $69CD
        db      $00,$00,$00,$00,$00,$A0,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00 ; $69DD
        db      $00,$00,$00,$00,$02,$A8,$00,$00,$00,$00,$00,$00,$00,$2A,$80,$00 ; $69ED
        db      $00,$00,$11,$0E,$0C,$29,$1A,$21,$3C,$00,$00,$00,$40,$00,$00,$00 ; $69FD
        db      $00,$00,$00,$00,$00,$00,$00,$15,$54,$00,$00,$00,$00,$00,$00,$00 ; $6A0D
        db      $00,$00,$00,$56,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56 ; $6A1D
        db      $28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$A8,$00,$00,$20 ; $6A2D
        db      $A0,$00,$00,$00,$00,$00,$00,$55,$A4,$00,$00,$2A,$80,$00,$00,$00 ; $6A3D
        db      $00,$00,$00,$15,$A8,$00,$02,$A8,$00,$00,$00,$00,$00,$00,$00,$50 ; $6A4D
        db      $A0,$00,$2A,$80,$00,$00,$00,$00,$00,$00,$01,$01,$56,$AA,$A8,$00 ; $6A5D
        db      $00,$00,$00,$00,$00,$01,$54,$01,$6A,$AA,$80,$00,$00,$00,$00,$00 ; $6A6D
        db      $00,$15,$00,$01,$6A,$80,$00,$00,$00,$00,$00,$00,$00,$10,$00,$01 ; $6A7D
        db      $50,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$01,$55,$50,$00,$FF ; $6A8D
        db      $FC,$0F,$FC,$00,$08,$40,$00,$01,$55,$50,$05,$55,$55,$55,$55,$00 ; $6A9D
        db      $02,$40,$00,$00,$55,$47,$FF,$FF,$FD,$FF,$FF,$F0,$2A,$50,$00,$00 ; $6AAD
        db      $55,$15,$55,$55,$55,$55,$55,$56,$A8,$10,$00,$00,$54,$FF,$FF,$FF ; $6ABD
        db      $DF,$FF,$FF,$FE,$A0,$00,$00,$00,$11,$55,$55,$55,$55,$55,$55,$50 ; $6ACD
        db      $A0,$00,$00,$00,$11,$FF,$FF,$FF,$7F,$FF,$FF,$F0,$00,$00,$00,$00 ; $6ADD
        db      $01,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$01,$5F,$FF,$F4 ; $6AED
        db      $0F,$FF,$FF,$C0,$00,$00,$00,$00,$00,$55,$55,$00,$01,$55,$55,$00 ; $6AFD
        db      $00,$00,$00,$00,$00,$1D,$DC,$00,$00,$0F,$F0,$00,$00,$00,$00,$00 ; $6B0D
        db      $00,$DD,$DD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$DD,$DD,$00 ; $6B1D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$DD,$DD,$C0,$00,$00,$00,$00 ; $6B2D
        db      $00,$00,$00,$00,$0D,$DD,$DD,$C0,$00,$00,$00,$00,$00,$00,$00,$00 ; $6B3D
        db      $0D,$DD,$DD,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$0D,$DD,$DD,$C0 ; $6B4D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$1D,$DD,$DD,$C0,$00,$00,$00,$00 ; $6B5D
        db      $00,$00,$00,$00,$1D,$DD,$DD,$C0,$00,$00,$00,$00,$00,$00,$00,$00 ; $6B6D
        db      $1D,$DD,$DD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0D,$DD,$DC,$00 ; $6B7D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0D,$DD,$DC,$00,$00,$00,$00,$00 ; $6B8D
        db      $00,$00,$00,$00,$01,$DD,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6B9D
        db      $00,$9D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00,$00 ; $6BAD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00 ; $6BBD
        db      $00,$00,$00,$00,$0A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6BCD
        db      $0A,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$00,$00 ; $6BDD
        db      $00,$00,$00,$00,$00,$0B,$16,$0A,$08,$1F,$2D,$3A,$00,$00,$00,$00 ; $6BED
        db      $00,$00,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$40 ; $6BFD
        db      $00,$00,$00,$00,$00,$00,$2A,$00,$55,$40,$3F,$00,$00,$00,$00,$00 ; $6C0D
        db      $AA,$80,$55,$40,$FF,$C0,$00,$00,$00,$00,$AA,$80,$15,$00,$FF,$C0 ; $6C1D
        db      $00,$00,$00,$00,$AA,$80,$00,$00,$FF,$C0,$00,$00,$00,$00,$2A,$00 ; $6C2D
        db      $00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$23,$07,$16 ; $6C3D
        db      $1F,$2A,$3D,$00,$00,$54,$00,$00,$00,$00,$00,$01,$55,$00,$00,$00 ; $6C4D
        db      $00,$00,$01,$55,$00,$00,$00,$00,$00,$01,$55,$00,$00,$00,$00,$00 ; $6C5D
        db      $00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6C6D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6C7D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6C8D
        db      $2A,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$AA,$80 ; $6C9D
        db      $00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$2A,$00,$00,$00 ; $6CAD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; $6CBD
        db      $F0,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$0F,$FC,$00 ; $6CCD
        db      $00,$00,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$03,$F0,$07,$1D,$0A ; $6CDD
        db      $1D,$1F,$2A,$3D,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$40 ; $6CED
        db      $00,$00,$00,$00,$00,$00,$00,$00,$55,$40,$00,$00,$00,$00,$00,$00 ; $6CFD
        db      $00,$00,$55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$15,$00,$00,$00 ; $6D0D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D1D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D2D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D3D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D4D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D5D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6D6D
        db      $00,$00,$00,$02,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$A8,$00 ; $6D7D
        db      $00,$00,$00,$00,$00,$00,$00,$0A,$A8,$00,$00,$00,$00,$00,$00,$00 ; $6D8D
        db      $00,$0A,$A8,$00,$00,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00,$00 ; $6D9D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6DAD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6DBD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6DCD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$00,$00,$00 ; $6DDD
        db      $00,$00,$00,$00,$00,$00,$FF,$C0,$00,$00,$00,$00,$00,$00,$00,$00 ; $6DED
        db      $FF,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$C0,$00,$00,$00,$00 ; $6DFD
        db      $00,$00,$00,$00,$3F,$00,$0B,$16,$0A,$08,$1D,$2A,$3F,$00,$00,$00 ; $6E0D
        db      $00,$00,$00,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55 ; $6E1D
        db      $40,$00,$00,$00,$00,$00,$00,$2A,$00,$55,$40,$3F,$00,$00,$00,$00 ; $6E2D
        db      $00,$AA,$80,$55,$40,$FF,$C0,$00,$00,$00,$00,$AA,$80,$15,$00,$FF ; $6E3D
        db      $C0,$00,$00,$00,$00,$AA,$80,$00,$00,$FF,$C0,$00,$00,$00,$00,$2A ; $6E4D
        db      $00,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$23,$07 ; $6E5D
        db      $16,$1D,$2F,$3A,$00,$00,$54,$00,$00,$00,$00,$00,$01,$55,$00,$00 ; $6E6D
        db      $00,$00,$00,$01,$55,$00,$00,$00,$00,$00,$01,$55,$00,$00,$00,$00 ; $6E7D
        db      $00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6E8D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6E9D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6EAD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$00,$AA ; $6EBD
        db      $80,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$AA,$80,$00 ; $6ECD
        db      $00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6EDD
        db      $03,$F0,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$0F,$FC ; $6EED
        db      $00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$03,$F0,$08,$1D ; $6EFD
        db      $0A,$1D,$1D,$2F,$3A,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55 ; $6F0D
        db      $40,$00,$00,$00,$00,$00,$00,$00,$00,$55,$40,$00,$00,$00,$00,$00 ; $6F1D
        db      $00,$00,$00,$55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$15,$00,$00 ; $6F2D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F3D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F4D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F5D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F6D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F7D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6F8D
        db      $00,$00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA ; $6F9D
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00 ; $6FAD
        db      $00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$00,$00 ; $6FBD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6FCD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6FDD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6FED
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$C0,$00 ; $6FFD
        db      $00,$00,$00,$00,$00,$00,$00,$3F,$F0,$00,$00,$00,$00,$00,$00,$00 ; $700D
        db      $00,$3F,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$F0,$00,$00,$00 ; $701D
        db      $00,$00,$00,$00,$00,$0F,$C0,$0B,$19,$09,$0B,$1A,$2F,$3D,$00,$00 ; $702D
        db      $00,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$01,$55 ; $703D
        db      $00,$00,$00,$00,$00,$00,$00,$01,$55,$00,$00,$00,$00,$00,$00,$00 ; $704D
        db      $01,$55,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00 ; $705D
        db      $00,$A8,$00,$00,$3F,$00,$00,$00,$00,$02,$AA,$00,$00,$FF,$C0,$00 ; $706D
        db      $00,$00,$02,$AA,$00,$00,$FF,$C0,$00,$00,$00,$02,$AA,$00,$00,$FF ; $707D
        db      $C0,$00,$00,$00,$00,$A8,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$00 ; $708D
        db      $00,$02,$22,$08,$14,$1A,$2D,$3F,$00,$00,$05,$40,$00,$00,$00,$00 ; $709D
        db      $00,$00,$15,$50,$00,$00,$00,$00,$00,$00,$15,$50,$00,$00,$00,$00 ; $70AD
        db      $00,$00,$15,$50,$00,$00,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00 ; $70BD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $70CD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $70DD
        db      $2A,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$00 ; $70ED
        db      $AA,$80,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$00 ; $70FD
        db      $2A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $710D
        db      $00,$00,$00,$00,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$FF,$C0 ; $711D
        db      $00,$00,$00,$00,$00,$00,$FF,$C0,$00,$00,$00,$00,$00,$00,$FF,$C0 ; $712D
        db      $00,$00,$00,$00,$00,$00,$3F,$00,$09,$1C,$0A,$1C,$1A,$2D,$3F,$15 ; $713D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$40,$00,$00,$00,$00,$00 ; $714D
        db      $00,$00,$00,$55,$40,$00,$00,$00,$00,$00,$00,$00,$00,$55,$40,$00 ; $715D
        db      $00,$00,$00,$00,$00,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00 ; $716D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $717D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $718D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $719D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $71AD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $71BD
        db      $00,$00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA ; $71CD
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00,$00,$00 ; $71DD
        db      $00,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$00,$00 ; $71ED
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $71FD
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $720D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $721D
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$F0,$00 ; $722D
        db      $00,$00,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$00,$00 ; $723D
        db      $00,$0F,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00 ; $724D
        db      $00,$00,$00,$00,$00,$03,$F0,$7E,$00,$5E,$00,$5E,$00,$7E,$00,$66 ; $725D
        db      $00,$BD,$00,$BD,$00,$66,$00,$3E,$00,$2E,$00,$2E,$00,$3E,$00     ; $726D preserved bytes

PPQ3_TERSE_727C:
        rst     $08                                                             ; $727C colon entry
        dw      XT_0                                                            ; $727D execution token
        dw      XT_LIT                                                          ; $727F execution token
        dw      $FD6D                                                           ; $7281 inline word
        dw      $2BEF                                                           ; $7283 execution token
        dw      XT_LIT                                                          ; $7285 execution token
        dw      $F2F5                                                           ; $7287 inline word
        dw      XT_BZERO                                                        ; $7289 execution token
        dw      XT_LIT                                                          ; $728B execution token
        dw      $F2F4                                                           ; $728D inline word
        dw      XT_BZERO                                                        ; $728F execution token
        dw      XT_LITbyte                                                      ; $7291 execution token
        db      $00                                                             ; $7293 inline byte
        dw      XT_LIT                                                          ; $7294 execution token
        dw      $00FF                                                           ; $7296 inline word
        dw      $2B2E                                                           ; $7298 execution token
        dw      XT_LITbyte                                                      ; $729A execution token
        db      $36                                                             ; $729C inline byte
        dw      $2AF2                                                           ; $729D execution token
        dw      XT_LIT                                                          ; $729F execution token
        dw      QUESTION_BANK_BASE                                              ; $72A1 inline word
        dw      XT_LIT                                                          ; $72A3 execution token
        dw      QUESTION_BANK_BASE                                              ; $72A5 inline word
        dw      XT_LIT                                                          ; $72A7 execution token
        dw      QUESTION_BANK_BASE                                              ; $72A9 inline word
        dw      $2B71                                                           ; $72AB execution token
L72AD:
        dw      XT_LITbyte                                                      ; $72AD execution token
        db      $00                                                             ; $72AF inline byte
        dw      XT_LITbyte                                                      ; $72B0 execution token
        db      $0F                                                             ; $72B2 inline byte
        dw      $2B2E                                                           ; $72B3 execution token
        dw      XT_LIT                                                          ; $72B5 execution token
        dw      $F2F5                                                           ; $72B7 inline word
        dw      XT_Bat                                                          ; $72B9 execution token
        dw      XT_BARRAY                                                       ; $72BB execution token
        dw      $7264                                                           ; $72BD inline word
        dw      XT_Bat                                                          ; $72BF execution token
        dw      XT_LIT                                                          ; $72C1 execution token
        dw      $F2F5                                                           ; $72C3 inline word
        dw      XT_Bat                                                          ; $72C5 execution token
        dw      XT_BARRAY                                                       ; $72C7 execution token
        dw      $726C                                                           ; $72C9 inline word
        dw      XT_Bat                                                          ; $72CB execution token
        dw      XT_LIT                                                          ; $72CD execution token
        dw      $F2F5                                                           ; $72CF inline word
        dw      XT_Bat                                                          ; $72D1 execution token
        dw      XT_BARRAY                                                       ; $72D3 execution token
        dw      $7274                                                           ; $72D5 inline word
        dw      XT_Bat                                                          ; $72D7 execution token
        dw      $2B71                                                           ; $72D9 execution token
        dw      XT_LIT                                                          ; $72DB execution token
        dw      $F2F4                                                           ; $72DD inline word
        dw      XT_Bat                                                          ; $72DF execution token
        dw      XT_1                                                            ; $72E1 execution token
        dw      XT_equal                                                        ; $72E3 execution token
        dw      XT_0BRANCH                                                      ; $72E5 execution token
        dw      L72F1                                                           ; $72E7 branch target
        dw      XT_LITbyte                                                      ; $72E9 execution token
        db      $0F                                                             ; $72EB inline byte
        dw      XT_LITbyte                                                      ; $72EC execution token
        db      $0F                                                             ; $72EE inline byte
        dw      $2B2E                                                           ; $72EF execution token
L72F1:
        dw      XT_LIT                                                          ; $72F1 execution token
        dw      $F2F4                                                           ; $72F3 inline word
        dw      XT_Bat                                                          ; $72F5 execution token
        dw      XT_LITbyte                                                      ; $72F7 execution token
        db      $03                                                             ; $72F9 inline byte
        dw      XT_equal                                                        ; $72FA execution token
        dw      XT_0BRANCH                                                      ; $72FC execution token
        dw      L7309                                                           ; $72FE branch target
        dw      XT_LITbyte                                                      ; $7300 execution token
        db      $00                                                             ; $7302 inline byte
        dw      XT_LIT                                                          ; $7303 execution token
        dw      $00FF                                                           ; $7305 inline word
        dw      $2B2E                                                           ; $7307 execution token
L7309:
        dw      XT_LITbyte                                                      ; $7309 execution token
        db      $06                                                             ; $730B inline byte
        dw      $2BA8                                                           ; $730C execution token
        dw      XT_LIT                                                          ; $730E execution token
        dw      $F2F5                                                           ; $7310 inline word
        dw      XT_DUP                                                          ; $7312 execution token
        dw      XT_1plusBbang                                                   ; $7314 execution token
        dw      XT_Bat                                                          ; $7316 execution token
        dw      XT_LITbyte                                                      ; $7318 execution token
        db      $07                                                             ; $731A inline byte
        dw      XT_gt                                                           ; $731B execution token
        dw      XT_0BRANCH                                                      ; $731D execution token
        dw      L72AD                                                           ; $731F branch target
        dw      XT_LIT                                                          ; $7321 execution token
        dw      $F2F5                                                           ; $7323 inline word
        dw      XT_BZERO                                                        ; $7325 execution token
        dw      XT_LIT                                                          ; $7327 execution token
        dw      $F2F4                                                           ; $7329 inline word
        dw      XT_DUP                                                          ; $732B execution token
        dw      XT_1plusBbang                                                   ; $732D execution token
        dw      XT_Bat                                                          ; $732F execution token
        dw      XT_LITbyte                                                      ; $7331 execution token
        db      $02                                                             ; $7333 inline byte
        dw      XT_gt                                                           ; $7334 execution token
        dw      XT_0BRANCH                                                      ; $7336 execution token
        dw      L72AD                                                           ; $7338 branch target
        dw      $2B8C                                                           ; $733A execution token
        dw      XT_RETURN                                                       ; $733C execution token

PPQ3_TERSE_733E:
        rst     $08                                                             ; $733E colon entry
        dw      XT_0                                                            ; $733F execution token
        dw      XT_LIT                                                          ; $7341 execution token
        dw      $FD3D                                                           ; $7343 inline word
        dw      $2BEF                                                           ; $7345 execution token
        dw      XT_LIT                                                          ; $7347 execution token
        dw      $F2F3                                                           ; $7349 inline word
        dw      XT_BZERO                                                        ; $734B execution token
        dw      XT_LIT                                                          ; $734D execution token
        dw      $F2F2                                                           ; $734F inline word
        dw      XT_BZERO                                                        ; $7351 execution token
        dw      XT_LITbyte                                                      ; $7353 execution token
        db      $00                                                             ; $7355 inline byte
        dw      XT_LIT                                                          ; $7356 execution token
        dw      $00FF                                                           ; $7358 inline word
        dw      $2B2E                                                           ; $735A execution token
        dw      XT_LITbyte                                                      ; $735C execution token
        db      $36                                                             ; $735E inline byte
        dw      $2AF2                                                           ; $735F execution token
        dw      XT_LIT                                                          ; $7361 execution token
        dw      QUESTION_BANK_BASE                                              ; $7363 inline word
        dw      XT_LIT                                                          ; $7365 execution token
        dw      QUESTION_BANK_BASE                                              ; $7367 inline word
        dw      XT_LIT                                                          ; $7369 execution token
        dw      QUESTION_BANK_BASE                                              ; $736B inline word
        dw      $2B71                                                           ; $736D execution token
L736F:
        dw      XT_LITbyte                                                      ; $736F execution token
        db      $00                                                             ; $7371 inline byte
        dw      XT_LITbyte                                                      ; $7372 execution token
        db      $0F                                                             ; $7374 inline byte
        dw      $2B2E                                                           ; $7375 execution token
        dw      XT_LIT                                                          ; $7377 execution token
        dw      $F2F3                                                           ; $7379 inline word
        dw      XT_Bat                                                          ; $737B execution token
        dw      XT_BARRAY                                                       ; $737D execution token
        dw      $7264                                                           ; $737F inline word
        dw      XT_Bat                                                          ; $7381 execution token
        dw      XT_LIT                                                          ; $7383 execution token
        dw      $F2F3                                                           ; $7385 inline word
        dw      XT_Bat                                                          ; $7387 execution token
        dw      XT_BARRAY                                                       ; $7389 execution token
        dw      $726C                                                           ; $738B inline word
        dw      XT_Bat                                                          ; $738D execution token
        dw      XT_LIT                                                          ; $738F execution token
        dw      $F2F3                                                           ; $7391 inline word
        dw      XT_Bat                                                          ; $7393 execution token
        dw      XT_BARRAY                                                       ; $7395 execution token
        dw      $7274                                                           ; $7397 inline word
        dw      XT_Bat                                                          ; $7399 execution token
        dw      $2B71                                                           ; $739B execution token
        dw      XT_LIT                                                          ; $739D execution token
        dw      $F2F2                                                           ; $739F inline word
        dw      XT_Bat                                                          ; $73A1 execution token
        dw      XT_1                                                            ; $73A3 execution token
        dw      XT_equal                                                        ; $73A5 execution token
        dw      XT_0BRANCH                                                      ; $73A7 execution token
        dw      L73B3                                                           ; $73A9 branch target
        dw      XT_LITbyte                                                      ; $73AB execution token
        db      $0F                                                             ; $73AD inline byte
        dw      XT_LITbyte                                                      ; $73AE execution token
        db      $0F                                                             ; $73B0 inline byte
        dw      $2B2E                                                           ; $73B1 execution token
L73B3:
        dw      XT_LIT                                                          ; $73B3 execution token
        dw      $F2F2                                                           ; $73B5 inline word
        dw      XT_Bat                                                          ; $73B7 execution token
        dw      XT_LITbyte                                                      ; $73B9 execution token
        db      $03                                                             ; $73BB inline byte
        dw      XT_equal                                                        ; $73BC execution token
        dw      XT_0BRANCH                                                      ; $73BE execution token
        dw      L73CB                                                           ; $73C0 branch target
        dw      XT_LITbyte                                                      ; $73C2 execution token
        db      $00                                                             ; $73C4 inline byte
        dw      XT_LIT                                                          ; $73C5 execution token
        dw      $00FF                                                           ; $73C7 inline word
        dw      $2B2E                                                           ; $73C9 execution token
L73CB:
        dw      XT_LITbyte                                                      ; $73CB execution token
        db      $06                                                             ; $73CD inline byte
        dw      $2BA8                                                           ; $73CE execution token
        dw      XT_LIT                                                          ; $73D0 execution token
        dw      $F2F3                                                           ; $73D2 inline word
        dw      XT_DUP                                                          ; $73D4 execution token
        dw      XT_1plusBbang                                                   ; $73D6 execution token
        dw      XT_Bat                                                          ; $73D8 execution token
        dw      XT_LITbyte                                                      ; $73DA execution token
        db      $07                                                             ; $73DC inline byte
        dw      XT_gt                                                           ; $73DD execution token
        dw      XT_0BRANCH                                                      ; $73DF execution token
        dw      L736F                                                           ; $73E1 branch target
        dw      XT_LIT                                                          ; $73E3 execution token
        dw      $F2F3                                                           ; $73E5 inline word
        dw      XT_BZERO                                                        ; $73E7 execution token
        dw      XT_LIT                                                          ; $73E9 execution token
        dw      $F2F2                                                           ; $73EB inline word
        dw      XT_DUP                                                          ; $73ED execution token
        dw      XT_1plusBbang                                                   ; $73EF execution token
        dw      XT_Bat                                                          ; $73F1 execution token
        dw      XT_LITbyte                                                      ; $73F3 execution token
        db      $02                                                             ; $73F5 inline byte
        dw      XT_gt                                                           ; $73F6 execution token
        dw      XT_0BRANCH                                                      ; $73F8 execution token
        dw      L736F                                                           ; $73FA branch target
        dw      $2B8C                                                           ; $73FC execution token
        dw      XT_RETURN                                                       ; $73FE execution token

PPQ3_TERSE_7400:
        rst     $08                                                             ; $7400 colon entry
        dw      PPQ3_TERSE_727C                                                 ; $7401 execution token
        dw      PPQ3_TERSE_733E                                                 ; $7403 execution token
        dw      XT_RETURN                                                       ; $7405 execution token

        db      $00,$00,$90,$B0,$FF,$C4                                         ; $7407 preserved bytes
        db      $FF,$00,$00,$00,$00,$00,$90,$00,$00,$C4,$FF,$00,$00,$00,$00,$00 ; $740D
        db      $90,$50,$00,$C4,$FF,$00,$00,$00,$07,$74,$11,$74,$1B,$74,$0D,$07 ; $741D
        db      $07,$00,$00,$0C,$0D,$07,$07,$0D,$07,$07,$0F,$03,$07,$00,$0F,$00 ; $742D
        db      $04,$04,$04,$08,$08,$08,$00,$00,$00,$00,$0E,$07,$08,$00,$06,$03 ; $743D
        db      $00,$81,$08,$38,$67,$08,$B0,$68,$08,$FF,$69,$00,$4F,$74,$09,$00 ; $744D
        db      $81,$08,$F2,$6B,$08,$49,$6C,$08,$EA,$6C,$08,$13,$6E,$08,$6A,$6E ; $745D
        db      $08,$0B,$6F,$08,$34,$70,$08,$9E,$70,$08,$45,$71,$00,$5E,$74,$0A ; $746D
        db      $79,$FF,$B5,$FF,$F1,$FF,$2D,$00,$69,$00,$7E,$FF,$BA,$FF,$F6,$FF ; $747D
        db      $32,$00,$6E,$00,$07,$88,$FF,$D3,$FF,$2B,$00,$78,$00,$B0,$FF,$00 ; $748D
        db      $00,$50,$00,$06,$B5,$FF,$2D,$00,$BA,$FF,$32,$00,$7E,$FF,$6E,$00 ; $749D
        db      $05,$7B,$FF,$B5,$FF,$BA,$FF,$36,$00,$69,$00,$06,$6E,$00,$7E,$FF ; $74AD
        db      $F6,$FF,$F1,$FF,$2D,$00,$B5,$FF,$08,$B5,$FF,$2D,$00,$F1,$FF,$F6 ; $74BD
        db      $FF,$32,$00,$BA,$FF,$7E,$FF,$6E,$00,$07,$00,$07,$00,$07,$00,$07 ; $74CD
        db      $00,$07,$00,$BA,$FF,$BA,$FF,$BA,$FF,$BA,$FF,$BA,$FF,$07,$00,$07 ; $74DD
        db      $00,$07,$00,$07,$00,$BA,$FF,$BA,$FF,$BA,$FF,$07,$00,$07,$00,$BA ; $74ED
        db      $FF,$BA,$FF,$E2,$FF,$E2,$FF,$EE,$FF,$BA,$FF,$07,$00,$BA,$FF,$EE ; $74FD
        db      $FF,$E2,$FF,$E2,$FF,$BA,$FF,$07,$00,$07,$00,$07,$00,$07,$00,$07 ; $750D
        db      $00,$07,$00,$BA,$FF,$BA,$FF,$BA,$FF,$E2,$FF,$E2,$FF,$09,$88,$FF ; $751D
        db      $D3,$FF,$2B,$00,$78,$00,$7E,$FF,$BA,$FF,$F6,$FF,$32,$00,$6E,$00 ; $752D
        db      $07,$00,$07,$00,$07,$00,$07,$00,$BA,$FF,$BA,$FF,$BA,$FF,$BA,$FF ; $753D
        db      $BA,$FF,$38,$67,$38,$67,$FF,$69,$FF,$69,$38,$67,$FF,$69,$38,$67 ; $754D
        db      $FF,$69,$38,$67,$FF,$69,$FF,$69,$38,$67,$FF,$69,$38,$67,$FF,$69 ; $755D
        db      $FF,$69,$38,$67,$FF,$69,$FF,$69,$38,$67,$F2,$6B,$F2,$6B,$49,$6C ; $756D
        db      $EA,$6C,$F2,$6B,$EA,$6C,$F2,$6B,$EA,$6C,$49,$6C,$49,$6C,$02,$33 ; $757D
        db      $30,$02,$31,$38,$02,$32,$31,$02,$32,$37,$02,$31,$35,$02,$31,$32 ; $758D
        db      $02,$32,$34,$01,$33,$01,$34,$01,$35,$02,$31,$30,$01,$36,$01,$37 ; $759D
        db      $01,$38,$01,$39,$23,$77,$68,$61,$74,$20,$77,$61,$73,$20,$74,$68 ; $75AD
        db      $65,$20,$74,$6F,$74,$61,$6C,$20,$6E,$75,$6D,$62,$65,$72,$20,$6F ; $75BD
        db      $66,$20,$62,$61,$6C,$6C,$73,$3F,$21,$68,$6F,$77,$20,$6D,$61,$6E ; $75CD
        db      $79,$20,$72,$65,$64,$20,$62,$61,$6C,$6C,$73,$20,$64,$69,$64,$20 ; $75DD
        db      $79,$6F,$75,$20,$63,$6F,$75,$6E,$74,$3F,$27,$68,$6F,$77,$20,$6D ; $75ED
        db      $61,$6E,$79,$20,$6A,$75,$67,$67,$6C,$65,$72,$73,$20,$68,$61,$64 ; $75FD
        db      $20,$74,$68,$65,$69,$72,$20,$66,$6F,$6F,$74,$20,$6F,$75,$74,$20 ; $760D
        db      $3F,$20,$12,$73,$74,$75,$64,$79,$20,$74,$68,$69,$73,$20,$70,$69 ; $761D
        db      $63,$74,$75,$72,$65,$8B,$75,$91,$75,$9D,$75,$94,$75,$8E,$75,$97 ; $762D
        db      $75,$8E,$75,$A4,$75,$A9,$75,$A9,$75,$A0,$75,$A2,$75,$AD,$75,$A9 ; $763D
        db      $75,$A6,$75,$AF,$75,$8E,$75,$8E,$75,$8B,$75,$8B,$75,$9A,$75,$8E ; $764D
        db      $75,$97,$75,$A2,$75,$AB,$75,$A4,$75,$A4,$75,$A4,$75,$A9,$75,$A4 ; $765D
        db      $75,$AD,$75,$A6,$75,$91,$75,$8B,$75,$8E,$75,$9D,$75,$97,$75,$9A ; $766D
        db      $75,$91,$75,$A9,$75,$A4,$75,$A2,$75,$A9,$75,$AB,$75,$AB,$75,$AF ; $767D
        db      $75,$AF,$75,$9A,$75,$7C,$74,$91,$74,$C5,$74,$2A,$75,$A0,$74,$AD ; $768D
        db      $74,$B8,$74,$7C,$74,$2A,$75,$7C,$74,$91,$74,$B8,$74,$C5,$74,$A0 ; $769D
        db      $74,$7C,$74,$2A,$75,$D6,$74,$EA,$74,$1A,$75,$3D,$75,$F8,$74,$04 ; $76AD
        db      $75,$0E,$75,$D6,$74,$3D,$75,$D6,$74,$EA,$74,$0E,$75,$1A,$75,$F8 ; $76BD
        db      $74,$D6,$74,$3D,$75,$4F,$75,$4F,$75,$4F,$75,$4F,$75,$4F,$75,$4F ; $76CD
        db      $75,$4F,$75,$4F,$75,$63,$75,$63,$75,$4F,$75,$63,$75,$4F,$75,$4F ; $76DD
        db      $75,$4F,$75,$4F,$75,$77,$75,$77,$75,$77,$75,$77,$75,$77,$75,$77 ; $76ED
        db      $75,$77,$75,$77,$75,$77,$75,$77,$75,$77,$75,$77,$75,$77,$75,$77 ; $76FD
        db      $75,$77,$75,$77,$75,$B1,$75,$B1,$75,$B1,$75,$B1,$75,$B1,$75,$B1 ; $770D
        db      $75,$B1,$75,$F7,$75,$F7,$75,$F7,$75,$F7,$75,$F7,$75,$D5,$75,$D5 ; $771D
        db      $75,$D5,$75,$D5,$75,$CF,$99,$15,$A8,$1E,$34,$8B,$09,$01,$4C,$74 ; $772D
        db      $B4,$1C,$12,$01,$3C,$DF,$1B,$E9,$19,$F3,$1D,$02,$23,$54,$22,$FD ; $773D
        db      $00,$CF,$99,$15,$A8,$1E,$34,$8B,$09,$01,$5B,$74,$B4,$1C,$12,$01 ; $774D
        db      $3C,$DF,$1B,$E9,$19,$F3,$1D,$02,$23,$54,$22,$FD,$00,$02,$32,$77 ; $775D
        db      $4E,$77,$CF,$4C,$01,$09,$01,$F1,$F2,$53,$01,$A6,$01,$5A,$01,$4C ; $776D
        db      $01,$FD,$00,$CF,$A8,$1E,$F7,$2C,$25,$01,$92,$76,$4C,$01,$53,$01 ; $777D
        db      $09,$01,$F1,$F2,$32,$05,$09,$01,$F1,$F2,$44,$05,$F7,$2C,$25,$01 ; $778D
        db      $92,$76,$4C,$01,$95,$01,$09,$01,$F1,$F2,$53,$01,$A6,$01,$5A,$01 ; $779D
        db      $4C,$01,$24,$1D,$F7,$2C,$25,$01,$B2,$76,$6F,$77,$3C,$1D,$09,$01 ; $77AD
        db      $6A,$77,$BB,$22,$F7,$15,$F7,$2C,$25,$01,$D2,$76,$6F,$77,$F2,$2C ; $77BD
        db      $F7,$2C,$25,$01,$F2,$76,$6F,$77,$F2,$2C,$09,$01,$F1,$F2,$53,$01 ; $77CD
        db      $DE,$01,$EA,$03,$93,$77,$37,$23,$FD,$00                         ; $77DD preserved bytes

JUGGLER_MEMORY_SETUP:
        rst     $08                                                             ; $77E7 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $77E8 execution token
        dw      XT_LIT                                                          ; $77EA execution token
        dw      $FFC4                                                           ; $77EC inline word
        dw      XT_LIT                                                          ; $77EE execution token
        dw      $FFDF                                                           ; $77F0 inline word
        dw      XT_LIT                                                          ; $77F2 execution token
        dw      $761F                                                           ; $77F4 inline word
        dw      XT_LIT                                                          ; $77F6 execution token
        dw      $7425                                                           ; $77F8 inline word
        dw      XT_LIT                                                          ; $77FA execution token
        dw      $742B                                                           ; $77FC inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $77FE execution token
        dw      XT_LIT                                                          ; $7800 execution token
        dw      $7434                                                           ; $7802 inline word
        dw      CFG0_XT_LOAD_PRESENTATION_TABLE                                 ; $7804 execution token
        dw      XT_LIT                                                          ; $7806 execution token
        dw      $83F2                                                           ; $7808 inline word
        dw      XT_DUP                                                          ; $780A execution token
        dw      $3D67                                                           ; $780C execution token
        dw      $3DE7                                                           ; $780E execution token
        dw      $15E7                                                           ; $7810 execution token
        dw      XT_LIT                                                          ; $7812 execution token
        dw      $7780                                                           ; $7814 inline word
        dw      $2CDD                                                           ; $7816 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7818 execution token
        dw      XT_LITbyte                                                      ; $781A execution token
        db      $5A                                                             ; $781C inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $781D execution token
        dw      $1A2C                                                           ; $781F execution token
        dw      $2D40                                                           ; $7821 execution token
        dw      XT_LIT                                                          ; $7823 execution token
        dw      $FF9C                                                           ; $7825 inline word
        dw      XT_LITbyte                                                      ; $7827 execution token
        db      $0F                                                             ; $7829 inline byte
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $782A execution token
        dw      XT_ARRAY                                                        ; $782C execution token
        dw      $7712                                                           ; $782E inline word
        dw      XT_at                                                           ; $7830 execution token
        dw      CFG0_XT_CACHE_AND_APPLY_OBJECT_SETUP                            ; $7832 execution token
        dw      XT_LIT                                                          ; $7834 execution token
        dw      $F6DD                                                           ; $7836 inline word
        dw      $1C1D                                                           ; $7838 execution token
        dw      $1A2C                                                           ; $783A execution token
        dw      XT_LITbyte                                                      ; $783C execution token
        db      $0A                                                             ; $783E inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $783F execution token
        dw      $1A2C                                                           ; $7841 execution token
        dw      XT_LITbyte                                                      ; $7843 execution token
        db      $03                                                             ; $7845 inline byte
        dw      XT_0                                                            ; $7846 execution token
        dw      XT_DO                                                           ; $7848 execution token
        dw      XT_I                                                            ; $784A execution token
        dw      XT_ARRAY                                                        ; $784C execution token
        dw      QUESTION_SLOT_TASK_TABLE_ADDR                                   ; $784E inline word
        dw      XT_at                                                           ; $7850 execution token
        dw      $1608                                                           ; $7852 execution token
        dw      XT_LOOP                                                         ; $7854 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7856 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7858 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $785A execution token
        dw      XT_RETURN                                                       ; $785C execution token

JUGGLER_MEMORY_CORRECT:
        rst     $08                                                             ; $785E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $785F execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7861 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7863 execution token
        dw      XT_LIT                                                          ; $7865 execution token
        dw      $FFE2                                                           ; $7867 inline word
        dw      XT_LITbyte                                                      ; $7869 execution token
        db      $04                                                             ; $786B inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $786C execution token
        dw      XT_LITbyte                                                      ; $786E execution token
        db      $4E                                                             ; $7870 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $7871 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7873 execution token
        dw      XT_ARRAY                                                        ; $7875 execution token
        dw      $7632                                                           ; $7877 inline word
        dw      XT_at                                                           ; $7879 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $787B execution token
        dw      $2083                                                           ; $787D execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $787F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7881 execution token
        dw      XT_LIT                                                          ; $7883 execution token
        dw      $F6E8                                                           ; $7885 inline word
        dw      XT_BONE                                                         ; $7887 execution token
        dw      XT_LIT                                                          ; $7889 execution token
        dw      $F6E7                                                           ; $788B inline word
        dw      XT_BONE                                                         ; $788D execution token
        dw      $2083                                                           ; $788F execution token
        dw      XT_GET_CURRENT_TASK                                             ; $7891 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_2                                   ; $7893 execution token
        dw      XT_LITbyte                                                      ; $7895 execution token
        db      $1C                                                             ; $7897 inline byte
        dw      XT_plus                                                         ; $7898 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $789A execution token
        dw      PPQ3_TERSE_7400                                                 ; $789C execution token
        dw      $15E7                                                           ; $789E execution token
        dw      XT_LIT                                                          ; $78A0 execution token
        dw      $776A                                                           ; $78A2 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $78A4 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78A6 execution token
        dw      XT_LIT                                                          ; $78A8 execution token
        dw      $776A                                                           ; $78AA inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $78AC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78AE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $78B0 execution token
        dw      XT_RETURN                                                       ; $78B2 execution token

JUGGLER_MEMORY_WRONG_1:
        rst     $08                                                             ; $78B4 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $78B5 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $78B7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78B9 execution token
        dw      XT_LIT                                                          ; $78BB execution token
        dw      $FFE2                                                           ; $78BD inline word
        dw      XT_LITbyte                                                      ; $78BF execution token
        db      $04                                                             ; $78C1 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $78C2 execution token
        dw      XT_LITbyte                                                      ; $78C4 execution token
        db      $4E                                                             ; $78C6 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $78C7 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $78C9 execution token
        dw      XT_ARRAY                                                        ; $78CB execution token
        dw      $7652                                                           ; $78CD inline word
        dw      XT_at                                                           ; $78CF execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $78D1 execution token
        dw      $2083                                                           ; $78D3 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $78D5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78D7 execution token
        dw      $2083                                                           ; $78D9 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $78DB execution token
        dw      XT_GET_CURRENT_TASK                                             ; $78DD execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_2                                   ; $78DF execution token
        dw      XT_LITbyte                                                      ; $78E1 execution token
        db      $07                                                             ; $78E3 inline byte
        dw      XT_plus                                                         ; $78E4 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $78E6 execution token
        dw      XT_LIT                                                          ; $78E8 execution token
        dw      $482E                                                           ; $78EA inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $78EC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78EE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $78F0 execution token
        dw      XT_RETURN                                                       ; $78F2 execution token

JUGGLER_MEMORY_WRONG_2:
        rst     $08                                                             ; $78F4 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $78F5 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $78F7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $78F9 execution token
        dw      XT_LIT                                                          ; $78FB execution token
        dw      $FFE2                                                           ; $78FD inline word
        dw      XT_LITbyte                                                      ; $78FF execution token
        db      $04                                                             ; $7901 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7902 execution token
        dw      XT_LITbyte                                                      ; $7904 execution token
        db      $4E                                                             ; $7906 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $7907 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7909 execution token
        dw      XT_ARRAY                                                        ; $790B execution token
        dw      $7672                                                           ; $790D inline word
        dw      XT_at                                                           ; $790F execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7911 execution token
        dw      $2083                                                           ; $7913 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7915 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7917 execution token
        dw      $2083                                                           ; $7919 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $791B execution token
        dw      XT_GET_CURRENT_TASK                                             ; $791D execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_2                                   ; $791F execution token
        dw      XT_LITbyte                                                      ; $7921 execution token
        db      $07                                                             ; $7923 inline byte
        dw      XT_plus                                                         ; $7924 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $7926 execution token
        dw      XT_LIT                                                          ; $7928 execution token
        dw      $482E                                                           ; $792A inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $792C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $792E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7930 execution token
        dw      XT_RETURN                                                       ; $7932 execution token

JUGGLER_MEMORY_ACTIONS:
        db      $04                                                             ; $7934 action count
        dw      JUGGLER_MEMORY_SETUP                                            ; $7935 setup
        dw      JUGGLER_MEMORY_CORRECT                                          ; $7937 correct
        dw      JUGGLER_MEMORY_WRONG_1                                          ; $7939 wrong 1
        dw      JUGGLER_MEMORY_WRONG_2                                          ; $793B wrong 2

; Rooted by tier slot 1.
QUESTION_INITIALIZER_793D:
        rst     $08                                                          ; $793D
        dw      XT_LITbyte                                                      ; $793E
        db      $03                                                              ; $7940
        dw      XT_RANDOM_BELOW                                                 ; $7941
        dw      XT_LITbyte                                                      ; $7943
        db      $04                                                              ; $7945
        dw      XT_plus                                                         ; $7946
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7948
        dw      XT_LIT                                                          ; $794A
        dw      PPQ3_JUGGLER_MEMORY_ACTION_LIST                                 ; $794C
        dw      XT_RETURN                                                       ; $794E

; Rooted by tier slot 3.
QUESTION_INITIALIZER_7950:
        rst     $08                                                          ; $7950
        dw      XT_LITbyte                                                      ; $7951
        db      $04                                                              ; $7953
        dw      XT_RANDOM_BELOW                                                 ; $7954
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7956
        dw      XT_LIT                                                          ; $7958
        dw      PPQ3_JUGGLER_MEMORY_ACTION_LIST                                 ; $795A
        dw      XT_RETURN                                                       ; $795C

; Rooted by tier slot 5.
QUESTION_INITIALIZER_795E:
        rst     $08                                                          ; $795E
        dw      XT_LITbyte                                                      ; $795F
        db      $04                                                              ; $7961
        dw      XT_RANDOM_BELOW                                                 ; $7962
        dw      XT_LITbyte                                                      ; $7964
        db      $0C                                                              ; $7966
        dw      XT_plus                                                         ; $7967
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7969
        dw      XT_LIT                                                          ; $796B
        dw      PPQ3_JUGGLER_MEMORY_ACTION_LIST                                 ; $796D
        dw      XT_RETURN                                                       ; $796F

; Rooted by tier slot 7.
QUESTION_INITIALIZER_7971:
        rst     $08                                                          ; $7971
        dw      XT_LITbyte                                                      ; $7972
        db      $05                                                              ; $7974
        dw      XT_RANDOM_BELOW                                                 ; $7975
        dw      XT_LITbyte                                                      ; $7977
        db      $07                                                              ; $7979
        dw      XT_plus                                                         ; $797A
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $797C
        dw      XT_LIT                                                          ; $797E
        dw      PPQ3_JUGGLER_MEMORY_ACTION_LIST                                 ; $7980
        dw      XT_RETURN                                                       ; $7982

; Root tier slot 0.
QUESTION_BUCKET_7984:
        db      $01                  ; $7984 initializer count
        dw      QUESTION_INITIALIZER_51EB ; $7985 entry 0

; Root tier slot 1.
QUESTION_BUCKET_7987:
        db      $02                  ; $7987 initializer count
        dw      QUESTION_INITIALIZER_793D ; $7988 entry 0
        dw      QUESTION_INITIALIZER_672D ; $798A entry 1

; Root tier slot 2.
QUESTION_BUCKET_798C:
        db      $02                  ; $798C initializer count
        dw      QUESTION_INITIALIZER_5D63 ; $798D entry 0
        dw      QUESTION_INITIALIZER_6720 ; $798F entry 1

; Root tier slot 3.
QUESTION_BUCKET_7991:
        db      $01                  ; $7991 initializer count
        dw      QUESTION_INITIALIZER_7950 ; $7992 entry 0

; Root tier slot 4.
QUESTION_BUCKET_7994:
        db      $02                  ; $7994 initializer count
        dw      QUESTION_INITIALIZER_51EB ; $7995 entry 0
        dw      QUESTION_INITIALIZER_672D ; $7997 entry 1

; Root tier slot 5.
QUESTION_BUCKET_7999:
        db      $01                  ; $7999 initializer count
        dw      QUESTION_INITIALIZER_795E ; $799A entry 0

; Root tier slot 6.
QUESTION_BUCKET_799C:
        db      $01                  ; $799C initializer count
        dw      QUESTION_INITIALIZER_5D63 ; $799D entry 0

; Root tier slot 7.
QUESTION_BUCKET_799F:
        db      $01                  ; $799F initializer count
        dw      QUESTION_INITIALIZER_7971 ; $79A0 entry 0

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_BUCKET_7984 ; $79A2 tier 0
        dw      QUESTION_BUCKET_7987 ; $79A4 tier 1
        dw      QUESTION_BUCKET_798C ; $79A6 tier 2
        dw      QUESTION_BUCKET_7991 ; $79A8 tier 3
        dw      QUESTION_BUCKET_7994 ; $79AA tier 4
        dw      QUESTION_BUCKET_7999 ; $79AC tier 5
        dw      QUESTION_BUCKET_799C ; $79AE tier 6
        dw      QUESTION_BUCKET_799F ; $79B0 tier 7
        db      $F2,$2C,$02,$23,$F7,$15,$F3,$1D,$56,$79,$09,$01,$B2,$6C,$F2,$2C ; $79B2
        db      $91,$73,$12,$01,$32,$DF,$1B,$2C,$1A,$F3,$1D,$C2,$1E,$37,$23,$12 ; $79C2
        db      $01,$14,$DF,$1B,$2C,$1A,$50,$8C,$FD,$00,$CF,$99,$15,$12,$8C,$F7 ; $79D2
        db      $15,$09,$01,$D6,$FF,$12,$01,$09,$61,$8C,$F7,$2C,$25,$01,$23,$78 ; $79E2
        db      $4C,$01,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$56,$79,$09,$01,$B2,$6C ; $79F2
        db      $F2,$2C,$91,$73,$12,$01,$32,$DF,$1B,$2C,$1A,$F3,$1D,$C2,$1E,$37 ; $7A02
        db      $23,$12,$01,$14,$DF,$1B,$2C,$1A,$50,$8C,$FD,$00,$04,$F2,$78,$64 ; $7A12
        db      $79,$9A,$79,$DC,$79,$CF,$12,$01,$08,$32,$1B,$09,$01,$E9,$F6,$32 ; $7A22
        db      $05,$09,$01,$1E,$7A,$FD,$00,$CF,$12,$01,$08,$32,$1B,$12,$01,$08 ; $7A32
        db      $5A,$01,$09,$01,$E9,$F6,$32,$05,$09,$01,$1E,$7A,$FD,$00,$CF,$12 ; $7A42
        db      $01,$08,$32,$1B,$12,$01,$10,$5A,$01,$09,$01,$E9,$F6,$32,$05,$09 ; $7A52
        db      $01,$1E,$7A,$FD,$00,$CF,$12,$01,$08,$32,$1B,$12,$01,$18,$5A,$01 ; $7A62
        db      $09,$01,$E9,$F6,$32,$05,$09,$01,$1E,$7A,$FD,$00,$00,$00,$90,$2D ; $7A72
        db      $00,$14,$00,$00,$02,$00,$00,$80,$9C,$FF,$00,$00,$18,$FC,$00,$00 ; $7A82
        db      $00,$00,$40,$00,$00,$DB,$FF,$00,$00,$18,$FC,$00,$00,$00,$90,$5F ; $7A92
        db      $00,$EE,$FF,$00,$01,$00,$00,$80,$6A,$FF,$00,$00,$18,$FC,$00,$00 ; $7AA2
        db      $00,$00,$00,$90,$2D,$00,$CC,$FF,$00,$02,$00,$00,$80,$9C,$FF,$00 ; $7AB2
        db      $00,$18,$FC,$00,$00,$00,$00,$C0,$00,$00,$23,$00,$E8,$03,$00,$00 ; $7AC2
        db      $00,$00,$00,$90,$D3,$FF,$EC,$FF,$40,$03,$00,$00,$00,$00,$00,$AE ; $7AD2
        db      $FF,$00,$00,$18,$FC,$00,$00,$00,$00,$00,$12,$00,$00,$00,$E8,$03 ; $7AE2
        db      $00,$00,$00,$00,$00,$EF,$FF,$00,$00,$18,$FC,$00,$7E,$7A,$9E,$7A ; $7AF2
        db      $B3,$7A,$1B,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20 ; $7B02
        db      $6D,$69,$72,$72,$6F,$72,$20,$69,$6D,$61,$67,$65,$20,$3F,$18,$77 ; $7B12
        db      $68,$69,$63,$68,$20,$74,$77,$6F,$20,$61,$72,$65,$20,$74,$68,$65 ; $7B22
        db      $20,$73,$61,$6D,$65,$20,$3F,$0A,$02,$02,$00,$06,$09,$0D,$08,$05 ; $7B32
        db      $02,$00,$81,$03,$B2,$6C,$03,$C0,$67,$00,$45,$7B,$0C,$00,$89,$00 ; $7B42
        db      $0A,$71,$69,$00,$0A,$C0,$67,$00,$0A,$01,$6B,$00,$0A,$B2,$6C,$00 ; $7B52
        db      $0A,$71,$69,$00,$0A,$C0,$67,$00,$0A,$01,$6B,$00,$0A,$B2,$6C,$00 ; $7B62
        db      $0A,$01,$6B,$00,$0A,$6E,$6E,$00,$0A,$B2,$6C,$40,$0A,$6E,$6E,$00 ; $7B72
        db      $00,$51,$7B,$04,$7B,$20,$7B,$04,$7B,$20,$7B,$00,$40,$40,$00,$CF ; $7B82
        db      $99,$15,$09,$01,$7E,$FF,$12,$01,$16,$F7,$2C,$25,$01,$85,$7B,$4C ; $7B92
        db      $01,$09,$01,$FE,$7A,$09,$01,$39,$7B,$37,$8C,$F7,$2C,$1A,$01,$8D ; $7BA2
        db      $7B,$53,$01,$03,$1F,$09,$01,$97,$FF,$09,$01,$EE,$FF,$54,$1D,$09 ; $7BB2
        db      $01,$B2,$6C,$F2,$2C,$F6,$1E,$02,$23,$F7,$15,$50,$8C,$FD,$00,$CF ; $7BC2
        db      $99,$15,$4F,$8B,$12,$01,$28,$09,$01,$F6,$FF,$61,$8C,$F7,$2C,$12 ; $7BD2
        db      $01,$02,$08,$02,$EA,$03,$EC,$7B,$CF,$1E,$09,$01,$B2,$6C,$F2,$2C ; $7BE2
        db      $02,$23,$F7,$15,$F3,$1D,$09,$01,$42,$7B,$B4,$1C,$37,$23,$D3,$74 ; $7BF2
        db      $E7,$15,$34,$1E,$F6,$1E,$E0,$1D,$09,$01,$4E,$7B,$B4,$1C,$09,$01 ; $7C02
        db      $73,$00,$DF,$1B,$E9,$19,$50,$8C,$FD,$00,$CF,$99,$15,$7B,$8B,$12 ; $7C12
        db      $01,$28,$09,$01,$F6,$FF,$61,$8C,$F7,$2C,$30,$01,$1C,$02,$EA,$03 ; $7C22
        db      $36,$7C,$CF,$1E,$09,$01,$B2,$6C,$F2,$2C,$02,$23,$F7,$15,$F3,$1D ; $7C32
        db      $37,$23,$5F,$74,$CF,$1E,$34,$1E,$12,$01,$1E,$DF,$1B,$2C,$1A,$09 ; $7C42
        db      $01,$D3,$7A,$D4,$24,$E9,$1E,$34,$1E,$37,$23,$50,$8C,$FD,$00,$CF ; $7C52
        db      $99,$15,$12,$8C,$12,$01,$28,$09,$01,$F6,$FF,$61,$8C,$F7,$2C,$30 ; $7C62
        db      $01,$1C,$02,$EA,$03,$7B,$7C,$CF,$1E,$09,$01,$2A,$70,$F2,$2C,$02 ; $7C72
        db      $23,$F7,$15,$F3,$1D,$37,$23,$5F,$74,$CF,$1E,$34,$1E,$12,$01,$1E ; $7C82
        db      $DF,$1B,$2C,$1A,$09,$01,$D3,$7A,$D4,$24,$E9,$1E,$34,$1E,$37,$23 ; $7C92
        db      $50,$8C,$FD,$00,$04,$91,$7B,$D1,$7B,$1C,$7C,$61,$7C,$CF,$12,$01 ; $7CA2
        db      $04,$32,$1B,$09,$01,$E9,$F6,$32,$05,$09,$01,$A6,$7C,$FD,$00,$03 ; $7CB2
        db      $3A,$5C,$AE,$67,$7E,$58,$03,$4E,$5C,$90,$58,$AF,$7C,$02,$67,$5C ; $7CC2
        db      $27,$7A,$04,$B2,$5C,$AE,$67,$A7,$58,$39,$7A,$02,$80,$5C,$AF,$7C ; $7CD2
        db      $03,$99,$5C,$BE,$58,$50,$7A,$03,$B2,$5C,$AF,$7C,$67,$7A,$03,$B2 ; $7CE2
        db      $5C,$BE,$58,$67,$7A,$C1,$7C,$C8,$7C,$CF,$7C,$D4,$7C,$DD,$7C,$E2 ; $7CF2
        db      $7C,$E9,$7C,$F0,$7C,$06,$A4,$79,$04,$6F,$7B,$00,$07,$7D,$0F,$07 ; $7D02
        db      $00,$08,$08,$08,$00,$00,$00,$1A,$77,$68,$69,$63,$68,$20,$69,$73 ; $7D12
        db      $20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69,$6D,$61,$67 ; $7D22
        db      $65,$3F,$15,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20 ; $7D32
        db      $73,$61,$6D,$65,$20,$61,$73,$3F,$19,$7D,$34,$7D,$19,$7D,$34,$7D ; $7D42
        db      $00,$40,$40,$00,$CF,$99,$15,$09,$01,$B0,$FF,$12,$01,$17,$F7,$2C ; $7D52
        db      $25,$01,$4A,$7D,$4C,$01,$09,$01,$FE,$7C,$09,$01,$10,$7D,$17,$8C ; $7D62
        db      $F7,$2C,$1A,$01,$52,$7D,$53,$01,$03,$1F,$A8,$1E,$12,$01,$5C,$09 ; $7D72
        db      $01,$F3,$FF,$54,$1D,$09,$01,$04,$7D,$B4,$1C,$12,$01,$02,$2F,$1F ; $7D82
        db      $12,$01,$28,$DF,$1B,$E9,$19,$02,$23,$F7,$15,$30,$8C,$FD,$00,$CF ; $7D92
        db      $99,$15,$2F,$8B,$09,$01,$C9,$FF,$12,$01,$05,$41,$8C,$F7,$2C,$12 ; $7DA2
        db      $01,$02,$08,$02,$EA,$03,$BC,$7D,$CF,$1E,$09,$01,$A4,$79,$F2,$2C ; $7DB2
        db      $02,$23,$F7,$15,$F3,$1D,$37,$23,$E0,$1D,$12,$01,$14,$DF,$1B,$2C ; $7DC2
        db      $1A,$09,$01,$04,$7D,$B4,$1C,$12,$01,$28,$DF,$1B,$E9,$19,$12,$01 ; $7DD2
        db      $0F,$DF,$1B,$2C,$1A,$30,$8C,$FD,$00,$CF,$99,$15,$5B,$8B,$09,$01 ; $7DE2
        db      $C9,$FF,$12,$01,$05,$41,$8C,$F7,$2C,$30,$01,$1C,$02,$EA,$03,$09 ; $7DF2
        db      $7E,$E9,$1E,$E2,$03,$0B,$7E,$C2,$1E,$09,$01,$A4,$79,$F2,$2C,$02 ; $7E02
        db      $23,$F7,$15,$F3,$1D,$12,$01,$3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E ; $7E12
        db      $30,$8C,$FD,$00,$CF,$99,$15,$F2,$8B,$09,$01,$C9,$FF,$12,$01,$05 ; $7E22
        db      $41,$8C,$F7,$2C,$12,$01,$02,$08,$02,$EA,$03,$45,$7E,$E9,$1E,$E2 ; $7E32
        db      $03,$47,$7E,$C2,$1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15,$F3 ; $7E42
        db      $1D,$12,$01,$3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E,$12,$01,$0F,$DF ; $7E52
        db      $1B,$2C,$1A,$30,$8C,$FD,$00,$04,$56,$7D,$A1,$7D,$EB,$7D,$26,$7E ; $7E62
        db      $CF,$12,$01,$04,$32,$1B,$0B,$8B,$09,$01,$69,$7E,$FD,$00,$02,$9E ; $7E72
        db      $6E,$72,$7E,$02,$B7,$6E,$9D,$79,$03,$D5,$6E,$6A,$54,$72,$7E,$03 ; $7E82
        db      $F3,$6E,$7C,$54,$29,$68,$03,$11,$6F,$93,$54,$9D,$79,$02,$2F,$6F ; $7E92
        db      $29,$68,$02,$4D,$6F,$29,$68,$02,$6B,$6F,$29,$68,$FF,$FF,$FF,$FF ; $7EA2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EB2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F02
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F12
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F22
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F32
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F42
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F52
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F62
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F72
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F82
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F92
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF         ; $7FF2
