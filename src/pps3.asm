; Professor Pac-Man program ROM PPS3
; Bank configuration 0, CPU address $8000-$9FFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $8000

        db      $5E,$5E,$5E,$00,$5E,$00,$5E,$00,$7E,$7E,$7E,$00,$7E,$00,$7E,$00 ; $8000
        db      $5E,$5E,$5E,$00,$5E,$5E,$5E,$00,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$00 ; $8010
        db      $7E,$7E,$7E,$00,$7E,$00,$7E,$00,$A8,$A8,$A8,$00,$96,$00,$8D,$00 ; $8020
        db      $A8,$A8,$54,$54,$3E,$3E,$7E,$7E,$31,$31,$31,$31,$37,$37,$70,$70 ; $8030
        db      $5E,$5E,$5E,$00,$5E,$00,$5E,$00,$7E,$7E,$7E,$00,$7E,$00,$7E,$00 ; $8040
        db      $BD,$BD,$BD,$00,$96,$96,$96,$00,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$00 ; $8050
        db      $70,$00,$70,$00,$8D,$00,$8D,$00,$4A,$00,$4A,$00,$54,$00,$54,$00 ; $8060
        db      $BD,$BD,$BD,$00,$7E,$7E,$7E,$00,$5E,$5E,$5E,$5E,$5E,$5E,$5E,$00 ; $8070
        db      $00,$00,$00,$00,$BD,$BD,$BD,$BD,$00,$00,$00,$00,$FD,$FD,$FD,$FD ; $8080
        db      $00,$00,$00,$00,$FD,$FD,$FD,$FD,$7E,$7E,$00,$00,$FD,$FD,$FD,$FD ; $8090
        db      $85,$85,$00,$00,$4A,$4A,$4A,$00,$3E,$3E,$31,$31,$42,$42,$42,$00 ; $80A0
        db      $71,$71,$71,$00,$FD,$FD,$FD,$00,$E1,$E1,$E1,$00,$C8,$C8,$C8,$00 ; $80B0
        db      $4A,$4A,$4A,$00,$3E,$3E,$3E,$00,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$00 ; $80C0
        db      $3E,$3E,$00,$00,$00,$00,$00,$00,$46,$46,$00,$00,$00,$00,$00,$00 ; $80D0
        db      $4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$00,$00 ; $80E0
        db      $3E,$3E,$3E,$00,$3E,$00,$3E,$00,$54,$54,$54,$00,$4A,$00,$46,$00 ; $80F0
        db      $29,$29,$00,$00,$1F,$1F,$00,$00,$A8,$A8,$A8,$00,$A8,$A8,$A8,$00 ; $8100
        db      $4A,$4A,$00,$00,$00,$00,$00,$00,$46,$46,$00,$00,$00,$00,$00,$00 ; $8110
        db      $3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$00,$00 ; $8120
        db      $37,$37,$37,$00,$46,$00,$46,$00,$96,$4A,$96,$00,$A8,$54,$A8,$00 ; $8130
        db      $1F,$1F,$1F,$00,$1F,$1F,$1F,$00,$25,$25,$25,$25,$25,$25,$25,$00 ; $8140
        db      $EE,$00,$EE,$00,$D4,$00,$EE,$00,$C8,$00,$EE,$00,$B2,$00,$C8,$00 ; $8150
        db      $77,$00,$77,$00,$6A,$00,$77,$00,$64,$00,$77,$00,$59,$00,$64,$00 ; $8160
        db      $3B,$00,$3B,$00,$34,$00,$3B,$00,$31,$00,$3B,$00,$2C,$00,$31,$00 ; $8170
        db      $80,$80,$80,$80,$80,$80,$80,$80,$D0,$80,$D0,$80,$02,$0A,$EF,$80 ; $8180
        db      $81,$84,$81,$88,$81,$22,$17,$17,$00,$00,$17,$00,$17,$00,$1F,$1F ; $8190
        db      $1F,$1F,$1F,$00,$1F,$00,$17,$17,$17,$17,$17,$00,$17,$00,$17,$00 ; $81A0
        db      $17,$00,$17,$00,$17,$00,$18,$00,$31,$00,$18,$00,$31,$00,$E1,$E1 ; $81B0
        db      $70,$00,$31,$31,$18,$00,$2E,$2E,$2E,$00,$00,$00,$00,$00,$00,$00 ; $81C0
        db      $00,$00,$00,$00,$00,$00,$00,$00,$2E,$00,$00,$00,$2E,$00,$4A,$4A ; $81D0
        db      $00,$00,$4A,$4A,$00,$00,$2E,$00,$2E,$00,$2E,$00,$2E,$00,$3E,$3E ; $81E0
        db      $00,$00,$3E,$3E,$00,$00,$31,$31,$00,$00,$31,$31,$00,$00,$70,$70 ; $81F0
        db      $37,$37,$64,$64,$31,$31,$5E,$5E,$5E,$00,$00,$00,$00,$00,$00,$00 ; $8200
        db      $00,$00,$00,$00,$00,$00,$2E,$00,$2E,$00,$2E,$00,$2E,$00,$25,$25 ; $8210
        db      $00,$00,$25,$25,$00,$00,$5E,$00,$5E,$00,$5E,$00,$5E,$00,$7E,$00 ; $8220
        db      $00,$7E,$7E,$00,$00,$00,$64,$00,$64,$00,$64,$00,$64,$00,$70,$70 ; $8230
        db      $70,$00,$64,$64,$64,$00,$5E,$5E,$5E,$00,$00,$00,$00,$00,$00,$00 ; $8240
        db      $00,$00,$00,$00,$00,$00,$4A,$00,$4A,$00,$00,$00,$00,$00,$00,$00 ; $8250
        db      $00,$00,$00,$00,$00,$00,$3E,$3E,$3E,$3E,$3E,$3E,$00,$00,$00,$00 ; $8260
        db      $00,$00,$00,$00,$00,$00,$E1,$00,$E1,$00,$70,$00,$5E,$00,$70,$70 ; $8270
        db      $00,$54,$54,$54,$00,$00,$37,$00,$37,$00,$54,$54,$70,$00,$70,$70 ; $8280
        db      $00,$37,$37,$37,$00,$00,$70,$00,$70,$00,$29,$29,$54,$00,$54,$00 ; $8290
        db      $00,$37,$37,$37,$00,$00,$00,$80,$10,$80,$20,$80,$30,$80,$40,$80 ; $82A0
        db      $50,$80,$60,$80,$70,$80,$80,$80,$80,$80,$90,$80,$A0,$80,$80,$80 ; $82B0
        db      $80,$80,$B0,$80,$C0,$80,$D0,$80,$E0,$80,$F0,$80,$00,$81,$10,$81 ; $82C0
        db      $20,$81,$30,$81,$40,$81,$08,$0A,$EF,$A6,$82,$B6,$82,$C6,$82,$22 ; $82D0
TERSE_COLON_82E0:
        rst     $08                             ; $82E0 colon entry
        dw      XT_DUP                  ; $82E1 _DUP
        dw      $3D67                ; $82E3 execution token $3D67
        dw      $3DE7                ; $82E5 execution token $3DE7
        dw      XT_RETURN               ; $82E7 _RETURN
TERSE_COLON_82E9:
        rst     $08                             ; $82E9 colon entry
        dw      XT_LIT                  ; $82EA _LIT
        dw      $818C                ; $82EC inline word
        dw      TERSE_COLON_82E0     ; $82EE TERSE_COLON_82E0
        dw      XT_RETURN               ; $82F0 _RETURN
        db      $76,$82,$86,$82,$96,$82,$01,$0F,$FF,$F2,$82,$F4,$82,$F6,$82,$30 ; $82F2
TERSE_COLON_8302:
        rst     $08                             ; $8302 colon entry
        dw      XT_LIT                  ; $8303 _LIT
        dw      $82D6                ; $8305 inline word
        dw      TERSE_COLON_82E0     ; $8307 TERSE_COLON_82E0
        dw      XT_RETURN               ; $8309 _RETURN
TERSE_COLON_830B:
        rst     $08                             ; $830B colon entry
        dw      XT_LIT                  ; $830C _LIT
        dw      $82F8                ; $830E inline word
        dw      TERSE_COLON_82E0     ; $8310 TERSE_COLON_82E0
        dw      XT_RETURN               ; $8312 _RETURN
        db      $F6,$81,$50,$80,$B6,$81,$50,$80,$B6,$81,$B6,$81,$80,$80,$70,$80 ; $8314
        db      $F6,$81,$80,$80,$F6,$81,$80,$80,$F6,$81,$C0,$80,$80,$80,$C0,$80 ; $8324
        db      $36,$82,$20,$81,$40,$81,$20,$81,$40,$81,$40,$81,$D0,$80,$40,$81 ; $8334
        db      $08,$0F,$AF,$14,$83,$24,$83,$34,$83,$30,$80,$80,$50,$81,$80,$80 ; $8344
        db      $50,$80,$80,$80,$50,$81,$80,$80,$70,$80,$80,$80,$60,$81,$80,$80 ; $8354
        db      $80,$80,$80,$80,$60,$81,$80,$80,$C0,$80,$D0,$80,$70,$81,$D0,$80 ; $8364
        db      $20,$81,$D0,$80,$70,$81,$D0,$80,$40,$81,$08,$0F,$FF,$4E,$83,$5E ; $8374
        db      $83,$6E,$83,$30,$50,$81,$50,$81,$80,$80,$50,$80,$50,$81,$50,$81 ; $8384
        db      $80,$80,$70,$80,$60,$81,$60,$81,$80,$80,$80,$80,$60,$81,$60,$81 ; $8394
        db      $80,$80,$C0,$80,$70,$81,$70,$81,$D0,$80,$20,$81,$70,$81,$70,$81 ; $83A4
        db      $D0,$80,$40,$81,$08,$0F,$FF,$88,$83,$98,$83,$A8,$83,$30,$80,$80 ; $83B4
        db      $60,$80,$80,$80,$70,$80,$80,$80,$B6,$81,$80,$80,$70,$80,$80,$80 ; $83C4
        db      $B0,$80,$80,$80,$C0,$80,$80,$80,$F6,$81,$80,$80,$C0,$80,$D0,$80 ; $83D4
        db      $30,$81,$D0,$80,$40,$81,$D0,$80,$40,$81,$D0,$80,$40,$81,$08,$0A ; $83E4
        db      $FA,$C2,$83,$D2,$83,$E2,$83,$22,$96,$81,$A6,$81,$B6,$81,$C6,$81 ; $83F4
        db      $D6,$81,$E6,$81,$F6,$81,$06,$82,$16,$82,$26,$82,$36,$82,$46,$82 ; $8404
        db      $04,$08,$F8,$FC,$83,$04,$84,$0C,$84,$30                         ; $8414
TERSE_COLON_841E:
        rst     $08                             ; $841E colon entry
        dw      XT_LIT                  ; $841F _LIT
        dw      $8414                ; $8421 inline word
        dw      TERSE_COLON_82E0     ; $8423 TERSE_COLON_82E0
        dw      XT_RETURN               ; $8425 _RETURN
        db      $7E,$4B,$35,$29,$22,$1C,$18,$1C,$22,$FC,$97,$6C,$53,$44,$39,$32 ; $8427
        db      $39,$44,$CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$09,$01,$FE,$F5,$3F ; $8437
        db      $05,$12,$01,$30,$F2,$2A,$12,$01,$00,$09,$01,$B8,$00,$2E,$2B,$09 ; $8447
        db      $01,$FF,$F5,$3F,$05,$09,$01,$FE,$F5,$53,$01,$1A,$01,$27,$84,$53 ; $8457
        db      $01,$44,$2B,$09,$01,$FE,$F5,$53,$01,$1A,$01,$30,$84,$53,$01,$53 ; $8467
        db      $2B,$12,$01,$02,$A8,$2B,$09,$01,$FE,$F5,$36,$01,$49,$05,$53,$01 ; $8477
        db      $12,$01,$08,$1C,$02,$EA,$03,$5C,$84,$09,$01,$FE,$F5,$3F,$05,$09 ; $8487
        db      $01,$FF,$F5,$53,$01,$25,$02,$EA,$03,$5C,$84,$8C,$2B,$FD,$00,$CF ; $8497
        db      $2A,$01,$09,$01,$3D,$FD,$EF,$2B,$09,$01,$FC,$F5,$3F,$05,$12,$01 ; $84A7
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$30,$F2,$2A ; $84B7
        db      $12,$01,$00,$09,$01,$B8,$00,$2E,$2B,$09,$01,$FC,$F5,$53,$01,$1A ; $84C7
        db      $01,$27,$84,$53,$01,$44,$2B,$09,$01,$FC,$F5,$53,$01,$1A,$01,$30 ; $84D7
        db      $84,$53,$01,$53,$2B,$12,$01,$02,$A8,$2B,$09,$01,$FC,$F5,$36,$01 ; $84E7
        db      $49,$05,$53,$01,$12,$01,$08,$1C,$02,$EA,$03,$D0,$84,$09,$01,$FC ; $84F7
        db      $F5,$3F,$05,$09,$01,$FF,$F5,$53,$01,$25,$02,$EA,$03,$D0,$84,$8C ; $8507
        db      $2B,$FD,$00                                                     ; $8517
TERSE_COLON_851A:
        rst     $08                             ; $851A colon entry
        dw      $8439                ; $851B execution token $8439
        dw      $84A6                ; $851D execution token $84A6
        dw      XT_RETURN               ; $851F _RETURN
        db      $CF,$12,$01,$30,$F2,$2A,$DF,$3F,$09,$01,$F9,$F5,$3F,$05,$09,$01 ; $8521
        db      $FA,$F5,$3F,$05,$12,$01,$14,$09,$01,$FB,$F5,$32,$05,$FD,$00     ; $8531
TERSE_COLON_8540:
        rst     $08                             ; $8540 colon entry
        dw      XT_LIT                  ; $8541 _LIT
        dw      $F5FB                ; $8543 inline word
        dw      XT_Bat                  ; $8545 _Bat
        dw      $2B62                ; $8547 execution token $2B62
        dw      XT_RETURN               ; $8549 _RETURN
TERSE_COLON_854B:
        rst     $08                             ; $854B colon entry
        dw      XT_LIT                  ; $854C _LIT
        dw      $F5FB                ; $854E inline word
        dw      XT_Bat                  ; $8550 _Bat
        dw      XT_LITbyte              ; $8552 _LITbyte
        db      $02                  ; $8554 inline byte
        dw      XT_plus                 ; $8555 _plus
        dw      XT_LIT                  ; $8557 _LIT
        dw      $F5FB                ; $8559 inline word
        dw      XT_SBbang               ; $855B _SBbang
        dw      XT_LIT                  ; $855D _LIT
        dw      $F5FA                ; $855F inline word
        dw      XT_DUP                  ; $8561 _DUP
        dw      XT_1plusBbang           ; $8563 _1plusBbang
        dw      XT_Bat                  ; $8565 _Bat
        dw      XT_RETURN               ; $8567 _RETURN
TERSE_COLON_8569:
        rst     $08                             ; $8569 colon entry
        dw      XT_LIT                  ; $856A _LIT
        dw      $F5FB                ; $856C inline word
        dw      XT_Bat                  ; $856E _Bat
        dw      XT_LITbyte              ; $8570 _LITbyte
        db      $03                  ; $8572 inline byte
        dw      XT_minussign            ; $8573 _minussign
        dw      XT_LIT                  ; $8575 _LIT
        dw      $F5FB                ; $8577 inline word
        dw      XT_SBbang               ; $8579 _SBbang
        dw      XT_LIT                  ; $857B _LIT
        dw      $F5F9                ; $857D inline word
        dw      XT_DUP                  ; $857F _DUP
        dw      XT_1plusBbang           ; $8581 _1plusBbang
        dw      XT_Bat                  ; $8583 _Bat
        dw      XT_RETURN               ; $8585 _RETURN
        db      $CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$21,$85,$40,$85,$12,$01,$02 ; $8587
        db      $A8,$2B,$4B,$85,$12,$01,$04,$1C,$02,$EA,$03,$92,$85,$09,$01,$FA ; $8597
        db      $F5,$3F,$05,$40,$85,$12,$01,$02,$A8,$2B,$69,$85,$12,$01,$05,$1C ; $85A7
        db      $02,$EA,$03,$92,$85,$8C,$2B,$FD,$00,$CF,$12,$01,$30,$F2,$2A,$DF ; $85B7
        db      $3F,$09,$01,$F6,$F5,$3F,$05,$09,$01,$F7,$F5,$3F,$05,$12,$01,$14 ; $85C7
        db      $09,$01,$F8,$F5,$32,$05,$FD,$00                                 ; $85D7
TERSE_COLON_85DF:
        rst     $08                             ; $85DF colon entry
        dw      XT_LIT                  ; $85E0 _LIT
        dw      $F5F8                ; $85E2 inline word
        dw      XT_Bat                  ; $85E4 _Bat
        dw      $2B62                ; $85E6 execution token $2B62
        dw      XT_RETURN               ; $85E8 _RETURN
TERSE_COLON_85EA:
        rst     $08                             ; $85EA colon entry
        dw      XT_LIT                  ; $85EB _LIT
        dw      $F5F8                ; $85ED inline word
        dw      XT_Bat                  ; $85EF _Bat
        dw      XT_LITbyte              ; $85F1 _LITbyte
        db      $02                  ; $85F3 inline byte
        dw      XT_plus                 ; $85F4 _plus
        dw      XT_LIT                  ; $85F6 _LIT
        dw      $F5F8                ; $85F8 inline word
        dw      XT_SBbang               ; $85FA _SBbang
        dw      XT_LIT                  ; $85FC _LIT
        dw      $F5F7                ; $85FE inline word
        dw      XT_DUP                  ; $8600 _DUP
        dw      XT_1plusBbang           ; $8602 _1plusBbang
        dw      XT_Bat                  ; $8604 _Bat
        dw      XT_RETURN               ; $8606 _RETURN
TERSE_COLON_8608:
        rst     $08                             ; $8608 colon entry
        dw      XT_LIT                  ; $8609 _LIT
        dw      $F5F8                ; $860B inline word
        dw      XT_Bat                  ; $860D _Bat
        dw      XT_LITbyte              ; $860F _LITbyte
        db      $03                  ; $8611 inline byte
        dw      XT_minussign            ; $8612 _minussign
        dw      XT_LIT                  ; $8614 _LIT
        dw      $F5F8                ; $8616 inline word
        dw      XT_SBbang               ; $8618 _SBbang
        dw      XT_LIT                  ; $861A _LIT
        dw      $F5F6                ; $861C inline word
        dw      XT_DUP                  ; $861E _DUP
        dw      XT_1plusBbang           ; $8620 _1plusBbang
        dw      XT_Bat                  ; $8622 _Bat
        dw      XT_RETURN               ; $8624 _RETURN
        db      $CF,$2A,$01,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E ; $8626
        db      $2B,$12,$01,$02,$A8,$2B,$C0,$85,$DF,$85,$12,$01,$02,$A8,$2B,$EA ; $8636
        db      $85,$12,$01,$05,$1C,$02,$EA,$03,$3E,$86,$09,$01,$F7,$F5,$3F,$05 ; $8646
        db      $DF,$85,$12,$01,$02,$A8,$2B,$08,$86,$12,$01,$04,$1C,$02,$EA,$03 ; $8656
        db      $3E,$86,$8C,$2B,$FD,$00                                         ; $8666
TERSE_COLON_866C:
        rst     $08                             ; $866C colon entry
        dw      $8587                ; $866D execution token $8587
        dw      $8626                ; $866F execution token $8626
        dw      XT_RETURN               ; $8671 _RETURN
        db      $37,$37,$37,$37,$37,$00,$34,$34,$34,$34,$34,$00,$2E,$2E,$2E,$00 ; $8673
        db      $34,$34,$37,$37,$37,$00,$46,$46,$22,$22,$22,$22,$22,$00,$2E,$2E ; $8683
        db      $2E,$2E,$2E,$00,$5E,$5E,$5E,$00,$5E,$5E,$8D,$8D,$8D,$46,$46,$46 ; $8693
        db      $46,$46,$46,$46,$00,$00,$4A,$4A,$4A,$4A,$00,$00,$46,$46,$46,$46 ; $86A3
        db      $00,$00,$8D,$8D,$8D,$8D,$8D,$8D,$CF,$2A,$01,$09,$01,$6D,$FD,$EF ; $86B3
        db      $2B,$09,$01,$F5,$F5,$3F,$05,$12,$01,$0D,$09,$01,$8F,$00,$2E,$2B ; $86C3
        db      $12,$01,$30,$F2,$2A,$09,$01,$F5,$F5,$53,$01,$1A,$01,$73,$86,$53 ; $86D3
        db      $01,$09,$01,$F5,$F5,$53,$01,$1A,$01,$8B,$86,$53,$01,$09,$01,$F5 ; $86E3
        db      $F5,$53,$01,$1A,$01,$A3,$86,$53,$01,$71,$2B,$12,$01,$03,$A8,$2B ; $86F3
        db      $09,$01,$F5,$F5,$36,$01,$49,$05,$53,$01,$12,$01,$17,$1C,$02,$EA ; $8703
        db      $03,$D8,$86,$09,$01,$F5,$F5,$3F,$05,$8C,$2B,$FD,$00,$CF,$2A,$01 ; $8713
        db      $09,$01,$3D,$FD,$EF,$2B,$09,$01,$F3,$F5,$3F,$05,$12,$01,$00,$12 ; $8723
        db      $01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$12,$01,$0D,$09,$01,$8F,$00 ; $8733
        db      $2E,$2B,$12,$01,$30,$F2,$2A,$09,$01,$F3,$F5,$53,$01,$1A,$01,$73 ; $8743
        db      $86,$53,$01,$09,$01,$F3,$F5,$53,$01,$1A,$01,$8B,$86,$53,$01,$09 ; $8753
        db      $01,$F3,$F5,$53,$01,$1A,$01,$A3,$86,$53,$01,$71,$2B,$12,$01,$03 ; $8763
        db      $A8,$2B,$09,$01,$F3,$F5,$36,$01,$49,$05,$53,$01,$12,$01,$17,$1C ; $8773
        db      $02,$EA,$03,$4A,$87,$09,$01,$F3,$F5,$3F,$05,$09,$01,$F4,$F5,$3A ; $8783
        db      $05,$8C,$2B,$FD,$00                                             ; $8793
TERSE_COLON_8798:
        rst     $08                             ; $8798 colon entry
        dw      $86BB                ; $8799 execution token $86BB
        dw      $8720                ; $879B execution token $8720
        dw      XT_RETURN               ; $879D _RETURN
        db      $CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E ; $879F
        db      $2B,$12,$01,$06,$A8,$2B,$12,$01,$30,$F2,$2A,$12,$01,$4E,$44,$2B ; $87AF
        db      $09,$01,$9F,$00,$53,$2B,$12,$01,$4E,$62,$2B,$12,$01,$0F,$09,$01 ; $87BF
        db      $FF,$00,$2E,$2B,$12,$01,$00,$35,$2B,$12,$01,$1A,$A8,$2B,$8C,$2B ; $87CF
        db      $FD,$00,$CF,$2A,$01,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$30,$F2,$2A ; $87DF
        db      $12,$01,$4E,$44,$2B,$09,$01,$9F,$00,$53,$2B,$12,$01,$4E,$62,$2B ; $87EF
        db      $12,$01,$0F,$09,$01,$FF,$00,$2E,$2B,$12,$01,$00,$35,$2B,$12,$01 ; $87FF
        db      $1A,$A8,$2B,$8C,$2B,$FD,$00                                     ; $880F
TERSE_COLON_8816:
        rst     $08                             ; $8816 colon entry
        dw      $879F                ; $8817 execution token $879F
        dw      $87E1                ; $8819 execution token $87E1
        dw      XT_RETURN               ; $881B _RETURN
        db      $27,$27,$13,$13,$13,$00,$13,$13,$1A,$1A,$1A,$00,$1A,$1A,$27,$27 ; $881D
        db      $27,$27,$27,$27,$27,$27,$27,$00,$27,$27,$34,$34,$34,$00,$34,$34 ; $882D
        db      $4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$9F,$9F,$4F,$4F,$4F,$00,$4F,$4F ; $883D
        db      $6A,$6A,$6A,$00,$6A,$6A,$9F,$9F,$9F,$9F,$9F,$9F,$27,$27,$13,$13 ; $884D
        db      $13,$00,$13,$13,$1A,$1A,$1A,$00,$1A,$1A,$27,$27,$27,$27,$27,$27 ; $885D
        db      $27,$27,$27,$00,$27,$27,$34,$34,$34,$00,$34,$34,$4F,$4F,$4F,$4F ; $886D
        db      $4F,$4F,$4F,$4F,$9F,$9F,$4F,$4F,$4F,$00,$4F,$4F,$6A,$6A,$6A,$00 ; $887D
        db      $6A,$6A,$9F,$9F,$9F,$9F,$9F,$9F,$CF,$2A,$01,$09,$01,$6D,$FD,$EF ; $888D
        db      $2B,$09,$01,$F2,$F5,$3F,$05,$12,$01,$30,$F2,$2A,$12,$01,$0A,$09 ; $889D
        db      $01,$AF,$00,$2E,$2B,$09,$01,$F2,$F5,$53,$01,$1A,$01,$1D,$88,$53 ; $88AD
        db      $01,$09,$01,$F2,$F5,$53,$01,$1A,$01,$31,$88,$53,$01,$09,$01,$F2 ; $88BD
        db      $F5,$53,$01,$1A,$01,$45,$88,$53,$01,$71,$2B,$12,$01,$04,$A8,$2B ; $88CD
        db      $09,$01,$F2,$F5,$36,$01,$49,$05,$53,$01,$12,$01,$13,$1C,$02,$EA ; $88DD
        db      $03,$B2,$88,$09,$01,$F2,$F5,$3F,$05,$8C,$2B,$FD,$00,$CF,$2A,$01 ; $88ED
        db      $09,$01,$3D,$FD,$EF,$2B,$09,$01,$F1,$F5,$3F,$05,$12,$01,$00,$12 ; $88FD
        db      $01,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12,$01,$30,$F2,$2A,$12,$01 ; $890D
        db      $0A,$09,$01,$AF,$00,$2E,$2B,$09,$01,$F1,$F5,$53,$01,$1A,$01,$59 ; $891D
        db      $88,$53,$01,$09,$01,$F1,$F5,$53,$01,$1A,$01,$6D,$88,$53,$01,$09 ; $892D
        db      $01,$F1,$F5,$53,$01,$1A,$01,$81,$88,$53,$01,$71,$2B,$12,$01,$04 ; $893D
        db      $A8,$2B,$09,$01,$F1,$F5,$36,$01,$49,$05,$53,$01,$12,$01,$13,$1C ; $894D
        db      $02,$EA,$03,$24,$89,$09,$01,$F1,$F5,$3F,$05,$8C,$2B,$FD,$00     ; $895D
TERSE_COLON_896C:
        rst     $08                             ; $896C colon entry
        dw      $8895                ; $896D execution token $8895
        dw      $88FA                ; $896F execution token $88FA
        dw      XT_RETURN               ; $8971 _RETURN
TERSE_COLON_8973:
        rst     $08                             ; $8973 colon entry
        dw      XT_LITbyte              ; $8974 _LITbyte
        db      $0B                  ; $8976 inline byte
        dw      XT_LIT                  ; $8977 _LIT
        dw      $00BB                ; $8979 inline word
        dw      $2B2E                ; $897B execution token $2B2E
        dw      XT_RETURN               ; $897D _RETURN
TERSE_COLON_897F:
        rst     $08                             ; $897F colon entry
        dw      XT_LITbyte              ; $8980 _LITbyte
        db      $0F                  ; $8982 inline byte
        dw      XT_LIT                  ; $8983 _LIT
        dw      $00FF                ; $8985 inline word
        dw      $2B2E                ; $8987 execution token $2B2E
        dw      XT_RETURN               ; $8989 _RETURN
        db      $CF,$30,$01,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$28,$F2,$2A,$09,$01 ; $898B
        db      $81,$00,$35,$2B,$09,$01,$F0,$F5,$3F,$05,$09,$01,$6A,$00,$12,$01 ; $899B
        db      $34,$12,$01,$1A,$71,$2B,$7F,$89,$12,$01,$10,$A8,$2B,$12,$01,$00 ; $89AB
        db      $12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$7F,$89,$12,$01,$08,$A8 ; $89BB
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$7F,$89 ; $89CB
        db      $12,$01,$08,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04 ; $89DB
        db      $A8,$2B,$09,$01,$6A,$00,$09,$01,$85,$00,$12,$01,$42,$71,$2B,$7F ; $89EB
        db      $89,$12,$01,$14,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01 ; $89FB
        db      $04,$A8,$2B,$12,$01,$59,$12,$01,$3B,$12,$01,$2C,$71,$2B,$7F,$89 ; $8A0B
        db      $12,$01,$14,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04 ; $8A1B
        db      $A8,$2B,$12,$01,$20,$09,$01,$85,$00,$12,$01,$42,$71,$2B,$7F,$89 ; $8A2B
        db      $12,$01,$28,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04 ; $8A3B
        db      $A8,$2B,$8C,$2B,$FD,$00,$CF,$30,$01,$09,$01,$3D,$FD,$EF,$2B,$12 ; $8A4B
        db      $01,$28,$F2,$2A,$09,$01,$81,$00,$35,$2B,$12,$01,$00,$12,$01,$00 ; $8A5B
        db      $2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$34,$09,$01,$6A,$00,$12,$01 ; $8A6B
        db      $2C,$71,$2B,$7F,$89,$12,$01,$10,$A8,$2B,$12,$01,$00,$12,$01,$00 ; $8A7B
        db      $2E,$2B,$12,$01,$04,$A8,$2B,$7F,$89,$12,$01,$08,$A8,$2B,$12,$01 ; $8A8B
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$7F,$89,$12,$01,$08 ; $8A9B
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$09 ; $8AAB
        db      $01,$6A,$00,$09,$01,$85,$00,$12,$01,$42,$71,$2B,$7F,$89,$12,$01 ; $8ABB
        db      $14,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B ; $8ACB
        db      $12,$01,$59,$12,$01,$3B,$12,$01,$2C,$71,$2B,$7F,$89,$12,$01,$14 ; $8ADB
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$12 ; $8AEB
        db      $01,$20,$09,$01,$85,$00,$12,$01,$42,$71,$2B,$7F,$89,$12,$01,$28 ; $8AFB
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$09 ; $8B0B
        db      $01,$F0,$F5,$3A,$05,$8C,$2B,$FD,$00                             ; $8B1B
TERSE_COLON_8B24:
        rst     $08                             ; $8B24 colon entry
        dw      $898B                ; $8B25 execution token $898B
        dw      $8A51                ; $8B27 execution token $8A51
        dw      XT_RETURN               ; $8B29 _RETURN
TERSE_COLON_8B2B:
        rst     $08                             ; $8B2B colon entry
        dw      XT_LIT                  ; $8B2C _LIT
        dw      $F6E9                ; $8B2E inline word
        dw      XT_SBbang               ; $8B30 _SBbang
        dw      XT_RETURN               ; $8B32 _RETURN
TERSE_COLON_8B34:
        rst     $08                             ; $8B34 colon entry
        dw      $1F0E                ; $8B35 execution token $1F0E
        dw      XT_LITbyte              ; $8B37 _LITbyte
        db      $45                  ; $8B39 inline byte
        dw      XT_plus                 ; $8B3A _plus
        dw      XT_at                   ; $8B3C _at
        dw      XT_LITbyte              ; $8B3E _LITbyte
        db      $47                  ; $8B40 inline byte
        dw      XT_minussign            ; $8B41 _minussign
        dw      XT_DUP                  ; $8B43 _DUP
        dw      $1D9B                ; $8B45 execution token $1D9B
        dw      XT_SWAP                 ; $8B47 _SWAP
        dw      $1DAA                ; $8B49 execution token $1DAA
        dw      $1D54                ; $8B4B execution token $1D54
        dw      XT_RETURN               ; $8B4D _RETURN
TERSE_COLON_8B4F:
        rst     $08                             ; $8B4F colon entry
        dw      XT_LITbyte              ; $8B50 _LITbyte
        db      $03                  ; $8B52 inline byte
        dw      $1B32                ; $8B53 execution token $1B32
        dw      $1F0E                ; $8B55 execution token $1F0E
        dw      XT_OVER                 ; $8B57 _OVER
        dw      XT_ARRAY                ; $8B59 _ARRAY
        dw      $F6F4                ; $8B5B inline word
        dw      XT_bang                 ; $8B5D _bang
        dw      XT_DUP                  ; $8B5F _DUP
        dw      XT_LIT                  ; $8B61 _LIT
        dw      $F706                ; $8B63 inline word
        dw      XT_SBbang               ; $8B65 _SBbang
        dw      XT_2splat               ; $8B67 _2splat
        dw      XT_LIT                  ; $8B69 _LIT
        dw      $F713                ; $8B6B inline word
        dw      XT_at                   ; $8B6D _at
        dw      XT_plus                 ; $8B6F _plus
        dw      XT_at                   ; $8B71 _at
        dw      $24D4                ; $8B73 execution token $24D4
        dw      $1F14                ; $8B75 execution token $1F14
        dw      $1EA8                ; $8B77 execution token $1EA8
        dw      XT_RETURN               ; $8B79 _RETURN
TERSE_COLON_8B7B:
        rst     $08                             ; $8B7B colon entry
L8B7C:
        dw      XT_LITbyte              ; $8B7C _LITbyte
        db      $03                  ; $8B7E inline byte
        dw      $1B32                ; $8B7F execution token $1B32
        dw      XT_LIT                  ; $8B81 _LIT
        dw      $F706                ; $8B83 inline word
        dw      XT_Bat                  ; $8B85 _Bat
        dw      XT_OVER                 ; $8B87 _OVER
        dw      XT_not_equal            ; $8B89 _not_equal
        dw      XT_0BRANCH              ; $8B8B _0BRANCH
        dw      L8B7C                ; $8B8D branch target
        dw      $1F0E                ; $8B8F execution token $1F0E
        dw      XT_OVER                 ; $8B91 _OVER
        dw      XT_ARRAY                ; $8B93 _ARRAY
        dw      $F6F4                ; $8B95 inline word
        dw      XT_bang                 ; $8B97 _bang
        dw      XT_DUP                  ; $8B99 _DUP
        dw      XT_2splat               ; $8B9B _2splat
        dw      XT_LIT                  ; $8B9D _LIT
        dw      $F713                ; $8B9F inline word
        dw      XT_at                   ; $8BA1 _at
        dw      XT_plus                 ; $8BA3 _plus
        dw      XT_at                   ; $8BA5 _at
        dw      $24D4                ; $8BA7 execution token $24D4
        dw      XT_LIT                  ; $8BA9 _LIT
        dw      $F706                ; $8BAB inline word
        dw      XT_Bat                  ; $8BAD _Bat
        dw      XT_OR                   ; $8BAF _OR
        dw      XT_LITbyte              ; $8BB1 _LITbyte
        db      $03                  ; $8BB3 inline byte
        dw      XT_SWAP                 ; $8BB4 _SWAP
        dw      XT_minussign            ; $8BB6 _minussign
        dw      XT_LIT                  ; $8BB8 _LIT
        dw      $F715                ; $8BBA inline word
        dw      XT_SBbang               ; $8BBC _SBbang
        dw      $1F14                ; $8BBE execution token $1F14
        dw      $1EA8                ; $8BC0 execution token $1EA8
        dw      XT_RETURN               ; $8BC2 _RETURN
TERSE_COLON_8BC4:
        rst     $08                             ; $8BC4 colon entry
        dw      XT_DUP                  ; $8BC5 _DUP
        dw      $1E8E                ; $8BC7 execution token $1E8E
        dw      XT_LIT                  ; $8BC9 _LIT
        dw      $F6F0                ; $8BCB inline word
        dw      XT_bang                 ; $8BCD _bang
        dw      XT_DUP                  ; $8BCF _DUP
        dw      $1D3C                ; $8BD1 execution token $1D3C
        dw      XT_LIT                  ; $8BD3 _LIT
        dw      $F6EC                ; $8BD5 inline word
        dw      XT_bang                 ; $8BD7 _bang
        dw      XT_DUP                  ; $8BD9 _DUP
        dw      $1D24                ; $8BDB execution token $1D24
        dw      XT_LIT                  ; $8BDD _LIT
        dw      $F6EE                ; $8BDF inline word
        dw      XT_bang                 ; $8BE1 _bang
        dw      XT_LITbyte              ; $8BE3 _LITbyte
        db      $0A                  ; $8BE5 inline byte
        dw      $1E7D                ; $8BE6 execution token $1E7D
        dw      $2CA4                ; $8BE8 execution token $2CA4
        dw      $2C93                ; $8BEA execution token $2C93
        dw      XT_RETURN               ; $8BEC _RETURN
TERSE_COLON_8BEE:
        rst     $08                             ; $8BEE colon entry
        dw      $1EA8                ; $8BEF execution token $1EA8
        dw      XT_LITbyte              ; $8BF1 _LITbyte
        db      $0A                  ; $8BF3 inline byte
        dw      $1E7D                ; $8BF4 execution token $1E7D
        dw      XT_LIT                  ; $8BF6 _LIT
        dw      $F6F0                ; $8BF8 inline word
        dw      XT_at                   ; $8BFA _at
        dw      $1E8E                ; $8BFC execution token $1E8E
        dw      XT_LIT                  ; $8BFE _LIT
        dw      $F6EE                ; $8C00 inline word
        dw      XT_at                   ; $8C02 _at
        dw      XT_LIT                  ; $8C04 _LIT
        dw      $F6EC                ; $8C06 inline word
        dw      XT_at                   ; $8C08 _at
        dw      $1D54                ; $8C0A execution token $1D54
        dw      $2CA4                ; $8C0C execution token $2CA4
        dw      $2C93                ; $8C0E execution token $2C93
        dw      XT_RETURN               ; $8C10 _RETURN
TERSE_COLON_8C12:
        rst     $08                             ; $8C12 colon entry
        dw      XT_LIT                  ; $8C13 _LIT
        dw      $F715                ; $8C15 inline word
        dw      XT_Bat                  ; $8C17 _Bat
        dw      $1F0E                ; $8C19 execution token $1F0E
        dw      XT_OVER                 ; $8C1B _OVER
        dw      XT_ARRAY                ; $8C1D _ARRAY
        dw      $F6F4                ; $8C1F inline word
        dw      XT_bang                 ; $8C21 _bang
        dw      XT_2splat               ; $8C23 _2splat
        dw      XT_LIT                  ; $8C25 _LIT
        dw      $F713                ; $8C27 inline word
        dw      XT_at                   ; $8C29 _at
        dw      XT_plus                 ; $8C2B _plus
        dw      XT_at                   ; $8C2D _at
        dw      $24D4                ; $8C2F execution token $24D4
        dw      $1F14                ; $8C31 execution token $1F14
        dw      $1EA8                ; $8C33 execution token $1EA8
        dw      XT_RETURN               ; $8C35 _RETURN
TERSE_COLON_8C37:
        rst     $08                             ; $8C37 colon entry
        dw      $2D6B                ; $8C38 execution token $2D6B
        dw      XT_LIT                  ; $8C3A _LIT
        dw      $F713                ; $8C3C inline word
        dw      XT_bang                 ; $8C3E _bang
        dw      TERSE_COLON_8BC4     ; $8C40 TERSE_COLON_8BC4
        dw      $1F14                ; $8C42 execution token $1F14
        dw      $1EA8                ; $8C44 execution token $1EA8
        dw      $1F0E                ; $8C46 execution token $1F0E
        dw      XT_LIT                  ; $8C48 _LIT
        dw      $F6FB                ; $8C4A inline word
        dw      XT_bang                 ; $8C4C _bang
        dw      XT_RETURN               ; $8C4E _RETURN
        db      $CF,$09,$01,$FA,$F6,$3A,$05,$54,$22,$FD,$00,$AA,$31,$2F,$32,$9A ; $8C50
        db      $32                                                             ; $8C60
TERSE_COLON_8C61:
        rst     $08                             ; $8C61 colon entry
        dw      XT_LITbyte              ; $8C62 _LITbyte
        db      $03                  ; $8C64 inline byte
        dw      XT_0                    ; $8C65 _0
        dw      XT_DO                   ; $8C67 _DO
        dw      XT_I                    ; $8C69 _I
        dw      XT_ARRAY                ; $8C6B _ARRAY
        dw      $F6F4                ; $8C6D inline word
        dw      XT_at                   ; $8C6F _at
        dw      $1F0E                ; $8C71 execution token $1F0E
        dw      XT_equal                ; $8C73 _equal
        dw      XT_0BRANCH              ; $8C75 _0BRANCH
        dw      L8CBB                ; $8C77 branch target
        dw      $1F0E                ; $8C79 execution token $1F0E
        dw      $1DAA                ; $8C7B execution token $1DAA
        dw      XT_DUP                  ; $8C7D _DUP
        dw      XT_ROT                  ; $8C7F _ROT
        dw      XT_plus                 ; $8C81 _plus
        dw      XT_I                    ; $8C83 _I
        dw      XT_ARRAY                ; $8C85 _ARRAY
        dw      $F707                ; $8C87 inline word
        dw      XT_bang                 ; $8C89 _bang
        dw      $1F0E                ; $8C8B execution token $1F0E
        dw      $1D9B                ; $8C8D execution token $1D9B
        dw      XT_ROT                  ; $8C8F _ROT
        dw      XT_OVER                 ; $8C91 _OVER
        dw      XT_plus                 ; $8C93 _plus
        dw      XT_I                    ; $8C95 _I
        dw      XT_ARRAY                ; $8C97 _ARRAY
        dw      $F70D                ; $8C99 inline word
        dw      XT_bang                 ; $8C9B _bang
        dw      XT_I                    ; $8C9D _I
        dw      XT_ARRAY                ; $8C9F _ARRAY
        dw      $8C5B                ; $8CA1 inline word
        dw      XT_at                   ; $8CA3 _at
        dw      $1CB4                ; $8CA5 execution token $1CB4
        dw      XT_I                    ; $8CA7 _I
        dw      XT_ARRAY                ; $8CA9 _ARRAY
        dw      $F70D                ; $8CAB inline word
        dw      XT_at                   ; $8CAD _at
        dw      XT_I                    ; $8CAF _I
        dw      XT_ARRAY                ; $8CB1 _ARRAY
        dw      $F707                ; $8CB3 inline word
        dw      XT_at                   ; $8CB5 _at
        dw      $1D54                ; $8CB7 execution token $1D54
        dw      $1E0C                ; $8CB9 execution token $1E0C
L8CBB:
        dw      XT_LOOP                 ; $8CBB _LOOP
        dw      $1D24                ; $8CBD execution token $1D24
        dw      $1D3C                ; $8CBF execution token $1D3C
        dw      $2C93                ; $8CC1 execution token $2C93
        dw      XT_RETURN               ; $8CC3 _RETURN
TERSE_COLON_8CC5:
        rst     $08                             ; $8CC5 colon entry
        dw      XT_2slash               ; $8CC6 _2slash
        dw      XT_0BRANCH              ; $8CC8 _0BRANCH
        dw      L8CCE                ; $8CCA branch target
        dw      $1E0C                ; $8CCC execution token $1E0C
L8CCE:
        dw      XT_RETURN               ; $8CCE _RETURN
TERSE_COLON_8CD0:
        rst     $08                             ; $8CD0 colon entry
        dw      XT_LITbyte              ; $8CD1 _LITbyte
        db      $1C                  ; $8CD3 inline byte
        dw      XT_LITbyte              ; $8CD4 _LITbyte
        db      $03                  ; $8CD6 inline byte
        dw      XT_DO                   ; $8CD7 _DO
        dw      XT_LITbyte              ; $8CD9 _LITbyte
        db      $10                  ; $8CDB inline byte
        dw      $1B32                ; $8CDC execution token $1B32
        dw      XT_I                    ; $8CDE _I
        dw      XT_LIT                  ; $8CE0 _LIT
        dw      $FDB0                ; $8CE2 inline word
        dw      XT_plus                 ; $8CE4 _plus
        dw      XT_SBbang               ; $8CE6 _SBbang
        dw      XT_LOOP                 ; $8CE8 _LOOP
        dw      XT_LIT                  ; $8CEA _LIT
        dw      $FDAF                ; $8CEC inline word
        dw      XT_BONE                 ; $8CEE _BONE
        dw      XT_RETURN               ; $8CF0 _RETURN
TERSE_COLON_8CF2:
        rst     $08                             ; $8CF2 colon entry
        dw      XT_LITbyte              ; $8CF3 _LITbyte
        db      $1B                  ; $8CF5 inline byte
        dw      XT_LITbyte              ; $8CF6 _LITbyte
        db      $03                  ; $8CF8 inline byte
        dw      $2D52                ; $8CF9 execution token $2D52
        dw      XT_LIT                  ; $8CFB _LIT
        dw      $FDAF                ; $8CFD inline word
        dw      XT_BONE                 ; $8CFF _BONE
        dw      XT_RETURN               ; $8D01 _RETURN
        db      $07,$00,$0E,$13,$1F,$2A,$30,$55,$AA,$55,$5A,$A5,$55,$AA,$55,$5A ; $8D03
        db      $A5,$55,$AA,$55,$5A,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8D13
        db      $00,$00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8D23
        db      $02,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80 ; $8D33
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00 ; $8D43
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00 ; $8D53
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00 ; $8D63
        db      $00,$00,$00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $8D73
        db      $00,$00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8D83
        db      $00,$00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8D93
        db      $02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$40 ; $8DA3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00 ; $8DB3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00 ; $8DC3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00 ; $8DD3
        db      $00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $8DE3
        db      $00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8DF3
        db      $00,$00,$01,$55,$5A,$A9,$55,$5A,$A9,$55,$6A,$A5,$55,$AA,$95,$56 ; $8E03
        db      $A9,$07,$00,$0E,$13,$1A,$2F,$30,$56,$AA,$95,$6A,$A9,$56,$AA,$95 ; $8E13
        db      $6A,$A9,$56,$AA,$95,$6A,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8E23
        db      $00,$00,$00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8E33
        db      $00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $8E43
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00 ; $8E53
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00 ; $8E63
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00 ; $8E73
        db      $00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00,$00 ; $8E83
        db      $00,$00,$00,$00,$00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8E93
        db      $00,$00,$00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8EA3
        db      $00,$02,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $8EB3
        db      $40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$40,$00 ; $8EC3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$40,$00,$00,$00 ; $8ED3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00 ; $8EE3
        db      $00,$00,$00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00,$00 ; $8EF3
        db      $00,$00,$00,$00,$00,$01,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8F03
        db      $00,$00,$00,$01,$95,$5A,$AA,$95,$5A,$AA,$55,$AA,$A5,$56,$AA,$95 ; $8F13
        db      $5A,$AA,$02,$00,$81,$07,$03,$8D,$07,$14,$8E,$00,$28,$8F,$00,$0A ; $8F23
        db      $06,$0D,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $8F33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $8F43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $8F53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $8F63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $8F73
        db      $06,$0A,$0C,$0D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8F83
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8F93
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FA3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FB3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FC3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FD3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FE3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8FF3
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9003
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9013
        db      $19,$FF,$0D,$08,$1F,$20,$30,$15,$55,$55,$55,$55,$55,$55,$55,$55 ; $9023
        db      $55,$55,$55,$40,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55 ; $9033
        db      $50,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$50,$55,$55 ; $9043
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$50,$55,$55,$55,$55,$55 ; $9053
        db      $55,$55,$55,$55,$55,$55,$55,$50,$55,$55,$55,$55,$55,$55,$55,$55 ; $9063
        db      $55,$55,$55,$55,$50,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55 ; $9073
        db      $55,$50,$15,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$40,$0C ; $9083
        db      $64,$6F,$75,$62,$6C,$65,$20,$73,$63,$6F,$72,$65,$CF,$99,$15,$09 ; $9093
        db      $01,$46,$E1,$53,$01,$30,$01,$CF,$01,$EA,$03,$B7,$90,$12,$01,$3C ; $90A3
        db      $E2,$03,$BB,$90,$09,$01,$64,$FF,$12,$01,$21,$54,$1D,$12,$01,$0B ; $90B3
        db      $7D,$1E,$09,$01,$92,$90,$8E,$1E,$83,$20,$02,$23,$54,$22,$FD,$00 ; $90C3
        db      $06,$70,$75,$70,$69,$6C,$20,$01,$31,$01,$32,$0C,$20,$20,$20,$69 ; $90D3
        db      $6E,$63,$6F,$72,$72,$65,$63,$74,$05,$20,$6F,$6E,$6C,$79,$0C,$20 ; $90E3
        db      $20,$20,$74,$72,$79,$20,$61,$67,$61,$69,$6E,$CF,$09,$01,$3D,$E1 ; $90F3
        db      $53,$01,$30,$01,$1C,$02,$EA,$03,$33,$91,$09,$01,$D3,$90,$8E,$1E ; $9103
        db      $7E,$20,$D4,$2C,$EA,$03,$23,$91,$09,$01,$DA,$90,$E2,$03,$27,$91 ; $9113
        db      $09,$01,$DC,$90,$8E,$1E,$7E,$20,$09,$01,$EB,$90,$E2,$03,$37,$91 ; $9123
        db      $09,$01,$F1,$90,$8E,$1E,$83,$20,$FD,$00,$0B,$20,$20,$20,$20,$74 ; $9133
        db      $69,$6D,$65,$20,$75,$70                                         ; $9143
TERSE_COLON_9149:
        rst     $08                             ; $9149 colon entry
        dw      $1EF6                ; $914A execution token $1EF6
        dw      XT_LIT                  ; $914C _LIT
        dw      $FFD6                ; $914E inline word
        dw      XT_LITbyte              ; $9150 _LITbyte
        db      $23                  ; $9152 inline byte
        dw      $1D54                ; $9153 execution token $1D54
        dw      XT_LITbyte              ; $9155 _LITbyte
        db      $0D                  ; $9157 inline byte
        dw      $1E7D                ; $9158 execution token $1E7D
        dw      $1EDC                ; $915A execution token $1EDC
        dw      XT_LIT                  ; $915C _LIT
        dw      $8F83                ; $915E inline word
        dw      $1CB4                ; $9160 execution token $1CB4
        dw      $1E0C                ; $9162 execution token $1E0C
        dw      $1EA8                ; $9164 execution token $1EA8
        dw      XT_LIT                  ; $9166 _LIT
        dw      $913D                ; $9168 inline word
        dw      $1E8E                ; $916A execution token $1E8E
        dw      $2083                ; $916C execution token $2083
        dw      XT_RETURN               ; $916E _RETURN
        db      $CF,$12,$01,$04,$09,$01,$EA,$F6,$32,$05,$21,$1F,$12,$01,$20,$09 ; $9170
        db      $01,$BF,$00,$D8,$02,$12,$01,$08,$DF,$1B,$2C,$1A,$2A,$01,$09,$01 ; $9180
        db      $BF,$00,$D8,$02,$12,$01,$06,$DF,$1B,$2C,$1A,$09,$01,$EA,$F6,$36 ; $9190
        db      $01,$44,$05,$53,$01,$DE,$01,$EA,$03,$7A,$91,$37,$23,$FD,$00,$CF ; $91A0
        db      $99,$15,$02,$23,$09,$01,$24,$F7,$3F,$05,$30,$01,$40,$1F,$A8,$1E ; $91B0
        db      $12,$01,$63,$3C,$1D,$09,$01,$23,$90,$8E,$1E,$2A,$01,$09,$01,$46 ; $91C0
        db      $E1,$80,$1A,$EA,$03,$DE,$91,$12,$01,$60,$24,$1D,$0C,$1E,$30,$01 ; $91D0
        db      $09,$01,$46,$E1,$80,$1A,$EA,$03,$F2,$91,$09,$01,$A0,$FF,$24,$1D ; $91E0
        db      $0C,$1E,$12,$01,$20,$DF,$1B,$2C,$1A,$09,$01,$24,$F7,$53,$01,$EA ; $91F0
        db      $03,$CB,$91,$54,$22,$FD,$00,$CF,$99,$15,$09,$01,$1E,$F7,$3F,$05 ; $9200
        db      $12,$01,$0F,$7D,$1E,$09,$01,$D6,$FF,$12,$01,$23,$54,$1D,$DC,$1E ; $9210
        db      $09,$01,$83,$8F,$B4,$1C,$0C,$1E,$A8,$1E,$C3,$2C,$DE,$01,$EA,$03 ; $9220
        db      $7B,$92,$09,$01,$55,$F7,$53,$01,$09,$01,$3E,$E1,$53,$01,$56,$02 ; $9230
        db      $EA,$03,$50,$92,$09,$01,$DE,$90,$B4,$1C,$83,$20,$E2,$03,$7B,$92 ; $9240
        db      $12,$01,$05,$09,$01,$1F,$F7,$32,$05,$09,$01,$D6,$FF,$12,$01,$23 ; $9250
        db      $54,$1D,$FE,$90,$12,$01,$10,$DF,$1B,$2C,$1A,$09,$01,$1F,$F7,$36 ; $9260
        db      $01,$44,$05,$53,$01,$DE,$01,$EA,$03,$59,$92,$54,$22,$FD,$00     ; $9270
TERSE_COLON_927F:
        rst     $08                             ; $927F colon entry
        dw      XT_LITbyte              ; $9280 _LITbyte
        db      $15                  ; $9282 inline byte
        dw      $1F4B                ; $9283 execution token $1F4B
        dw      XT_LIT                  ; $9285 _LIT
        dw      $F720                ; $9287 inline word
        dw      XT_BZERO                ; $9289 _BZERO
        dw      XT_RETURN               ; $928B _RETURN
        db      $CF,$2A,$01,$09,$01,$46,$E1,$80,$1A,$EA,$03,$A2,$92,$09,$01,$70 ; $928D
        db      $00,$E2,$03,$A4,$92,$2A,$01,$30,$01,$09,$01,$46,$E1,$80,$1A,$EA ; $929D
        db      $03,$B7,$92,$12,$01,$07,$E2,$03,$B9,$92,$2A,$01,$88,$01,$36,$01 ; $92AD
        db      $09,$01,$20,$F7,$32,$05,$09,$01,$00,$01,$FF,$02,$12,$01,$15,$5A ; $92BD
        db      $01,$4B,$1F,$FD,$00                                             ; $92CD
TERSE_COLON_92D2:
        rst     $08                             ; $92D2 colon entry
        dw      XT_LIT                  ; $92D3 _LIT
        dw      $F720                ; $92D5 inline word
        dw      XT_DUP                  ; $92D7 _DUP
        dw      XT_Bat                  ; $92D9 _Bat
        dw      XT_ROT                  ; $92DB _ROT
        dw      XT_OR                   ; $92DD _OR
        dw      XT_DUP                  ; $92DF _DUP
        dw      XT_ROT                  ; $92E1 _ROT
        dw      XT_SBbang               ; $92E3 _SBbang
        dw      XT_LIT                  ; $92E5 _LIT
        dw      $0100                ; $92E7 inline word
        dw      XT_star                 ; $92E9 _star
        dw      XT_LITbyte              ; $92EB _LITbyte
        db      $15                  ; $92ED inline byte
        dw      XT_plus                 ; $92EE _plus
        dw      $1F4B                ; $92F0 execution token $1F4B
        dw      XT_RETURN               ; $92F2 _RETURN
TERSE_COLON_92F4:
        rst     $08                             ; $92F4 colon entry
        dw      XT_COM                  ; $92F5 _COM
        dw      XT_LIT                  ; $92F7 _LIT
        dw      $F720                ; $92F9 inline word
        dw      XT_DUP                  ; $92FB _DUP
        dw      XT_Bat                  ; $92FD _Bat
        dw      XT_ROT                  ; $92FF _ROT
        dw      XT_AND                  ; $9301 _AND
        dw      XT_DUP                  ; $9303 _DUP
        dw      XT_ROT                  ; $9305 _ROT
        dw      XT_SBbang               ; $9307 _SBbang
        dw      XT_LIT                  ; $9309 _LIT
        dw      $0100                ; $930B inline word
        dw      XT_star                 ; $930D _star
        dw      XT_LITbyte              ; $930F _LITbyte
        db      $15                  ; $9311 inline byte
        dw      XT_plus                 ; $9312 _plus
        dw      $1F4B                ; $9314 execution token $1F4B
        dw      XT_RETURN               ; $9316 _RETURN
TERSE_COLON_9318:
        rst     $08                             ; $9318 colon entry
        dw      XT_COM                  ; $9319 _COM
        dw      XT_LITbyte              ; $931B _LITbyte
        db      $07                  ; $931D inline byte
        dw      XT_AND                  ; $931E _AND
        dw      XT_RETURN               ; $9320 _RETURN
TERSE_COLON_9322:
        rst     $08                             ; $9322 colon entry
        dw      XT_DUP                  ; $9323 _DUP
        dw      XT_1                    ; $9325 _1
        dw      XT_equal                ; $9327 _equal
        dw      XT_OVER                 ; $9329 _OVER
        dw      XT_LITbyte              ; $932B _LITbyte
        db      $02                  ; $932D inline byte
        dw      XT_equal                ; $932E _equal
        dw      XT_OR                   ; $9330 _OR
        dw      XT_OVER                 ; $9332 _OVER
        dw      XT_LITbyte              ; $9334 _LITbyte
        db      $04                  ; $9336 inline byte
        dw      XT_equal                ; $9337 _equal
        dw      XT_OR                   ; $9339 _OR
        dw      XT_0BRANCH              ; $933B _0BRANCH
        dw      L935D                ; $933D branch target
        dw      XT_LIT                  ; $933F _LIT
        dw      $F757                ; $9341 inline word
        dw      XT_2DUP                 ; $9343 _2DUP
        dw      XT_Bat                  ; $9345 _Bat
        dw      XT_not_equal            ; $9347 _not_equal
        dw      XT_0BRANCH              ; $9349 _0BRANCH
        dw      L9355                ; $934B branch target
        dw      XT_SBbang               ; $934D _SBbang
        dw      XT_1                    ; $934F _1
        dw      XT_BRANCH               ; $9351 _BRANCH
        dw      L9359                ; $9353 branch target
L9355:
        dw      XT_2DROP                ; $9355 _2DROP
        dw      XT_0                    ; $9357 _0
L9359:
        dw      XT_BRANCH               ; $9359 _BRANCH
        dw      L9361                ; $935B branch target
L935D:
        dw      XT_DROP                 ; $935D _DROP
        dw      XT_0                    ; $935F _0
L9361:
        dw      XT_RETURN               ; $9361 _RETURN
TERSE_COLON_9363:
        rst     $08                             ; $9363 colon entry
        dw      XT_LIT                  ; $9364 _LIT
        dw      $F721                ; $9366 inline word
        dw      XT_Bat                  ; $9368 _Bat
        dw      XT_0BRANCH              ; $936A _0BRANCH
        dw      L9392                ; $936C branch target
        dw      XT_LIT                  ; $936E _LIT
        dw      $F726                ; $9370 inline word
        dw      XT_Bat                  ; $9372 _Bat
        dw      XT_DUP                  ; $9374 _DUP
        dw      XT_ARRAY                ; $9376 _ARRAY
        dw      $8C5B                ; $9378 inline word
        dw      XT_at                   ; $937A _at
        dw      $1CB4                ; $937C execution token $1CB4
        dw      XT_DUP                  ; $937E _DUP
        dw      XT_ARRAY                ; $9380 _ARRAY
        dw      $F70D                ; $9382 inline word
        dw      XT_at                   ; $9384 _at
        dw      XT_SWAP                 ; $9386 _SWAP
        dw      XT_ARRAY                ; $9388 _ARRAY
        dw      $F707                ; $938A inline word
        dw      XT_at                   ; $938C _at
        dw      $1D54                ; $938E execution token $1D54
        dw      $1E0C                ; $9390 execution token $1E0C
L9392:
        dw      XT_RETURN               ; $9392 _RETURN
TERSE_COLON_9394:
        rst     $08                             ; $9394 colon entry
        dw      XT_LIT                  ; $9395 _LIT
        dw      $F757                ; $9397 inline word
        dw      XT_Bat                  ; $9399 _Bat
        dw      XT_LIT                  ; $939B _LIT
        dw      $F6E6                ; $939D inline word
        dw      XT_Bat                  ; $939F _Bat
        dw      XT_1                    ; $93A1 _1
        dw      XT_equal                ; $93A3 _equal
        dw      XT_0BRANCH              ; $93A5 _0BRANCH
        dw      L93AB                ; $93A7 branch target
        dw      $2CB9                ; $93A9 execution token $2CB9
L93AB:
        dw      TERSE_COLON_927F     ; $93AB TERSE_COLON_927F
        dw      TERSE_COLON_92D2     ; $93AD TERSE_COLON_92D2
        dw      XT_RETURN               ; $93AF _RETURN
TERSE_COLON_93B1:
        rst     $08                             ; $93B1 colon entry
        dw      XT_LIT                  ; $93B2 _LIT
        dw      $F757                ; $93B4 inline word
        dw      XT_Bat                  ; $93B6 _Bat
        dw      XT_DUP                  ; $93B8 _DUP
        dw      $2CB9                ; $93BA execution token $2CB9
        dw      XT_OR                   ; $93BC _OR
        dw      TERSE_COLON_92F4     ; $93BE TERSE_COLON_92F4
        dw      XT_LIT                  ; $93C0 _LIT
        dw      $E13D                ; $93C2 inline word
        dw      XT_Bat                  ; $93C4 _Bat
        dw      XT_1                    ; $93C6 _1
        dw      XT_gt                   ; $93C8 _gt
        dw      XT_0BRANCH              ; $93CA _0BRANCH
        dw      L93E4                ; $93CC branch target
        dw      XT_LIT                  ; $93CE _LIT
        dw      $0070                ; $93D0 inline word
        dw      XT_LIT                  ; $93D2 _LIT
        dw      $F6E6                ; $93D4 inline word
        dw      XT_Bat                  ; $93D6 _Bat
        dw      XT_1                    ; $93D8 _1
        dw      XT_gt                   ; $93DA _gt
        dw      XT_0BRANCH              ; $93DC _0BRANCH
        dw      L93E2                ; $93DE branch target
        dw      $2CB9                ; $93E0 execution token $2CB9
L93E2:
        dw      TERSE_COLON_92F4     ; $93E2 TERSE_COLON_92F4
L93E4:
        dw      XT_RETURN               ; $93E4 _RETURN
        db      $CF,$99,$15,$02,$23,$09,$01,$E6,$F6,$3F,$05,$09,$01,$25,$F7,$3F ; $93E6
        db      $05,$E7,$15,$12,$01,$04,$09,$01,$26,$F7,$32,$05,$2A,$01,$09,$01 ; $93F6
        db      $46,$E1,$80,$1A,$EA,$03,$3F,$94,$12,$01,$11,$E0,$02,$B9,$2C,$18 ; $9406
        db      $93,$36,$01,$22,$93,$EA,$03,$3D,$94,$AB,$01,$09,$01,$26,$F7,$32 ; $9416
        db      $05,$09,$01,$27,$F7,$3A,$05,$09,$01,$E6,$F6,$3A,$05,$09,$01,$25 ; $9426
        db      $F7,$3A,$05,$E2,$03,$3F,$94,$43,$01,$FB,$34,$E3,$01,$30,$01,$09 ; $9436
        db      $01,$46,$E1,$80,$1A,$79,$01,$EA,$03,$83,$94,$12,$01,$11,$E0,$02 ; $9446
        db      $18,$93,$36,$01,$22,$93,$EA,$03,$81,$94,$AB,$01,$09,$01,$26,$F7 ; $9456
        db      $32,$05,$09,$01,$27,$F7,$3F,$05,$12,$01,$02,$09,$01,$E6,$F6,$32 ; $9466
        db      $05,$09,$01,$25,$F7,$3A,$05,$E2,$03,$83,$94,$43,$01,$FB,$34,$09 ; $9476
        db      $01,$05,$F7,$53,$01,$88,$01,$EA,$03,$F7,$93,$09,$01,$24,$F7,$3A ; $9486
        db      $05,$09,$01,$E7,$F6,$3A,$05,$09,$01,$05,$F7,$53,$01,$E3,$01,$EA ; $9496
        db      $03,$E2,$94,$A8,$1E,$63,$93,$C3,$2C,$EA,$03,$C3,$94,$0B,$83,$94 ; $94A6
        db      $93,$09,$01,$70,$91,$DD,$2C,$37,$23,$E2,$03,$D7,$94,$09,$01,$55 ; $94B6
        db      $F7,$53,$01,$EA,$03,$D3,$94,$6C,$89,$E2,$03,$D5,$94,$16,$88,$B1 ; $94C6
        db      $93,$12,$01,$10,$DF,$1B,$2C,$1A,$E2,$03,$E8,$94,$09,$01,$55,$F7 ; $94D6
        db      $3A,$05,$54,$22,$FD,$00,$1C,$14,$0D,$15,$AF,$11,$01,$00,$00,$00 ; $94E6
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $94F6
        db      $50,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$01,$40 ; $9506
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$14,$04,$00,$00 ; $9516
        db      $00,$80,$00,$00,$00,$05,$01,$55,$55,$01,$41,$40,$00,$00,$20,$00 ; $9526
        db      $00,$00,$50,$14,$00,$00,$50,$14,$10,$00,$00,$08,$00,$00,$05,$00 ; $9536
        db      $45,$59,$95,$44,$01,$00,$00,$00,$02,$00,$00,$50,$01,$14,$15,$50 ; $9546
        db      $51,$00,$10,$00,$00,$00,$83,$45,$00,$04,$53,$C5,$4F,$14,$40,$01 ; $9556
        db      $40,$00,$03,$F3,$D0,$00,$12,$4C,$31,$30,$C6,$10,$10,$03,$C0,$0F ; $9566
        db      $01,$70,$00,$06,$4C,$31,$30,$C6,$40,$00,$01,$40,$1C,$FC,$70,$00 ; $9576
        db      $25,$8C,$31,$30,$C9,$60,$54,$01,$40,$1F,$C0,$74,$00,$15,$60,$01 ; $9586
        db      $00,$25,$50,$14,$00,$34,$0F,$3F,$34,$00,$15,$1F,$F4,$7F,$D1,$51 ; $9596
        db      $14,$10,$0F,$07,$F0,$30,$00,$15,$65,$55,$55,$65,$51,$00,$17,$FF ; $95A6
        db      $01,$FD,$C0,$01,$25,$55,$58,$95,$55,$61,$40,$41,$40,$00,$57,$05 ; $95B6
        db      $05,$25,$15,$55,$55,$51,$62,$42,$17,$FD,$00,$00,$09,$16,$05,$45 ; $95C6
        db      $55,$55,$45,$42,$55,$01,$40,$00,$00,$02,$58,$09,$50,$55,$54,$15 ; $95D6
        db      $80,$AA,$17,$F4,$00,$00,$02,$60,$02,$56,$00,$02,$56,$00,$00,$05 ; $95E6
        db      $50,$00,$00,$00,$80,$00,$95,$55,$55,$58,$00,$00,$00,$00,$00,$00 ; $95F6
        db      $00,$00,$00,$00,$0A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9606
        db      $00,$AF,$E8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$FF,$FE ; $9616
        db      $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AF,$FF,$FF,$E8,$38,$00 ; $9626
        db      $00,$00,$C0,$00,$00,$00,$0A,$FE,$AA,$AA,$FE,$8E,$B0,$00,$00,$30 ; $9636
        db      $00,$00,$00,$AF,$EB,$FF,$FF,$AF,$E8,$20,$00,$00,$0C,$00,$00,$0A ; $9646
        db      $FF,$BF,$FF,$FF,$FB,$FE,$30,$00,$00,$03,$00,$00,$AF,$FE,$FC,$3F ; $9656
        db      $F0,$FE,$FF,$20,$00,$00,$00,$C3,$8A,$FF,$FB,$F3,$CF,$CF,$3F,$BF ; $9666
        db      $32,$80,$00,$03,$F3,$E3,$FF,$EF,$CC,$33,$30,$CF,$E3,$23,$03,$C0 ; $9676
        db      $0F,$42,$B0,$3F,$3F,$CC,$33,$30,$CF,$F3,$30,$02,$80,$2D,$FC,$B0 ; $9686
        db      $03,$FF,$CC,$33,$30,$CF,$FC,$A8,$02,$80,$2F,$C0,$B8,$00,$3F,$F0 ; $9696
        db      $03,$00,$3F,$F0,$28,$03,$38,$0F,$3F,$38,$00,$3F,$EF,$FB,$BF,$EF ; $96A6
        db      $F3,$28,$20,$0F,$0B,$F0,$30,$00,$3F,$FA,$AF,$EA,$BF,$F3,$0C,$2B ; $96B6
        db      $FF,$02,$FE,$C0,$03,$3F,$FF,$FC,$FF,$FF,$F3,$C0,$82,$83,$00,$AB ; $96C6
        db      $0F,$0F,$3F,$3F,$FF,$FF,$F3,$F3,$C3,$2B,$FE,$00,$00,$0F,$3F,$0F ; $96D6
        db      $CF,$FF,$FF,$CF,$C3,$FF,$02,$83,$00,$00,$03,$FC,$0F,$F0,$FF,$FC ; $96E6
        db      $3F,$C0,$FF,$2B,$F8,$00,$00,$03,$F0,$03,$FF,$00,$03,$FF,$00,$00 ; $96F6
        db      $0A,$A0,$00,$00,$00,$C0,$00,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$1D ; $9706
        db      $14,$0C,$15,$AF,$FC,$00,$00,$00,$00,$00,$00,$00,$01,$50,$00,$00 ; $9716
        db      $00,$00,$00,$00,$00,$00,$00,$00,$14,$05,$00,$00,$00,$00,$00,$00 ; $9726
        db      $00,$00,$00,$01,$40,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$14 ; $9736
        db      $00,$00,$05,$01,$00,$00,$00,$00,$00,$00,$01,$40,$55,$55,$40,$50 ; $9746
        db      $50,$00,$00,$00,$00,$00,$14,$05,$00,$00,$3C,$05,$04,$00,$A0,$00 ; $9756
        db      $00,$01,$40,$10,$56,$55,$3F,$C0,$40,$00,$0A,$80,$00,$14,$00,$45 ; $9766
        db      $55,$40,$03,$F0,$04,$00,$00,$A8,$D1,$40,$01,$14,$01,$1F,$FF,$FC ; $9776
        db      $00,$50,$00,$FC,$F4,$00,$04,$50,$CC,$1D,$F7,$FC,$04,$00,$03,$C0 ; $9786
        db      $5C,$00,$01,$50,$0C,$00,$03,$FF,$00,$00,$07,$3F,$1C,$00,$09,$60 ; $9796
        db      $3C,$7F,$FF,$FC,$15,$00,$07,$F0,$1D,$00,$05,$58,$00,$1D,$F7,$FC ; $97A6
        db      $44,$00,$03,$CF,$CD,$00,$05,$47,$FD,$00,$03,$FC,$50,$00,$01,$FC ; $97B6
        db      $0C,$00,$05,$69,$56,$8F,$FF,$FC,$54,$00,$00,$7F,$70,$00,$45,$56 ; $97C6
        db      $AA,$8D,$F5,$40,$96,$00,$00,$01,$C1,$41,$44,$05,$55,$A0,$00,$08 ; $97D6
        db      $25,$40,$00,$00,$02,$45,$82,$A0,$55,$55,$55,$51,$05,$40,$00,$00 ; $97E6
        db      $00,$96,$01,$58,$25,$80,$25,$50,$8A,$80,$00,$00,$00,$98,$00,$55 ; $97F6
        db      $80,$25,$85,$40,$00,$00,$00,$00,$00,$20,$00,$25,$55,$55,$56,$00 ; $9806
        db      $00,$00,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00,$00,$00,$00,$00 ; $9816
        db      $00,$00,$00,$00,$2B,$FA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $9826
        db      $BF,$FF,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$2B,$FF,$FF,$FA,$0E ; $9836
        db      $00,$00,$00,$00,$00,$00,$02,$BF,$AA,$AA,$BF,$A3,$AC,$00,$00,$00 ; $9846
        db      $00,$00,$2B,$FA,$FF,$FF,$3C,$3A,$08,$00,$F0,$00,$00,$02,$BF,$EF ; $9856
        db      $FF,$FF,$3F,$CF,$8C,$00,$0F,$C0,$00,$2B,$FF,$BF,$FF,$C0,$03,$F3 ; $9866
        db      $C8,$00,$00,$FC,$E2,$BF,$FE,$FC,$03,$2F,$FF,$FC,$CC,$A0,$00,$FC ; $9876
        db      $F8,$FF,$FB,$F0,$CC,$2E,$FB,$FC,$C8,$C0,$03,$D0,$AC,$0F,$CF,$F0 ; $9886
        db      $0C,$C0,$03,$FF,$0C,$00,$0B,$7F,$2C,$00,$FF,$F0,$3C,$BF,$FF,$FF ; $9896
        db      $2A,$00,$0B,$F0,$2E,$00,$0F,$FC,$00,$2E,$FB,$FC,$CB,$00,$03,$CF ; $98A6
        db      $CE,$00,$0F,$FB,$FE,$00,$03,$FC,$F0,$00,$02,$FC,$0C,$00,$0F,$FE ; $98B6
        db      $AB,$CF,$FF,$FC,$FC,$00,$00,$BF,$B0,$00,$CF,$FF,$FF,$CE,$FA,$80 ; $98C6
        db      $FF,$00,$00,$02,$C3,$C3,$CC,$0F,$FF,$F0,$00,$0C,$3F,$C0,$00,$00 ; $98D6
        db      $03,$CF,$C3,$F0,$FF,$FF,$FF,$F3,$0F,$C0,$00,$00,$00,$FF,$03,$FC ; $98E6
        db      $3F,$C0,$3F,$F0,$CF,$C0,$00,$00,$00,$FC,$00,$FF,$C0,$3F,$CF,$C0 ; $98F6
        db      $00,$00,$00,$00,$00,$30,$00,$3F,$FF,$FF,$FF,$00,$00,$00,$1D,$14 ; $9906
        db      $0C,$15,$AF,$FC,$00,$00,$00,$00,$00,$00,$00,$01,$50,$00,$00,$00 ; $9916
        db      $00,$00,$00,$00,$00,$00,$00,$14,$05,$00,$00,$00,$00,$00,$00,$00 ; $9926
        db      $00,$00,$01,$40,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$14,$00 ; $9936
        db      $00,$05,$01,$00,$00,$00,$00,$00,$00,$01,$40,$55,$55,$40,$50,$50 ; $9946
        db      $00,$00,$00,$00,$00,$14,$05,$00,$00,$3C,$05,$04,$00,$A0,$00,$00 ; $9956
        db      $01,$40,$10,$56,$55,$3F,$C0,$40,$00,$0A,$80,$00,$14,$00,$45,$55 ; $9966
        db      $40,$03,$F0,$04,$00,$00,$A8,$D1,$40,$01,$14,$01,$1F,$FF,$FC,$00 ; $9976
        db      $50,$00,$FC,$F4,$00,$04,$50,$30,$1D,$F7,$FC,$04,$00,$03,$C0,$5C ; $9986
        db      $00,$01,$53,$00,$00,$03,$FF,$00,$00,$07,$3F,$1C,$00,$09,$63,$C0 ; $9996
        db      $7F,$FF,$FC,$15,$00,$07,$F0,$1D,$00,$05,$58,$00,$1D,$F7,$FC,$44 ; $99A6
        db      $00,$03,$CF,$CD,$00,$05,$47,$FD,$00,$03,$FC,$50,$00,$01,$FC,$0C ; $99B6
        db      $00,$05,$69,$56,$8F,$FF,$FC,$54,$00,$00,$7F,$70,$00,$49,$56,$AA ; $99C6
        db      $8D,$F5,$40,$96,$00,$00,$01,$C1,$41,$49,$55,$55,$60,$00,$08,$25 ; $99D6
        db      $40,$00,$00,$02,$45,$81,$50,$25,$50,$55,$51,$05,$40,$00,$00,$00 ; $99E6
        db      $96,$00,$09,$81,$89,$25,$50,$8A,$80,$00,$00,$00,$98,$00,$55,$50 ; $99F6
        db      $25,$45,$40,$00,$00,$00,$00,$00,$20,$00,$25,$55,$55,$56,$00,$00 ; $9A06
        db      $00,$00,$00,$00,$00,$00,$00,$02,$A0,$00,$00,$00,$00,$00,$00,$00 ; $9A16
        db      $00,$00,$00,$2B,$FA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$BF ; $9A26
        db      $FF,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$2B,$FF,$FF,$FA,$0E,$00 ; $9A36
        db      $00,$00,$00,$00,$00,$02,$BF,$AA,$AA,$BF,$A3,$AC,$00,$00,$00,$00 ; $9A46
        db      $00,$2B,$FA,$FF,$FF,$3C,$3A,$08,$00,$F0,$00,$00,$02,$BF,$EF,$FF ; $9A56
        db      $FF,$3F,$CF,$8C,$00,$0F,$C0,$00,$2B,$FF,$BF,$FF,$C0,$03,$F3,$C8 ; $9A66
        db      $00,$00,$FC,$E2,$BF,$FE,$FC,$03,$2F,$FF,$FC,$CC,$A0,$00,$FC,$F8 ; $9A76
        db      $FF,$FB,$F0,$30,$2E,$FB,$FC,$C8,$C0,$03,$D0,$AC,$0F,$CF,$F3,$00 ; $9A86
        db      $C0,$03,$FF,$0C,$00,$0B,$7F,$2C,$00,$FF,$F3,$C0,$BF,$FF,$FF,$2A ; $9A96
        db      $00,$0B,$F0,$2E,$00,$0F,$FC,$00,$2E,$FB,$FC,$CB,$00,$03,$CF,$CE ; $9AA6
        db      $00,$0F,$FB,$FE,$00,$03,$FC,$F0,$00,$02,$FC,$0C,$00,$0F,$FE,$AB ; $9AB6
        db      $CF,$FF,$FC,$FC,$00,$00,$BF,$B0,$00,$CF,$FF,$FF,$CE,$FA,$80,$FF ; $9AC6
        db      $00,$00,$02,$C3,$C3,$CF,$FF,$FF,$F0,$00,$0C,$3F,$C0,$00,$00,$03 ; $9AD6
        db      $CF,$C3,$F0,$3F,$F0,$FF,$F3,$0F,$C0,$00,$00,$00,$FF,$00,$0F,$C3 ; $9AE6
        db      $CF,$3F,$F0,$CF,$C0,$00,$00,$00,$FC,$00,$FF,$F0,$3F,$CF,$C0,$00 ; $9AF6
        db      $00,$00,$00,$00,$30,$00,$3F,$FF,$FF,$FF,$00,$00,$00,$12,$14,$09 ; $9B06
        db      $15,$AF,$BD,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00,$00 ; $9B16
        db      $05,$01,$40,$00,$00,$00,$00,$00,$00,$50,$00,$14,$00,$00,$00,$00 ; $9B26
        db      $00,$05,$00,$00,$01,$40,$40,$00,$00,$00,$50,$15,$55,$50,$14,$14 ; $9B36
        db      $00,$00,$05,$01,$40,$00,$05,$01,$41,$00,$00,$50,$04,$15,$99,$50 ; $9B46
        db      $40,$10,$00,$05,$00,$11,$55,$55,$55,$10,$01,$00,$50,$00,$45,$00 ; $9B56
        db      $54,$01,$44,$00,$14,$00,$01,$14,$FF,$13,$FC,$51,$01,$00,$00,$00 ; $9B66
        db      $54,$03,$10,$0C,$54,$00,$00,$00,$02,$58,$C3,$13,$0C,$96,$05,$40 ; $9B76
        db      $00,$01,$56,$00,$10,$02,$55,$01,$40,$00,$11,$55,$55,$55,$55,$55 ; $9B86
        db      $11,$40,$00,$11,$51,$FF,$57,$FD,$15,$10,$00,$00,$52,$56,$55,$55 ; $9B96
        db      $56,$56,$14,$00,$00,$52,$55,$55,$89,$55,$56,$14,$00,$01,$60,$54 ; $9BA6
        db      $55,$55,$54,$54,$25,$00,$01,$60,$95,$05,$55,$41,$58,$25,$00,$05 ; $9BB6
        db      $80,$25,$60,$00,$25,$60,$09,$40,$05,$80,$09,$55,$55,$55,$80,$09 ; $9BC6
        db      $40,$00,$00,$00,$00,$A8,$00,$00,$00,$00,$00,$00,$00,$0A,$FE,$80 ; $9BD6
        db      $00,$00,$00,$00,$00,$00,$AF,$FF,$E8,$00,$00,$00,$00,$00,$0A,$FF ; $9BE6
        db      $FF,$FE,$83,$80,$00,$00,$00,$AF,$EA,$AA,$AF,$E8,$EB,$00,$00,$0A ; $9BF6
        db      $FE,$BF,$FF,$FA,$FE,$82,$00,$00,$AF,$FB,$FF,$FF,$FF,$BF,$E3,$00 ; $9C06
        db      $0A,$FF,$EF,$FF,$FF,$FF,$EF,$F2,$00,$AF,$FF,$BF,$00,$FC,$03,$FB ; $9C16
        db      $F3,$28,$3F,$FE,$FC,$FF,$33,$FC,$FE,$32,$30,$03,$F3,$FC,$03,$30 ; $9C26
        db      $0C,$FF,$33,$00,$00,$3F,$FC,$C3,$33,$0C,$FF,$CA,$80,$00,$03,$FF ; $9C36
        db      $00,$30,$03,$FF,$02,$80,$00,$33,$FF,$FF,$EF,$FF,$FF,$32,$80,$00 ; $9C46
        db      $33,$FE,$FF,$BB,$FE,$FF,$30,$C0,$00,$F3,$FF,$AA,$FE,$AB,$FF,$3C ; $9C56
        db      $00,$00,$F3,$FF,$FF,$CF,$FF,$FF,$3C,$00,$03,$F0,$FC,$FF,$FF,$FC ; $9C66
        db      $FC,$3F,$00,$03,$F0,$FF,$0F,$FF,$C3,$FC,$3F,$00,$0F,$C0,$3F,$F0 ; $9C76
        db      $00,$3F,$F0,$0F,$C0,$0F,$C0,$0F,$FF,$FF,$FF,$C0,$0F,$C0,$12,$14 ; $9C86
        db      $09,$15,$AF,$BD,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00 ; $9C96
        db      $00,$05,$01,$40,$00,$00,$00,$00,$00,$00,$50,$00,$14,$00,$00,$00 ; $9CA6
        db      $00,$00,$05,$00,$00,$01,$40,$40,$00,$00,$00,$50,$15,$55,$50,$14 ; $9CB6
        db      $14,$00,$00,$05,$01,$40,$00,$05,$01,$41,$00,$00,$50,$04,$15,$99 ; $9CC6
        db      $50,$40,$10,$00,$05,$00,$11,$55,$55,$55,$10,$01,$00,$50,$00,$45 ; $9CD6
        db      $00,$54,$01,$44,$00,$14,$00,$01,$14,$FF,$13,$FC,$51,$01,$00,$00 ; $9CE6
        db      $00,$54,$C0,$13,$00,$54,$00,$00,$00,$02,$58,$F0,$13,$C0,$96,$05 ; $9CF6
        db      $40,$00,$01,$56,$00,$10,$02,$55,$01,$40,$00,$11,$55,$55,$55,$55 ; $9D06
        db      $55,$11,$40,$00,$11,$51,$FF,$57,$FD,$15,$10,$00,$00,$52,$56,$55 ; $9D16
        db      $55,$56,$56,$14,$00,$00,$52,$55,$55,$89,$55,$56,$14,$00,$01,$60 ; $9D26
        db      $54,$55,$55,$54,$54,$25,$00,$01,$60,$95,$05,$55,$41,$58,$25,$00 ; $9D36
        db      $05,$80,$25,$60,$00,$25,$60,$09,$40,$05,$80,$09,$55,$55,$55,$80 ; $9D46
        db      $09,$40,$00,$00,$00,$00,$A8,$00,$00,$00,$00,$00,$00,$00,$0A,$FE ; $9D56
        db      $80,$00,$00,$00,$00,$00,$00,$AF,$FF,$E8,$00,$00,$00,$00,$00,$0A ; $9D66
        db      $FF,$FF,$FE,$83,$80,$00,$00,$00,$AF,$EA,$AA,$AF,$E8,$EB,$00,$00 ; $9D76
        db      $0A,$FE,$BF,$FF,$FA,$FE,$82,$00,$00,$AF,$FB,$FF,$FF,$FF,$BF,$E3 ; $9D86
        db      $00,$0A,$FF,$EF,$FF,$FF,$FF,$EF,$F2,$00,$AF,$FF,$BF,$00,$FC,$03 ; $9D96
        db      $FB,$F3,$28,$3F,$FE,$FC,$FF,$33,$FC,$FE,$32,$30,$03,$F3,$FC,$C0 ; $9DA6
        db      $33,$00,$FF,$33,$00,$00,$3F,$FC,$F0,$33,$C0,$FF,$CA,$80,$00,$03 ; $9DB6
        db      $FF,$00,$30,$03,$FF,$02,$80,$00,$33,$FF,$FF,$EF,$FF,$FF,$32,$80 ; $9DC6
        db      $00,$33,$FE,$FF,$BB,$FE,$FF,$30,$C0,$00,$F3,$FF,$AA,$FE,$AB,$FF ; $9DD6
        db      $3C,$00,$00,$F3,$FF,$FF,$CF,$FF,$FF,$3C,$00,$03,$F0,$FC,$FF,$FF ; $9DE6
        db      $FC,$FC,$3F,$00,$03,$F0,$FF,$0F,$FF,$C3,$FC,$3F,$00,$0F,$C0,$3F ; $9DF6
        db      $F0,$00,$3F,$F0,$0F,$C0,$0F,$C0,$0F,$FF,$FF,$FF,$C0,$0F,$C0,$12 ; $9E06
        db      $14,$09,$15,$AF,$BD,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00 ; $9E16
        db      $00,$00,$05,$01,$40,$00,$00,$00,$00,$00,$00,$50,$00,$14,$00,$00 ; $9E26
        db      $00,$00,$00,$05,$00,$00,$01,$40,$40,$00,$00,$00,$50,$15,$55,$50 ; $9E36
        db      $14,$14,$00,$00,$05,$01,$40,$00,$05,$01,$41,$00,$00,$50,$04,$15 ; $9E46
        db      $99,$50,$40,$10,$00,$05,$00,$11,$55,$55,$55,$10,$01,$00,$50,$00 ; $9E56
        db      $45,$00,$54,$01,$44,$00,$14,$00,$01,$14,$75,$11,$74,$51,$01,$00 ; $9E66
        db      $00,$00,$54,$55,$11,$54,$54,$00,$00,$00,$02,$58,$55,$11,$54,$96 ; $9E76
        db      $05,$40,$00,$01,$56,$00,$10,$02,$55,$01,$40,$00,$11,$55,$55,$55 ; $9E86
        db      $55,$55,$11,$40,$00,$11,$51,$FF,$57,$FD,$15,$10,$00,$00,$52,$56 ; $9E96
        db      $55,$55,$56,$56,$14,$00,$00,$52,$55,$55,$89,$55,$56,$14,$00,$01 ; $9EA6
        db      $60,$54,$55,$55,$54,$54,$25,$00,$01,$60,$95,$05,$55,$41,$58,$25 ; $9EB6
        db      $00,$05,$80,$25,$60,$00,$25,$60,$09,$40,$05,$80,$09,$55,$55,$55 ; $9EC6
        db      $80,$09,$40,$00,$00,$00,$00,$A8,$00,$00,$00,$00,$00,$00,$00,$0A ; $9ED6
        db      $FE,$80,$00,$00,$00,$00,$00,$00,$AF,$FF,$E8,$00,$00,$00,$00,$00 ; $9EE6
        db      $0A,$FF,$FF,$FE,$83,$80,$00,$00,$00,$AF,$EA,$AA,$AF,$E8,$EB,$00 ; $9EF6
        db      $00,$0A,$FE,$BF,$FF,$FA,$FE,$82,$00,$00,$AF,$FB,$FF,$FF,$FF,$BF ; $9F06
        db      $E3,$00,$0A,$FF,$EF,$FF,$FF,$FF,$EF,$F2,$00,$AF,$FF,$BF,$00,$FC ; $9F16
        db      $03,$FB,$F3,$28,$3F,$FE,$FC,$FF,$33,$FC,$FE,$32,$30,$03,$F3,$FC ; $9F26
        db      $FF,$33,$FC,$FF,$33,$00,$00,$3F,$FC,$FF,$33,$FC,$FF,$CA,$80,$00 ; $9F36
        db      $03,$FF,$00,$30,$03,$FF,$02,$80,$00,$33,$FF,$FF,$EF,$FF,$FF,$32 ; $9F46
        db      $80,$00,$33,$FE,$FF,$BB,$FE,$FF,$30,$C0,$00,$F3,$FF,$AA,$FE,$AB ; $9F56
        db      $FF,$3C,$00,$00,$F3,$FF,$FF,$CF,$FF,$FF,$3C,$00,$03,$F0,$FC,$FF ; $9F66
        db      $FF,$FC,$FC,$3F,$00,$03,$F0,$FF,$0F,$FF,$C3,$FC,$3F,$00,$0F,$C0 ; $9F76
        db      $3F,$F0,$00,$3F,$F0,$0F,$C0,$0F,$C0,$0F,$FF,$FF,$FF,$C0,$0F,$C0 ; $9F86
        db      $18,$04,$0B,$09,$1D,$20,$30,$55,$54,$05,$00,$50,$15,$55,$00,$50 ; $9F96
        db      $14,$00,$50,$05,$05,$00,$50,$14,$01,$40,$50,$14,$00,$50,$05,$05 ; $9FA6
        db      $00,$50,$14,$01,$40,$50,$14,$00,$50,$05,$05,$00,$50,$14,$01,$40 ; $9FB6
        db      $50,$14,$00,$55,$54,$05,$00,$50,$15,$55,$00,$50,$14,$00,$50,$00 ; $9FC6
        db      $05,$00,$50,$14,$00,$00,$50,$14,$00,$50,$00,$05,$00,$50,$14,$00 ; $9FD6
        db      $00,$50,$14,$00,$50,$00,$05,$00,$50,$14,$00,$00,$50,$14,$00,$50 ; $9FE6
        db      $00,$01,$55,$40,$14,$00,$00,$50,$15,$55                         ; $9FF6
