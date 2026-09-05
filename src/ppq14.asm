; Professor Pac-Man question ROM PPQ14
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ14_VISUAL_PROGRESSION_ACTIONS             equ     $5505
PPQ14_VISUAL_ANALOGY_ACTIONS                 equ     $5751
PPQ14_DOG_MIRROR_MATCH_ACTIONS               equ     $6373
PPQ14_DEER_MIRROR_MATCH_ACTIONS              equ     $71C5


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
        db      $DE,$01,$EA,$03,$E8,$40,$12,$01,$16,$DF,$1B,$2C,$1A,$02,$23,$54 ; $4122
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
        db      $01,$0C,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$09,$48,$80 ; $4822
        db      $40,$60,$40,$FF,$80,$28,$30,$28,$30,$28,$30,$28,$30,$28,$30,$28 ; $4832
        db      $30,$28,$30,$28,$30                                             ; $4842 preserved bytes

VISUAL_PROGRESSION_CORRECT_LOOP_1:
        rst     $08                                                             ; $4847 colon entry
        dw      XT_1                                                            ; $4848 execution token
        dw      XT_LIT                                                          ; $484A execution token
        dw      $FD6D                                                           ; $484C inline word
        dw      $2BEF                                                           ; $484E execution token
        dw      XT_LIT                                                          ; $4850 execution token
        dw      $F2FD                                                           ; $4852 inline word
        dw      XT_BZERO                                                        ; $4854 execution token
        dw      XT_LITbyte                                                      ; $4856 execution token
        db      $06                                                             ; $4858 inline byte
        dw      XT_LITbyte                                                      ; $4859 execution token
        db      $46                                                             ; $485B inline byte
        dw      $2B2E                                                           ; $485C execution token
        dw      XT_LITbyte                                                      ; $485E execution token
        db      $30                                                             ; $4860 inline byte
        dw      $2AF2                                                           ; $4861 execution token
        dw      XT_LIT                                                          ; $4863 execution token
        dw      QUESTION_BANK_BASE                                              ; $4865 inline word
        dw      XT_LIT                                                          ; $4867 execution token
        dw      QUESTION_BANK_BASE                                              ; $4869 inline word
        dw      XT_LIT                                                          ; $486B execution token
        dw      QUESTION_BANK_BASE                                              ; $486D inline word
        dw      $2B71                                                           ; $486F execution token
VISUAL_PROGRESSION_CORRECT_LOOP_1_R:
        dw      XT_LITbyte                                                      ; $4871 execution token
        db      $06                                                             ; $4873 inline byte
        dw      XT_LITbyte                                                      ; $4874 execution token
        db      $46                                                             ; $4876 inline byte
        dw      $2B2E                                                           ; $4877 execution token
        dw      XT_LIT                                                          ; $4879 execution token
        dw      $F2FD                                                           ; $487B inline word
        dw      XT_Bat                                                          ; $487D execution token
        dw      XT_BARRAY                                                       ; $487F execution token
        dw      $4831                                                           ; $4881 inline word
        dw      XT_Bat                                                          ; $4883 execution token
        dw      XT_LIT                                                          ; $4885 execution token
        dw      $F2FD                                                           ; $4887 inline word
        dw      XT_Bat                                                          ; $4889 execution token
        dw      XT_BARRAY                                                       ; $488B execution token
        dw      $4833                                                           ; $488D inline word
        dw      XT_Bat                                                          ; $488F execution token
        dw      XT_LIT                                                          ; $4891 execution token
        dw      $F2FD                                                           ; $4893 inline word
        dw      XT_Bat                                                          ; $4895 execution token
        dw      XT_BARRAY                                                       ; $4897 execution token
        dw      $4835                                                           ; $4899 inline word
        dw      XT_Bat                                                          ; $489B execution token
        dw      $2B71                                                           ; $489D execution token
        dw      XT_1                                                            ; $489F execution token
        dw      XT_LITbyte                                                      ; $48A1 execution token
        db      $02                                                             ; $48A3 inline byte
        dw      XT_LITbyte                                                      ; $48A4 execution token
        db      $03                                                             ; $48A6 inline byte
        dw      XT_LIT                                                          ; $48A7 execution token
        dw      $FFFD                                                           ; $48A9 inline word
        dw      XT_0                                                            ; $48AB execution token
        dw      XT_LITbyte                                                      ; $48AD execution token
        db      $0F                                                             ; $48AF inline byte
        dw      XT_LIT                                                          ; $48B0 execution token
        dw      $FFF2                                                           ; $48B2 inline word
        dw      $2BBB                                                           ; $48B4 execution token
        dw      XT_LITbyte                                                      ; $48B6 execution token
        db      $0A                                                             ; $48B8 inline byte
        dw      $2BA8                                                           ; $48B9 execution token
        dw      XT_LIT                                                          ; $48BB execution token
        dw      $F2FD                                                           ; $48BD inline word
        dw      XT_DUP                                                          ; $48BF execution token
        dw      XT_1plusBbang                                                   ; $48C1 execution token
        dw      XT_Bat                                                          ; $48C3 execution token
        dw      XT_1                                                            ; $48C5 execution token
        dw      XT_gt                                                           ; $48C7 execution token
        dw      XT_0BRANCH                                                      ; $48C9 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1_R                             ; $48CB branch target
        dw      XT_LIT                                                          ; $48CD execution token
        dw      $F2FD                                                           ; $48CF inline word
        dw      XT_BZERO                                                        ; $48D1 execution token
        dw      XT_LIT                                                          ; $48D3 execution token
        dw      $F2FC                                                           ; $48D5 inline word
        dw      XT_Bat                                                          ; $48D7 execution token
        dw      XT_BARRAY                                                       ; $48D9 execution token
        dw      $4837                                                           ; $48DB inline word
        dw      XT_Bat                                                          ; $48DD execution token
        dw      $2AF2                                                           ; $48DF execution token
        dw      XT_LIT                                                          ; $48E1 execution token
        dw      $F2FC                                                           ; $48E3 inline word
        dw      XT_DUP                                                          ; $48E5 execution token
        dw      XT_1plusBbang                                                   ; $48E7 execution token
        dw      XT_Bat                                                          ; $48E9 execution token
        dw      XT_LITbyte                                                      ; $48EB execution token
        db      $07                                                             ; $48ED inline byte
        dw      XT_gt                                                           ; $48EE execution token
        dw      XT_0BRANCH                                                      ; $48F0 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1_R                             ; $48F2 branch target
        dw      XT_LIT                                                          ; $48F4 execution token
        dw      $F2FC                                                           ; $48F6 inline word
        dw      XT_BZERO                                                        ; $48F8 execution token
        dw      $2B8C                                                           ; $48FA execution token
        dw      XT_RETURN                                                       ; $48FC execution token

VISUAL_PROGRESSION_CORRECT_LOOP_2:
        rst     $08                                                             ; $48FE colon entry
        dw      XT_1                                                            ; $48FF execution token
        dw      XT_LIT                                                          ; $4901 execution token
        dw      $FD3D                                                           ; $4903 inline word
        dw      $2BEF                                                           ; $4905 execution token
        dw      XT_LIT                                                          ; $4907 execution token
        dw      $F2FB                                                           ; $4909 inline word
        dw      XT_BZERO                                                        ; $490B execution token
        dw      XT_LITbyte                                                      ; $490D execution token
        db      $06                                                             ; $490F inline byte
        dw      XT_LITbyte                                                      ; $4910 execution token
        db      $46                                                             ; $4912 inline byte
        dw      $2B2E                                                           ; $4913 execution token
        dw      XT_LITbyte                                                      ; $4915 execution token
        db      $30                                                             ; $4917 inline byte
        dw      $2AF2                                                           ; $4918 execution token
        dw      XT_LIT                                                          ; $491A execution token
        dw      QUESTION_BANK_BASE                                              ; $491C inline word
        dw      XT_LIT                                                          ; $491E execution token
        dw      QUESTION_BANK_BASE                                              ; $4920 inline word
        dw      XT_LIT                                                          ; $4922 execution token
        dw      QUESTION_BANK_BASE                                              ; $4924 inline word
        dw      $2B71                                                           ; $4926 execution token
VISUAL_PROGRESSION_CORRECT_LOOP_2_R:
        dw      XT_LITbyte                                                      ; $4928 execution token
        db      $06                                                             ; $492A inline byte
        dw      XT_LITbyte                                                      ; $492B execution token
        db      $46                                                             ; $492D inline byte
        dw      $2B2E                                                           ; $492E execution token
        dw      XT_LIT                                                          ; $4930 execution token
        dw      $F2FB                                                           ; $4932 inline word
        dw      XT_Bat                                                          ; $4934 execution token
        dw      XT_BARRAY                                                       ; $4936 execution token
        dw      $4831                                                           ; $4938 inline word
        dw      XT_Bat                                                          ; $493A execution token
        dw      XT_LIT                                                          ; $493C execution token
        dw      $F2FB                                                           ; $493E inline word
        dw      XT_Bat                                                          ; $4940 execution token
        dw      XT_BARRAY                                                       ; $4942 execution token
        dw      $4833                                                           ; $4944 inline word
        dw      XT_Bat                                                          ; $4946 execution token
        dw      XT_LIT                                                          ; $4948 execution token
        dw      $F2FB                                                           ; $494A inline word
        dw      XT_Bat                                                          ; $494C execution token
        dw      XT_BARRAY                                                       ; $494E execution token
        dw      $4835                                                           ; $4950 inline word
        dw      XT_Bat                                                          ; $4952 execution token
        dw      $2B71                                                           ; $4954 execution token
        dw      XT_1                                                            ; $4956 execution token
        dw      XT_LITbyte                                                      ; $4958 execution token
        db      $02                                                             ; $495A inline byte
        dw      XT_LITbyte                                                      ; $495B execution token
        db      $03                                                             ; $495D inline byte
        dw      XT_LIT                                                          ; $495E execution token
        dw      $FFFD                                                           ; $4960 inline word
        dw      XT_0                                                            ; $4962 execution token
        dw      XT_LITbyte                                                      ; $4964 execution token
        db      $0F                                                             ; $4966 inline byte
        dw      XT_LIT                                                          ; $4967 execution token
        dw      $FFF2                                                           ; $4969 inline word
        dw      $2BBB                                                           ; $496B execution token
        dw      XT_LITbyte                                                      ; $496D execution token
        db      $0A                                                             ; $496F inline byte
        dw      $2BA8                                                           ; $4970 execution token
        dw      XT_LIT                                                          ; $4972 execution token
        dw      $F2FB                                                           ; $4974 inline word
        dw      XT_DUP                                                          ; $4976 execution token
        dw      XT_1plusBbang                                                   ; $4978 execution token
        dw      XT_Bat                                                          ; $497A execution token
        dw      XT_1                                                            ; $497C execution token
        dw      XT_gt                                                           ; $497E execution token
        dw      XT_0BRANCH                                                      ; $4980 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2_R                             ; $4982 branch target
        dw      XT_LIT                                                          ; $4984 execution token
        dw      $F2FB                                                           ; $4986 inline word
        dw      XT_BZERO                                                        ; $4988 execution token
        dw      XT_LIT                                                          ; $498A execution token
        dw      $F2FA                                                           ; $498C inline word
        dw      XT_Bat                                                          ; $498E execution token
        dw      XT_BARRAY                                                       ; $4990 execution token
        dw      $4837                                                           ; $4992 inline word
        dw      XT_Bat                                                          ; $4994 execution token
        dw      $2AF2                                                           ; $4996 execution token
        dw      XT_LIT                                                          ; $4998 execution token
        dw      $F2FA                                                           ; $499A inline word
        dw      XT_DUP                                                          ; $499C execution token
        dw      XT_1plusBbang                                                   ; $499E execution token
        dw      XT_Bat                                                          ; $49A0 execution token
        dw      XT_LITbyte                                                      ; $49A2 execution token
        db      $07                                                             ; $49A4 inline byte
        dw      XT_gt                                                           ; $49A5 execution token
        dw      XT_0BRANCH                                                      ; $49A7 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2_R                             ; $49A9 branch target
        dw      XT_LIT                                                          ; $49AB execution token
        dw      $F2FA                                                           ; $49AD inline word
        dw      XT_BZERO                                                        ; $49AF execution token
        dw      $2B8C                                                           ; $49B1 execution token
        dw      XT_RETURN                                                       ; $49B3 execution token

VISUAL_PROGRESSION_CORRECT_THREAD:
        rst     $08                                                             ; $49B5 colon entry
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_1                               ; $49B6 execution token
        dw      VISUAL_PROGRESSION_CORRECT_LOOP_2                               ; $49B8 execution token
        dw      XT_RETURN                                                       ; $49BA execution token

; -----------------------------------------------------------------------------
; VISUAL_PROGRESSION native 2-bpp image
; 9 bytes/row = 36 pixels, 35 rows; 315 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_PROGRESSION_IMG_01:
        db      $10,$12,$09,$23                                                 ; $49BC X reference, Y reference, source-byte width, height
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49C0 row 00: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49C9 row 01: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49D2 row 02: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49DB row 03: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49E4 row 04: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49ED row 05: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49F6 row 06: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $49FF row 07: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A08 row 08: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A11 row 09: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A1A row 10: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A23 row 11: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A2C row 12: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A35 row 13: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A3E row 14: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A47 row 15: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A50 row 16: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A59 row 17: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A62 row 18: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A6B row 19: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A74 row 20: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A7D row 21: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A86 row 22: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A8F row 23: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4A98 row 24: ..............333...................
        db      $00,$0A,$A0,$0F,$C0,$00,$00,$00,$00                             ; $4AA1 row 25: ......2222....333...................
        db      $00,$2A,$A8,$0F,$C0,$00,$00,$00,$00                             ; $4AAA row 26: .....222222...333...................
        db      $00,$2A,$A8,$0F,$C0,$00,$00,$00,$00                             ; $4AB3 row 27: .....222222...333...................
        db      $00,$2A,$A8,$0F,$C0,$00,$00,$00,$00                             ; $4ABC row 28: .....222222...333...................
        db      $00,$0A,$A0,$0F,$C0,$00,$00,$00,$00                             ; $4AC5 row 29: ......2222....333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4ACE row 30: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4AD7 row 31: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4AE0 row 32: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4AE9 row 33: ..............333...................
        db      $00,$00,$00,$0F,$C0,$00,$00,$00,$00                             ; $4AF2 row 34: ..............333...................
; -----------------------------------------------------------------------------
; VISUAL_PROGRESSION native 2-bpp image
; 9 bytes/row = 36 pixels, 35 rows; 315 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_PROGRESSION_IMG_02:
        db      $11,$11,$09,$23                                                 ; $4AFB X reference, Y reference, source-byte width, height
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4AFF row 00: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B08 row 01: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B11 row 02: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B1A row 03: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B23 row 04: ...........222..222..222............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B2C row 05: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B35 row 06: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B3E row 07: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B47 row 08: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B50 row 09: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B59 row 10: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B62 row 11: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B6B row 12: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4B74 row 13: ...........2....2....2..............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B7D row 14: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B86 row 15: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B8F row 16: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4B98 row 17: ...........222..222..222............
        db      $00,$00,$02,$A0,$A8,$2A,$00,$00,$00                             ; $4BA1 row 18: ...........222..222..222............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BAA row 19: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BB3 row 20: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BBC row 21: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BC5 row 22: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BCE row 23: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BD7 row 24: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BE0 row 25: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BE9 row 26: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BF2 row 27: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4BFB row 28: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C04 row 29: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C0D row 30: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C16 row 31: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C1F row 32: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C28 row 33: ...........2....2....2..............
        db      $00,$00,$02,$00,$80,$20,$00,$00,$00                             ; $4C31 row 34: ...........2....2....2..............
; -----------------------------------------------------------------------------
; VISUAL_ANALOGY native 2-bpp image
; 9 bytes/row = 36 pixels, 36 rows; 324 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_ANALOGY_IMG_01:
        db      $11,$11,$09,$24                                                 ; $4C3A X reference, Y reference, source-byte width, height
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55                             ; $4C3E row 00: 111111111111111111111111111111111111
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A1                             ; $4C47 row 01: 1222222222222222222222222222222222.1
        db      $68,$AA,$A2,$AA,$A2,$AA,$A2,$AA,$A9                             ; $4C50 row 02: 122.222222.2222222.2222222.222222221
        db      $62,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$21                             ; $4C59 row 03: 12.22222222222222222222222222222.2.1
        db      $6A,$AA,$AA,$AA,$8F,$FF,$FF,$FC,$A9                             ; $4C62 row 04: 12222222222222222.3333333333333.2221
        db      $6A,$AA,$AA,$AA,$2F,$FF,$FF,$F3,$A9                             ; $4C6B row 05: 1222222222222222.2333333333333.32221
        db      $6A,$AA,$AA,$A8,$AF,$F3,$FF,$CF,$A9                             ; $4C74 row 06: 122222222222222.223333.333333.332221
        db      $6A,$AA,$AA,$A2,$AF,$FF,$FF,$3F,$A9                             ; $4C7D row 07: 12222222222222.2223333333333.3332221
        db      $6A,$AA,$AA,$8A,$AF,$FF,$FC,$F3,$A9                             ; $4C86 row 08: 1222222222222.2222333333333.33.32221
        db      $6A,$AA,$AA,$2A,$2F,$FF,$F3,$FF,$A9                             ; $4C8F row 09: 122222222222.222.233333333.333332221
        db      $62,$AA,$A8,$AA,$AF,$FF,$CF,$FF,$A1                             ; $4C98 row 10: 12.22222222.2222223333333.33333322.1
        db      $6A,$AA,$22,$AA,$AF,$FF,$3F,$FF,$A9                             ; $4CA1 row 11: 12222222.2.2222222333333.33333332221
        db      $6A,$AA,$8A,$AA,$AF,$FC,$FF,$FF,$A9                             ; $4CAA row 12: 122222222.2222222233333.333333332221
        db      $6A,$AA,$2A,$AA,$AF,$F3,$FF,$FF,$A9                             ; $4CB3 row 13: 12222222.2222222223333.3333333332221
        db      $6A,$A8,$AA,$AA,$AF,$CF,$FF,$FF,$A9                             ; $4CBC row 14: 1222222.2222222222333.33333333332221
        db      $6A,$A2,$AA,$AA,$AF,$3F,$FF,$FF,$A9                             ; $4CC5 row 15: 122222.2222222222233.333333333332221
        db      $6A,$8A,$AA,$A2,$AC,$FF,$FC,$FF,$A9                             ; $4CCE row 16: 12222.22222222.2223.3333333.33332221
        db      $6A,$2A,$AA,$AA,$A3,$FF,$FF,$FF,$A9                             ; $4CD7 row 17: 1222.2222222222222.33333333333332221
        db      $62,$FF,$FF,$FF,$CA,$AA,$AA,$A8,$A1                             ; $4CE0 row 18: 12.23333333333333.2222222222222.22.1
        db      $6A,$FF,$FF,$FF,$3A,$AA,$AA,$A2,$A9                             ; $4CE9 row 19: 1222333333333333.3222222222222.22221
        db      $6A,$FF,$FF,$CC,$FA,$AA,$2A,$8A,$A9                             ; $4CF2 row 20: 1222333333333.3.33222222.2222.222221
        db      $6A,$FF,$FF,$F3,$FA,$AA,$AA,$2A,$A9                             ; $4CFB row 21: 12223333333333.3332222222222.2222221
        db      $6A,$FF,$F3,$CF,$FA,$AA,$A8,$AA,$A9                             ; $4D04 row 22: 1222333333.33.3333222222222.22222221
        db      $6A,$F3,$FF,$3F,$FA,$AA,$A2,$AA,$A9                             ; $4D0D row 23: 122233.33333.3333322222222.222222221
        db      $6A,$FF,$FC,$FF,$FA,$A2,$8A,$AA,$A9                             ; $4D16 row 24: 12223333333.3333332222.22.2222222221
        db      $6A,$FF,$F3,$FF,$FA,$AA,$2A,$A2,$A9                             ; $4D1F row 25: 1222333333.3333333222222.22222.22221
        db      $62,$FF,$CF,$FF,$3A,$A8,$AA,$AA,$A1                             ; $4D28 row 26: 12.233333.333333.322222.2222222222.1
        db      $6A,$FF,$3F,$FF,$FA,$A2,$AA,$AA,$A9                             ; $4D31 row 27: 12223333.3333333332222.2222222222221
        db      $6A,$FC,$FF,$FF,$FA,$8A,$AA,$AA,$A9                             ; $4D3A row 28: 1222333.3333333333222.22222222222221
        db      $6A,$F3,$FF,$FF,$FA,$2A,$AA,$AA,$A9                             ; $4D43 row 29: 122233.3333333333322.222222222222221
        db      $6A,$CF,$CF,$FF,$F8,$A8,$AA,$AA,$A9                             ; $4D4C row 30: 12223.333.333333332.222.222222222221
        db      $6A,$3F,$FF,$FF,$F2,$AA,$AA,$AA,$A9                             ; $4D55 row 31: 1222.3333333333333.22222222222222221
        db      $68,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A9                             ; $4D5E row 32: 122.22222222222222222222222222222221
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A1                             ; $4D67 row 33: 1222222222222222222222222222222222.1
        db      $48,$AA,$A2,$AA,$A2,$AA,$A2,$AA,$89                             ; $4D70 row 34: 1.2.222222.2222222.2222222.222222.21
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55                             ; $4D79 row 35: 111111111111111111111111111111111111
; -----------------------------------------------------------------------------
; VISUAL_ANALOGY native 2-bpp image
; 9 bytes/row = 36 pixels, 36 rows; 324 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_ANALOGY_IMG_02:
        db      $11,$11,$09,$24                                                 ; $4D82 X reference, Y reference, source-byte width, height
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55                             ; $4D86 row 00: 111111111111111111111111111111111111
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A1                             ; $4D8F row 01: 1222222222222222222222222222222222.1
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A9                             ; $4D98 row 02: 122222222222222222222222222222222221
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$29                             ; $4DA1 row 03: 12222222222222222222222222222222.221
        db      $6A,$AA,$AA,$AA,$8F,$FF,$FF,$FC,$A9                             ; $4DAA row 04: 12222222222222222.3333333333333.2221
        db      $6A,$AA,$AA,$AA,$2F,$FF,$FF,$F3,$A9                             ; $4DB3 row 05: 1222222222222222.2333333333333.32221
        db      $6A,$AA,$AA,$A8,$AF,$FF,$FF,$CF,$A9                             ; $4DBC row 06: 122222222222222.2233333333333.332221
        db      $6A,$AA,$AA,$A2,$AF,$FF,$FF,$3F,$A9                             ; $4DC5 row 07: 12222222222222.2223333333333.3332221
        db      $6A,$AA,$AA,$8A,$AF,$FF,$FC,$FF,$A9                             ; $4DCE row 08: 1222222222222.2222333333333.33332221
        db      $6A,$AA,$AA,$2A,$AF,$FF,$F3,$FF,$A9                             ; $4DD7 row 09: 122222222222.2222233333333.333332221
        db      $6A,$AA,$A8,$AA,$AF,$FF,$CF,$FF,$A9                             ; $4DE0 row 10: 12222222222.2222223333333.3333332221
        db      $6A,$AA,$A2,$AA,$AF,$FF,$3F,$FF,$A9                             ; $4DE9 row 11: 1222222222.2222222333333.33333332221
        db      $6A,$AA,$8A,$AA,$AF,$FC,$FF,$FF,$A9                             ; $4DF2 row 12: 122222222.2222222233333.333333332221
        db      $6A,$AA,$2A,$AA,$AF,$F3,$FF,$FF,$A9                             ; $4DFB row 13: 12222222.2222222223333.3333333332221
        db      $6A,$A8,$AA,$AA,$AF,$CF,$FF,$FF,$A9                             ; $4E04 row 14: 1222222.2222222222333.33333333332221
        db      $6A,$A2,$AA,$AA,$AF,$3F,$FF,$FF,$A9                             ; $4E0D row 15: 122222.2222222222233.333333333332221
        db      $6A,$8A,$AA,$AA,$AC,$FF,$FF,$FF,$A9                             ; $4E16 row 16: 12222.2222222222223.3333333333332221
        db      $6A,$2A,$AA,$AA,$A3,$FF,$FF,$FF,$A9                             ; $4E1F row 17: 1222.2222222222222.33333333333332221
        db      $6A,$FF,$FF,$FF,$CA,$AA,$AA,$A8,$A9                             ; $4E28 row 18: 12223333333333333.2222222222222.2221
        db      $6A,$FF,$FF,$FF,$3A,$AA,$AA,$A2,$A9                             ; $4E31 row 19: 1222333333333333.3222222222222.22221
        db      $6A,$FF,$FF,$FC,$FA,$AA,$AA,$8A,$A9                             ; $4E3A row 20: 122233333333333.3322222222222.222221
        db      $6A,$FF,$FF,$F3,$FA,$AA,$AA,$2A,$A9                             ; $4E43 row 21: 12223333333333.3332222222222.2222221
        db      $6A,$FF,$FF,$CF,$FA,$AA,$A8,$AA,$A9                             ; $4E4C row 22: 1222333333333.3333222222222.22222221
        db      $6A,$FF,$FF,$3F,$FA,$AA,$A2,$AA,$A9                             ; $4E55 row 23: 122233333333.3333322222222.222222221
        db      $6A,$FF,$FC,$FF,$FA,$AA,$8A,$AA,$A9                             ; $4E5E row 24: 12223333333.3333332222222.2222222221
        db      $6A,$FF,$F3,$FF,$FA,$AA,$2A,$AA,$A9                             ; $4E67 row 25: 1222333333.3333333222222.22222222221
        db      $6A,$FF,$CF,$FF,$FA,$A8,$AA,$AA,$A9                             ; $4E70 row 26: 122233333.3333333322222.222222222221
        db      $6A,$FF,$3F,$FF,$FA,$A2,$AA,$AA,$A9                             ; $4E79 row 27: 12223333.3333333332222.2222222222221
        db      $6A,$FC,$FF,$FF,$FA,$8A,$AA,$AA,$A9                             ; $4E82 row 28: 1222333.3333333333222.22222222222221
        db      $6A,$F3,$FF,$FF,$FA,$2A,$AA,$AA,$A9                             ; $4E8B row 29: 122233.3333333333322.222222222222221
        db      $6A,$CF,$FF,$FF,$F8,$AA,$AA,$AA,$A9                             ; $4E94 row 30: 12223.3333333333332.2222222222222221
        db      $6A,$3F,$FF,$FF,$F2,$AA,$AA,$AA,$A9                             ; $4E9D row 31: 1222.3333333333333.22222222222222221
        db      $68,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A9                             ; $4EA6 row 32: 122.22222222222222222222222222222221
        db      $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A9                             ; $4EAF row 33: 122222222222222222222222222222222221
        db      $4A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A9                             ; $4EB8 row 34: 1.2222222222222222222222222222222221
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55                             ; $4EC1 row 35: 111111111111111111111111111111111111
; -----------------------------------------------------------------------------
; VISUAL_ANALOGY native 2-bpp image
; 10 bytes/row = 40 pixels, 37 rows; 370 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_ANALOGY_IMG_03:
        db      $12,$12,$0A,$25                                                 ; $4ECA X reference, Y reference, source-byte width, height
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$40                         ; $4ECE row 00: 1111111111111111111111111111111111111...
        db      $77,$FF,$F7,$FF,$FF,$DF,$FF,$FF,$7F,$40                         ; $4ED8 row 01: 1313333333133333333331333333333313331...
        db      $50,$00,$00,$00,$00,$00,$00,$00,$23,$40                         ; $4EE2 row 02: 11...............................2.31...
        db      $70,$00,$00,$00,$00,$00,$00,$00,$83,$40                         ; $4EEC row 03: 13..............................2..31...
        db      $70,$00,$00,$00,$25,$55,$55,$56,$21,$40                         ; $4EF6 row 04: 13...............211111111111112.2.11...
        db      $70,$00,$00,$00,$8C,$00,$00,$0C,$83,$40                         ; $4F00 row 05: 13..............2.3...........3.2..31...
        db      $70,$00,$00,$02,$24,$00,$00,$33,$43,$40                         ; $4F0A row 06: 13.............2.21..........3.31..31...
        db      $70,$00,$00,$08,$84,$00,$00,$CC,$43,$40                         ; $4F14 row 07: 13............2.2.1.........3.3.1..31...
        db      $70,$00,$00,$22,$04,$00,$03,$30,$43,$40                         ; $4F1E row 08: 13...........2.2..1........3.3..1..31...
        db      $70,$00,$00,$A8,$04,$00,$0C,$C0,$43,$40                         ; $4F28 row 09: 13..........222...1.......3.3...1..31...
        db      $70,$00,$02,$20,$04,$00,$33,$00,$43,$40                         ; $4F32 row 10: 13.........2.2....1......3.3....1..31...
        db      $50,$00,$08,$80,$04,$00,$CC,$00,$41,$40                         ; $4F3C row 11: 11........2.2.....1.....3.3.....1..11...
        db      $70,$00,$22,$00,$04,$03,$30,$00,$43,$40                         ; $4F46 row 12: 13.......2.2......1....3.3......1..31...
        db      $70,$00,$88,$00,$04,$0F,$C0,$00,$43,$40                         ; $4F50 row 13: 13......2.2.......1...333.......1..31...
        db      $70,$02,$20,$00,$04,$33,$00,$00,$43,$40                         ; $4F5A row 14: 13.....2.2........1..3.3........1..31...
        db      $70,$08,$80,$00,$04,$CC,$00,$00,$43,$40                         ; $4F64 row 15: 13....2.2.........1.3.3.........1..31...
        db      $70,$22,$00,$00,$07,$30,$00,$00,$43,$40                         ; $4F6E row 16: 13...2.2..........13.3..........1..31...
        db      $70,$88,$00,$00,$08,$C0,$00,$00,$43,$40                         ; $4F78 row 17: 13..2.2...........2.3...........1..31...
        db      $70,$75,$55,$55,$62,$55,$55,$57,$43,$40                         ; $4F82 row 18: 13..13111111111112.21111111111131..31...
        db      $72,$40,$00,$00,$C8,$00,$00,$08,$81,$40                         ; $4F8C row 19: 13.21...........3.2...........2.2..11...
        db      $70,$40,$00,$03,$34,$00,$00,$22,$03,$40                         ; $4F96 row 20: 13..1..........3.31..........2.2...31...
        db      $50,$40,$00,$0C,$C4,$00,$00,$88,$03,$40                         ; $4FA0 row 21: 11..1.........3.3.1.........2.2....31...
        db      $70,$40,$00,$33,$04,$00,$02,$20,$03,$40                         ; $4FAA row 22: 13..1........3.3..1........2.2.....31...
        db      $70,$40,$00,$CC,$04,$00,$08,$80,$03,$40                         ; $4FB4 row 23: 13..1.......3.3...1.......2.2......31...
        db      $70,$40,$03,$30,$04,$00,$22,$00,$03,$40                         ; $4FBE row 24: 13..1......3.3....1......2.2.......31...
        db      $70,$40,$0C,$C0,$04,$00,$88,$00,$03,$40                         ; $4FC8 row 25: 13..1.....3.3.....1.....2.2........31...
        db      $70,$40,$33,$00,$04,$02,$20,$00,$03,$40                         ; $4FD2 row 26: 13..1....3.3......1....2.2.........31...
        db      $70,$40,$CC,$00,$04,$08,$80,$00,$01,$40                         ; $4FDC row 27: 13..1...3.3.......1...2.2..........11...
        db      $70,$43,$30,$00,$04,$22,$00,$00,$03,$40                         ; $4FE6 row 28: 13..1..3.3........1..2.2...........31...
        db      $70,$4C,$C0,$00,$04,$88,$00,$00,$03,$40                         ; $4FF0 row 29: 13..1.3.3.........1.2.2............31...
        db      $70,$73,$00,$00,$06,$20,$00,$00,$03,$40                         ; $4FFA row 30: 13..13.3..........12.2.............31...
        db      $70,$8C,$00,$00,$08,$80,$00,$00,$03,$40                         ; $5004 row 31: 13..2.3...........2.2..............31...
        db      $52,$25,$55,$55,$56,$00,$00,$00,$03,$40                         ; $500E row 32: 11.2.211111111111112...............31...
        db      $78,$80,$00,$00,$00,$00,$00,$00,$03,$40                         ; $5018 row 33: 132.2..............................31...
        db      $70,$00,$00,$00,$00,$00,$00,$00,$01,$40                         ; $5022 row 34: 13.................................11...
        db      $7F,$7F,$FD,$FF,$FD,$FF,$FD,$FF,$F7,$40                         ; $502C row 35: 1333133333313333333133333331333333131...
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$40                         ; $5036 row 36: 1111111111111111111111111111111111111...
; -----------------------------------------------------------------------------
; VISUAL_ANALOGY native 2-bpp image
; 10 bytes/row = 40 pixels, 37 rows; 370 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_ANALOGY_IMG_04:
        db      $12,$12,$0A,$25                                                 ; $5040 X reference, Y reference, source-byte width, height
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$40                         ; $5044 row 00: 1111111111111111111111111111111111111...
        db      $77,$FF,$F7,$FF,$FF,$DF,$FF,$FF,$7F,$40                         ; $504E row 01: 1313333333133333333331333333333313331...
        db      $50,$00,$00,$00,$00,$00,$00,$00,$23,$40                         ; $5058 row 02: 11...............................2.31...
        db      $70,$80,$02,$00,$02,$00,$02,$00,$83,$40                         ; $5062 row 03: 13..2......2.......2.......2....2..31...
        db      $72,$00,$00,$00,$25,$55,$55,$56,$21,$40                         ; $506C row 04: 13.2.............211111111111112.2.11...
        db      $70,$00,$00,$00,$8C,$00,$00,$0C,$83,$40                         ; $5076 row 05: 13..............2.3...........3.2..31...
        db      $70,$00,$00,$02,$24,$00,$00,$33,$43,$40                         ; $5080 row 06: 13.............2.21..........3.31..31...
        db      $70,$00,$00,$08,$84,$03,$00,$CC,$43,$40                         ; $508A row 07: 13............2.2.1....3....3.3.1..31...
        db      $70,$00,$00,$22,$04,$00,$03,$30,$43,$40                         ; $5094 row 08: 13...........2.2..1........3.3..1..31...
        db      $70,$00,$00,$A8,$04,$00,$0C,$C3,$43,$40                         ; $509E row 09: 13..........222...1.......3.3..31..31...
        db      $70,$00,$02,$20,$24,$00,$33,$00,$43,$40                         ; $50A8 row 10: 13.........2.2...21......3.3....1..31...
        db      $52,$00,$08,$80,$04,$00,$CC,$00,$41,$40                         ; $50B2 row 11: 11.2......2.2.....1.....3.3.....1..11...
        db      $70,$00,$02,$00,$04,$03,$30,$00,$43,$40                         ; $50BC row 12: 13.........2......1....3.3......1..31...
        db      $70,$00,$88,$00,$04,$0F,$C0,$00,$43,$40                         ; $50C6 row 13: 13......2.2.......1...333.......1..31...
        db      $70,$02,$20,$00,$04,$33,$00,$00,$43,$40                         ; $50D0 row 14: 13.....2.2........1..3.3........1..31...
        db      $70,$08,$80,$00,$04,$CC,$00,$00,$43,$40                         ; $50DA row 15: 13....2.2.........1.3.3.........1..31...
        db      $70,$22,$00,$00,$07,$30,$00,$00,$43,$40                         ; $50E4 row 16: 13...2.2..........13.3..........1..31...
        db      $70,$88,$00,$02,$08,$C0,$00,$C0,$43,$40                         ; $50EE row 17: 13..2.2........2..2.3.......3...1..31...
        db      $70,$75,$55,$55,$62,$55,$55,$57,$43,$40                         ; $50F8 row 18: 13..13111111111112.21111111111131..31...
        db      $72,$40,$00,$00,$C8,$00,$00,$08,$81,$40                         ; $5102 row 19: 13.21...........3.2...........2.2..11...
        db      $70,$40,$00,$03,$34,$00,$00,$22,$03,$40                         ; $510C row 20: 13..1..........3.31..........2.2...31...
        db      $50,$40,$00,$00,$C4,$00,$20,$88,$03,$40                         ; $5116 row 21: 11..1...........3.1......2..2.2....31...
        db      $70,$40,$00,$33,$04,$00,$02,$20,$03,$40                         ; $5120 row 22: 13..1........3.3..1........2.2.....31...
        db      $70,$40,$03,$CC,$04,$00,$08,$80,$03,$40                         ; $512A row 23: 13..1......33.3...1.......2.2......31...
        db      $70,$43,$03,$30,$04,$00,$22,$00,$03,$40                         ; $5134 row 24: 13..1..3...3.3....1......2.2.......31...
        db      $70,$40,$0C,$C0,$04,$02,$88,$00,$03,$40                         ; $513E row 25: 13..1.....3.3.....1....22.2........31...
        db      $70,$40,$33,$00,$04,$02,$20,$02,$03,$40                         ; $5148 row 26: 13..1....3.3......1....2.2.....2...31...
        db      $72,$40,$CC,$00,$34,$08,$80,$00,$01,$40                         ; $5152 row 27: 13.21...3.3......31...2.2..........11...
        db      $70,$43,$30,$00,$04,$22,$00,$00,$03,$40                         ; $515C row 28: 13..1..3.3........1..2.2...........31...
        db      $70,$4C,$C0,$00,$04,$88,$00,$00,$03,$40                         ; $5166 row 29: 13..1.3.3.........1.2.2............31...
        db      $70,$73,$00,$00,$06,$20,$00,$00,$03,$40                         ; $5170 row 30: 13..13.3..........12.2.............31...
        db      $70,$8C,$0C,$00,$0C,$80,$80,$00,$03,$40                         ; $517A row 31: 13..2.3...3.......3.2...2..........31...
        db      $52,$25,$55,$55,$56,$00,$00,$00,$03,$40                         ; $5184 row 32: 11.2.211111111111112...............31...
        db      $78,$80,$00,$00,$00,$00,$00,$00,$03,$40                         ; $518E row 33: 132.2..............................31...
        db      $70,$00,$00,$00,$00,$00,$00,$00,$01,$40                         ; $5198 row 34: 13.................................11...
        db      $7F,$7F,$FD,$FF,$FD,$FF,$FD,$FF,$F7,$40                         ; $51A2 row 35: 1333133333313333333133333331333333131...
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$40                         ; $51AC row 36: 1111111111111111111111111111111111111...
; -----------------------------------------------------------------------------
; VISUAL_ANALOGY native 2-bpp image
; 9 bytes/row = 36 pixels, 26 rows; 234 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
VISUAL_ANALOGY_IMG_05:
        db      $11,$08,$09,$1A                                                 ; $51B6 X reference, Y reference, source-byte width, height
        db      $00,$00,$00,$0A,$A8,$00,$00,$00,$00                             ; $51BA row 00: ..............22222.................
        db      $00,$00,$00,$2A,$AA,$00,$00,$00,$00                             ; $51C3 row 01: .............2222222................
        db      $00,$00,$00,$A0,$02,$80,$00,$00,$00                             ; $51CC row 02: ............22.....22...............
        db      $00,$00,$02,$80,$00,$A0,$00,$00,$00                             ; $51D5 row 03: ...........22.......22..............
        db      $00,$00,$02,$80,$00,$A0,$00,$00,$00                             ; $51DE row 04: ...........22.......22..............
        db      $00,$00,$00,$00,$00,$A0,$00,$00,$00                             ; $51E7 row 05: ....................22..............
        db      $00,$00,$00,$00,$00,$A0,$00,$00,$00                             ; $51F0 row 06: ....................22..............
        db      $00,$00,$00,$00,$00,$A0,$00,$00,$00                             ; $51F9 row 07: ....................22..............
        db      $00,$00,$00,$00,$02,$80,$00,$00,$00                             ; $5202 row 08: ...................22...............
        db      $00,$00,$00,$00,$0A,$00,$00,$00,$00                             ; $520B row 09: ..................22................
        db      $00,$00,$00,$00,$28,$00,$00,$00,$00                             ; $5214 row 10: .................22.................
        db      $00,$00,$00,$00,$A0,$00,$00,$00,$00                             ; $521D row 11: ................22..................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $5226 row 12: ...............22...................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $522F row 13: ...............22...................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $5238 row 14: ...............22...................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $5241 row 15: ...............22...................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $524A row 16: ....................................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $5253 row 17: ....................................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $525C row 18: ...............22...................
        db      $00,$00,$00,$02,$80,$00,$00,$00,$00                             ; $5265 row 19: ...............22...................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $526E row 20: ....................................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $5277 row 21: ....................................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $5280 row 22: ....................................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $5289 row 23: ....................................
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00                             ; $5292 row 24: ....................................
        db      $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8                             ; $529B row 25: 22222222222222222222222222222222222.
        db      $04,$00,$89,$00,$14,$BC,$49,$80,$14,$BC,$49,$C0,$14,$BC         ; $52A4 preserved bytes
        db      $49,$40,$14,$BC,$49,$00,$00,$A7,$52,$04,$00,$89,$00,$14,$FB,$4A ; $52B2
        db      $80,$14,$FB,$4A,$C0,$14,$FB,$4A,$40,$14,$FB,$4A,$00,$00,$BE,$52 ; $52C2
        db      $BC,$49,$BC,$49,$BC,$49,$BC,$49,$FB,$4A,$FB,$4A,$FB,$4A,$FB,$4A ; $52D2
        db      $00,$80,$C0,$40,$00,$80,$C0,$40,$A4,$52,$BB,$52,$D2,$52,$DA,$52 ; $52E2
        db      $E2,$52,$E6,$52,$BC,$49,$FB,$4A,$00,$00,$BC,$49,$FB,$4A,$40,$40 ; $52F2
        db      $BC,$49,$FB,$4A,$80,$80,$00,$00,$90,$B0,$FF,$BA,$FF,$C0,$03,$00 ; $5302
        db      $00,$C0,$00,$00,$23,$00,$00,$00,$B0,$04,$00,$00,$00,$A0,$00,$00 ; $5312
        db      $00,$B0,$04,$00,$00,$00,$00,$C0,$00,$00,$23,$00,$00,$00,$B0,$04 ; $5322
        db      $00,$00,$00,$90,$00,$00,$BA,$FF,$C0,$03,$00,$00,$C0,$00,$00,$23 ; $5332
        db      $00,$00,$00,$B0,$04,$00,$00,$00,$50,$00,$00,$00,$B0,$04,$00,$00 ; $5342
        db      $00,$00,$C0,$00,$00,$23,$00,$00,$00,$B0,$04,$00,$00,$00,$90,$50 ; $5352
        db      $00,$BA,$FF,$C0,$01,$00,$00,$C0,$00,$00,$46,$00,$00,$00,$B0,$04 ; $5362
        db      $00                                                             ; $5372 preserved bytes

VISUAL_PROGRESSION_SETUP_RENDER:
        rst     $08                                                             ; $5373 colon entry
        dw      XT_SET_OBJECT_MODE_2                                            ; $5374 execution token
        dw      XT_LIT                                                          ; $5376 execution token
        dw      $FF9C                                                           ; $5378 inline word
        dw      XT_0                                                            ; $537A execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $537C execution token
        dw      XT_LITbyte                                                      ; $537E execution token
        db      $04                                                             ; $5380 inline byte
        dw      XT_0                                                            ; $5381 execution token
        dw      XT_DO                                                           ; $5383 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5385 execution token
        dw      XT_ARRAY                                                        ; $5387 execution token
        dw      $52EE                                                           ; $5389 inline word
        dw      XT_at                                                           ; $538B execution token
        dw      XT_I                                                            ; $538D execution token
        dw      XT_2splat                                                       ; $538F execution token
        dw      XT_plus                                                         ; $5391 execution token
        dw      XT_at                                                           ; $5393 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $5395 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5397 execution token
        dw      XT_ARRAY                                                        ; $5399 execution token
        dw      $52F2                                                           ; $539B inline word
        dw      XT_at                                                           ; $539D execution token
        dw      XT_I                                                            ; $539F execution token
        dw      XT_plus                                                         ; $53A1 execution token
        dw      XT_Bat                                                          ; $53A3 execution token
        dw      $1F03                                                           ; $53A5 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $53A7 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $53A9 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $53AB execution token
        dw      XT_LITbyte                                                      ; $53AD execution token
        db      $2D                                                             ; $53AF inline byte
        dw      XT_plus                                                         ; $53B0 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $53B2 execution token
        dw      XT_LOOP                                                         ; $53B4 execution token
        dw      XT_RETURN                                                       ; $53B6 execution token

VISUAL_PROGRESSION_PRESENT_THREAD:
        rst     $08                                                             ; $53B8 colon entry
        dw      XT_SET_OBJECT_MODE_2                                            ; $53B9 execution token
        dw      XT_LITbyte                                                      ; $53BB execution token
        db      $3C                                                             ; $53BD inline byte
        dw      XT_LIT                                                          ; $53BE execution token
        dw      $FFEE                                                           ; $53C0 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $53C2 execution token
        dw      XT_LITbyte                                                      ; $53C4 execution token
        db      $02                                                             ; $53C6 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $53C7 execution token
        dw      XT_LIT                                                          ; $53C9 execution token
        dw      $0064                                                           ; $53CB inline word
        dw      $1C5F                                                           ; $53CD execution token
        dw      XT_LIT                                                          ; $53CF execution token
        dw      $FFEE                                                           ; $53D1 inline word
        dw      $1C71                                                           ; $53D3 execution token
        dw      $2630                                                           ; $53D5 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $53D7 execution token
        dw      XT_RETURN                                                       ; $53D9 execution token

        db      $08,$53,$33,$53,$5E,$53,$18                                     ; $53DB preserved bytes
        db      $63,$6F,$6E,$74,$69,$6E,$75,$65,$20,$74,$68,$65,$20,$70,$72,$6F ; $53E2
        db      $67,$72,$65,$73,$73,$69,$6F,$6E                                 ; $53F2 preserved bytes

VISUAL_PROGRESSION_SETUP_ACTION:
        rst     $08                                                             ; $53FA colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $53FB execution token
        dw      XT_LIT                                                          ; $53FD execution token
        dw      $FFBA                                                           ; $53FF inline word
        dw      XT_LITbyte                                                      ; $5401 execution token
        db      $16                                                             ; $5403 inline byte
        dw      XT_LIT                                                          ; $5404 execution token
        dw      $53E1                                                           ; $5406 inline word
        dw      XT_LIT                                                          ; $5408 execution token
        dw      $53DB                                                           ; $540A inline word
        dw      XT_LIT                                                          ; $540C execution token
        dw      $2D8C                                                           ; $540E inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $5410 execution token
        dw      VISUAL_PROGRESSION_SETUP_RENDER                                 ; $5412 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5414 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5416 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5418 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $541A execution token
        dw      XT_RETURN                                                       ; $541C execution token

VISUAL_PROGRESSION_CORRECT_ACTION:
        rst     $08                                                             ; $541E colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $541F execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5421 execution token
        dw      XT_LIT                                                          ; $5423 execution token
        dw      $FFD3                                                           ; $5425 inline word
        dw      XT_LITbyte                                                      ; $5427 execution token
        db      $05                                                             ; $5429 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $542A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $542C execution token
        dw      XT_DUP                                                          ; $542E execution token
        dw      XT_BARRAY                                                       ; $5430 execution token
        dw      $52FA                                                           ; $5432 inline word
        dw      XT_at                                                           ; $5434 execution token
        dw      $1F03                                                           ; $5436 execution token
        dw      XT_ARRAY                                                        ; $5438 execution token
        dw      $52F6                                                           ; $543A inline word
        dw      XT_at                                                           ; $543C execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $543E execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5440 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5442 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5444 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5446 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5448 execution token
        dw      $1DE0                                                           ; $544A execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $544C execution token
        dw      XT_LITbyte                                                      ; $544E execution token
        db      $50                                                             ; $5450 inline byte
        dw      XT_0                                                            ; $5451 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5453 execution token
        dw      VISUAL_PROGRESSION_CORRECT_THREAD                               ; $5455 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5457 execution token
        dw      XT_ARRAY                                                        ; $5459 execution token
        dw      $52EA                                                           ; $545B inline word
        dw      XT_at                                                           ; $545D execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $545F execution token
        dw      XT_LIT                                                          ; $5461 execution token
        dw      $00B3                                                           ; $5463 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5465 execution token
        dw      $19E9                                                           ; $5467 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5469 execution token
        dw      XT_RETURN                                                       ; $546B execution token

VISUAL_PROGRESSION_SECOND_ACTION:
        rst     $08                                                             ; $546D colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $546E execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $5470 execution token
        dw      XT_LIT                                                          ; $5472 execution token
        dw      $FFD3                                                           ; $5474 inline word
        dw      XT_LITbyte                                                      ; $5476 execution token
        db      $05                                                             ; $5478 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5479 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $547B execution token
        dw      XT_DUP                                                          ; $547D execution token
        dw      XT_BARRAY                                                       ; $547F execution token
        dw      $5300                                                           ; $5481 inline word
        dw      XT_at                                                           ; $5483 execution token
        dw      $1F03                                                           ; $5485 execution token
        dw      XT_ARRAY                                                        ; $5487 execution token
        dw      $52FC                                                           ; $5489 inline word
        dw      XT_at                                                           ; $548B execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $548D execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $548F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5491 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5493 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5495 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5497 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $5499 execution token
        dw      XT_LITbyte                                                      ; $549B execution token
        db      $1E                                                             ; $549D inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $549E execution token
        dw      $1A2C                                                           ; $54A0 execution token
        dw      $1DE0                                                           ; $54A2 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $54A4 execution token
        dw      XT_LITbyte                                                      ; $54A6 execution token
        db      $50                                                             ; $54A8 inline byte
        dw      XT_0                                                            ; $54A9 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $54AB execution token
        dw      XT_LIT                                                          ; $54AD execution token
        dw      $482E                                                           ; $54AF inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $54B1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $54B3 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $54B5 execution token
        dw      XT_RETURN                                                       ; $54B7 execution token

VISUAL_PROGRESSION_REMAINING_ACTION:
        rst     $08                                                             ; $54B9 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $54BA execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $54BC execution token
        dw      XT_LIT                                                          ; $54BE execution token
        dw      $FFD3                                                           ; $54C0 inline word
        dw      XT_LITbyte                                                      ; $54C2 execution token
        db      $05                                                             ; $54C4 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $54C5 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $54C7 execution token
        dw      XT_DUP                                                          ; $54C9 execution token
        dw      XT_BARRAY                                                       ; $54CB execution token
        dw      $5306                                                           ; $54CD inline word
        dw      XT_at                                                           ; $54CF execution token
        dw      $1F03                                                           ; $54D1 execution token
        dw      XT_ARRAY                                                        ; $54D3 execution token
        dw      $5302                                                           ; $54D5 inline word
        dw      XT_at                                                           ; $54D7 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $54D9 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $54DB execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $54DD execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $54DF execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $54E1 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $54E3 execution token
        dw      VISUAL_PROGRESSION_PRESENT_THREAD                               ; $54E5 execution token
        dw      XT_LITbyte                                                      ; $54E7 execution token
        db      $1E                                                             ; $54E9 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $54EA execution token
        dw      $1A2C                                                           ; $54EC execution token
        dw      $1DE0                                                           ; $54EE execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $54F0 execution token
        dw      XT_LITbyte                                                      ; $54F2 execution token
        db      $50                                                             ; $54F4 inline byte
        dw      XT_0                                                            ; $54F5 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $54F7 execution token
        dw      XT_LIT                                                          ; $54F9 execution token
        dw      $482E                                                           ; $54FB inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $54FD execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $54FF execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5501 execution token
        dw      XT_RETURN                                                       ; $5503 execution token

VISUAL_PROGRESSION_ACTIONS:
        db      $04                                                             ; $5505 action count
        dw      VISUAL_PROGRESSION_SETUP_ACTION                                 ; $5506 setup action
        dw      VISUAL_PROGRESSION_CORRECT_ACTION                               ; $5508 correct answer
        dw      VISUAL_PROGRESSION_SECOND_ACTION                                ; $550A second answer
        dw      VISUAL_PROGRESSION_REMAINING_ACTION                             ; $550C remaining answer

; Rooted by tier slots 2, 6.
VISUAL_PROGRESSION_VFIXED_T2_6_INIT:
        rst     $08                                                          ; $550E
        dw      XT_LIT                                                          ; $550F
        dw      QUESTION_VARIANT_ADDR                                           ; $5511
        dw      XT_BZERO                                                        ; $5513
        dw      XT_LIT                                                          ; $5515
        dw      PPQ14_VISUAL_PROGRESSION_ACTIONS                                ; $5517
        dw      XT_RETURN                                                       ; $5519

; Rooted by tier slots 1, 3, 7.
VISUAL_PROGRESSION_VFIXED_T1_3_7_INIT:
        rst     $08                                                          ; $551B
        dw      XT_LIT                                                          ; $551C
        dw      QUESTION_VARIANT_ADDR                                           ; $551E
        dw      XT_BONE                                                         ; $5520
        dw      XT_LIT                                                          ; $5522
        dw      PPQ14_VISUAL_PROGRESSION_ACTIONS                                ; $5524
        dw      XT_RETURN                                                       ; $5526
        db      $00,$00,$90                                                     ; $5528
        db      $6E,$00,$0F,$00,$00,$01,$00,$00,$68,$9C,$FF,$C4,$FF,$20,$FB,$C0 ; $552B
        db      $FC,$00,$00,$00,$90,$6E,$00,$E2,$FF,$00,$01,$00,$00,$78,$9C,$FF ; $553B
        db      $F1,$FF,$44,$FA,$DC,$FE,$00,$00,$00,$90,$6E,$00,$B5,$FF,$C0,$01 ; $554B
        db      $00,$00,$8A,$9C,$FF,$1E,$00,$54,$FA,$68,$01,$00,$40,$50,$40,$50 ; $555B
        db      $CA,$4E,$3A,$4C,$3A,$4C,$CA,$4E,$00,$00,$00,$00,$00,$00,$82,$4D ; $556B
        db      $82,$4D,$82,$4D,$CA,$4E,$3A,$4C,$82,$4D,$00,$00,$40,$40,$40,$40 ; $557B
        db      $28,$55,$3D,$55,$52,$55                                         ; $558B preserved bytes

VISUAL_ANALOGY_SETUP_THREAD_1:
        rst     $08                                                             ; $5591 colon entry
        dw      XT_LITbyte                                                      ; $5592 execution token
        db      $17                                                             ; $5594 inline byte
        dw      XT_plus                                                         ; $5595 execution token
        dw      XT_Bat                                                          ; $5597 execution token
        dw      XT_RETURN                                                       ; $5599 execution token
VISUAL_ANALOGY_SETUP_THREAD_2:
        rst     $08                                                             ; $559B colon entry
        dw      XT_GET_CURRENT_TASK                                             ; $559C execution token
        dw      VISUAL_ANALOGY_SETUP_THREAD_1                                   ; $559E execution token
        dw      XT_0                                                            ; $55A0 execution token
        dw      $1F03                                                           ; $55A2 execution token
        dw      XT_LITbyte                                                      ; $55A4 execution token
        db      $08                                                             ; $55A6 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $55A7 execution token
        dw      $207E                                                           ; $55A9 execution token
        dw      $1F03                                                           ; $55AB execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $55AD execution token
        dw      XT_RETURN                                                       ; $55AF execution token

        db      $01,$20,$06,$69,$73,$20,$74,$6F,$20,$03                         ; $55B1 preserved bytes
        db      $61,$73,$20                                                     ; $55BB preserved bytes

VISUAL_ANALOGY_SETUP_ACTION:
        rst     $08                                                             ; $55BE colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $55BF execution token
        dw      XT_0                                                            ; $55C1 execution token
        dw      XT_0                                                            ; $55C3 execution token
        dw      XT_LIT                                                          ; $55C5 execution token
        dw      $55B1                                                           ; $55C7 inline word
        dw      XT_LIT                                                          ; $55C9 execution token
        dw      $558B                                                           ; $55CB inline word
        dw      XT_LIT                                                          ; $55CD execution token
        dw      $2D8C                                                           ; $55CF inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $55D1 execution token
        dw      $1EDC                                                           ; $55D3 execution token
        dw      XT_LIT                                                          ; $55D5 execution token
        dw      $FF88                                                           ; $55D7 inline word
        dw      XT_LITbyte                                                      ; $55D9 execution token
        db      $05                                                             ; $55DB inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $55DC execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $55DE execution token
        dw      XT_DUP                                                          ; $55E0 execution token
        dw      XT_BARRAY                                                       ; $55E2 execution token
        dw      $5573                                                           ; $55E4 inline word
        dw      XT_at                                                           ; $55E6 execution token
        dw      $1F03                                                           ; $55E8 execution token
        dw      XT_ARRAY                                                        ; $55EA execution token
        dw      $5567                                                           ; $55EC inline word
        dw      XT_at                                                           ; $55EE execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $55F0 execution token
        dw      XT_LIT                                                          ; $55F2 execution token
        dw      $55B3                                                           ; $55F4 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $55F6 execution token
        dw      XT_LIT                                                          ; $55F8 execution token
        dw      $FFA1                                                           ; $55FA inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $55FC execution token
        dw      VISUAL_ANALOGY_SETUP_THREAD_2                                   ; $55FE execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5600 execution token
        dw      XT_DUP                                                          ; $5602 execution token
        dw      XT_BARRAY                                                       ; $5604 execution token
        dw      $5575                                                           ; $5606 inline word
        dw      XT_at                                                           ; $5608 execution token
        dw      $1F03                                                           ; $560A execution token
        dw      XT_LIT                                                          ; $560C execution token
        dw      $FFDB                                                           ; $560E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5610 execution token
        dw      XT_ARRAY                                                        ; $5612 execution token
        dw      $556B                                                           ; $5614 inline word
        dw      XT_at                                                           ; $5616 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5618 execution token
        dw      XT_LIT                                                          ; $561A execution token
        dw      $55BA                                                           ; $561C inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $561E execution token
        dw      XT_LIT                                                          ; $5620 execution token
        dw      $FF88                                                           ; $5622 inline word
        dw      XT_LIT                                                          ; $5624 execution token
        dw      $FFD3                                                           ; $5626 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5628 execution token
        dw      VISUAL_ANALOGY_SETUP_THREAD_2                                   ; $562A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $562C execution token
        dw      XT_DUP                                                          ; $562E execution token
        dw      XT_BARRAY                                                       ; $5630 execution token
        dw      $5577                                                           ; $5632 inline word
        dw      XT_at                                                           ; $5634 execution token
        dw      $1F03                                                           ; $5636 execution token
        dw      XT_LIT                                                          ; $5638 execution token
        dw      $FFAF                                                           ; $563A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $563C execution token
        dw      XT_ARRAY                                                        ; $563E execution token
        dw      $556F                                                           ; $5640 inline word
        dw      XT_at                                                           ; $5642 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5644 execution token
        dw      XT_LIT                                                          ; $5646 execution token
        dw      $55B3                                                           ; $5648 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $564A execution token
        dw      XT_LIT                                                          ; $564C execution token
        dw      $FFC9                                                           ; $564E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5650 execution token
        dw      VISUAL_ANALOGY_SETUP_THREAD_2                                   ; $5652 execution token
        dw      XT_LITbyte                                                      ; $5654 execution token
        db      $09                                                             ; $5656 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5657 execution token
        dw      XT_0                                                            ; $5659 execution token
        dw      $1F03                                                           ; $565B execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $565D execution token
        dw      XT_LIT                                                          ; $565F execution token
        dw      $51B6                                                           ; $5661 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5663 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5665 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5667 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5669 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $566B execution token
        dw      XT_RETURN                                                       ; $566D execution token

VISUAL_ANALOGY_CORRECT_ACTION:
        rst     $08                                                             ; $566F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5670 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5672 execution token
        dw      XT_LIT                                                          ; $5674 execution token
        dw      $FFD3                                                           ; $5676 inline word
        dw      XT_LITbyte                                                      ; $5678 execution token
        db      $05                                                             ; $567A inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $567B execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $567D execution token
        dw      XT_BARRAY                                                       ; $567F execution token
        dw      $5585                                                           ; $5681 inline word
        dw      XT_at                                                           ; $5683 execution token
        dw      $1F03                                                           ; $5685 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5687 execution token
        dw      XT_ARRAY                                                        ; $5689 execution token
        dw      $5579                                                           ; $568B inline word
        dw      XT_at                                                           ; $568D execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $568F execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5691 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5693 execution token
        dw      XT_LIT                                                          ; $5695 execution token
        dw      $F6E7                                                           ; $5697 inline word
        dw      XT_BONE                                                         ; $5699 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $569B execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $569D execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $569F execution token
        dw      XT_LITbyte                                                      ; $56A1 execution token
        db      $09                                                             ; $56A3 inline byte
        dw      XT_LIT                                                          ; $56A4 execution token
        dw      $FFD3                                                           ; $56A6 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $56A8 execution token
        dw      $1E34                                                           ; $56AA execution token
        dw      XT_LITbyte                                                      ; $56AC execution token
        db      $3C                                                             ; $56AE inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $56AF execution token
        dw      $1A2C                                                           ; $56B1 execution token
        dw      XT_LIT                                                          ; $56B3 execution token
        dw      $4135                                                           ; $56B5 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $56B7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $56B9 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $56BB execution token
        dw      XT_RETURN                                                       ; $56BD execution token

VISUAL_ANALOGY_SECOND_ACTION:
        rst     $08                                                             ; $56BF colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $56C0 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $56C2 execution token
        dw      XT_LIT                                                          ; $56C4 execution token
        dw      $FFD3                                                           ; $56C6 inline word
        dw      XT_LITbyte                                                      ; $56C8 execution token
        db      $05                                                             ; $56CA inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $56CB execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $56CD execution token
        dw      XT_BARRAY                                                       ; $56CF execution token
        dw      $5587                                                           ; $56D1 inline word
        dw      XT_at                                                           ; $56D3 execution token
        dw      $1F03                                                           ; $56D5 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $56D7 execution token
        dw      XT_ARRAY                                                        ; $56D9 execution token
        dw      $557D                                                           ; $56DB inline word
        dw      XT_at                                                           ; $56DD execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $56DF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $56E1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $56E3 execution token
        dw      XT_LIT                                                          ; $56E5 execution token
        dw      $F6E7                                                           ; $56E7 inline word
        dw      XT_BONE                                                         ; $56E9 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $56EB execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $56ED execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $56EF execution token
        dw      XT_LITbyte                                                      ; $56F1 execution token
        db      $09                                                             ; $56F3 inline byte
        dw      XT_LIT                                                          ; $56F4 execution token
        dw      $FFD3                                                           ; $56F6 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $56F8 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $56FA execution token
        dw      XT_LIT                                                          ; $56FC execution token
        dw      $482E                                                           ; $56FE inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $5700 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5702 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5704 execution token
        dw      XT_RETURN                                                       ; $5706 execution token

VISUAL_ANALOGY_REMAINING_ACTION:
        rst     $08                                                             ; $5708 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5709 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $570B execution token
        dw      XT_LIT                                                          ; $570D execution token
        dw      $FFD3                                                           ; $570F inline word
        dw      XT_LITbyte                                                      ; $5711 execution token
        db      $05                                                             ; $5713 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5714 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5716 execution token
        dw      XT_BARRAY                                                       ; $5718 execution token
        dw      $5589                                                           ; $571A inline word
        dw      XT_at                                                           ; $571C execution token
        dw      $1F03                                                           ; $571E execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5720 execution token
        dw      XT_ARRAY                                                        ; $5722 execution token
        dw      $5581                                                           ; $5724 inline word
        dw      XT_at                                                           ; $5726 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5728 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $572A execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $572C execution token
        dw      XT_LIT                                                          ; $572E execution token
        dw      $F6E7                                                           ; $5730 inline word
        dw      XT_BONE                                                         ; $5732 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5734 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $5736 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5738 execution token
        dw      XT_LITbyte                                                      ; $573A execution token
        db      $09                                                             ; $573C inline byte
        dw      XT_LIT                                                          ; $573D execution token
        dw      $FFD3                                                           ; $573F inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5741 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5743 execution token
        dw      XT_LIT                                                          ; $5745 execution token
        dw      $482E                                                           ; $5747 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $5749 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $574B execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $574D execution token
        dw      XT_RETURN                                                       ; $574F execution token

VISUAL_ANALOGY_ACTIONS:
        db      $04                                                             ; $5751 action count
        dw      VISUAL_ANALOGY_SETUP_ACTION                                     ; $5752 setup action
        dw      VISUAL_ANALOGY_CORRECT_ACTION                                   ; $5754 correct answer
        dw      VISUAL_ANALOGY_SECOND_ACTION                                    ; $5756 second answer
        dw      VISUAL_ANALOGY_REMAINING_ACTION                                 ; $5758 remaining answer

; Rooted by tier slot 5.
VISUAL_ANALOGY_VFIXED_T5_INIT:
        rst     $08                                                          ; $575A
        dw      XT_LIT                                                          ; $575B
        dw      QUESTION_VARIANT_ADDR                                           ; $575D
        dw      XT_BZERO                                                        ; $575F
        dw      XT_LIT                                                          ; $5761
        dw      PPQ14_VISUAL_ANALOGY_ACTIONS                                    ; $5763
        dw      XT_RETURN                                                       ; $5765

; Rooted by tier slots 3, 7.
VISUAL_ANALOGY_VFIXED_T3_7_INIT:
        rst     $08                                                          ; $5767
        dw      XT_LIT                                                          ; $5768
        dw      QUESTION_VARIANT_ADDR                                           ; $576A
        dw      XT_BONE                                                         ; $576C
        dw      XT_LIT                                                          ; $576E
        dw      PPQ14_VISUAL_ANALOGY_ACTIONS                                    ; $5770
        dw      XT_RETURN                                                       ; $5772
        db      $3E,$3E,$00                                                     ; $5774
        db      $2E,$2E,$00,$3E,$3E,$00,$4A,$4A,$00,$5E,$5E,$5E,$5E,$5E,$00,$37 ; $5777
        db      $00,$3E,$00,$4A,$00,$3E,$3E,$3E,$00,$54,$54,$54,$54,$00,$00,$00 ; $5787
        db      $BD,$BD,$BD,$BD,$BD,$00,$7E,$7E,$00,$BD,$BD,$BD,$BD,$BD,$00,$70 ; $5797
        db      $00,$7E,$00,$96,$00,$7E,$7E,$7E,$00,$A8,$A8,$A8,$A8,$74,$57,$84 ; $57A7
        db      $57,$94,$57,$A4,$57,$02,$0F,$FF,$B4,$57,$B4,$57,$B8,$57,$30     ; $57B7 preserved bytes

DOG_MIRROR_MATCH_SETUP_THREAD_1:
        rst     $08                                                             ; $57C6 colon entry
        dw      XT_1                                                            ; $57C7 execution token
        dw      XT_LIT                                                          ; $57C9 execution token
        dw      $FD6D                                                           ; $57CB inline word
        dw      $2BEF                                                           ; $57CD execution token
        dw      XT_LITbyte                                                      ; $57CF execution token
        db      $0A                                                             ; $57D1 inline byte
        dw      XT_LIT                                                          ; $57D2 execution token
        dw      $00FF                                                           ; $57D4 inline word
        dw      $2B2E                                                           ; $57D6 execution token
        dw      XT_LITbyte                                                      ; $57D8 execution token
        db      $48                                                             ; $57DA inline byte
        dw      $2AF2                                                           ; $57DB execution token
        dw      XT_LIT                                                          ; $57DD execution token
        dw      $0088                                                           ; $57DF inline word
        dw      XT_LITbyte                                                      ; $57E1 execution token
        db      $50                                                             ; $57E3 inline byte
        dw      XT_LIT                                                          ; $57E4 execution token
        dw      $0064                                                           ; $57E6 inline word
        dw      $2B71                                                           ; $57E8 execution token
        dw      XT_LITbyte                                                      ; $57EA execution token
        db      $03                                                             ; $57EC inline byte
        dw      $2BA8                                                           ; $57ED execution token
        dw      XT_LITbyte                                                      ; $57EF execution token
        db      $00                                                             ; $57F1 inline byte
        dw      XT_DUP                                                          ; $57F2 execution token
        dw      $2B2E                                                           ; $57F4 execution token
        dw      XT_LITbyte                                                      ; $57F6 execution token
        db      $02                                                             ; $57F8 inline byte
        dw      $2BA8                                                           ; $57F9 execution token
        dw      XT_LITbyte                                                      ; $57FB execution token
        db      $0A                                                             ; $57FD inline byte
        dw      XT_LIT                                                          ; $57FE execution token
        dw      $00FF                                                           ; $5800 inline word
        dw      $2B2E                                                           ; $5802 execution token
        dw      XT_LITbyte                                                      ; $5804 execution token
        db      $03                                                             ; $5806 inline byte
        dw      $2BA8                                                           ; $5807 execution token
        dw      XT_LITbyte                                                      ; $5809 execution token
        db      $00                                                             ; $580B inline byte
        dw      XT_DUP                                                          ; $580C execution token
        dw      $2B2E                                                           ; $580E execution token
        dw      XT_LITbyte                                                      ; $5810 execution token
        db      $02                                                             ; $5812 inline byte
        dw      $2BA8                                                           ; $5813 execution token
        dw      XT_LITbyte                                                      ; $5815 execution token
        db      $0A                                                             ; $5817 inline byte
        dw      XT_LIT                                                          ; $5818 execution token
        dw      $00FF                                                           ; $581A inline word
        dw      $2B2E                                                           ; $581C execution token
        dw      XT_LITbyte                                                      ; $581E execution token
        db      $03                                                             ; $5820 inline byte
        dw      $2BA8                                                           ; $5821 execution token
        dw      XT_LITbyte                                                      ; $5823 execution token
        db      $00                                                             ; $5825 inline byte
        dw      XT_DUP                                                          ; $5826 execution token
        dw      $2B2E                                                           ; $5828 execution token
        dw      XT_LITbyte                                                      ; $582A execution token
        db      $02                                                             ; $582C inline byte
        dw      $2BA8                                                           ; $582D execution token
        dw      XT_LITbyte                                                      ; $582F execution token
        db      $20                                                             ; $5831 inline byte
        dw      $2AF2                                                           ; $5832 execution token
        dw      XT_LITbyte                                                      ; $5834 execution token
        db      $0A                                                             ; $5836 inline byte
        dw      XT_LIT                                                          ; $5837 execution token
        dw      $00FF                                                           ; $5839 inline word
        dw      $2B2E                                                           ; $583B execution token
        dw      XT_LITbyte                                                      ; $583D execution token
        db      $09                                                             ; $583F inline byte
        dw      $2BA8                                                           ; $5840 execution token
        dw      XT_LITbyte                                                      ; $5842 execution token
        db      $00                                                             ; $5844 inline byte
        dw      XT_DUP                                                          ; $5845 execution token
        dw      $2B2E                                                           ; $5847 execution token
        dw      XT_LITbyte                                                      ; $5849 execution token
        db      $06                                                             ; $584B inline byte
        dw      $2BA8                                                           ; $584C execution token
        dw      XT_LITbyte                                                      ; $584E execution token
        db      $0A                                                             ; $5850 inline byte
        dw      XT_LIT                                                          ; $5851 execution token
        dw      $00FF                                                           ; $5853 inline word
        dw      $2B2E                                                           ; $5855 execution token
        dw      XT_LITbyte                                                      ; $5857 execution token
        db      $09                                                             ; $5859 inline byte
        dw      $2BA8                                                           ; $585A execution token
        dw      $2B8C                                                           ; $585C execution token
        dw      XT_RETURN                                                       ; $585E execution token

DOG_MIRROR_MATCH_SETUP_THREAD_2:
        rst     $08                                                             ; $5860 colon entry
        dw      XT_1                                                            ; $5861 execution token
        dw      XT_LIT                                                          ; $5863 execution token
        dw      $FD3D                                                           ; $5865 inline word
        dw      $2BEF                                                           ; $5867 execution token
        dw      XT_LITbyte                                                      ; $5869 execution token
        db      $00                                                             ; $586B inline byte
        dw      XT_DUP                                                          ; $586C execution token
        dw      $2B2E                                                           ; $586E execution token
        dw      XT_LITbyte                                                      ; $5870 execution token
        db      $04                                                             ; $5872 inline byte
        dw      $2BA8                                                           ; $5873 execution token
        dw      XT_LITbyte                                                      ; $5875 execution token
        db      $0A                                                             ; $5877 inline byte
        dw      XT_LIT                                                          ; $5878 execution token
        dw      $00FF                                                           ; $587A inline word
        dw      $2B2E                                                           ; $587C execution token
        dw      XT_LITbyte                                                      ; $587E execution token
        db      $48                                                             ; $5880 inline byte
        dw      $2AF2                                                           ; $5881 execution token
        dw      XT_LIT                                                          ; $5883 execution token
        dw      $0088                                                           ; $5885 inline word
        dw      XT_LITbyte                                                      ; $5887 execution token
        db      $50                                                             ; $5889 inline byte
        dw      XT_LIT                                                          ; $588A execution token
        dw      $0064                                                           ; $588C inline word
        dw      $2B71                                                           ; $588E execution token
        dw      XT_LITbyte                                                      ; $5890 execution token
        db      $03                                                             ; $5892 inline byte
        dw      $2BA8                                                           ; $5893 execution token
        dw      XT_LITbyte                                                      ; $5895 execution token
        db      $00                                                             ; $5897 inline byte
        dw      XT_DUP                                                          ; $5898 execution token
        dw      $2B2E                                                           ; $589A execution token
        dw      XT_LITbyte                                                      ; $589C execution token
        db      $02                                                             ; $589E inline byte
        dw      $2BA8                                                           ; $589F execution token
        dw      XT_LITbyte                                                      ; $58A1 execution token
        db      $0A                                                             ; $58A3 inline byte
        dw      XT_LIT                                                          ; $58A4 execution token
        dw      $00FF                                                           ; $58A6 inline word
        dw      $2B2E                                                           ; $58A8 execution token
        dw      XT_LITbyte                                                      ; $58AA execution token
        db      $03                                                             ; $58AC inline byte
        dw      $2BA8                                                           ; $58AD execution token
        dw      XT_LITbyte                                                      ; $58AF execution token
        db      $00                                                             ; $58B1 inline byte
        dw      XT_DUP                                                          ; $58B2 execution token
        dw      $2B2E                                                           ; $58B4 execution token
        dw      XT_LITbyte                                                      ; $58B6 execution token
        db      $02                                                             ; $58B8 inline byte
        dw      $2BA8                                                           ; $58B9 execution token
        dw      XT_LITbyte                                                      ; $58BB execution token
        db      $0A                                                             ; $58BD inline byte
        dw      XT_LIT                                                          ; $58BE execution token
        dw      $00FF                                                           ; $58C0 inline word
        dw      $2B2E                                                           ; $58C2 execution token
        dw      XT_LITbyte                                                      ; $58C4 execution token
        db      $03                                                             ; $58C6 inline byte
        dw      $2BA8                                                           ; $58C7 execution token
        dw      XT_LITbyte                                                      ; $58C9 execution token
        db      $00                                                             ; $58CB inline byte
        dw      XT_DUP                                                          ; $58CC execution token
        dw      $2B2E                                                           ; $58CE execution token
        dw      XT_LITbyte                                                      ; $58D0 execution token
        db      $02                                                             ; $58D2 inline byte
        dw      $2BA8                                                           ; $58D3 execution token
        dw      XT_LITbyte                                                      ; $58D5 execution token
        db      $20                                                             ; $58D7 inline byte
        dw      $2AF2                                                           ; $58D8 execution token
        dw      XT_LITbyte                                                      ; $58DA execution token
        db      $0A                                                             ; $58DC inline byte
        dw      XT_LIT                                                          ; $58DD execution token
        dw      $00FF                                                           ; $58DF inline word
        dw      $2B2E                                                           ; $58E1 execution token
        dw      XT_LITbyte                                                      ; $58E3 execution token
        db      $09                                                             ; $58E5 inline byte
        dw      $2BA8                                                           ; $58E6 execution token
        dw      XT_LITbyte                                                      ; $58E8 execution token
        db      $00                                                             ; $58EA inline byte
        dw      XT_DUP                                                          ; $58EB execution token
        dw      $2B2E                                                           ; $58ED execution token
        dw      XT_LITbyte                                                      ; $58EF execution token
        db      $06                                                             ; $58F1 inline byte
        dw      $2BA8                                                           ; $58F2 execution token
        dw      XT_LITbyte                                                      ; $58F4 execution token
        db      $0A                                                             ; $58F6 inline byte
        dw      XT_LIT                                                          ; $58F7 execution token
        dw      $00FF                                                           ; $58F9 inline word
        dw      $2B2E                                                           ; $58FB execution token
        dw      XT_LITbyte                                                      ; $58FD execution token
        db      $09                                                             ; $58FF inline byte
        dw      $2BA8                                                           ; $5900 execution token
        dw      $2B8C                                                           ; $5902 execution token
        dw      XT_RETURN                                                       ; $5904 execution token

DOG_MIRROR_MATCH_SETUP_THREAD_3:
        rst     $08                                                             ; $5906 colon entry
        dw      DOG_MIRROR_MATCH_SETUP_THREAD_1                                 ; $5907 execution token
        dw      DOG_MIRROR_MATCH_SETUP_THREAD_2                                 ; $5909 execution token
        dw      XT_RETURN                                                       ; $590B execution token

        db      $CF,$30,$01,$09,$01,$6D,$FD,$EF,$2B,$12                         ; $590D preserved bytes
        db      $01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$48,$F2,$2A,$09,$01,$88 ; $5917
        db      $00,$12,$01,$50,$09,$01,$64,$00,$71,$2B,$12,$01,$03,$A8,$2B,$12 ; $5927
        db      $01,$00,$36,$01,$2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$0A,$09,$01 ; $5937
        db      $FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12,$01,$00,$36,$01,$2E,$2B ; $5947
        db      $12,$01,$02,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01 ; $5957
        db      $03,$A8,$2B,$12,$01,$00,$36,$01,$2E,$2B,$12,$01,$02,$A8,$2B,$12 ; $5967
        db      $01,$60,$F2,$2A,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$09 ; $5977
        db      $A8,$2B,$12,$01,$00,$36,$01,$2E,$2B,$12,$01,$06,$A8,$2B,$12,$01 ; $5987
        db      $0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$09,$A8,$2B,$8C,$2B,$FD,$00 ; $5997
        db      $CF,$30,$01,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$00,$36,$01,$2E,$2B ; $59A7
        db      $12,$01,$04,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01 ; $59B7
        db      $48,$F2,$2A,$09,$01,$88,$00,$12,$01,$50,$09,$01,$64,$00,$71,$2B ; $59C7
        db      $12,$01,$03,$A8,$2B,$12,$01,$00,$36,$01,$2E,$2B,$12,$01,$02,$A8 ; $59D7
        db      $2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12 ; $59E7
        db      $01,$00,$36,$01,$2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$0A,$09,$01 ; $59F7
        db      $FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12,$01,$00,$36,$01,$2E,$2B ; $5A07
        db      $12,$01,$02,$A8,$2B,$12,$01,$60,$F2,$2A,$12,$01,$0A,$09,$01,$FF ; $5A17
        db      $00,$2E,$2B,$12,$01,$09,$A8,$2B,$12,$01,$00,$36,$01,$2E,$2B,$12 ; $5A27
        db      $01,$06,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$09 ; $5A37
        db      $A8,$2B,$8C,$2B,$FD,$00,$CF,$0D,$59,$A7,$59,$FD,$00             ; $5A47 preserved bytes
; -----------------------------------------------------------------------------
; DOG_MIRROR_MATCH native 2-bpp image
; 12 bytes/row = 48 pixels, 43 rows; 516 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DOG_MIRROR_MATCH_IMG_01:
        db      $15,$14,$0C,$2B                                                 ; $5A54 X reference, Y reference, source-byte width, height
        db      $00,$00,$00,$00,$15,$01,$50,$00,$00,$00,$00,$00                 ; $5A58 row 00: .................111...111......................
        db      $00,$00,$00,$01,$55,$45,$55,$00,$00,$00,$00,$00                 ; $5A64 row 01: ...............111111.111111....................
        db      $00,$00,$00,$05,$55,$55,$55,$40,$00,$00,$00,$00                 ; $5A70 row 02: ..............111111111111111...................
        db      $00,$00,$00,$05,$01,$55,$01,$40,$00,$00,$00,$00                 ; $5A7C row 03: ..............11...11111...11...................
        db      $00,$00,$00,$14,$FC,$54,$FC,$50,$00,$00,$00,$00                 ; $5A88 row 04: .............11.333.111.333.11..................
        db      $00,$00,$00,$17,$FF,$13,$FF,$54,$00,$00,$00,$00                 ; $5A94 row 05: .............1133333.1.33333111.................
        db      $00,$00,$00,$5F,$C3,$DF,$0F,$D4,$00,$00,$00,$00                 ; $5AA0 row 06: ............11333..33133..33311.................
        db      $00,$00,$00,$5F,$00,$DC,$03,$D5,$00,$00,$00,$00                 ; $5AAC row 07: ............1133....313....33111................
        db      $00,$00,$01,$5F,$00,$DC,$03,$D5,$40,$00,$00,$00                 ; $5AB8 row 08: ...........11133....313....331111...............
        db      $00,$00,$05,$47,$00,$54,$03,$45,$40,$00,$00,$00                 ; $5AC4 row 09: ..........111.13....111....31.111...............
        db      $00,$00,$05,$45,$55,$01,$55,$45,$50,$00,$00,$00                 ; $5AD0 row 10: ..........111.111111...111111.1111..............
        db      $00,$00,$25,$41,$54,$00,$55,$05,$50,$00,$00,$00                 ; $5ADC row 11: .........2111..1111.....1111..1111..............
        db      $00,$00,$15,$41,$56,$02,$55,$05,$54,$00,$00,$00                 ; $5AE8 row 12: .........1111..11112...21111..11111.............
        db      $00,$00,$55,$45,$55,$55,$55,$45,$54,$00,$00,$00                 ; $5AF4 row 13: ........11111.111111111111111.11111.............
        db      $00,$00,$65,$46,$65,$45,$66,$45,$55,$00,$00,$00                 ; $5B00 row 14: ........12111.1212111.1112121.111111............
        db      $00,$01,$E5,$45,$99,$45,$99,$45,$55,$00,$00,$00                 ; $5B0C row 15: .......132111.1121211.1121211.111111............
        db      $00,$01,$95,$41,$55,$21,$55,$05,$55,$40,$00,$00                 ; $5B18 row 16: .......121111..11111.2.11111..1111111...........
        db      $00,$05,$55,$40,$54,$A8,$54,$05,$59,$60,$00,$00                 ; $5B24 row 17: ......1111111...111.222.111...11112112..........
        db      $00,$07,$55,$41,$01,$A9,$01,$01,$55,$50,$00,$00                 ; $5B30 row 18: ......1311111..1...12221...1...1111111..........
        db      $00,$06,$55,$41,$40,$54,$15,$01,$99,$50,$00,$00                 ; $5B3C row 19: ......1211111..11...111..111...1212111..........
        db      $00,$05,$56,$45,$54,$01,$55,$01,$95,$54,$00,$00                 ; $5B48 row 20: ......1111121.11111....11111...12111111.........
        db      $00,$05,$56,$45,$55,$55,$55,$00,$69,$54,$00,$00                 ; $5B54 row 21: ......1111121.11111111111111....1221111.........
        db      $00,$01,$59,$05,$55,$55,$55,$00,$79,$54,$00,$00                 ; $5B60 row 22: .......11121..11111111111111....1321111.........
        db      $00,$01,$55,$05,$55,$55,$55,$00,$16,$94,$00,$00                 ; $5B6C row 23: .......11111..11111111111111.....112211.........
        db      $05,$54,$54,$05,$A5,$55,$65,$00,$01,$50,$00,$00                 ; $5B78 row 24: ..11111.111...11221111111211.......111..........
        db      $15,$55,$00,$05,$46,$55,$95,$00,$50,$00,$00,$00                 ; $5B84 row 25: .1111111......111.1211112111....11..............
        db      $59,$55,$55,$05,$51,$98,$55,$05,$55,$55,$00,$00                 ; $5B90 row 26: 112111111111..1111.1212.1111..1111111111........
        db      $75,$55,$55,$45,$54,$01,$55,$15,$55,$55,$40,$00                 ; $5B9C row 27: 1311111111111.11111....11111.111111111111.......
        db      $65,$55,$55,$45,$55,$85,$55,$15,$55,$55,$40,$00                 ; $5BA8 row 28: 1211111111111.1111112.111111.111111111111.......
        db      $55,$55,$55,$45,$55,$45,$55,$15,$55,$55,$40,$00                 ; $5BB4 row 29: 1111111111111.1111111.111111.111111111111.......
        db      $69,$55,$55,$45,$55,$45,$55,$15,$55,$56,$40,$00                 ; $5BC0 row 30: 1221111111111.1111111.111111.111111111121.......
        db      $79,$55,$55,$45,$55,$45,$55,$15,$55,$55,$00,$00                 ; $5BCC row 31: 1321111111111.1111111.111111.11111111111........
        db      $1A,$55,$55,$85,$55,$45,$55,$25,$A5,$59,$00,$00                 ; $5BD8 row 32: .122111111112.1111111.111111.21122111121........
        db      $06,$55,$6A,$45,$55,$45,$55,$16,$55,$54,$00,$00                 ; $5BE4 row 33: ..12111112221.1111111.111111.1121111111.........
        db      $01,$55,$5A,$05,$59,$85,$95,$2A,$95,$90,$00,$00                 ; $5BF0 row 34: ...111111122..1111212.112111.222211121..........
        db      $00,$15,$56,$85,$A5,$41,$69,$29,$55,$40,$00,$00                 ; $5BFC row 35: .....11111122.1122111..11221.22111111...........
        db      $00,$01,$55,$85,$55,$41,$55,$25,$55,$00,$00,$00                 ; $5C08 row 36: .......111112.1111111..11111.2111111............
        db      $00,$00,$15,$05,$55,$01,$55,$05,$54,$00,$00,$00                 ; $5C14 row 37: .........111..111111...11111..11111.............
        db      $00,$05,$55,$05,$55,$01,$55,$05,$40,$00,$00,$00                 ; $5C20 row 38: ......111111..111111...11111..111...............
        db      $00,$04,$40,$55,$55,$01,$55,$51,$54,$00,$01,$40                 ; $5C2C row 39: ......1.1...11111111...1111111.1111........11...
        db      $00,$01,$11,$45,$54,$01,$95,$54,$55,$15,$54,$00                 ; $5C38 row 40: .......1.1.11.11111....12111111.1111.111111.....
        db      $00,$00,$01,$14,$64,$00,$51,$44,$44,$00,$00,$00                 ; $5C44 row 41: ...........1.11.121.....11.11.1.1.1.............
        db      $00,$00,$00,$51,$50,$00,$14,$50,$00,$00,$00,$00                 ; $5C50 row 42: ............11.111.......11.11..................
        db      $17,$14,$0B,$2B,$00,$00,$00,$00,$01,$50,$15                     ; $5C5C preserved bytes
        db      $00,$00,$00,$00,$00,$00,$00,$00,$15,$54,$55,$50,$00,$00,$00,$00 ; $5C67
        db      $00,$00,$00,$55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$50,$15 ; $5C77
        db      $50,$14,$00,$00,$00,$00,$00,$00,$01,$4F,$C5,$4F,$C5,$00,$00,$00 ; $5C87
        db      $00,$00,$00,$01,$7F,$F1,$3F,$F5,$40,$00,$00,$00,$00,$00,$05,$FC ; $5C97
        db      $3D,$F0,$FD,$40,$00,$00,$00,$00,$00,$05,$F0,$0D,$C0,$3D,$50,$00 ; $5CA7
        db      $00,$00,$00,$00,$15,$F0,$0D,$C0,$3D,$54,$00,$00,$00,$00,$00,$54 ; $5CB7
        db      $70,$05,$40,$34,$54,$00,$00,$00,$00,$00,$54,$55,$50,$15,$54,$55 ; $5CC7
        db      $00,$00,$00,$00,$02,$54,$15,$40,$05,$50,$55,$00,$00,$00,$00,$01 ; $5CD7
        db      $54,$15,$60,$25,$50,$55,$40,$00,$00,$00,$05,$54,$55,$55,$55,$54 ; $5CE7
        db      $55,$40,$00,$00,$00,$06,$54,$66,$54,$56,$64,$55,$50,$00,$00,$00 ; $5CF7
        db      $1E,$54,$59,$94,$59,$94,$55,$50,$00,$00,$00,$19,$54,$15,$52,$15 ; $5D07
        db      $50,$55,$54,$00,$00,$00,$55,$54,$05,$4A,$85,$40,$55,$96,$00,$00 ; $5D17
        db      $00,$75,$54,$10,$1A,$90,$10,$15,$55,$00,$00,$00,$65,$54,$14,$05 ; $5D27
        db      $41,$50,$19,$95,$00,$00,$00,$55,$64,$55,$40,$15,$50,$19,$55,$40 ; $5D37
        db      $00,$00,$55,$64,$55,$55,$55,$50,$06,$95,$40,$00,$00,$15,$90,$55 ; $5D47
        db      $55,$55,$50,$07,$95,$40,$00,$00,$15,$50,$55,$55,$55,$50,$01,$69 ; $5D57
        db      $40,$00,$55,$45,$40,$5A,$55,$56,$50,$00,$15,$00,$01,$55,$50,$00 ; $5D67
        db      $54,$65,$59,$50,$05,$00,$00,$05,$95,$55,$50,$55,$19,$85,$50,$55 ; $5D77
        db      $55,$50,$07,$55,$55,$54,$55,$40,$15,$51,$55,$55,$54,$06,$55,$55 ; $5D87
        db      $54,$55,$58,$55,$51,$55,$55,$54,$05,$55,$55,$54,$55,$54,$55,$51 ; $5D97
        db      $55,$55,$54,$06,$95,$55,$54,$55,$54,$55,$51,$55,$55,$64,$07,$95 ; $5DA7
        db      $55,$54,$55,$54,$55,$51,$55,$55,$50,$01,$A5,$55,$58,$55,$54,$55 ; $5DB7
        db      $52,$5A,$55,$90,$00,$65,$56,$A4,$55,$54,$55,$51,$65,$55,$40,$00 ; $5DC7
        db      $15,$55,$A0,$55,$98,$59,$52,$A9,$59,$00,$00,$01,$55,$68,$5A,$54 ; $5DD7
        db      $16,$92,$95,$54,$00,$00,$00,$15,$58,$55,$54,$15,$52,$55,$50,$00 ; $5DE7
        db      $40,$00,$01,$50,$55,$50,$15,$50,$55,$40,$00,$15,$00,$55,$50,$55 ; $5DF7
        db      $50,$15,$50,$54,$00,$00,$00,$54,$44,$05,$55,$50,$15,$55,$15,$40 ; $5E07
        db      $00,$00,$00,$11,$14,$55,$40,$19,$55,$45,$50,$00,$00,$00,$00,$11 ; $5E17
        db      $46,$40,$05,$14,$44,$40,$00,$00,$00,$00,$05,$15,$00,$01,$45,$00 ; $5E27
        db      $00,$00,$15,$12,$0B,$29,$00,$00,$00,$00,$54,$00,$54,$00,$00,$00 ; $5E37
        db      $00,$00,$00,$00,$05,$55,$05,$55,$00,$00,$00,$00,$00,$00,$00,$05 ; $5E47
        db      $55,$55,$55,$40,$00,$00,$00,$00,$00,$00,$15,$55,$55,$55,$50,$00 ; $5E57
        db      $00,$00,$00,$00,$00,$55,$51,$55,$15,$50,$00,$00,$00,$00,$00,$00 ; $5E67
        db      $55,$54,$54,$55,$54,$00,$00,$00,$00,$00,$01,$55,$41,$11,$05,$54 ; $5E77
        db      $00,$00,$00,$00,$00,$05,$43,$00,$44,$03,$05,$00,$00,$00,$00,$00 ; $5E87
        db      $15,$57,$00,$44,$03,$55,$00,$00,$00,$00,$00,$55,$45,$41,$DD,$05 ; $5E97
        db      $45,$40,$00,$00,$00,$01,$55,$41,$55,$01,$55,$05,$50,$00,$00,$00 ; $5EA7
        db      $07,$55,$41,$54,$00,$55,$05,$54,$00,$00,$00,$19,$55,$05,$56,$02 ; $5EB7
        db      $55,$45,$55,$00,$00,$01,$75,$54,$05,$95,$55,$65,$45,$55,$50,$00 ; $5EC7
        db      $1E,$55,$90,$06,$59,$66,$59,$41,$55,$54,$00,$19,$56,$50,$05,$95 ; $5ED7
        db      $A9,$65,$01,$65,$55,$00,$15,$69,$40,$01,$54,$A8,$54,$00,$79,$55 ; $5EE7
        db      $40,$05,$54,$00,$00,$01,$55,$01,$00,$17,$55,$40,$00,$00,$00,$01 ; $5EF7
        db      $54,$00,$55,$00,$05,$A5,$40,$00,$00,$00,$05,$55,$55,$55,$00,$00 ; $5F07
        db      $55,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$55,$40 ; $5F17
        db      $05,$55,$55,$55,$00,$00,$00,$00,$05,$55,$54,$05,$A5,$55,$65,$00 ; $5F27
        db      $15,$40,$00,$15,$55,$55,$05,$46,$55,$95,$01,$55,$54,$00,$59,$55 ; $5F37
        db      $55,$45,$51,$98,$55,$05,$55,$55,$00,$75,$55,$55,$45,$54,$01,$55 ; $5F47
        db      $15,$55,$55,$40,$65,$55,$55,$45,$55,$45,$55,$15,$55,$55,$40,$55 ; $5F57
        db      $55,$55,$45,$55,$45,$55,$15,$55,$55,$40,$69,$55,$55,$45,$55,$45 ; $5F67
        db      $55,$15,$55,$56,$40,$79,$55,$55,$45,$55,$45,$55,$15,$55,$55,$00 ; $5F77
        db      $1A,$55,$55,$85,$55,$45,$55,$25,$A5,$59,$00,$06,$55,$6A,$45,$55 ; $5F87
        db      $45,$55,$16,$55,$54,$00,$01,$55,$5A,$05,$59,$85,$95,$2A,$95,$90 ; $5F97
        db      $00,$00,$15,$56,$85,$A5,$41,$69,$29,$55,$40,$00,$00,$01,$55,$85 ; $5FA7
        db      $55,$41,$55,$25,$55,$00,$00,$00,$00,$15,$05,$55,$01,$55,$05,$54 ; $5FB7
        db      $00,$00,$00,$05,$55,$05,$55,$01,$55,$05,$40,$00,$00,$00,$04,$40 ; $5FC7
        db      $55,$55,$01,$55,$51,$54,$00,$00,$00,$01,$11,$45,$54,$01,$95,$54 ; $5FD7
        db      $55,$00,$00,$00,$00,$01,$14,$64,$00,$51,$44,$44,$00,$00,$00,$00 ; $5FE7
        db      $00,$51,$50,$00,$14,$50,$00,$00,$00,$15,$12,$0B,$29,$00,$00,$00 ; $5FF7
        db      $00,$54,$00,$54,$00,$00,$00,$00,$00,$00,$00,$05,$55,$05,$55,$00 ; $6007
        db      $00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$40,$00,$00,$00,$00,$00 ; $6017
        db      $00,$15,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$55,$01,$55,$01 ; $6027
        db      $50,$00,$00,$00,$00,$00,$00,$54,$FC,$54,$FC,$54,$00,$00,$00,$00 ; $6037
        db      $00,$01,$57,$C3,$13,$0F,$54,$00,$00,$00,$00,$00,$05,$43,$00,$CC ; $6047
        db      $03,$05,$00,$00,$00,$00,$00,$15,$57,$00,$CC,$03,$55,$00,$00,$00 ; $6057
        db      $00,$00,$55,$45,$41,$DD,$05,$45,$40,$00,$00,$00,$01,$55,$41,$55 ; $6067
        db      $01,$55,$05,$50,$00,$00,$00,$07,$55,$41,$54,$00,$55,$05,$54,$00 ; $6077
        db      $00,$00,$19,$55,$05,$56,$02,$55,$45,$55,$00,$00,$01,$75,$54,$05 ; $6087
        db      $95,$55,$65,$45,$55,$50,$00,$1E,$55,$90,$06,$59,$66,$59,$41,$55 ; $6097
        db      $54,$00,$19,$56,$50,$05,$95,$A9,$65,$01,$65,$55,$00,$15,$69,$40 ; $60A7
        db      $01,$54,$A8,$54,$00,$79,$55,$40,$05,$54,$00,$00,$01,$55,$01,$00 ; $60B7
        db      $17,$55,$40,$00,$00,$00,$01,$54,$00,$55,$00,$05,$A5,$40,$00,$00 ; $60C7
        db      $00,$05,$55,$55,$55,$00,$00,$55,$00,$00,$00,$00,$05,$55,$55,$55 ; $60D7
        db      $00,$00,$00,$00,$00,$55,$40,$05,$55,$55,$55,$00,$00,$00,$00,$05 ; $60E7
        db      $55,$54,$05,$A5,$55,$65,$00,$15,$40,$00,$15,$55,$55,$05,$46,$55 ; $60F7
        db      $95,$01,$55,$54,$00,$59,$55,$55,$45,$51,$98,$55,$05,$55,$55,$00 ; $6107
        db      $75,$55,$55,$45,$54,$01,$55,$15,$55,$55,$40,$65,$55,$55,$45,$55 ; $6117
        db      $45,$55,$15,$55,$55,$40,$55,$55,$55,$45,$55,$45,$55,$15,$55,$55 ; $6127
        db      $40,$69,$55,$55,$45,$55,$45,$55,$15,$55,$56,$40,$79,$55,$55,$45 ; $6137
        db      $55,$45,$55,$15,$55,$55,$00,$1A,$55,$55,$85,$55,$45,$55,$25,$A5 ; $6147
        db      $59,$00,$06,$55,$6A,$45,$55,$45,$55,$16,$55,$54,$00,$01,$55,$5A ; $6157
        db      $05,$59,$85,$95,$2A,$95,$90,$00,$00,$15,$56,$85,$A5,$41,$69,$29 ; $6167
        db      $55,$40,$01,$00,$01,$55,$85,$55,$41,$55,$25,$55,$00,$05,$00,$00 ; $6177
        db      $15,$05,$55,$01,$55,$05,$54,$01,$50,$00,$05,$55,$05,$55,$01,$55 ; $6187
        db      $05,$41,$54,$00,$00,$04,$40,$55,$55,$01,$55,$51,$54,$00,$00,$00 ; $6197
        db      $01,$11,$45,$54,$01,$95,$54,$55,$00,$00,$00,$00,$01,$14,$64,$00 ; $61A7
        db      $51,$44,$44,$00,$00,$00,$00,$00,$51,$50,$00,$14,$50,$00,$00,$00 ; $61B7
PPQ14_SHARED_PRESENT_THREAD:
        rst     $08                                                             ; $61C7 colon entry
        dw      XT_LIT                                                          ; $61C8 execution token
        dw      QUESTION_VARIANT_ADDR                                           ; $61CA inline word
        dw      XT_Bat                                                          ; $61CC execution token
        dw      XT_RETURN                                                       ; $61CE execution token

        db      $00,$00,$90,$AB,$FF,$BF,$FF                                     ; $61D0 preserved bytes
        db      $00,$00,$00,$00,$00,$90,$00,$00,$BA,$FF,$00,$00,$00,$00,$00,$90 ; $61D7
        db      $55,$00,$BF,$FF,$00,$00,$00,$D0,$61,$DA,$61,$E4,$61,$0B,$06,$03 ; $61E7
        db      $08,$04,$00,$0B,$0B,$06,$1E,$77,$68,$69,$63,$68,$20,$64,$6F,$67 ; $61F7
        db      $20,$69,$73,$20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69 ; $6207
        db      $6D,$61,$67,$65,$3F,$17,$77,$68,$69,$63,$68,$20,$64,$6F,$67,$20 ; $6217
        db      $69,$73,$20,$74,$68,$65,$20,$73,$61,$6D,$65,$20,$3F,$06,$00,$81 ; $6227
        db      $0B,$54,$5A,$08,$00,$60,$06,$54,$5A,$05,$00,$60,$06,$54,$5A,$05 ; $6237
        db      $00,$60,$00,$37,$62,$FD,$61,$1C,$62                             ; $6247 preserved bytes

DOG_MIRROR_MATCH_SETUP_ACTION:
        rst     $08                                                             ; $6250 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6251 execution token
        dw      XT_LIT                                                          ; $6253 execution token
        dw      $FF74                                                           ; $6255 inline word
        dw      XT_LITbyte                                                      ; $6257 execution token
        db      $14                                                             ; $6259 inline byte
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $625A execution token
        dw      XT_ARRAY                                                        ; $625C execution token
        dw      $624C                                                           ; $625E inline word
        dw      XT_at                                                           ; $6260 execution token
        dw      XT_LIT                                                          ; $6262 execution token
        dw      $61EE                                                           ; $6264 inline word
        dw      XT_LIT                                                          ; $6266 execution token
        dw      $61F4                                                           ; $6268 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $626A execution token
        dw      DOG_MIRROR_MATCH_SETUP_THREAD_3                                 ; $626C execution token
        dw      XT_LITbyte                                                      ; $626E execution token
        db      $1E                                                             ; $6270 inline byte
        dw      XT_LIT                                                          ; $6271 execution token
        dw      $FFEC                                                           ; $6273 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6275 execution token
        dw      XT_LIT                                                          ; $6277 execution token
        dw      $6234                                                           ; $6279 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $627B execution token
        dw      XT_LITbyte                                                      ; $627D execution token
        db      $4B                                                             ; $627F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6280 execution token
        dw      $19E9                                                           ; $6282 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $6284 execution token
        dw      XT_LIT                                                          ; $6286 execution token
        dw      $5A54                                                           ; $6288 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $628A execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $628C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $628E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6290 execution token
        dw      XT_RETURN                                                       ; $6292 execution token

DOG_MIRROR_MATCH_CORRECT_ACTION:
        rst     $08                                                             ; $6294 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6295 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $6297 execution token
        dw      XT_LIT                                                          ; $6299 execution token
        dw      $FFC9                                                           ; $629B inline word
        dw      XT_LITbyte                                                      ; $629D execution token
        db      $05                                                             ; $629F inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $62A0 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $62A2 execution token
        dw      XT_ARRAY                                                        ; $62A4 execution token
        dw      $624C                                                           ; $62A6 inline word
        dw      XT_at                                                           ; $62A8 execution token
        dw      XT_LIT                                                          ; $62AA execution token
        dw      $61FD                                                           ; $62AC inline word
        dw      XT_equal                                                        ; $62AE execution token
        dw      XT_0BRANCH                                                      ; $62B0 execution token
        dw      DOG_MIRROR_MATCH_CORRECT_ACTION_C                               ; $62B2 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $62B4 execution token
DOG_MIRROR_MATCH_CORRECT_ACTION_C:
        dw      XT_LIT                                                          ; $62B6 execution token
        dw      $6234                                                           ; $62B8 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $62BA execution token
        dw      XT_LITbyte                                                      ; $62BC execution token
        db      $4B                                                             ; $62BE inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $62BF execution token
        dw      $19E9                                                           ; $62C1 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $62C3 execution token
        dw      XT_LIT                                                          ; $62C5 execution token
        dw      $5A54                                                           ; $62C7 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $62C9 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $62CB execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $62CD execution token
        dw      XT_LIT                                                          ; $62CF execution token
        dw      $F6DD                                                           ; $62D1 inline word
        dw      XT_BZERO                                                        ; $62D3 execution token
        dw      $1E34                                                           ; $62D5 execution token
        dw      XT_LITbyte                                                      ; $62D7 execution token
        db      $1E                                                             ; $62D9 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $62DA execution token
        dw      $1A2C                                                           ; $62DC execution token
        dw      XT_LIT                                                          ; $62DE execution token
        dw      $57BC                                                           ; $62E0 inline word
        dw      XT_DUP                                                          ; $62E2 execution token
        dw      $3D67                                                           ; $62E4 execution token
        dw      $3DE7                                                           ; $62E6 execution token
        dw      XT_LIT                                                          ; $62E8 execution token
        dw      $FFDB                                                           ; $62EA inline word
        dw      XT_LIT                                                          ; $62EC execution token
        dw      $FFEC                                                           ; $62EE inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $62F0 execution token
        dw      XT_LIT                                                          ; $62F2 execution token
        dw      $6234                                                           ; $62F4 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $62F6 execution token
        dw      XT_LIT                                                          ; $62F8 execution token
        dw      $F6DD                                                           ; $62FA inline word
        dw      $1C1D                                                           ; $62FC execution token
        dw      $19E9                                                           ; $62FE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6300 execution token
        dw      XT_RETURN                                                       ; $6302 execution token

        db      $CF,$09,$01                                                     ; $6304 preserved bytes
        db      $34,$62,$B4,$1C,$12,$01,$4B,$DF,$1B,$E9,$19,$F3,$1D,$09,$01,$5C ; $6307
        db      $5C,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$09,$01,$DB,$FF,$09,$01,$EC ; $6317
        db      $FF,$54,$1D,$0C,$1E,$4D,$5A,$12,$01,$14,$DF,$1B,$2C,$1A,$09,$01 ; $6327
        db      $39,$5E,$B4,$1C,$34,$1E,$50,$8C,$FD,$00                         ; $6337 preserved bytes

DOG_MIRROR_MATCH_SECOND_ACTION:
        rst     $08                                                             ; $6341 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6342 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $6344 execution token
        dw      XT_LIT                                                          ; $6346 execution token
        dw      $FFC9                                                           ; $6348 inline word
        dw      XT_LITbyte                                                      ; $634A execution token
        db      $05                                                             ; $634C inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $634D execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $634F execution token
        dw      XT_LIT                                                          ; $6351 execution token
        dw      $6304                                                           ; $6353 inline word
        dw      $2CDD                                                           ; $6355 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6357 execution token
        dw      XT_RETURN                                                       ; $6359 execution token

DOG_MIRROR_MATCH_REMAINING_ACTION:
        rst     $08                                                             ; $635B colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $635C execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $635E execution token
        dw      XT_LIT                                                          ; $6360 execution token
        dw      $FFC9                                                           ; $6362 inline word
        dw      XT_LITbyte                                                      ; $6364 execution token
        db      $05                                                             ; $6366 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6367 execution token
        dw      XT_LIT                                                          ; $6369 execution token
        dw      $6304                                                           ; $636B inline word
        dw      $2CDD                                                           ; $636D execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $636F execution token
        dw      XT_RETURN                                                       ; $6371 execution token

DOG_MIRROR_MATCH_ACTIONS:
        db      $04                                                             ; $6373 action count
        dw      DOG_MIRROR_MATCH_SETUP_ACTION                                   ; $6374 setup action
        dw      DOG_MIRROR_MATCH_CORRECT_ACTION                                 ; $6376 correct answer
        dw      DOG_MIRROR_MATCH_SECOND_ACTION                                  ; $6378 second answer
        dw      DOG_MIRROR_MATCH_REMAINING_ACTION                               ; $637A remaining answer

; Rooted by tier slots 0, 2, 4.
DOG_MIRROR_MATCH_V0_1_T0_2_4_INIT:
        rst     $08                                                          ; $637C
        dw      XT_LITbyte                                                      ; $637D
        db      $02                                                              ; $637F
        dw      XT_RANDOM_BELOW                                                 ; $6380
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6382
        dw      XT_LIT                                                          ; $6384
        dw      PPQ14_DOG_MIRROR_MATCH_ACTIONS                                  ; $6386
        dw      XT_RETURN                                                       ; $6388
; -----------------------------------------------------------------------------
; DEER_MIRROR_MATCH native 2-bpp image
; 5 bytes/row = 20 pixels, 48 rows; 240 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DEER_MIRROR_MATCH_IMG_01:
        db      $0A,$18,$05,$30                                                 ; $638A X reference, Y reference, source-byte width, height
        db      $00,$00,$00,$00,$00                                             ; $638E row 00: ....................
        db      $00,$00,$00,$00,$00                                             ; $6393 row 01: ....................
        db      $00,$00,$03,$00,$33                                             ; $6398 row 02: ...........3.....3.3
        db      $00,$00,$03,$00,$0C                                             ; $639D row 03: ...........3......3.
        db      $00,$30,$33,$00,$03                                             ; $63A2 row 04: .....3...3.3.......3
        db      $00,$0C,$0C,$03,$0C                                             ; $63A7 row 05: ......3...3....3..3.
        db      $00,$03,$CC,$30,$CC                                             ; $63AC row 06: .......33.3..3..3.3.
        db      $00,$00,$3F,$30,$3C                                             ; $63B1 row 07: .........333.3...33.
        db      $00,$00,$00,$C0,$00                                             ; $63B6 row 08: ............3.......
        db      $00,$00,$00,$C3,$0C                                             ; $63BB row 09: ............3..3..3.
        db      $00,$00,$01,$50,$CD                                             ; $63C0 row 10: ...........111..3.31
        db      $05,$00,$00,$54,$31                                             ; $63C5 row 11: ..11........111..3.1
        db      $05,$40,$00,$04,$05                                             ; $63CA row 12: ..111.........1...11
        db      $00,$50,$00,$05,$54                                             ; $63CF row 13: ....11........11111.
        db      $00,$50,$01,$54,$50                                             ; $63D4 row 14: ....11.....1111.11..
        db      $00,$50,$05,$55,$50                                             ; $63D9 row 15: ....11....11111111..
        db      $00,$50,$05,$55,$50                                             ; $63DE row 16: ....11....11111111..
        db      $04,$51,$00,$05,$50                                             ; $63E3 row 17: ..1.11.1......1111..
        db      $14,$51,$40,$05,$40                                             ; $63E8 row 18: .11.11.11.....111...
        db      $00,$50,$50,$15,$40                                             ; $63ED row 19: ....11..11...1111...
        db      $00,$54,$51,$55,$00                                             ; $63F2 row 20: ....111.11.11111....
        db      $00,$14,$15,$55,$00                                             ; $63F7 row 21: .....11..1111111....
        db      $00,$15,$15,$54,$00                                             ; $63FC row 22: .....111.111111.....
        db      $00,$05,$55,$50,$00                                             ; $6401 row 23: ......11111111......
        db      $00,$05,$55,$50,$00                                             ; $6406 row 24: ......11111111......
        db      $00,$05,$55,$40,$00                                             ; $640B row 25: ......1111111.......
        db      $00,$05,$55,$40,$00                                             ; $6410 row 26: ......1111111.......
        db      $00,$01,$55,$40,$00                                             ; $6415 row 27: .......111111.......
        db      $00,$01,$55,$40,$00                                             ; $641A row 28: .......111111.......
        db      $00,$01,$55,$40,$00                                             ; $641F row 29: .......111111.......
        db      $00,$00,$55,$50,$00                                             ; $6424 row 30: ........111111......
        db      $00,$00,$55,$50,$00                                             ; $6429 row 31: ........111111......
        db      $00,$00,$55,$54,$00                                             ; $642E row 32: ........1111111.....
        db      $00,$00,$15,$54,$00                                             ; $6433 row 33: .........111111.....
        db      $00,$00,$15,$55,$50                                             ; $6438 row 34: .........111111111..
        db      $00,$00,$15,$15,$40                                             ; $643D row 35: .........111.1111...
        db      $00,$00,$14,$15,$00                                             ; $6442 row 36: .........11..111....
        db      $00,$00,$14,$15,$00                                             ; $6447 row 37: .........11..111....
        db      $00,$00,$14,$05,$00                                             ; $644C row 38: .........11...11....
        db      $00,$00,$15,$01,$40                                             ; $6451 row 39: .........111...11...
        db      $00,$00,$05,$01,$40                                             ; $6456 row 40: ..........11...11...
        db      $00,$00,$05,$01,$40                                             ; $645B row 41: ..........11...11...
        db      $00,$00,$05,$05,$40                                             ; $6460 row 42: ..........11..111...
        db      $00,$00,$14,$05,$00                                             ; $6465 row 43: .........11...11....
        db      $00,$00,$14,$05,$00                                             ; $646A row 44: .........11...11....
        db      $00,$00,$14,$05,$00                                             ; $646F row 45: .........11...11....
        db      $00,$00,$50,$14,$00                                             ; $6474 row 46: ........11...11.....
        db      $00,$00,$00,$00,$00                                             ; $6479 row 47: ....................
        db      $0A,$20,$07,$2B,$00,$00,$00,$03,$30,$00,$00,$00,$00,$0C         ; $647E preserved bytes
        db      $00,$C0,$00,$00,$00,$C0,$0C,$0C,$C0,$00,$00,$00,$F0,$CC,$03,$C0 ; $648C
        db      $00,$00,$00,$0C,$F0,$30,$C0,$00,$00,$00,$03,$30,$30,$C0,$00,$00 ; $649C
        db      $00,$03,$30,$3C,$C0,$00,$00,$00,$00,$FF,$C3,$00,$00,$00,$00,$00 ; $64AC
        db      $03,$03,$00,$00,$00,$00,$00,$15,$33,$10,$00,$00,$00,$00,$05,$0F ; $64BC
        db      $10,$00,$00,$00,$00,$00,$43,$50,$00,$00,$00,$00,$00,$55,$40,$00 ; $64CC
        db      $00,$00,$00,$15,$45,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00 ; $64DC
        db      $00,$55,$55,$00,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00 ; $64EC
        db      $54,$00,$00,$00,$00,$00,$01,$54,$00,$00,$00,$00,$00,$05,$54,$00 ; $64FC
        db      $00,$00,$00,$00,$15,$54,$00,$00,$00,$00,$00,$55,$54,$00,$00,$00 ; $650C
        db      $01,$54,$55,$55,$00,$00,$00,$05,$55,$05,$55,$00,$00,$00,$14,$05 ; $651C
        db      $55,$55,$40,$00,$00,$50,$51,$55,$55,$40,$00,$00,$10,$50,$55,$55 ; $652C
        db      $50,$00,$00,$01,$40,$05,$55,$54,$00,$00,$00,$00,$00,$15,$55,$00 ; $653C
        db      $00,$00,$00,$00,$05,$55,$50,$00,$00,$00,$00,$01,$55,$55,$40,$00 ; $654C
        db      $00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$55,$54,$00,$00,$00,$00 ; $655C
        db      $00,$50,$54,$00,$00,$00,$00,$00,$50,$14,$00,$00,$00,$00,$00,$54 ; $656C
        db      $15,$00,$00,$00,$00,$00,$14,$05,$00,$00,$00,$00,$00,$14,$05,$00 ; $657C
        db      $00,$00,$00,$00,$14,$15,$00,$00,$00,$00,$00,$50,$14,$00,$00,$00 ; $658C
        db      $00,$00,$50,$14,$00,$00,$00,$00,$00,$50,$14,$00,$00,$00,$00,$01 ; $659C
        db      $40,$50,$00,$0D,$23,$08,$26,$00,$00,$03,$30,$00,$00,$00,$00,$00 ; $65AC
        db      $0C,$00,$C0,$00,$00,$00,$00,$C0,$0C,$0C,$C0,$00,$00,$00,$00,$F0 ; $65BC
        db      $CC,$03,$C0,$00,$00,$00,$00,$0C,$F0,$30,$F0,$00,$00,$00,$00,$03 ; $65CC
        db      $30,$30,$C0,$00,$00,$00,$00,$03,$30,$3C,$C0,$00,$00,$00,$00,$00 ; $65DC
        db      $FF,$C3,$00,$00,$00,$00,$00,$00,$03,$03,$00,$00,$00,$00,$00,$00 ; $65EC
        db      $15,$33,$10,$00,$00,$00,$00,$00,$05,$0F,$10,$00,$00,$00,$00,$00 ; $65FC
        db      $00,$43,$50,$00,$00,$00,$00,$00,$00,$55,$40,$00,$00,$00,$00,$00 ; $660C
        db      $15,$45,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00 ; $661C
        db      $55,$55,$00,$00,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00 ; $662C
        db      $00,$54,$00,$00,$00,$00,$00,$00,$01,$54,$00,$00,$00,$00,$00,$00 ; $663C
        db      $05,$54,$00,$00,$00,$00,$00,$00,$05,$54,$00,$00,$00,$00,$00,$00 ; $664C
        db      $15,$55,$00,$00,$00,$01,$50,$00,$15,$55,$55,$55,$55,$55,$40,$00 ; $665C
        db      $15,$55,$55,$55,$55,$54,$00,$00,$15,$55,$55,$55,$55,$55,$00,$00 ; $666C
        db      $05,$55,$55,$55,$55,$55,$00,$00,$05,$55,$55,$55,$55,$55,$00,$00 ; $667C
        db      $14,$55,$55,$55,$55,$54,$00,$00,$54,$55,$55,$54,$15,$54,$00,$01 ; $668C
        db      $51,$50,$00,$00,$05,$15,$00,$01,$41,$40,$00,$00,$05,$05,$40,$00 ; $669C
        db      $45,$00,$00,$00,$01,$41,$50,$00,$15,$00,$00,$00,$01,$40,$50,$00 ; $66AC
        db      $14,$50,$00,$00,$05,$00,$50,$00,$51,$50,$00,$00,$14,$01,$40,$00 ; $66BC
        db      $50,$00,$00,$00,$50,$01,$40,$00,$50,$00,$00,$00,$50,$01,$40,$01 ; $66CC
        db      $40,$00,$00,$01,$40,$05,$00,$14,$19,$08,$26,$00,$00,$03,$30,$00 ; $66DC
        db      $00,$00,$00,$00,$0C,$00,$C0,$00,$00,$00,$00,$C0,$0C,$0C,$C0,$00 ; $66EC
        db      $00,$00,$00,$F0,$CC,$03,$C0,$00,$00,$00,$00,$0C,$F0,$30,$F0,$00 ; $66FC
        db      $00,$00,$00,$03,$30,$30,$C0,$00,$00,$00,$00,$03,$30,$3C,$C0,$00 ; $670C
        db      $00,$00,$00,$00,$FF,$C3,$00,$00,$00,$00,$00,$00,$03,$03,$00,$00 ; $671C
        db      $00,$00,$00,$00,$15,$33,$10,$00,$00,$00,$00,$00,$05,$0F,$10,$00 ; $672C
        db      $00,$00,$00,$00,$00,$43,$50,$00,$00,$00,$00,$00,$00,$55,$40,$00 ; $673C
        db      $00,$00,$00,$00,$15,$45,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00 ; $674C
        db      $00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$54,$00,$00 ; $675C
        db      $00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00,$01,$54,$00,$00 ; $676C
        db      $00,$00,$00,$00,$05,$54,$00,$00,$00,$01,$50,$00,$05,$54,$00,$00 ; $677C
        db      $05,$55,$40,$00,$15,$55,$00,$01,$55,$54,$00,$00,$15,$55,$55,$55 ; $678C
        db      $55,$55,$00,$00,$15,$55,$55,$55,$55,$55,$00,$00,$15,$55,$55,$55 ; $679C
        db      $55,$55,$00,$00,$15,$55,$55,$55,$55,$55,$00,$00,$15,$55,$55,$55 ; $67AC
        db      $55,$55,$00,$00,$15,$55,$55,$55,$55,$55,$40,$00,$15,$55,$55,$00 ; $67BC
        db      $05,$45,$50,$00,$55,$50,$00,$00,$00,$50,$50,$01,$51,$40,$00,$00 ; $67CC
        db      $00,$14,$50,$01,$45,$00,$00,$00,$00,$14,$50,$05,$14,$00,$00,$00 ; $67DC
        db      $00,$14,$50,$05,$14,$00,$00,$00,$00,$11,$40,$05,$14,$00,$00,$00 ; $67EC
        db      $00,$51,$40,$14,$50,$00,$00,$00,$01,$45,$00,$14,$50,$00,$00,$00 ; $67FC
        db      $05,$00,$00,$51,$40,$00,$00,$00,$00,$00,$00                     ; $680C preserved bytes
; -----------------------------------------------------------------------------
; DEER_MIRROR_MATCH native 2-bpp image
; 8 bytes/row = 32 pixels, 38 rows; 304 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DEER_MIRROR_MATCH_IMG_02:
        db      $19,$0F,$08,$26                                                 ; $6817 X reference, Y reference, source-byte width, height
        db      $00,$00,$03,$30,$00,$00,$00,$00                                 ; $681B row 00: ...........3.3..................
        db      $00,$0C,$00,$C0,$00,$00,$00,$00                                 ; $6823 row 01: ......3.....3...................
        db      $C0,$0C,$0C,$C0,$00,$00,$00,$00                                 ; $682B row 02: 3.....3...3.3...................
        db      $F0,$CC,$03,$C0,$00,$00,$00,$00                                 ; $6833 row 03: 33..3.3....33...................
        db      $0C,$F0,$30,$F0,$00,$00,$00,$00                                 ; $683B row 04: ..3.33...3..33..................
        db      $03,$30,$30,$C0,$00,$00,$00,$00                                 ; $6843 row 05: ...3.3...3..3...................
        db      $03,$30,$3C,$C0,$00,$00,$00,$00                                 ; $684B row 06: ...3.3...33.3...................
        db      $00,$FF,$C3,$00,$00,$00,$00,$00                                 ; $6853 row 07: ....33333..3....................
        db      $00,$03,$03,$00,$00,$00,$00,$00                                 ; $685B row 08: .......3...3....................
        db      $00,$15,$33,$10,$00,$00,$00,$00                                 ; $6863 row 09: .....111.3.3.1..................
        db      $00,$05,$0F,$10,$00,$00,$00,$00                                 ; $686B row 10: ......11..33.1..................
        db      $00,$00,$43,$50,$00,$00,$00,$00                                 ; $6873 row 11: ........1..311..................
        db      $00,$00,$55,$40,$00,$00,$00,$00                                 ; $687B row 12: ........11111...................
        db      $00,$15,$45,$00,$00,$00,$00,$00                                 ; $6883 row 13: .....1111.11....................
        db      $00,$55,$55,$00,$00,$00,$00,$00                                 ; $688B row 14: ....11111111....................
        db      $00,$55,$55,$00,$00,$00,$00,$00                                 ; $6893 row 15: ....11111111....................
        db      $00,$00,$54,$00,$00,$00,$00,$00                                 ; $689B row 16: ........111.....................
        db      $00,$00,$54,$00,$00,$00,$00,$00                                 ; $68A3 row 17: ........111.....................
        db      $00,$01,$54,$00,$00,$00,$00,$00                                 ; $68AB row 18: .......1111.....................
        db      $00,$05,$54,$00,$00,$00,$00,$00                                 ; $68B3 row 19: ......11111.....................
        db      $00,$05,$54,$00,$00,$00,$00,$00                                 ; $68BB row 20: ......11111.....................
        db      $00,$15,$55,$00,$00,$00,$01,$50                                 ; $68C3 row 21: .....1111111...............111..
        db      $00,$15,$55,$55,$55,$55,$55,$40                                 ; $68CB row 22: .....111111111111111111111111...
        db      $00,$15,$55,$55,$55,$55,$54,$00                                 ; $68D3 row 23: .....1111111111111111111111.....
        db      $00,$15,$55,$55,$55,$55,$55,$00                                 ; $68DB row 24: .....11111111111111111111111....
        db      $00,$05,$55,$55,$55,$55,$55,$00                                 ; $68E3 row 25: ......1111111111111111111111....
        db      $00,$05,$55,$55,$55,$55,$55,$00                                 ; $68EB row 26: ......1111111111111111111111....
        db      $00,$14,$55,$55,$55,$55,$54,$00                                 ; $68F3 row 27: .....11.1111111111111111111.....
        db      $00,$54,$55,$55,$54,$14,$54,$00                                 ; $68FB row 28: ....111.11111111111..11.111.....
        db      $01,$51,$50,$00,$00,$14,$15,$00                                 ; $6903 row 29: ...111.111...........11..111....
        db      $01,$41,$40,$00,$00,$15,$05,$40                                 ; $690B row 30: ...11..11............111..111...
        db      $00,$45,$00,$00,$00,$05,$01,$40                                 ; $6913 row 31: ....1.11..............11...11...
        db      $00,$15,$00,$00,$00,$05,$01,$40                                 ; $691B row 32: .....111..............11...11...
        db      $00,$14,$50,$00,$00,$05,$05,$40                                 ; $6923 row 33: .....11.11............11..111...
        db      $00,$51,$50,$00,$00,$14,$05,$00                                 ; $692B row 34: ....11.111...........11...11....
        db      $00,$50,$00,$00,$00,$14,$05,$00                                 ; $6933 row 35: ....11...............11...11....
        db      $00,$50,$00,$00,$00,$14,$05,$00                                 ; $693B row 36: ....11...............11...11....
        db      $01,$40,$00,$00,$00,$50,$14,$00                                 ; $6943 row 37: ...11...............11...11.....
; -----------------------------------------------------------------------------
; DEER_MIRROR_MATCH native 2-bpp image
; 9 bytes/row = 36 pixels, 38 rows; 342 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DEER_MIRROR_MATCH_IMG_03:
        db      $1F,$0F,$09,$26                                                 ; $694B X reference, Y reference, source-byte width, height
        db      $00,$00,$30,$00,$00,$00,$00,$00,$00                             ; $694F row 00: .........3..........................
        db      $00,$00,$30,$00,$00,$00,$00,$00,$00                             ; $6958 row 01: .........3..........................
        db      $00,$03,$F3,$00,$00,$00,$00,$00,$00                             ; $6961 row 02: .......333.3........................
        db      $30,$00,$3C,$00,$00,$00,$00,$00,$00                             ; $696A row 03: .3.......33.........................
        db      $0C,$00,$0C,$00,$00,$00,$00,$00,$00                             ; $6973 row 04: ..3.......3.........................
        db      $0F,$00,$CC,$00,$00,$00,$00,$00,$00                             ; $697C row 05: ..33....3.3.........................
        db      $C0,$F0,$3C,$C0,$00,$00,$00,$00,$00                             ; $6985 row 06: 3...33...33.3.......................
        db      $3C,$0C,$C3,$00,$00,$00,$00,$00,$00                             ; $698E row 07: .33...3.3..3........................
        db      $0F,$FF,$30,$C0,$00,$00,$00,$00,$00                             ; $6997 row 08: ..333333.3..3.......................
        db      $FC,$00,$5F,$C1,$50,$00,$00,$00,$00                             ; $69A0 row 09: 333.....11333..111..................
        db      $00,$00,$15,$75,$40,$00,$00,$00,$00                             ; $69A9 row 10: .........11113111...................
        db      $00,$00,$01,$55,$00,$00,$00,$00,$00                             ; $69B2 row 11: ...........11111....................
        db      $00,$00,$05,$55,$00,$00,$00,$00,$00                             ; $69BB row 12: ..........111111....................
        db      $00,$00,$04,$55,$00,$00,$00,$00,$00                             ; $69C4 row 13: ..........1.1111....................
        db      $00,$00,$15,$55,$00,$00,$00,$00,$00                             ; $69CD row 14: .........1111111....................
        db      $00,$00,$55,$55,$00,$00,$00,$00,$00                             ; $69D6 row 15: ........11111111....................
        db      $00,$00,$55,$15,$00,$00,$00,$00,$00                             ; $69DF row 16: ........1111.111....................
        db      $00,$00,$00,$15,$00,$00,$00,$00,$00                             ; $69E8 row 17: .............111....................
        db      $00,$00,$00,$15,$00,$00,$00,$00,$00                             ; $69F1 row 18: .............111....................
        db      $00,$00,$00,$55,$00,$00,$00,$00,$00                             ; $69FA row 19: ............1111....................
        db      $00,$00,$00,$55,$40,$00,$00,$00,$04                             ; $6A03 row 20: ............11111.................1.
        db      $00,$00,$01,$55,$50,$00,$00,$00,$14                             ; $6A0C row 21: ...........1111111...............11.
        db      $00,$00,$01,$55,$55,$55,$55,$55,$50                             ; $6A15 row 22: ...........11111111111111111111111..
        db      $00,$00,$01,$55,$55,$55,$55,$55,$40                             ; $6A1E row 23: ...........1111111111111111111111...
        db      $00,$00,$01,$55,$55,$55,$55,$55,$50                             ; $6A27 row 24: ...........11111111111111111111111..
        db      $00,$00,$00,$55,$55,$55,$55,$55,$50                             ; $6A30 row 25: ............1111111111111111111111..
        db      $00,$00,$00,$55,$55,$55,$55,$55,$50                             ; $6A39 row 26: ............1111111111111111111111..
        db      $00,$00,$01,$45,$55,$55,$55,$55,$40                             ; $6A42 row 27: ...........11.1111111111111111111...
        db      $00,$00,$05,$45,$55,$55,$41,$45,$40                             ; $6A4B row 28: ..........111.11111111111..11.111...
        db      $00,$00,$15,$15,$00,$00,$01,$41,$50                             ; $6A54 row 29: .........111.111...........11..111..
        db      $00,$00,$14,$14,$00,$00,$01,$50,$54                             ; $6A5D row 30: .........11..11............111..111.
        db      $00,$00,$04,$50,$00,$00,$00,$50,$14                             ; $6A66 row 31: ..........1.11..............11...11.
        db      $00,$00,$01,$50,$00,$00,$00,$50,$14                             ; $6A6F row 32: ...........111..............11...11.
        db      $00,$00,$01,$45,$00,$00,$00,$50,$54                             ; $6A78 row 33: ...........11.11............11..111.
        db      $00,$00,$05,$15,$00,$00,$01,$40,$50                             ; $6A81 row 34: ..........11.111...........11...11..
        db      $00,$00,$05,$00,$00,$00,$01,$40,$50                             ; $6A8A row 35: ..........11...............11...11..
        db      $00,$00,$05,$00,$00,$00,$01,$40,$50                             ; $6A93 row 36: ..........11...............11...11..
        db      $00,$00,$14,$00,$00,$00,$05,$01,$40                             ; $6A9C row 37: .........11...............11...11...
; -----------------------------------------------------------------------------
; DEER_MIRROR_MATCH native 2-bpp image
; 5 bytes/row = 20 pixels, 47 rows; 235 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DEER_MIRROR_MATCH_IMG_04:
        db      $0A,$18,$05,$2F                                                 ; $6AA5 X reference, Y reference, source-byte width, height
        db      $00,$00,$30,$00,$00                                             ; $6AA9 row 00: .........3..........
        db      $00,$00,$30,$00,$00                                             ; $6AAE row 01: .........3..........
        db      $00,$03,$F3,$00,$00                                             ; $6AB3 row 02: .......333.3........
        db      $30,$00,$3C,$00,$00                                             ; $6AB8 row 03: .3.......33.........
        db      $0C,$00,$0C,$00,$00                                             ; $6ABD row 04: ..3.......3.........
        db      $0F,$00,$CC,$00,$00                                             ; $6AC2 row 05: ..33....3.3.........
        db      $C0,$F0,$3C,$C0,$00                                             ; $6AC7 row 06: 3...33...33.3.......
        db      $3C,$0C,$C3,$00,$00                                             ; $6ACC row 07: .33...3.3..3........
        db      $0F,$FF,$30,$C0,$00                                             ; $6AD1 row 08: ..333333.3..3.......
        db      $FC,$00,$5F,$C1,$50                                             ; $6AD6 row 09: 333.....11333..111..
        db      $00,$00,$15,$75,$40                                             ; $6ADB row 10: .........11113111...
        db      $05,$00,$01,$55,$00                                             ; $6AE0 row 11: ..11.......11111....
        db      $05,$40,$05,$55,$00                                             ; $6AE5 row 12: ..111.....111111....
        db      $00,$50,$04,$55,$00                                             ; $6AEA row 13: ....11....1.1111....
        db      $00,$50,$15,$55,$00                                             ; $6AEF row 14: ....11...1111111....
        db      $00,$50,$55,$55,$00                                             ; $6AF4 row 15: ....11..11111111....
        db      $00,$50,$55,$15,$00                                             ; $6AF9 row 16: ....11..1111.111....
        db      $04,$50,$00,$15,$00                                             ; $6AFE row 17: ..1.11.......111....
        db      $14,$50,$00,$15,$00                                             ; $6B03 row 18: .11.11.......111....
        db      $00,$51,$40,$55,$00                                             ; $6B08 row 19: ....11.11...1111....
        db      $00,$54,$51,$55,$00                                             ; $6B0D row 20: ....111.11.11111....
        db      $00,$14,$15,$54,$00                                             ; $6B12 row 21: .....11..111111.....
        db      $00,$15,$15,$54,$00                                             ; $6B17 row 22: .....111.111111.....
        db      $00,$05,$55,$50,$00                                             ; $6B1C row 23: ......11111111......
        db      $00,$05,$55,$50,$00                                             ; $6B21 row 24: ......11111111......
        db      $00,$05,$55,$40,$00                                             ; $6B26 row 25: ......1111111.......
        db      $00,$05,$55,$40,$00                                             ; $6B2B row 26: ......1111111.......
        db      $00,$01,$55,$40,$00                                             ; $6B30 row 27: .......111111.......
        db      $00,$01,$55,$40,$00                                             ; $6B35 row 28: .......111111.......
        db      $00,$01,$55,$40,$00                                             ; $6B3A row 29: .......111111.......
        db      $00,$00,$55,$50,$00                                             ; $6B3F row 30: ........111111......
        db      $00,$00,$55,$50,$00                                             ; $6B44 row 31: ........111111......
        db      $00,$00,$55,$54,$00                                             ; $6B49 row 32: ........1111111.....
        db      $00,$00,$15,$54,$00                                             ; $6B4E row 33: .........111111.....
        db      $00,$00,$15,$55,$00                                             ; $6B53 row 34: .........1111111....
        db      $00,$00,$15,$15,$40                                             ; $6B58 row 35: .........111.1111...
        db      $00,$00,$14,$15,$50                                             ; $6B5D row 36: .........11..11111..
        db      $00,$00,$14,$15,$00                                             ; $6B62 row 37: .........11..111....
        db      $00,$00,$14,$05,$00                                             ; $6B67 row 38: .........11...11....
        db      $00,$00,$15,$01,$40                                             ; $6B6C row 39: .........111...11...
        db      $00,$00,$05,$01,$40                                             ; $6B71 row 40: ..........11...11...
        db      $00,$00,$05,$01,$40                                             ; $6B76 row 41: ..........11...11...
        db      $00,$00,$05,$05,$40                                             ; $6B7B row 42: ..........11..111...
        db      $00,$00,$14,$05,$00                                             ; $6B80 row 43: .........11...11....
        db      $00,$00,$14,$05,$00                                             ; $6B85 row 44: .........11...11....
        db      $00,$00,$14,$05,$00                                             ; $6B8A row 45: .........11...11....
        db      $00,$00,$50,$14,$00                                             ; $6B8F row 46: ........11...11.....
; -----------------------------------------------------------------------------
; DEER_MIRROR_MATCH native 2-bpp image
; 7 bytes/row = 28 pixels, 43 rows; 301 packed pixel bytes
; Pixels are MSB-first pairs: . = 0, 1 = 1, 2 = 2, 3 = 3.
; X/Y reference bytes position the image relative to the current object.
; -----------------------------------------------------------------------------
DEER_MIRROR_MATCH_IMG_05:
        db      $0C,$23,$07,$2B                                                 ; $6B94 X reference, Y reference, source-byte width, height
        db      $00,$00,$00,$08,$00,$00,$00                                     ; $6B98 row 00: ..............2.............
        db      $00,$00,$00,$28,$00,$00,$00                                     ; $6B9F row 01: .............22.............
        db      $00,$00,$00,$3A,$00,$00,$00                                     ; $6BA6 row 02: .............322............
        db      $00,$00,$00,$E8,$80,$00,$00                                     ; $6BAD row 03: ............322.2...........
        db      $00,$00,$02,$88,$00,$00,$00                                     ; $6BB4 row 04: ...........22.2.............
        db      $00,$00,$08,$0A,$00,$00,$00                                     ; $6BBB row 05: ..........2...22............
        db      $00,$00,$00,$80,$80,$00,$00                                     ; $6BC2 row 06: ............2...2...........
        db      $00,$00,$02,$28,$00,$00,$00                                     ; $6BC9 row 07: ...........2.22.............
        db      $00,$00,$0E,$A8,$B0,$00,$00                                     ; $6BD0 row 08: ..........32222.23..........
        db      $00,$00,$A0,$28,$8C,$00,$00                                     ; $6BD7 row 09: ........22...22.2.3.........
        db      $00,$00,$02,$20,$A2,$00,$00                                     ; $6BDE row 10: ...........2.2..22.2........
        db      $00,$00,$20,$A2,$20,$00,$00                                     ; $6BE5 row 11: .........2..22.2.2..........
        db      $00,$03,$EA,$22,$8A,$00,$00                                     ; $6BEC row 12: .......33222.2.22.22........
        db      $00,$03,$88,$2A,$28,$C0,$00                                     ; $6BF3 row 13: .......32.2..222.22.3.......
        db      $00,$2C,$20,$A2,$82,$B0,$00                                     ; $6BFA row 14: .....23..2..22.22..223......
        db      $00,$02,$28,$2A,$88,$A0,$00                                     ; $6C01 row 15: .......2.22..2222.2.22......
        db      $00,$28,$22,$00,$08,$20,$00                                     ; $6C08 row 16: .....22..2.2......2..2......
        db      $00,$80,$BA,$2A,$88,$00,$00                                     ; $6C0F row 17: ....2...2322.2222.2.........
        db      $00,$82,$A2,$20,$82,$C0,$00                                     ; $6C16 row 18: ....2..222.2.2..2..23.......
        db      $00,$0F,$82,$82,$8A,$F8,$00                                     ; $6C1D row 19: ......332..22..22.22332.....
        db      $00,$38,$2A,$A2,$2A,$8B,$00                                     ; $6C24 row 20: .....32..22222.2.2222.23....
        db      $00,$20,$AA,$08,$AF,$82,$80                                     ; $6C2B row 21: .....2..2222..2.22332..22...
        db      $02,$02,$BC,$20,$8B,$F0,$00                                     ; $6C32 row 22: ...2...2233..2..2.2333......
        db      $00,$2E,$F2,$02,$A0,$A0,$00                                     ; $6C39 row 23: .....23233.2...222..22......
        db      $03,$EA,$B8,$88,$28,$0A,$00                                     ; $6C40 row 24: ...33222232.2.2..22...22....
        db      $0E,$0A,$A2,$A0,$8A,$F0,$00                                     ; $6C47 row 25: ..32..2222.222..2.2233......
        db      $28,$3A,$08,$88,$2A,$B0,$00                                     ; $6C4E row 26: .22..322..2.2.2..22223......
        db      $00,$EA,$28,$8B,$E8,$2C,$00                                     ; $6C55 row 27: ....3222.22.2.23322..23.....
        db      $02,$20,$AE,$AA,$A3,$C8,$80                                     ; $6C5C row 28: ...2.2..2232222222.33.2.2...
        db      $08,$0A,$F2,$88,$02,$80,$00                                     ; $6C63 row 29: ..2...2233.22.2....22.......
        db      $20,$FA,$A0,$8A,$A0,$B0,$00                                     ; $6C6A row 30: .2..332222..2.2222..23......
        db      $03,$A0,$AA,$80,$A8,$2C,$00                                     ; $6C71 row 31: ...322..22222...222..23.....
        db      $0A,$00,$22,$A8,$28,$0F,$80                                     ; $6C78 row 32: ..22.....2.2222..22...332...
        db      $02,$28,$08,$A0,$23,$82,$00                                     ; $6C7F row 33: ...2.22...2.22...2.32..2....
        db      $80,$20,$AA,$8A,$82,$C0,$80                                     ; $6C86 row 34: 2....2..22222.222..23...2...
        db      $02,$02,$20,$AA,$80,$B8,$00                                     ; $6C8D row 35: ...2...2.2..22222...232.....
        db      $0A,$08,$00,$A2,$A0,$80,$00                                     ; $6C94 row 36: ..22..2.....22.222..2.......
        db      $28,$0A,$00,$A0,$20,$28,$80                                     ; $6C9B row 37: .22...22....22...2...22.2...
        db      $00,$00,$02,$A0,$00,$00,$A0                                     ; $6CA2 row 38: ...........222..........22..
        db      $00,$00,$0A,$A0,$00,$00,$00                                     ; $6CA9 row 39: ..........2222..............
        db      $00,$00,$02,$A8,$00,$00,$00                                     ; $6CB0 row 40: ...........2222.............
        db      $00,$00,$0A,$02,$00,$00,$00                                     ; $6CB7 row 41: ..........22...2............
        db      $00,$00,$20,$00,$00,$00,$00                                     ; $6CBE row 42: .........2..................
        db      $80,$40,$60,$30,$FF,$80,$28                                     ; $6CC5 preserved bytes
        db      $40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30,$40,$30 ; $6CCC
        db      $40,$30                                                         ; $6CDC preserved bytes

DEER_MIRROR_MATCH_CORRECT_THREAD_1:
        rst     $08                                                             ; $6CDE colon entry
        dw      XT_LIT                                                          ; $6CDF execution token
        dw      $F2F8                                                           ; $6CE1 inline word
        dw      XT_DUP                                                          ; $6CE3 execution token
        dw      XT_1plusBbang                                                   ; $6CE5 execution token
        dw      XT_Bat                                                          ; $6CE7 execution token
        dw      XT_RETURN                                                       ; $6CE9 execution token

DEER_MIRROR_MATCH_CORRECT_THREAD_2:
        rst     $08                                                             ; $6CEB colon entry
        dw      XT_LIT                                                          ; $6CEC execution token
        dw      $F2F8                                                           ; $6CEE inline word
        dw      XT_Bat                                                          ; $6CF0 execution token
        dw      XT_BARRAY                                                       ; $6CF2 execution token
        dw      $6CC5                                                           ; $6CF4 inline word
        dw      XT_Bat                                                          ; $6CF6 execution token
        dw      XT_LIT                                                          ; $6CF8 execution token
        dw      $F2F8                                                           ; $6CFA inline word
        dw      XT_Bat                                                          ; $6CFC execution token
        dw      XT_BARRAY                                                       ; $6CFE execution token
        dw      $6CC7                                                           ; $6D00 inline word
        dw      XT_Bat                                                          ; $6D02 execution token
        dw      XT_LIT                                                          ; $6D04 execution token
        dw      $F2F8                                                           ; $6D06 inline word
        dw      XT_Bat                                                          ; $6D08 execution token
        dw      XT_BARRAY                                                       ; $6D0A execution token
        dw      $6CC9                                                           ; $6D0C inline word
        dw      XT_Bat                                                          ; $6D0E execution token
        dw      $2B71                                                           ; $6D10 execution token
        dw      XT_RETURN                                                       ; $6D12 execution token

DEER_MIRROR_MATCH_CORRECT_THREAD_3:
        rst     $08                                                             ; $6D14 colon entry
        dw      XT_LIT                                                          ; $6D15 execution token
        dw      $F2F9                                                           ; $6D17 inline word
        dw      XT_Bat                                                          ; $6D19 execution token
        dw      XT_BARRAY                                                       ; $6D1B execution token
        dw      $6CCB                                                           ; $6D1D inline word
        dw      XT_Bat                                                          ; $6D1F execution token
        dw      $2AF2                                                           ; $6D21 execution token
        dw      XT_LIT                                                          ; $6D23 execution token
        dw      $F2F9                                                           ; $6D25 inline word
        dw      XT_DUP                                                          ; $6D27 execution token
        dw      XT_1plusBbang                                                   ; $6D29 execution token
        dw      XT_Bat                                                          ; $6D2B execution token
        dw      XT_RETURN                                                       ; $6D2D execution token

DEER_MIRROR_MATCH_CORRECT_LOOP_1:
        rst     $08                                                             ; $6D2F colon entry
        dw      XT_0                                                            ; $6D30 execution token
        dw      XT_LIT                                                          ; $6D32 execution token
        dw      $FD3D                                                           ; $6D34 inline word
        dw      $2BEF                                                           ; $6D36 execution token
        dw      $3F38                                                           ; $6D38 execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_1_R_1:
        dw      XT_LIT                                                          ; $6D3A execution token
        dw      $F2F8                                                           ; $6D3C inline word
        dw      XT_BZERO                                                        ; $6D3E execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_1_R_2:
        dw      $3FD4                                                           ; $6D40 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_2                              ; $6D42 execution token
        dw      XT_LITbyte                                                      ; $6D44 execution token
        db      $0A                                                             ; $6D46 inline byte
        dw      $2BA8                                                           ; $6D47 execution token
        dw      $3FDF                                                           ; $6D49 execution token
        dw      XT_LIT                                                          ; $6D4B execution token
        dw      $F2F8                                                           ; $6D4D inline word
        dw      XT_Bat                                                          ; $6D4F execution token
        dw      XT_1plusBbang                                                   ; $6D51 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_2                              ; $6D53 execution token
        dw      XT_LIT                                                          ; $6D55 execution token
        dw      $F2F9                                                           ; $6D57 inline word
        dw      XT_Bat                                                          ; $6D59 execution token
        dw      XT_1                                                            ; $6D5B execution token
        dw      XT_equal                                                        ; $6D5D execution token
        dw      XT_0BRANCH                                                      ; $6D5F execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_1_C                              ; $6D61 branch target
        dw      $3FBC                                                           ; $6D63 execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_1_C:
        dw      XT_LITbyte                                                      ; $6D65 execution token
        db      $0A                                                             ; $6D67 inline byte
        dw      $2BA8                                                           ; $6D68 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_1                              ; $6D6A execution token
        dw      XT_1                                                            ; $6D6C execution token
        dw      XT_gt                                                           ; $6D6E execution token
        dw      XT_0BRANCH                                                      ; $6D70 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_1_R_2                            ; $6D72 branch target
        dw      XT_LIT                                                          ; $6D74 execution token
        dw      $F2F8                                                           ; $6D76 inline word
        dw      XT_BZERO                                                        ; $6D78 execution token
        dw      $3FEA                                                           ; $6D7A execution token
        dw      XT_LITbyte                                                      ; $6D7C execution token
        db      $02                                                             ; $6D7E inline byte
        dw      $2BA8                                                           ; $6D7F execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_3                              ; $6D81 execution token
        dw      XT_LITbyte                                                      ; $6D83 execution token
        db      $03                                                             ; $6D85 inline byte
        dw      XT_gt                                                           ; $6D86 execution token
        dw      XT_0BRANCH                                                      ; $6D88 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_1_R_1                            ; $6D8A branch target
        dw      XT_LIT                                                          ; $6D8C execution token
        dw      $F2F9                                                           ; $6D8E inline word
        dw      XT_BZERO                                                        ; $6D90 execution token
        dw      $2B8C                                                           ; $6D92 execution token
        dw      XT_RETURN                                                       ; $6D94 execution token

DEER_MIRROR_MATCH_CORRECT_THREAD_4:
        rst     $08                                                             ; $6D96 colon entry
        dw      XT_LIT                                                          ; $6D97 execution token
        dw      $F2F6                                                           ; $6D99 inline word
        dw      XT_DUP                                                          ; $6D9B execution token
        dw      XT_1plusBbang                                                   ; $6D9D execution token
        dw      XT_Bat                                                          ; $6D9F execution token
        dw      XT_RETURN                                                       ; $6DA1 execution token

DEER_MIRROR_MATCH_CORRECT_THREAD_5:
        rst     $08                                                             ; $6DA3 colon entry
        dw      XT_LIT                                                          ; $6DA4 execution token
        dw      $F2F6                                                           ; $6DA6 inline word
        dw      XT_Bat                                                          ; $6DA8 execution token
        dw      XT_BARRAY                                                       ; $6DAA execution token
        dw      $6CC5                                                           ; $6DAC inline word
        dw      XT_Bat                                                          ; $6DAE execution token
        dw      XT_LIT                                                          ; $6DB0 execution token
        dw      $F2F6                                                           ; $6DB2 inline word
        dw      XT_Bat                                                          ; $6DB4 execution token
        dw      XT_BARRAY                                                       ; $6DB6 execution token
        dw      $6CC7                                                           ; $6DB8 inline word
        dw      XT_Bat                                                          ; $6DBA execution token
        dw      XT_LIT                                                          ; $6DBC execution token
        dw      $F2F6                                                           ; $6DBE inline word
        dw      XT_Bat                                                          ; $6DC0 execution token
        dw      XT_BARRAY                                                       ; $6DC2 execution token
        dw      $6CC9                                                           ; $6DC4 inline word
        dw      XT_Bat                                                          ; $6DC6 execution token
        dw      $2B71                                                           ; $6DC8 execution token
        dw      XT_RETURN                                                       ; $6DCA execution token
DEER_MIRROR_MATCH_CORRECT_THREAD_6:
        rst     $08                                                             ; $6DCC colon entry
        dw      XT_LIT                                                          ; $6DCD execution token
        dw      $F2F7                                                           ; $6DCF inline word
        dw      XT_Bat                                                          ; $6DD1 execution token
        dw      XT_BARRAY                                                       ; $6DD3 execution token
        dw      $6CCB                                                           ; $6DD5 inline word
        dw      XT_Bat                                                          ; $6DD7 execution token
        dw      $2AF2                                                           ; $6DD9 execution token
        dw      XT_LIT                                                          ; $6DDB execution token
        dw      $F2F7                                                           ; $6DDD inline word
        dw      XT_DUP                                                          ; $6DDF execution token
        dw      XT_1plusBbang                                                   ; $6DE1 execution token
        dw      XT_Bat                                                          ; $6DE3 execution token
        dw      XT_RETURN                                                       ; $6DE5 execution token

DEER_MIRROR_MATCH_CORRECT_LOOP_2:
        rst     $08                                                             ; $6DE7 colon entry
        dw      XT_0                                                            ; $6DE8 execution token
        dw      XT_LIT                                                          ; $6DEA execution token
        dw      $FD6D                                                           ; $6DEC inline word
        dw      $2BEF                                                           ; $6DEE execution token
        dw      $3FEA                                                           ; $6DF0 execution token
        dw      XT_LITbyte                                                      ; $6DF2 execution token
        db      $03                                                             ; $6DF4 inline byte
        dw      $2BA8                                                           ; $6DF5 execution token
        dw      $3F38                                                           ; $6DF7 execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_2_R_1:
        dw      XT_LIT                                                          ; $6DF9 execution token
        dw      $F2F6                                                           ; $6DFB inline word
        dw      XT_BZERO                                                        ; $6DFD execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_2_R_2:
        dw      $3FD4                                                           ; $6DFF execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_5                              ; $6E01 execution token
        dw      XT_LITbyte                                                      ; $6E03 execution token
        db      $0A                                                             ; $6E05 inline byte
        dw      $2BA8                                                           ; $6E06 execution token
        dw      $3FDF                                                           ; $6E08 execution token
        dw      XT_LIT                                                          ; $6E0A execution token
        dw      $F2F6                                                           ; $6E0C inline word
        dw      XT_Bat                                                          ; $6E0E execution token
        dw      XT_1plusBbang                                                   ; $6E10 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_5                              ; $6E12 execution token
        dw      XT_LIT                                                          ; $6E14 execution token
        dw      $F2F7                                                           ; $6E16 inline word
        dw      XT_Bat                                                          ; $6E18 execution token
        dw      XT_1                                                            ; $6E1A execution token
        dw      XT_equal                                                        ; $6E1C execution token
        dw      XT_0BRANCH                                                      ; $6E1E execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_2_C                              ; $6E20 branch target
        dw      $3FBC                                                           ; $6E22 execution token
DEER_MIRROR_MATCH_CORRECT_LOOP_2_C:
        dw      XT_LITbyte                                                      ; $6E24 execution token
        db      $0A                                                             ; $6E26 inline byte
        dw      $2BA8                                                           ; $6E27 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_4                              ; $6E29 execution token
        dw      XT_1                                                            ; $6E2B execution token
        dw      XT_gt                                                           ; $6E2D execution token
        dw      XT_0BRANCH                                                      ; $6E2F execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_2_R_2                            ; $6E31 branch target
        dw      XT_LIT                                                          ; $6E33 execution token
        dw      $F2F6                                                           ; $6E35 inline word
        dw      XT_BZERO                                                        ; $6E37 execution token
        dw      $3FEA                                                           ; $6E39 execution token
        dw      XT_LITbyte                                                      ; $6E3B execution token
        db      $02                                                             ; $6E3D inline byte
        dw      $2BA8                                                           ; $6E3E execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_6                              ; $6E40 execution token
        dw      XT_LITbyte                                                      ; $6E42 execution token
        db      $03                                                             ; $6E44 inline byte
        dw      XT_gt                                                           ; $6E45 execution token
        dw      XT_0BRANCH                                                      ; $6E47 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_2_R_1                            ; $6E49 branch target
        dw      XT_LIT                                                          ; $6E4B execution token
        dw      $F2F7                                                           ; $6E4D inline word
        dw      XT_BZERO                                                        ; $6E4F execution token
        dw      $2B8C                                                           ; $6E51 execution token
        dw      XT_RETURN                                                       ; $6E53 execution token

DEER_MIRROR_MATCH_CORRECT_THREAD_7:
        rst     $08                                                             ; $6E55 colon entry
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_2                                ; $6E56 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_LOOP_1                                ; $6E58 execution token
        dw      XT_RETURN                                                       ; $6E5A execution token
DEER_MIRROR_MATCH_SETUP_THREAD_1:
        rst     $08                                                             ; $6E5C colon entry
        dw      XT_0                                                            ; $6E5D execution token
        dw      XT_LIT                                                          ; $6E5F execution token
        dw      $FD6D                                                           ; $6E61 inline word
        dw      $2BEF                                                           ; $6E63 execution token
        dw      $3F56                                                           ; $6E65 execution token
        dw      XT_LITbyte                                                      ; $6E67 execution token
        db      $07                                                             ; $6E69 inline byte
        dw      $2BA8                                                           ; $6E6A execution token
        dw      $3FEA                                                           ; $6E6C execution token
        dw      XT_LITbyte                                                      ; $6E6E execution token
        db      $03                                                             ; $6E70 inline byte
        dw      $2BA8                                                           ; $6E71 execution token
        dw      $3FC8                                                           ; $6E73 execution token
        dw      XT_LITbyte                                                      ; $6E75 execution token
        db      $07                                                             ; $6E77 inline byte
        dw      $2BA8                                                           ; $6E78 execution token
        dw      $3FEA                                                           ; $6E7A execution token
        dw      XT_LITbyte                                                      ; $6E7C execution token
        db      $03                                                             ; $6E7E inline byte
        dw      $2BA8                                                           ; $6E7F execution token
        dw      $3FB2                                                           ; $6E81 execution token
        dw      XT_LITbyte                                                      ; $6E83 execution token
        db      $07                                                             ; $6E85 inline byte
        dw      $2BA8                                                           ; $6E86 execution token
        dw      $3FEA                                                           ; $6E88 execution token
        dw      XT_LITbyte                                                      ; $6E8A execution token
        db      $03                                                             ; $6E8C inline byte
        dw      $2BA8                                                           ; $6E8D execution token
        dw      $3FC8                                                           ; $6E8F execution token
        dw      XT_LITbyte                                                      ; $6E91 execution token
        db      $07                                                             ; $6E93 inline byte
        dw      $2BA8                                                           ; $6E94 execution token
        dw      $3FEA                                                           ; $6E96 execution token
        dw      XT_LITbyte                                                      ; $6E98 execution token
        db      $03                                                             ; $6E9A inline byte
        dw      $2BA8                                                           ; $6E9B execution token
        dw      $3FB2                                                           ; $6E9D execution token
        dw      XT_LITbyte                                                      ; $6E9F execution token
        db      $07                                                             ; $6EA1 inline byte
        dw      $2BA8                                                           ; $6EA2 execution token
        dw      $3FEA                                                           ; $6EA4 execution token
        dw      XT_LITbyte                                                      ; $6EA6 execution token
        db      $03                                                             ; $6EA8 inline byte
        dw      $2BA8                                                           ; $6EA9 execution token
        dw      $3FC8                                                           ; $6EAB execution token
        dw      XT_LITbyte                                                      ; $6EAD execution token
        db      $07                                                             ; $6EAF inline byte
        dw      $2BA8                                                           ; $6EB0 execution token
        dw      $3FEA                                                           ; $6EB2 execution token
        dw      XT_LITbyte                                                      ; $6EB4 execution token
        db      $03                                                             ; $6EB6 inline byte
        dw      $2BA8                                                           ; $6EB7 execution token
        dw      $3F78                                                           ; $6EB9 execution token
        dw      XT_LITbyte                                                      ; $6EBB execution token
        db      $16                                                             ; $6EBD inline byte
        dw      $2BA8                                                           ; $6EBE execution token
        dw      $3FEA                                                           ; $6EC0 execution token
        dw      XT_LITbyte                                                      ; $6EC2 execution token
        db      $02                                                             ; $6EC4 inline byte
        dw      $2BA8                                                           ; $6EC5 execution token
        dw      $2B8C                                                           ; $6EC7 execution token
        dw      XT_RETURN                                                       ; $6EC9 execution token

DEER_MIRROR_MATCH_SETUP_THREAD_2:
        rst     $08                                                             ; $6ECB colon entry
        dw      XT_0                                                            ; $6ECC execution token
        dw      XT_LIT                                                          ; $6ECE execution token
        dw      $FD3D                                                           ; $6ED0 inline word
        dw      $2BEF                                                           ; $6ED2 execution token
        dw      $3FEA                                                           ; $6ED4 execution token
        dw      XT_LITbyte                                                      ; $6ED6 execution token
        db      $03                                                             ; $6ED8 inline byte
        dw      $2BA8                                                           ; $6ED9 execution token
        dw      $3F56                                                           ; $6EDB execution token
        dw      XT_LITbyte                                                      ; $6EDD execution token
        db      $07                                                             ; $6EDF inline byte
        dw      $2BA8                                                           ; $6EE0 execution token
        dw      $3FEA                                                           ; $6EE2 execution token
        dw      XT_LITbyte                                                      ; $6EE4 execution token
        db      $03                                                             ; $6EE6 inline byte
        dw      $2BA8                                                           ; $6EE7 execution token
        dw      $3FC8                                                           ; $6EE9 execution token
        dw      XT_LITbyte                                                      ; $6EEB execution token
        db      $07                                                             ; $6EED inline byte
        dw      $2BA8                                                           ; $6EEE execution token
        dw      $3FEA                                                           ; $6EF0 execution token
        dw      XT_LITbyte                                                      ; $6EF2 execution token
        db      $03                                                             ; $6EF4 inline byte
        dw      $2BA8                                                           ; $6EF5 execution token
        dw      $3FB2                                                           ; $6EF7 execution token
        dw      XT_LITbyte                                                      ; $6EF9 execution token
        db      $07                                                             ; $6EFB inline byte
        dw      $2BA8                                                           ; $6EFC execution token
        dw      $3FEA                                                           ; $6EFE execution token
        dw      XT_LITbyte                                                      ; $6F00 execution token
        db      $03                                                             ; $6F02 inline byte
        dw      $2BA8                                                           ; $6F03 execution token
        dw      $3FC8                                                           ; $6F05 execution token
        dw      XT_LITbyte                                                      ; $6F07 execution token
        db      $07                                                             ; $6F09 inline byte
        dw      $2BA8                                                           ; $6F0A execution token
        dw      $3FEA                                                           ; $6F0C execution token
        dw      XT_LITbyte                                                      ; $6F0E execution token
        db      $03                                                             ; $6F10 inline byte
        dw      $2BA8                                                           ; $6F11 execution token
        dw      $3FB2                                                           ; $6F13 execution token
        dw      XT_LITbyte                                                      ; $6F15 execution token
        db      $07                                                             ; $6F17 inline byte
        dw      $2BA8                                                           ; $6F18 execution token
        dw      $3FEA                                                           ; $6F1A execution token
        dw      XT_LITbyte                                                      ; $6F1C execution token
        db      $03                                                             ; $6F1E inline byte
        dw      $2BA8                                                           ; $6F1F execution token
        dw      $3FC8                                                           ; $6F21 execution token
        dw      XT_LITbyte                                                      ; $6F23 execution token
        db      $07                                                             ; $6F25 inline byte
        dw      $2BA8                                                           ; $6F26 execution token
        dw      $3FEA                                                           ; $6F28 execution token
        dw      XT_LITbyte                                                      ; $6F2A execution token
        db      $03                                                             ; $6F2C inline byte
        dw      $2BA8                                                           ; $6F2D execution token
        dw      $3F78                                                           ; $6F2F execution token
        dw      XT_LITbyte                                                      ; $6F31 execution token
        db      $16                                                             ; $6F33 inline byte
        dw      $2BA8                                                           ; $6F34 execution token
        dw      $3FEA                                                           ; $6F36 execution token
        dw      XT_LITbyte                                                      ; $6F38 execution token
        db      $02                                                             ; $6F3A inline byte
        dw      $2BA8                                                           ; $6F3B execution token
        dw      $2B8C                                                           ; $6F3D execution token
        dw      XT_RETURN                                                       ; $6F3F execution token

DEER_MIRROR_MATCH_SETUP_THREAD_3:
        rst     $08                                                             ; $6F41 colon entry
        dw      DEER_MIRROR_MATCH_SETUP_THREAD_1                                ; $6F42 execution token
        dw      DEER_MIRROR_MATCH_SETUP_THREAD_2                                ; $6F44 execution token
        dw      XT_RETURN                                                       ; $6F46 execution token

        db      $00,$00,$90,$8A                                                 ; $6F48 preserved bytes
        db      $00,$FA,$FF,$00,$06,$00,$00,$8B,$E4,$FF,$08,$00,$40,$FC,$08,$01 ; $6F4C
        db      $00,$00,$80,$E8,$FF,$00,$00,$18,$FC,$00,$00,$00,$00,$71,$F0,$FF ; $6F5C
        db      $FA,$FF,$60,$FC,$A0,$FE,$00,$00,$73,$F4,$FF,$FC,$FF,$50,$FC,$C8 ; $6F6C
        db      $FE,$00,$00,$80,$F0,$FF,$00,$00,$18,$FC,$00,$00,$00,$00,$88,$E7 ; $6F7C
        db      $FF,$05,$00,$30,$FC,$C0,$00,$00,$00,$00,$90,$B0,$FF,$BA,$FF,$00 ; $6F8C
        db      $00,$00,$00,$00,$90,$00,$00,$BA,$FF,$00,$00,$00,$00,$00,$90,$50 ; $6F9C
        db      $00,$BA,$FF,$00,$00,$00,$94,$6F,$9E,$6F,$A8,$6F,$0D,$03,$00,$00 ; $6FAC
        db      $08,$00,$0E,$0D,$00,$1F,$77,$68,$69,$63,$68,$20,$64,$65,$65,$72 ; $6FBC
        db      $20,$69,$73,$20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69 ; $6FCC
        db      $6D,$61,$67,$65,$3F,$1A,$77,$68,$69,$63,$68,$20,$64,$65,$65,$72 ; $6FDC
        db      $20,$69,$73,$20,$74,$68,$65,$20,$73,$61,$6D,$65,$20,$61,$73,$3F ; $6FEC
        db      $05,$00,$81,$05,$8A,$63,$05,$7E,$64,$03,$AF,$65,$03,$E3,$66,$05 ; $6FFC
        db      $17,$68,$00,$FF,$6F,$02,$00,$81,$05,$4B,$69,$05,$17,$68,$00,$14 ; $700C
        db      $70,$02,$00,$81,$05,$A5,$6A,$05,$8A,$63,$00,$20,$70,$17,$68,$8A ; $701C
        db      $63,$17,$68,$8A,$63,$4B,$69,$A5,$6A,$17,$68,$8A,$63,$17,$68,$8A ; $702C
        db      $63,$4B,$69,$A5,$6A,$11,$70,$1D,$70,$11,$70,$1D,$70,$C1,$6F,$C1 ; $703C
        db      $6F,$E1,$6F,$E1,$6F                                             ; $704C preserved bytes

DEER_MIRROR_MATCH_SETUP_ACTION:
        rst     $08                                                             ; $7051 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7052 execution token
        dw      XT_LIT                                                          ; $7054 execution token
        dw      $FF74                                                           ; $7056 inline word
        dw      XT_LITbyte                                                      ; $7058 execution token
        db      $14                                                             ; $705A inline byte
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $705B execution token
        dw      XT_ARRAY                                                        ; $705D execution token
        dw      $7049                                                           ; $705F inline word
        dw      XT_at                                                           ; $7061 execution token
        dw      XT_LIT                                                          ; $7063 execution token
        dw      $6FB2                                                           ; $7065 inline word
        dw      XT_LIT                                                          ; $7067 execution token
        dw      $6FB8                                                           ; $7069 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $706B execution token
        dw      XT_LIT                                                          ; $706D execution token
        dw      $008C                                                           ; $706F inline word
        dw      XT_LIT                                                          ; $7071 execution token
        dw      $FFF0                                                           ; $7073 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7075 execution token
        dw      XT_LIT                                                          ; $7077 execution token
        dw      $6B94                                                           ; $7079 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $707B execution token
        dw      XT_LIT                                                          ; $707D execution token
        dw      $6FFC                                                           ; $707F inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7081 execution token
        dw      XT_LIT                                                          ; $7083 execution token
        dw      $6F48                                                           ; $7085 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7087 execution token
        dw      DEER_MIRROR_MATCH_SETUP_THREAD_3                                ; $7089 execution token
        dw      XT_LITbyte                                                      ; $708B execution token
        db      $02                                                             ; $708D inline byte
        dw      $1F2F                                                           ; $708E execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7090 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7092 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $7094 execution token
        dw      XT_ARRAY                                                        ; $7096 execution token
        dw      $7029                                                           ; $7098 inline word
        dw      XT_at                                                           ; $709A execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $709C execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $709E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $70A0 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $70A2 execution token
        dw      XT_RETURN                                                       ; $70A4 execution token

DEER_MIRROR_MATCH_CORRECT_ACTION:
        rst     $08                                                             ; $70A6 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $70A7 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $70A9 execution token
        dw      XT_LIT                                                          ; $70AB execution token
        dw      $FFD2                                                           ; $70AD inline word
        dw      XT_LITbyte                                                      ; $70AF execution token
        db      $05                                                             ; $70B1 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $70B2 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $70B4 execution token
        dw      XT_ARRAY                                                        ; $70B6 execution token
        dw      $7049                                                           ; $70B8 inline word
        dw      XT_at                                                           ; $70BA execution token
        dw      XT_LIT                                                          ; $70BC execution token
        dw      $6FC1                                                           ; $70BE inline word
        dw      XT_equal                                                        ; $70C0 execution token
        dw      XT_0BRANCH                                                      ; $70C2 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_ACTION_C                              ; $70C4 branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $70C6 execution token
DEER_MIRROR_MATCH_CORRECT_ACTION_C:
        dw      XT_LIT                                                          ; $70C8 execution token
        dw      $6FFC                                                           ; $70CA inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $70CC execution token
        dw      XT_LITbyte                                                      ; $70CE execution token
        db      $5A                                                             ; $70D0 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $70D1 execution token
        dw      $19E9                                                           ; $70D3 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $70D5 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $70D7 execution token
        dw      XT_ARRAY                                                        ; $70D9 execution token
        dw      $7029                                                           ; $70DB inline word
        dw      XT_at                                                           ; $70DD execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $70DF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $70E1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $70E3 execution token
        dw      DEER_MIRROR_MATCH_CORRECT_THREAD_7                              ; $70E5 execution token
        dw      $1E34                                                           ; $70E7 execution token
        dw      XT_LITbyte                                                      ; $70E9 execution token
        db      $03                                                             ; $70EB inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $70EC execution token
        dw      $1A2C                                                           ; $70EE execution token
        dw      XT_LIT                                                          ; $70F0 execution token
        dw      $FFDB                                                           ; $70F2 inline word
        dw      XT_LIT                                                          ; $70F4 execution token
        dw      $FFFD                                                           ; $70F6 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $70F8 execution token
        dw      XT_LIT                                                          ; $70FA execution token
        dw      $6FFC                                                           ; $70FC inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $70FE execution token
        dw      XT_LITbyte                                                      ; $7100 execution token
        db      $50                                                             ; $7102 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7103 execution token
        dw      $19E9                                                           ; $7105 execution token
        dw      XT_LIT                                                          ; $7107 execution token
        dw      QUESTION_VARIANT_ADDR                                           ; $7109 inline word
        dw      XT_Bat                                                          ; $710B execution token
        dw      XT_ARRAY                                                        ; $710D execution token
        dw      $7041                                                           ; $710F inline word
        dw      XT_at                                                           ; $7111 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7113 execution token
        dw      XT_LITbyte                                                      ; $7115 execution token
        db      $5C                                                             ; $7117 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7118 execution token
        dw      $19E9                                                           ; $711A execution token
        dw      $1EF6                                                           ; $711C execution token
        dw      XT_LITbyte                                                      ; $711E execution token
        db      $0A                                                             ; $7120 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7121 execution token
        dw      $1A2C                                                           ; $7123 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7125 execution token
        dw      XT_RETURN                                                       ; $7127 execution token

DEER_MIRROR_MATCH_SECOND_ACTION:
        rst     $08                                                             ; $7129 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $712A execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $712C execution token
        dw      XT_LIT                                                          ; $712E execution token
        dw      $FFD2                                                           ; $7130 inline word
        dw      XT_LITbyte                                                      ; $7132 execution token
        db      $05                                                             ; $7134 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7135 execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $7137 execution token
        dw      XT_LIT                                                          ; $7139 execution token
        dw      $6FFC                                                           ; $713B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $713D execution token
        dw      XT_LITbyte                                                      ; $713F execution token
        db      $5A                                                             ; $7141 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7142 execution token
        dw      $19E9                                                           ; $7144 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7146 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $7148 execution token
        dw      XT_ARRAY                                                        ; $714A execution token
        dw      $7031                                                           ; $714C inline word
        dw      XT_at                                                           ; $714E execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7150 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7152 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7154 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7156 execution token
        dw      XT_LIT                                                          ; $7158 execution token
        dw      $FFDB                                                           ; $715A inline word
        dw      XT_LIT                                                          ; $715C execution token
        dw      $FFFD                                                           ; $715E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7160 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $7162 execution token
        dw      XT_ARRAY                                                        ; $7164 execution token
        dw      $7031                                                           ; $7166 inline word
        dw      XT_at                                                           ; $7168 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $716A execution token
        dw      $1EF6                                                           ; $716C execution token
        dw      XT_LITbyte                                                      ; $716E execution token
        db      $0A                                                             ; $7170 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7171 execution token
        dw      $1A2C                                                           ; $7173 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7175 execution token
        dw      XT_RETURN                                                       ; $7177 execution token

DEER_MIRROR_MATCH_REMAINING_ACTION:
        rst     $08                                                             ; $7179 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $717A execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $717C execution token
        dw      XT_LIT                                                          ; $717E execution token
        dw      $FFD2                                                           ; $7180 inline word
        dw      XT_LITbyte                                                      ; $7182 execution token
        db      $05                                                             ; $7184 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7185 execution token
        dw      XT_LIT                                                          ; $7187 execution token
        dw      $6FFC                                                           ; $7189 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $718B execution token
        dw      XT_LITbyte                                                      ; $718D execution token
        db      $5A                                                             ; $718F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7190 execution token
        dw      $19E9                                                           ; $7192 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7194 execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $7196 execution token
        dw      XT_ARRAY                                                        ; $7198 execution token
        dw      $7039                                                           ; $719A inline word
        dw      XT_at                                                           ; $719C execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $719E execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $71A0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $71A2 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $71A4 execution token
        dw      XT_LIT                                                          ; $71A6 execution token
        dw      $FFDB                                                           ; $71A8 inline word
        dw      XT_LIT                                                          ; $71AA execution token
        dw      $FFFD                                                           ; $71AC inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $71AE execution token
        dw      PPQ14_SHARED_PRESENT_THREAD                                     ; $71B0 execution token
        dw      XT_ARRAY                                                        ; $71B2 execution token
        dw      $7039                                                           ; $71B4 inline word
        dw      XT_at                                                           ; $71B6 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $71B8 execution token
        dw      XT_LITbyte                                                      ; $71BA execution token
        db      $0A                                                             ; $71BC inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $71BD execution token
        dw      $1A2C                                                           ; $71BF execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $71C1 execution token
        dw      XT_RETURN                                                       ; $71C3 execution token

DEER_MIRROR_MATCH_ACTIONS:
        db      $04                                                             ; $71C5 action count
        dw      DEER_MIRROR_MATCH_SETUP_ACTION                                  ; $71C6 setup action
        dw      DEER_MIRROR_MATCH_CORRECT_ACTION                                ; $71C8 correct answer
        dw      DEER_MIRROR_MATCH_SECOND_ACTION                                 ; $71CA second answer
        dw      DEER_MIRROR_MATCH_REMAINING_ACTION                              ; $71CC remaining answer

; Rooted by tier slot 0.
DEER_MIRROR_MATCH_V0_1_T0_INIT:
        rst     $08                                                          ; $71CE
        dw      XT_LITbyte                                                      ; $71CF
        db      $02                                                              ; $71D1
        dw      XT_RANDOM_BELOW                                                 ; $71D2
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $71D4
        dw      XT_LIT                                                          ; $71D6
        dw      PPQ14_DEER_MIRROR_MATCH_ACTIONS                                 ; $71D8
        dw      XT_RETURN                                                       ; $71DA

; Rooted by tier slot 1.
DEER_MIRROR_MATCH_V2_3_T1_INIT:
        rst     $08                                                          ; $71DC
        dw      XT_LITbyte                                                      ; $71DD
        db      $02                                                              ; $71DF
        dw      XT_RANDOM_BELOW                                                 ; $71E0
        dw      XT_LITbyte                                                      ; $71E2
        db      $02                                                              ; $71E4
        dw      XT_plus                                                         ; $71E5
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $71E7
        dw      XT_LIT                                                          ; $71E9
        dw      PPQ14_DEER_MIRROR_MATCH_ACTIONS                                 ; $71EB
        dw      XT_RETURN                                                       ; $71ED

; Root tier slot 0.
QUESTION_TIER_0_BUCKET:
        db      $02                                                             ; $71EF initializer count
        dw      DOG_MIRROR_MATCH_V0_1_T0_2_4_INIT                               ; $71F0 entry 0
        dw      DEER_MIRROR_MATCH_V0_1_T0_INIT                                  ; $71F2 entry 1

; Root tier slot 1.
QUESTION_TIER_1_BUCKET:
        db      $02                                                             ; $71F4 initializer count
        dw      VISUAL_PROGRESSION_VFIXED_T1_3_7_INIT                           ; $71F5 entry 0
        dw      DEER_MIRROR_MATCH_V2_3_T1_INIT                                  ; $71F7 entry 1

; Root tier slot 2.
QUESTION_TIER_2_BUCKET:
        db      $02                                                             ; $71F9 initializer count
        dw      DOG_MIRROR_MATCH_V0_1_T0_2_4_INIT                               ; $71FA entry 0
        dw      VISUAL_PROGRESSION_VFIXED_T2_6_INIT                             ; $71FC entry 1

; Root tier slot 3.
QUESTION_TIER_3_BUCKET:
        db      $02                                                             ; $71FE initializer count
        dw      VISUAL_ANALOGY_VFIXED_T3_7_INIT                                 ; $71FF entry 0
        dw      VISUAL_PROGRESSION_VFIXED_T1_3_7_INIT                           ; $7201 entry 1

; Root tier slot 4.
QUESTION_TIER_4_BUCKET:
        db      $01                                                             ; $7203 initializer count
        dw      DOG_MIRROR_MATCH_V0_1_T0_2_4_INIT                               ; $7204 entry 0

; Root tier slot 5.
QUESTION_TIER_5_BUCKET:
        db      $01                                                             ; $7206 initializer count
        dw      VISUAL_ANALOGY_VFIXED_T5_INIT                                   ; $7207 entry 0

; Root tier slot 6.
QUESTION_TIER_6_BUCKET:
        db      $01                                                             ; $7209 initializer count
        dw      VISUAL_PROGRESSION_VFIXED_T2_6_INIT                             ; $720A entry 0

; Root tier slot 7.
QUESTION_TIER_7_BUCKET:
        db      $02                                                             ; $720C initializer count
        dw      VISUAL_ANALOGY_VFIXED_T3_7_INIT                                 ; $720D entry 0
        dw      VISUAL_PROGRESSION_VFIXED_T1_3_7_INIT                           ; $720F entry 1

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_TIER_0_BUCKET                                          ; $7211 tier 0
        dw      QUESTION_TIER_1_BUCKET                                          ; $7213 tier 1
        dw      QUESTION_TIER_2_BUCKET                                          ; $7215 tier 2
        dw      QUESTION_TIER_3_BUCKET                                          ; $7217 tier 3
        dw      QUESTION_TIER_4_BUCKET                                          ; $7219 tier 4
        dw      QUESTION_TIER_5_BUCKET                                          ; $721B tier 5
        dw      QUESTION_TIER_6_BUCKET                                          ; $721D tier 6
        dw      QUESTION_TIER_7_BUCKET                                          ; $721F tier 7
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $7221
        db      $BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF ; $7231
        db      $80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$AA ; $7241
        db      $AA,$AA,$AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA ; $7251
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $7261
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $7271
        db      $00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80 ; $7281
        db      $00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$80,$00,$80,$00,$80 ; $7291
        db      $80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00 ; $72A1
        db      $80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00 ; $72B1
        db      $80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA ; $72C1
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $72D1
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $72E1
        db      $00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80 ; $72F1
        db      $00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$FB,$0B,$02,$17,$FC,$FC,$FC ; $7301
        db      $FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$00,$00,$FC,$FC,$FC ; $7311
        db      $FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$00,$00,$FC,$FC,$FC ; $7321
        db      $FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$FA,$0A,$02,$15,$C0 ; $7331
        db      $C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0 ; $7341
        db      $C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0 ; $7351
        db      $C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$03,$0B,$04,$17,$00,$00,$FC ; $7361
        db      $FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00,$00,$FC ; $7371
        db      $FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$FC,$FC,$00 ; $7381
        db      $00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00,$00,$FC,$FC,$00 ; $7391
        db      $00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$FC ; $73A1
        db      $FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00,$00,$FC ; $73B1
        db      $FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$02,$0A,$04,$15,$00,$00,$C0 ; $73C1
        db      $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0 ; $73D1
        db      $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0,$00 ; $73E1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0,$00 ; $73F1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0 ; $7401
        db      $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0 ; $7411
        db      $C0,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$80,$00 ; $7421
        db      $BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF ; $7431
        db      $80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80 ; $7441
        db      $00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$AA,$AA,$AA ; $7451
        db      $AA,$AA,$AA,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80 ; $7461
        db      $00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80 ; $7471
        db      $80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00 ; $7481
        db      $BF,$FF,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$BF,$FF,$80,$00 ; $7491
        db      $80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00 ; $74A1
        db      $80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF ; $74B1
        db      $FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$AA,$AA,$AA ; $74C1
        db      $AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80 ; $74D1
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $74E1
        db      $00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80 ; $74F1
        db      $00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80 ; $7501
        db      $AA,$AA,$AA,$AA,$AA,$AA,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF ; $7511
        db      $BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF ; $7521
        db      $BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF ; $7531
        db      $80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80 ; $7541
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $7551
        db      $00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80 ; $7561
        db      $00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80 ; $7571
        db      $AA,$AA,$AA,$AA,$AA,$AA,$80,$0E,$00,$08,$01,$77,$77,$77,$77,$77 ; $7581
        db      $77,$77,$70,$0E,$00,$08,$01,$77,$77,$77,$77,$77,$77,$77,$70,$7E ; $7591
        db      $00,$5E,$00,$5E,$00,$7E,$00,$66,$00,$BD,$00,$BD,$00,$66,$00,$3E ; $75A1
        db      $00,$2E,$00,$2E,$00,$3E,$00,$CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B ; $75B1
        db      $09,$01,$F6,$F2,$3F,$05,$09,$01,$F5,$F2,$3F,$05,$12,$01,$00,$09 ; $75C1
        db      $01,$FF,$00,$2E,$2B,$12,$01,$36,$F2,$2A,$09,$01,$80,$00,$09,$01 ; $75D1
        db      $80,$00,$09,$01,$80,$00,$71,$2B,$12,$01,$00,$12,$01,$0F,$2E,$2B ; $75E1
        db      $09,$01,$F6,$F2,$53,$01,$1A,$01,$A0,$75,$53,$01,$09,$01,$F6,$F2 ; $75F1
        db      $53,$01,$1A,$01,$A8,$75,$53,$01,$09,$01,$F6,$F2,$53,$01,$1A,$01 ; $7601
        db      $B0,$75,$53,$01,$71,$2B,$09,$01,$F5,$F2,$53,$01,$30,$01,$CF,$01 ; $7611
        db      $EA,$03,$2D,$76,$12,$01,$0F,$12,$01,$0F,$2E,$2B,$09,$01,$F5,$F2 ; $7621
        db      $53,$01,$12,$01,$03,$CF,$01,$EA,$03,$45,$76,$12,$01,$00,$09,$01 ; $7631
        db      $FF,$00,$2E,$2B,$12,$01,$05,$A8,$2B,$09,$01,$F6,$F2,$36,$01,$49 ; $7641
        db      $05,$53,$01,$12,$01,$07,$1C,$02,$EA,$03,$E9,$75,$09,$01,$F6,$F2 ; $7651
        db      $3F,$05,$09,$01,$F5,$F2,$36,$01,$49,$05,$53,$01,$12,$01,$03,$1C ; $7661
        db      $02,$EA,$03,$E9,$75,$8C,$2B,$FD,$00,$CF,$2A,$01,$09,$01,$3D,$FD ; $7671
        db      $EF,$2B,$09,$01,$F6,$F2,$3F,$05,$09,$01,$F4,$F2,$3F,$05,$12,$01 ; $7681
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12,$01,$00,$09,$01 ; $7691
        db      $FF,$00,$2E,$2B,$12,$01,$36,$F2,$2A,$09,$01,$80,$00,$09,$01,$80 ; $76A1
        db      $00,$09,$01,$80,$00,$71,$2B,$12,$01,$00,$12,$01,$0F,$2E,$2B,$09 ; $76B1
        db      $01,$F3,$F2,$53,$01,$1A,$01,$A0,$75,$53,$01,$09,$01,$F3,$F2,$53 ; $76C1
        db      $01,$1A,$01,$A8,$75,$53,$01,$09,$01,$F3,$F2,$53,$01,$1A,$01,$B0 ; $76D1
        db      $75,$53,$01,$71,$2B,$09,$01,$F4,$F2,$53,$01,$30,$01,$CF,$01,$EA ; $76E1
        db      $03,$FC,$76,$12,$01,$0F,$12,$01,$0F,$2E,$2B,$09,$01,$F4,$F2,$53 ; $76F1
        db      $01,$12,$01,$03,$CF,$01,$EA,$03,$14,$77,$12,$01,$00,$09,$01,$FF ; $7701
        db      $00,$2E,$2B,$12,$01,$05,$A8,$2B,$09,$01,$F3,$F2,$36,$01,$49,$05 ; $7711
        db      $53,$01,$12,$01,$07,$1C,$02,$EA,$03,$B8,$76,$09,$01,$F3,$F2,$3F ; $7721
        db      $05,$09,$01,$F4,$F2,$36,$01,$49,$05,$53,$01,$12,$01,$03,$1C,$02 ; $7731
        db      $EA,$03,$B8,$76,$8C,$2B,$FD,$00,$CF,$B8,$75,$7A,$76,$FD,$00,$00 ; $7741
        db      $00,$90,$B0,$FF,$0A,$00,$40,$02,$00,$00,$00,$C8,$00,$00,$00,$B0 ; $7751
        db      $04,$00,$00,$00,$00,$40,$00,$00,$D8,$FF,$00,$00,$50,$FB,$00,$00 ; $7761
        db      $00,$90,$B0,$FF,$E2,$FF,$00,$04,$00,$00,$00,$28,$00,$00,$00,$B0 ; $7771
        db      $04,$00,$00,$00,$00,$40,$00,$00,$D8,$FF,$00,$00,$50,$FB,$00,$00 ; $7781
        db      $00,$A0,$00,$00,$00,$B0,$04,$00,$00,$00,$00,$C0,$00,$00,$28,$00 ; $7791
        db      $00,$00,$B0,$04,$00,$00,$00,$90,$B0,$FF,$BA,$FF,$40,$02,$00,$00 ; $77A1
        db      $00,$C8,$00,$00,$00,$B0,$04,$00,$00,$00,$00,$00,$00,$00,$28,$00 ; $77B1
        db      $00,$00,$B0,$04,$00,$50,$77,$70,$77,$A6,$77,$22,$77,$68,$61,$74 ; $77C1
        db      $20,$69,$73,$20,$6E,$65,$78,$74,$20,$69,$6E,$20,$74,$68,$69,$73 ; $77D1
        db      $20,$70,$72,$6F,$67,$72,$65,$73,$73,$69,$6F,$6E,$3F,$20,$CF,$99 ; $77E1
        db      $15,$09,$01,$A6,$FF,$12,$01,$17,$09,$01,$CC,$77,$09,$01,$C6,$77 ; $77F1
        db      $12,$01,$08,$32,$1B,$25,$01,$1A,$43,$4C,$01,$37,$8C,$12,$01,$0A ; $7801
        db      $09,$01,$E2,$FF,$54,$1D,$09,$01,$8B,$6F,$F2,$2C,$12,$01,$41,$09 ; $7811
        db      $01,$E2,$FF,$54,$1D,$09,$01,$3E,$70,$F2,$2C,$09,$01,$78,$00,$09 ; $7821
        db      $01,$C9,$FF,$54,$1D,$09,$01,$94,$75,$F2,$2C,$02,$23,$F7,$15,$50 ; $7831
        db      $8C,$FD,$00,$03,$00,$81,$12,$8B,$6F,$0F,$3E,$70,$23,$22,$74,$00 ; $7841
        db      $47,$78,$CF,$99,$15,$4F,$8B,$09,$01,$D8,$FF,$12,$01,$0A,$61,$8C ; $7851
        db      $09,$01,$22,$74,$F2,$2C,$02,$23,$F7,$15,$09,$01,$22,$74,$B4,$1C ; $7861
        db      $E7,$15,$F3,$1D,$37,$23,$09,$01,$CF,$43,$BB,$22,$F7,$15,$A8,$1E ; $7871
        db      $09,$01,$E8,$F6,$3A,$05,$09,$01,$E7,$F6,$3A,$05,$E0,$1D,$12,$01 ; $7881
        db      $0A,$09,$01,$E2,$FF,$54,$1D,$09,$01,$8B,$6F,$F2,$2C,$12,$01,$41 ; $7891
        db      $09,$01,$E2,$FF,$54,$1D,$09,$01,$3E,$70,$F2,$2C,$09,$01,$78,$00 ; $78A1
        db      $09,$01,$E2,$FF,$54,$1D,$09,$01,$22,$74,$F2,$2C,$09,$01,$C9,$FF ; $78B1
        db      $3C,$1D,$09,$01,$94,$75,$F2,$2C,$12,$01,$41,$09,$01,$E2,$FF,$54 ; $78C1
        db      $1D,$21,$1F,$12,$01,$40,$5C,$1E,$09,$01,$44,$78,$B4,$1C,$14,$1F ; $78D1
        db      $12,$01,$3C,$DF,$1B,$E9,$19,$93,$2C,$50,$8C,$FD,$00,$03,$00,$81 ; $78E1
        db      $07,$57,$72,$07,$0A,$73,$07,$3C,$73,$00,$F1,$78,$CF,$99,$15,$7B ; $78F1
        db      $8B,$09,$01,$D8,$FF,$12,$01,$0A,$61,$8C,$09,$01,$F1,$70,$F2,$2C ; $7901
        db      $02,$23,$F7,$15,$F3,$1D,$37,$23,$12,$01,$32,$DF,$1B,$2C,$1A,$E0 ; $7911
        db      $1D,$09,$01,$EE,$78,$B4,$1C,$6C,$86,$12,$01,$14,$DF,$1B,$E9,$19 ; $7921
        db      $09,$01,$3C,$73,$F2,$2C,$12,$01,$0A,$DF,$1B,$E9,$19,$50,$8C,$FD ; $7931
        db      $00,$03,$00,$81,$07,$57,$72,$07,$6A,$73,$07,$CA,$73,$00,$45,$79 ; $7941
        db      $CF,$99,$15,$12,$8C,$09,$01,$D8,$FF,$12,$01,$0A,$61,$8C,$09,$01 ; $7951
        db      $A4,$71,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$37,$23,$12,$01,$32,$DF ; $7961
        db      $1B,$2C,$1A,$E0,$1D,$09,$01,$42,$79,$B4,$1C,$6C,$86,$12,$01,$14 ; $7971
        db      $DF,$1B,$E9,$19,$09,$01,$CA,$73,$F2,$2C,$12,$01,$0A,$DF,$1B,$2C ; $7981
        db      $1A,$50,$8C,$FD,$00,$04,$EF,$77,$53,$78,$FD,$78,$51,$79,$CF,$09 ; $7991
        db      $01,$96,$79,$FD,$00,$1A,$11,$0D,$23,$00,$00,$00,$00,$00,$00,$00 ; $79A1
        db      $00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28 ; $79B1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00,$00 ; $79C1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0A,$80,$00,$00,$00,$00,$00,$00 ; $79D1
        db      $00,$00,$00,$00,$00,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $79E1
        db      $00,$02,$A8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2A,$A0 ; $79F1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00,$00,$00 ; $7A01
        db      $00,$00,$00,$00,$00,$00,$00,$02,$AA,$00,$00,$00,$00,$00,$00,$00 ; $7A11
        db      $00,$00,$00,$00,$0A,$A8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7A21
        db      $00,$2A,$A0,$00,$00,$00,$00,$00,$01,$55,$40,$00,$00,$00,$AA,$80 ; $7A31
        db      $00,$00,$00,$00,$00,$05,$55,$50,$00,$00,$02,$AA,$00,$00,$00,$00 ; $7A41
        db      $00,$00,$14,$00,$14,$00,$00,$0A,$A8,$00,$00,$00,$00,$00,$00,$50 ; $7A51
        db      $00,$05,$00,$00,$2A,$A0,$00,$00,$00,$00,$00,$00,$50,$00,$05,$00 ; $7A61
        db      $00,$AA,$80,$00,$00,$00,$00,$00,$00,$50,$00,$05,$40,$02,$AA,$00 ; $7A71
        db      $00,$00,$00,$00,$00,$00,$50,$00,$05,$56,$8A,$A8,$AA,$AA,$AA,$AA ; $7A81
        db      $AA,$AA,$A0,$14,$00,$15,$5A,$2A,$A2,$AA,$AA,$AA,$AA,$AA,$AA,$00 ; $7A91
        db      $05,$55,$55,$58,$82,$8A,$AA,$AA,$AA,$AA,$AA,$80,$00,$01,$55,$40 ; $7AA1
        db      $02,$82,$2A,$AA,$AA,$AA,$AA,$80,$00,$00,$00,$00,$00,$0A,$A8,$00 ; $7AB1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$A0,$00,$00,$00,$00 ; $7AC1
        db      $00,$00,$00,$00,$00,$00,$00,$15,$50,$00,$00,$00,$00,$00,$00,$00 ; $7AD1
        db      $00,$00,$00,$00,$50,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7AE1
        db      $01,$40,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$05 ; $7AF1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$00,$05,$00,$00,$00 ; $7B01
        db      $00,$00,$00,$00,$00,$00,$00,$50,$00,$05,$00,$00,$00,$00,$00,$00 ; $7B11
        db      $00,$00,$00,$01,$40,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B21
        db      $01,$40,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$40,$00 ; $7B31
        db      $50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$50,$01,$40,$00,$00 ; $7B41
        db      $00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00 ; $7B51
        db      $00,$00,$00,$00,$00,$15,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B61
        db      $1A,$07,$0E,$13,$00,$15,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B71
        db      $00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B81
        db      $01,$40,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00 ; $7B91
        db      $00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$50 ; $7BA1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$54,$00,$00 ; $7BB1
        db      $00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$55,$6A,$AA,$AA,$AA ; $7BC1
        db      $AA,$AA,$AA,$A8,$00,$00,$01,$40,$01,$55,$AA,$AA,$AA,$AA,$AA,$AA ; $7BD1
        db      $AA,$AA,$A0,$00,$00,$55,$55,$56,$A8,$2A,$AA,$AA,$AA,$AA,$AA,$AA ; $7BE1
        db      $AA,$00,$00,$15,$54,$01,$A8,$28,$00,$00,$00,$00,$00,$00,$00,$00 ; $7BF1
        db      $05,$55,$55,$55,$6A,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$00,$15,$55 ; $7C01
        db      $55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00,$00,$00 ; $7C11
        db      $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$00,$14,$00 ; $7C21
        db      $00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$00,$14,$00,$00,$00 ; $7C31
        db      $00,$00,$00,$00,$00,$00,$14,$00,$00,$00,$50,$00,$00,$00,$00,$00 ; $7C41
        db      $00,$00,$00,$00,$05,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00 ; $7C51
        db      $00,$00,$01,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7C61
        db      $00,$15,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7C71
        db      $90,$B0,$FF,$03,$00,$80,$03,$00,$00,$FE,$7D,$00,$06,$00,$78,$05 ; $7C81
        db      $40,$00,$0A,$00,$69,$D4,$FF,$E4,$FF,$98,$F9,$F0,$FB,$00,$00,$12 ; $7C91
        db      $3B,$00,$E5,$FF,$38,$08,$20,$FC,$00,$00,$00,$90,$CE,$FF,$DB,$FF ; $7CA1
        db      $C0,$03,$00,$00,$F6,$54,$00,$15,$00,$48,$05,$50,$01,$0A,$00,$67 ; $7CB1
        db      $D9,$FF,$E5,$FF,$30,$FC,$50,$FD,$00,$00,$03,$3F,$00,$FC,$FF,$70 ; $7CC1
        db      $05,$9C,$FF,$00,$00,$00,$90,$B0,$FF,$B3,$FF,$80,$03,$00,$00,$FF ; $7CD1
        db      $7E,$00,$01,$00,$78,$05,$20,$00,$0A,$00,$96,$D4,$FF,$1B,$00,$84 ; $7CE1
        db      $FB,$B0,$02,$00,$00,$FE,$38,$00,$02,$00,$04,$06,$4C,$00,$00,$7F ; $7CF1
        db      $7C,$AA,$7C,$D5,$7C,$02,$00,$81,$06,$A6,$79,$04,$71,$7B,$00,$09 ; $7D01
        db      $7D,$0F,$07,$00,$08,$08,$08,$00,$00,$00,$1A,$77,$68,$69,$63,$68 ; $7D11
        db      $20,$69,$73,$20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72,$20,$69 ; $7D21
        db      $6D,$61,$67,$65,$3F,$15,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74 ; $7D31
        db      $68,$65,$20,$73,$61,$6D,$65,$20,$61,$73,$3F,$1B,$7D,$36,$7D,$1B ; $7D41
        db      $7D,$36,$7D,$00,$40,$40,$00,$CF,$99,$15,$09,$01,$B0,$FF,$12,$01 ; $7D51
        db      $17,$F7,$2C,$25,$01,$4C,$7D,$4C,$01,$09,$01,$00,$7D,$09,$01,$12 ; $7D61
        db      $7D,$37,$8C,$F7,$2C,$1A,$01,$54,$7D,$53,$01,$03,$1F,$A8,$1E,$12 ; $7D71
        db      $01,$5C,$09,$01,$F3,$FF,$54,$1D,$09,$01,$06,$7D,$B4,$1C,$12,$01 ; $7D81
        db      $02,$2F,$1F,$12,$01,$28,$DF,$1B,$E9,$19,$02,$23,$F7,$15,$50,$8C ; $7D91
        db      $FD,$00,$CF,$99,$15,$4F,$8B,$09,$01,$C9,$FF,$12,$01,$05,$61,$8C ; $7DA1
        db      $F7,$2C,$12,$01,$02,$08,$02,$EA,$03,$BE,$7D,$CF,$1E,$09,$01,$A6 ; $7DB1
        db      $79,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$37,$23,$E0,$1D,$12,$01,$14 ; $7DC1
        db      $DF,$1B,$2C,$1A,$09,$01,$06,$7D,$B4,$1C,$12,$01,$28,$DF,$1B,$E9 ; $7DD1
        db      $19,$12,$01,$0F,$DF,$1B,$2C,$1A,$50,$8C,$FD,$00,$CF,$99,$15,$7B ; $7DE1
        db      $8B,$09,$01,$C9,$FF,$12,$01,$05,$61,$8C,$F7,$2C,$30,$01,$1C,$02 ; $7DF1
        db      $EA,$03,$0B,$7E,$E9,$1E,$E2,$03,$0D,$7E,$C2,$1E,$09,$01,$A6,$79 ; $7E01
        db      $F2,$2C,$02,$23,$F7,$15,$F3,$1D,$12,$01,$3C,$09,$01,$D8,$FF,$54 ; $7E11
        db      $1D,$0C,$1E,$50,$8C,$FD,$00,$CF,$99,$15,$12,$8C,$09,$01,$C9,$FF ; $7E21
        db      $12,$01,$05,$61,$8C,$F7,$2C,$12,$01,$02,$08,$02,$EA,$03,$47,$7E ; $7E31
        db      $E9,$1E,$E2,$03,$49,$7E,$C2,$1E,$09,$01,$A6,$79,$F2,$2C,$02,$23 ; $7E41
        db      $F7,$15,$F3,$1D,$12,$01,$3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E,$12 ; $7E51
        db      $01,$0F,$DF,$1B,$2C,$1A,$50,$8C,$FD,$00,$04,$58,$7D,$A3,$7D,$ED ; $7E61
        db      $7D,$28,$7E,$CF,$12,$01,$04,$32,$1B,$2B,$8B,$09,$01,$6B,$7E,$FD ; $7E71
        db      $00,$02,$A0,$6E,$74,$7E,$02,$B9,$6E,$9F,$79,$03,$D7,$6E,$6C,$54 ; $7E81
        db      $74,$7E,$03,$F5,$6E,$7E,$54,$2B,$68,$03,$13,$6F,$95,$54,$9F,$79 ; $7E91
        db      $02,$31,$6F,$2B,$68,$02,$4F,$6F,$2B,$68,$02,$6D,$6F,$2B,$68,$82 ; $7EA1
        db      $7E,$87,$7E,$8C,$7E,$93,$7E,$9A,$7E,$A1,$7E,$A6,$7E,$AB,$7E,$FF ; $7EB1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F01
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F11
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F21
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F31
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F41
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F51
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F61
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F71
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F81
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F91
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE1
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF     ; $7FF1
