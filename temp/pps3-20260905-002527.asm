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
        db      $39,$44                                                         ; $8437 preserved bytes

ROUND_TERSE_8439:
        rst     $08                                                             ; $8439 colon entry
        dw      XT_0                                                            ; $843A execution token
        dw      XT_LIT                                                          ; $843C execution token
        dw      $FD6D                                                           ; $843E inline word
        dw      $2BEF                                                           ; $8440 execution token
        dw      XT_LIT                                                          ; $8442 execution token
        dw      $F5FE                                                           ; $8444 inline word
        dw      XT_BZERO                                                        ; $8446 execution token
        dw      XT_LITbyte                                                      ; $8448 execution token
        db      $30                                                             ; $844A inline byte
        dw      $2AF2                                                           ; $844B execution token
        dw      XT_LITbyte                                                      ; $844D execution token
        db      $00                                                             ; $844F inline byte
        dw      XT_LIT                                                          ; $8450 execution token
        dw      $00B8                                                           ; $8452 inline word
        dw      $2B2E                                                           ; $8454 execution token
        dw      XT_LIT                                                          ; $8456 execution token
        dw      $F5FF                                                           ; $8458 inline word
        dw      XT_BZERO                                                        ; $845A execution token
L845C:
        dw      XT_LIT                                                          ; $845C execution token
        dw      $F5FE                                                           ; $845E inline word
        dw      XT_Bat                                                          ; $8460 execution token
        dw      XT_BARRAY                                                       ; $8462 execution token
        dw      $8427                                                           ; $8464 inline word
        dw      XT_Bat                                                          ; $8466 execution token
        dw      $2B44                                                           ; $8468 execution token
        dw      XT_LIT                                                          ; $846A execution token
        dw      $F5FE                                                           ; $846C inline word
        dw      XT_Bat                                                          ; $846E execution token
        dw      XT_BARRAY                                                       ; $8470 execution token
        dw      $8430                                                           ; $8472 inline word
        dw      XT_Bat                                                          ; $8474 execution token
        dw      $2B53                                                           ; $8476 execution token
        dw      XT_LITbyte                                                      ; $8478 execution token
        db      $02                                                             ; $847A inline byte
        dw      $2BA8                                                           ; $847B execution token
        dw      XT_LIT                                                          ; $847D execution token
        dw      $F5FE                                                           ; $847F inline word
        dw      XT_DUP                                                          ; $8481 execution token
        dw      XT_1plusBbang                                                   ; $8483 execution token
        dw      XT_Bat                                                          ; $8485 execution token
        dw      XT_LITbyte                                                      ; $8487 execution token
        db      $08                                                             ; $8489 inline byte
        dw      XT_gt                                                           ; $848A execution token
        dw      XT_0BRANCH                                                      ; $848C execution token
        dw      L845C                                                           ; $848E branch target
        dw      XT_LIT                                                          ; $8490 execution token
        dw      $F5FE                                                           ; $8492 inline word
        dw      XT_BZERO                                                        ; $8494 execution token
        dw      XT_LIT                                                          ; $8496 execution token
        dw      $F5FF                                                           ; $8498 inline word
        dw      XT_Bat                                                          ; $849A execution token
        dw      XT_0gt                                                          ; $849C execution token
        dw      XT_0BRANCH                                                      ; $849E execution token
        dw      L845C                                                           ; $84A0 branch target
        dw      $2B8C                                                           ; $84A2 execution token
        dw      XT_RETURN                                                       ; $84A4 execution token

ROUND_TERSE_84A6:
        rst     $08                                                             ; $84A6 colon entry
        dw      XT_0                                                            ; $84A7 execution token
        dw      XT_LIT                                                          ; $84A9 execution token
        dw      $FD3D                                                           ; $84AB inline word
        dw      $2BEF                                                           ; $84AD execution token
        dw      XT_LIT                                                          ; $84AF execution token
        dw      $F5FC                                                           ; $84B1 inline word
        dw      XT_BZERO                                                        ; $84B3 execution token
        dw      XT_LITbyte                                                      ; $84B5 execution token
        db      $00                                                             ; $84B7 inline byte
        dw      XT_LITbyte                                                      ; $84B8 execution token
        db      $00                                                             ; $84BA inline byte
        dw      $2B2E                                                           ; $84BB execution token
        dw      XT_LITbyte                                                      ; $84BD execution token
        db      $02                                                             ; $84BF inline byte
        dw      $2BA8                                                           ; $84C0 execution token
        dw      XT_LITbyte                                                      ; $84C2 execution token
        db      $30                                                             ; $84C4 inline byte
        dw      $2AF2                                                           ; $84C5 execution token
        dw      XT_LITbyte                                                      ; $84C7 execution token
        db      $00                                                             ; $84C9 inline byte
        dw      XT_LIT                                                          ; $84CA execution token
        dw      $00B8                                                           ; $84CC inline word
        dw      $2B2E                                                           ; $84CE execution token
L84D0:
        dw      XT_LIT                                                          ; $84D0 execution token
        dw      $F5FC                                                           ; $84D2 inline word
        dw      XT_Bat                                                          ; $84D4 execution token
        dw      XT_BARRAY                                                       ; $84D6 execution token
        dw      $8427                                                           ; $84D8 inline word
        dw      XT_Bat                                                          ; $84DA execution token
        dw      $2B44                                                           ; $84DC execution token
        dw      XT_LIT                                                          ; $84DE execution token
        dw      $F5FC                                                           ; $84E0 inline word
        dw      XT_Bat                                                          ; $84E2 execution token
        dw      XT_BARRAY                                                       ; $84E4 execution token
        dw      $8430                                                           ; $84E6 inline word
        dw      XT_Bat                                                          ; $84E8 execution token
        dw      $2B53                                                           ; $84EA execution token
        dw      XT_LITbyte                                                      ; $84EC execution token
        db      $02                                                             ; $84EE inline byte
        dw      $2BA8                                                           ; $84EF execution token
        dw      XT_LIT                                                          ; $84F1 execution token
        dw      $F5FC                                                           ; $84F3 inline word
        dw      XT_DUP                                                          ; $84F5 execution token
        dw      XT_1plusBbang                                                   ; $84F7 execution token
        dw      XT_Bat                                                          ; $84F9 execution token
        dw      XT_LITbyte                                                      ; $84FB execution token
        db      $08                                                             ; $84FD inline byte
        dw      XT_gt                                                           ; $84FE execution token
        dw      XT_0BRANCH                                                      ; $8500 execution token
        dw      L84D0                                                           ; $8502 branch target
        dw      XT_LIT                                                          ; $8504 execution token
        dw      $F5FC                                                           ; $8506 inline word
        dw      XT_BZERO                                                        ; $8508 execution token
        dw      XT_LIT                                                          ; $850A execution token
        dw      $F5FF                                                           ; $850C inline word
        dw      XT_Bat                                                          ; $850E execution token
        dw      XT_0gt                                                          ; $8510 execution token
        dw      XT_0BRANCH                                                      ; $8512 execution token
        dw      L84D0                                                           ; $8514 branch target
        dw      $2B8C                                                           ; $8516 execution token
        dw      XT_RETURN                                                       ; $8518 execution token
TERSE_COLON_851A:
        rst     $08                             ; $851A colon entry
        dw      $8439                ; $851B execution token $8439
        dw      $84A6                ; $851D execution token $84A6
        dw      XT_RETURN               ; $851F _RETURN
ROUND_TERSE_8521:
        rst     $08                                                             ; $8521 colon entry
        dw      XT_LITbyte                                                      ; $8522 execution token
        db      $30                                                             ; $8524 inline byte
        dw      $2AF2                                                           ; $8525 execution token
        dw      $3FDF                                                           ; $8527 execution token
        dw      XT_LIT                                                          ; $8529 execution token
        dw      $F5F9                                                           ; $852B inline word
        dw      XT_BZERO                                                        ; $852D execution token
        dw      XT_LIT                                                          ; $852F execution token
        dw      $F5FA                                                           ; $8531 inline word
        dw      XT_BZERO                                                        ; $8533 execution token
        dw      XT_LITbyte                                                      ; $8535 execution token
        db      $14                                                             ; $8537 inline byte
        dw      XT_LIT                                                          ; $8538 execution token
        dw      $F5FB                                                           ; $853A inline word
        dw      XT_SBbang                                                       ; $853C execution token
        dw      XT_RETURN                                                       ; $853E execution token
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
ROUND_TERSE_8587:
        rst     $08                                                             ; $8587 colon entry
        dw      XT_0                                                            ; $8588 execution token
        dw      XT_LIT                                                          ; $858A execution token
        dw      $FD6D                                                           ; $858C inline word
        dw      $2BEF                                                           ; $858E execution token
        dw      ROUND_TERSE_8521                                                ; $8590 execution token
L8592:
        dw      TERSE_COLON_8540                                                ; $8592 execution token
        dw      XT_LITbyte                                                      ; $8594 execution token
        db      $02                                                             ; $8596 inline byte
        dw      $2BA8                                                           ; $8597 execution token
        dw      TERSE_COLON_854B                                                ; $8599 execution token
        dw      XT_LITbyte                                                      ; $859B execution token
        db      $04                                                             ; $859D inline byte
        dw      XT_gt                                                           ; $859E execution token
        dw      XT_0BRANCH                                                      ; $85A0 execution token
        dw      L8592                                                           ; $85A2 branch target
        dw      XT_LIT                                                          ; $85A4 execution token
        dw      $F5FA                                                           ; $85A6 inline word
        dw      XT_BZERO                                                        ; $85A8 execution token
        dw      TERSE_COLON_8540                                                ; $85AA execution token
        dw      XT_LITbyte                                                      ; $85AC execution token
        db      $02                                                             ; $85AE inline byte
        dw      $2BA8                                                           ; $85AF execution token
        dw      TERSE_COLON_8569                                                ; $85B1 execution token
        dw      XT_LITbyte                                                      ; $85B3 execution token
        db      $05                                                             ; $85B5 inline byte
        dw      XT_gt                                                           ; $85B6 execution token
        dw      XT_0BRANCH                                                      ; $85B8 execution token
        dw      L8592                                                           ; $85BA branch target
        dw      $2B8C                                                           ; $85BC execution token
        dw      XT_RETURN                                                       ; $85BE execution token

ROUND_TERSE_85C0:
        rst     $08                                                             ; $85C0 colon entry
        dw      XT_LITbyte                                                      ; $85C1 execution token
        db      $30                                                             ; $85C3 inline byte
        dw      $2AF2                                                           ; $85C4 execution token
        dw      $3FDF                                                           ; $85C6 execution token
        dw      XT_LIT                                                          ; $85C8 execution token
        dw      $F5F6                                                           ; $85CA inline word
        dw      XT_BZERO                                                        ; $85CC execution token
        dw      XT_LIT                                                          ; $85CE execution token
        dw      $F5F7                                                           ; $85D0 inline word
        dw      XT_BZERO                                                        ; $85D2 execution token
        dw      XT_LITbyte                                                      ; $85D4 execution token
        db      $14                                                             ; $85D6 inline byte
        dw      XT_LIT                                                          ; $85D7 execution token
        dw      $F5F8                                                           ; $85D9 inline word
        dw      XT_SBbang                                                       ; $85DB execution token
        dw      XT_RETURN                                                       ; $85DD execution token
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
ROUND_TERSE_8626:
        rst     $08                                                             ; $8626 colon entry
        dw      XT_0                                                            ; $8627 execution token
        dw      XT_LIT                                                          ; $8629 execution token
        dw      $FD3D                                                           ; $862B inline word
        dw      $2BEF                                                           ; $862D execution token
        dw      XT_LITbyte                                                      ; $862F execution token
        db      $00                                                             ; $8631 inline byte
        dw      XT_LITbyte                                                      ; $8632 execution token
        db      $00                                                             ; $8634 inline byte
        dw      $2B2E                                                           ; $8635 execution token
        dw      XT_LITbyte                                                      ; $8637 execution token
        db      $02                                                             ; $8639 inline byte
        dw      $2BA8                                                           ; $863A execution token
        dw      ROUND_TERSE_85C0                                                ; $863C execution token
L863E:
        dw      TERSE_COLON_85DF                                                ; $863E execution token
        dw      XT_LITbyte                                                      ; $8640 execution token
        db      $02                                                             ; $8642 inline byte
        dw      $2BA8                                                           ; $8643 execution token
        dw      TERSE_COLON_85EA                                                ; $8645 execution token
        dw      XT_LITbyte                                                      ; $8647 execution token
        db      $05                                                             ; $8649 inline byte
        dw      XT_gt                                                           ; $864A execution token
        dw      XT_0BRANCH                                                      ; $864C execution token
        dw      L863E                                                           ; $864E branch target
        dw      XT_LIT                                                          ; $8650 execution token
        dw      $F5F7                                                           ; $8652 inline word
        dw      XT_BZERO                                                        ; $8654 execution token
        dw      TERSE_COLON_85DF                                                ; $8656 execution token
        dw      XT_LITbyte                                                      ; $8658 execution token
        db      $02                                                             ; $865A inline byte
        dw      $2BA8                                                           ; $865B execution token
        dw      TERSE_COLON_8608                                                ; $865D execution token
        dw      XT_LITbyte                                                      ; $865F execution token
        db      $04                                                             ; $8661 inline byte
        dw      XT_gt                                                           ; $8662 execution token
        dw      XT_0BRANCH                                                      ; $8664 execution token
        dw      L863E                                                           ; $8666 branch target
        dw      $2B8C                                                           ; $8668 execution token
        dw      XT_RETURN                                                       ; $866A execution token
TERSE_COLON_866C:
        rst     $08                             ; $866C colon entry
        dw      $8587                ; $866D execution token $8587
        dw      $8626                ; $866F execution token $8626
        dw      XT_RETURN               ; $8671 _RETURN
        db      $37,$37,$37,$37,$37,$00,$34,$34,$34,$34,$34,$00,$2E,$2E,$2E,$00 ; $8673
        db      $34,$34,$37,$37,$37,$00,$46,$46,$22,$22,$22,$22,$22,$00,$2E,$2E ; $8683
        db      $2E,$2E,$2E,$00,$5E,$5E,$5E,$00,$5E,$5E,$8D,$8D,$8D,$46,$46,$46 ; $8693
        db      $46,$46,$46,$46,$00,$00,$4A,$4A,$4A,$4A,$00,$00,$46,$46,$46,$46 ; $86A3
        db      $00,$00,$8D,$8D,$8D,$8D,$8D,$8D                                 ; $86B3 preserved bytes

ROUND_TERSE_86BB:
        rst     $08                                                             ; $86BB colon entry
        dw      XT_0                                                            ; $86BC execution token
        dw      XT_LIT                                                          ; $86BE execution token
        dw      $FD6D                                                           ; $86C0 inline word
        dw      $2BEF                                                           ; $86C2 execution token
        dw      XT_LIT                                                          ; $86C4 execution token
        dw      $F5F5                                                           ; $86C6 inline word
        dw      XT_BZERO                                                        ; $86C8 execution token
        dw      XT_LITbyte                                                      ; $86CA execution token
        db      $0D                                                             ; $86CC inline byte
        dw      XT_LIT                                                          ; $86CD execution token
        dw      $008F                                                           ; $86CF inline word
        dw      $2B2E                                                           ; $86D1 execution token
        dw      XT_LITbyte                                                      ; $86D3 execution token
        db      $30                                                             ; $86D5 inline byte
        dw      $2AF2                                                           ; $86D6 execution token
L86D8:
        dw      XT_LIT                                                          ; $86D8 execution token
        dw      $F5F5                                                           ; $86DA inline word
        dw      XT_Bat                                                          ; $86DC execution token
        dw      XT_BARRAY                                                       ; $86DE execution token
        dw      $8673                                                           ; $86E0 inline word
        dw      XT_Bat                                                          ; $86E2 execution token
        dw      XT_LIT                                                          ; $86E4 execution token
        dw      $F5F5                                                           ; $86E6 inline word
        dw      XT_Bat                                                          ; $86E8 execution token
        dw      XT_BARRAY                                                       ; $86EA execution token
        dw      $868B                                                           ; $86EC inline word
        dw      XT_Bat                                                          ; $86EE execution token
        dw      XT_LIT                                                          ; $86F0 execution token
        dw      $F5F5                                                           ; $86F2 inline word
        dw      XT_Bat                                                          ; $86F4 execution token
        dw      XT_BARRAY                                                       ; $86F6 execution token
        dw      $86A3                                                           ; $86F8 inline word
        dw      XT_Bat                                                          ; $86FA execution token
        dw      $2B71                                                           ; $86FC execution token
        dw      XT_LITbyte                                                      ; $86FE execution token
        db      $03                                                             ; $8700 inline byte
        dw      $2BA8                                                           ; $8701 execution token
        dw      XT_LIT                                                          ; $8703 execution token
        dw      $F5F5                                                           ; $8705 inline word
        dw      XT_DUP                                                          ; $8707 execution token
        dw      XT_1plusBbang                                                   ; $8709 execution token
        dw      XT_Bat                                                          ; $870B execution token
        dw      XT_LITbyte                                                      ; $870D execution token
        db      $17                                                             ; $870F inline byte
        dw      XT_gt                                                           ; $8710 execution token
        dw      XT_0BRANCH                                                      ; $8712 execution token
        dw      L86D8                                                           ; $8714 branch target
        dw      XT_LIT                                                          ; $8716 execution token
        dw      $F5F5                                                           ; $8718 inline word
        dw      XT_BZERO                                                        ; $871A execution token
        dw      $2B8C                                                           ; $871C execution token
        dw      XT_RETURN                                                       ; $871E execution token

ROUND_TERSE_8720:
        rst     $08                                                             ; $8720 colon entry
        dw      XT_0                                                            ; $8721 execution token
        dw      XT_LIT                                                          ; $8723 execution token
        dw      $FD3D                                                           ; $8725 inline word
        dw      $2BEF                                                           ; $8727 execution token
        dw      XT_LIT                                                          ; $8729 execution token
        dw      $F5F3                                                           ; $872B inline word
        dw      XT_BZERO                                                        ; $872D execution token
        dw      XT_LITbyte                                                      ; $872F execution token
        db      $00                                                             ; $8731 inline byte
        dw      XT_LITbyte                                                      ; $8732 execution token
        db      $00                                                             ; $8734 inline byte
        dw      $2B2E                                                           ; $8735 execution token
        dw      XT_LITbyte                                                      ; $8737 execution token
        db      $04                                                             ; $8739 inline byte
        dw      $2BA8                                                           ; $873A execution token
        dw      XT_LITbyte                                                      ; $873C execution token
        db      $0D                                                             ; $873E inline byte
        dw      XT_LIT                                                          ; $873F execution token
        dw      $008F                                                           ; $8741 inline word
        dw      $2B2E                                                           ; $8743 execution token
        dw      XT_LITbyte                                                      ; $8745 execution token
        db      $30                                                             ; $8747 inline byte
        dw      $2AF2                                                           ; $8748 execution token
L874A:
        dw      XT_LIT                                                          ; $874A execution token
        dw      $F5F3                                                           ; $874C inline word
        dw      XT_Bat                                                          ; $874E execution token
        dw      XT_BARRAY                                                       ; $8750 execution token
        dw      $8673                                                           ; $8752 inline word
        dw      XT_Bat                                                          ; $8754 execution token
        dw      XT_LIT                                                          ; $8756 execution token
        dw      $F5F3                                                           ; $8758 inline word
        dw      XT_Bat                                                          ; $875A execution token
        dw      XT_BARRAY                                                       ; $875C execution token
        dw      $868B                                                           ; $875E inline word
        dw      XT_Bat                                                          ; $8760 execution token
        dw      XT_LIT                                                          ; $8762 execution token
        dw      $F5F3                                                           ; $8764 inline word
        dw      XT_Bat                                                          ; $8766 execution token
        dw      XT_BARRAY                                                       ; $8768 execution token
        dw      $86A3                                                           ; $876A inline word
        dw      XT_Bat                                                          ; $876C execution token
        dw      $2B71                                                           ; $876E execution token
        dw      XT_LITbyte                                                      ; $8770 execution token
        db      $03                                                             ; $8772 inline byte
        dw      $2BA8                                                           ; $8773 execution token
        dw      XT_LIT                                                          ; $8775 execution token
        dw      $F5F3                                                           ; $8777 inline word
        dw      XT_DUP                                                          ; $8779 execution token
        dw      XT_1plusBbang                                                   ; $877B execution token
        dw      XT_Bat                                                          ; $877D execution token
        dw      XT_LITbyte                                                      ; $877F execution token
        db      $17                                                             ; $8781 inline byte
        dw      XT_gt                                                           ; $8782 execution token
        dw      XT_0BRANCH                                                      ; $8784 execution token
        dw      L874A                                                           ; $8786 branch target
        dw      XT_LIT                                                          ; $8788 execution token
        dw      $F5F3                                                           ; $878A inline word
        dw      XT_BZERO                                                        ; $878C execution token
        dw      XT_LIT                                                          ; $878E execution token
        dw      $F5F4                                                           ; $8790 inline word
        dw      XT_BONE                                                         ; $8792 execution token
        dw      $2B8C                                                           ; $8794 execution token
        dw      XT_RETURN                                                       ; $8796 execution token
TERSE_COLON_8798:
        rst     $08                             ; $8798 colon entry
        dw      $86BB                ; $8799 execution token $86BB
        dw      $8720                ; $879B execution token $8720
        dw      XT_RETURN               ; $879D _RETURN
ROUND_TERSE_879F:
        rst     $08                                                             ; $879F colon entry
        dw      XT_0                                                            ; $87A0 execution token
        dw      XT_LIT                                                          ; $87A2 execution token
        dw      $FD6D                                                           ; $87A4 inline word
        dw      $2BEF                                                           ; $87A6 execution token
        dw      XT_LITbyte                                                      ; $87A8 execution token
        db      $00                                                             ; $87AA inline byte
        dw      XT_LITbyte                                                      ; $87AB execution token
        db      $00                                                             ; $87AD inline byte
        dw      $2B2E                                                           ; $87AE execution token
        dw      XT_LITbyte                                                      ; $87B0 execution token
        db      $06                                                             ; $87B2 inline byte
        dw      $2BA8                                                           ; $87B3 execution token
        dw      XT_LITbyte                                                      ; $87B5 execution token
        db      $30                                                             ; $87B7 inline byte
        dw      $2AF2                                                           ; $87B8 execution token
        dw      XT_LITbyte                                                      ; $87BA execution token
        db      $4E                                                             ; $87BC inline byte
        dw      $2B44                                                           ; $87BD execution token
        dw      XT_LIT                                                          ; $87BF execution token
        dw      $009F                                                           ; $87C1 inline word
        dw      $2B53                                                           ; $87C3 execution token
        dw      XT_LITbyte                                                      ; $87C5 execution token
        db      $4E                                                             ; $87C7 inline byte
        dw      $2B62                                                           ; $87C8 execution token
        dw      XT_LITbyte                                                      ; $87CA execution token
        db      $0F                                                             ; $87CC inline byte
        dw      XT_LIT                                                          ; $87CD execution token
        dw      $00FF                                                           ; $87CF inline word
        dw      $2B2E                                                           ; $87D1 execution token
        dw      XT_LITbyte                                                      ; $87D3 execution token
        db      $00                                                             ; $87D5 inline byte
        dw      $2B35                                                           ; $87D6 execution token
        dw      XT_LITbyte                                                      ; $87D8 execution token
        db      $1A                                                             ; $87DA inline byte
        dw      $2BA8                                                           ; $87DB execution token
        dw      $2B8C                                                           ; $87DD execution token
        dw      XT_RETURN                                                       ; $87DF execution token

ROUND_TERSE_87E1:
        rst     $08                                                             ; $87E1 colon entry
        dw      XT_0                                                            ; $87E2 execution token
        dw      XT_LIT                                                          ; $87E4 execution token
        dw      $FD3D                                                           ; $87E6 inline word
        dw      $2BEF                                                           ; $87E8 execution token
        dw      XT_LITbyte                                                      ; $87EA execution token
        db      $30                                                             ; $87EC inline byte
        dw      $2AF2                                                           ; $87ED execution token
        dw      XT_LITbyte                                                      ; $87EF execution token
        db      $4E                                                             ; $87F1 inline byte
        dw      $2B44                                                           ; $87F2 execution token
        dw      XT_LIT                                                          ; $87F4 execution token
        dw      $009F                                                           ; $87F6 inline word
        dw      $2B53                                                           ; $87F8 execution token
        dw      XT_LITbyte                                                      ; $87FA execution token
        db      $4E                                                             ; $87FC inline byte
        dw      $2B62                                                           ; $87FD execution token
        dw      XT_LITbyte                                                      ; $87FF execution token
        db      $0F                                                             ; $8801 inline byte
        dw      XT_LIT                                                          ; $8802 execution token
        dw      $00FF                                                           ; $8804 inline word
        dw      $2B2E                                                           ; $8806 execution token
        dw      XT_LITbyte                                                      ; $8808 execution token
        db      $00                                                             ; $880A inline byte
        dw      $2B35                                                           ; $880B execution token
        dw      XT_LITbyte                                                      ; $880D execution token
        db      $1A                                                             ; $880F inline byte
        dw      $2BA8                                                           ; $8810 execution token
        dw      $2B8C                                                           ; $8812 execution token
        dw      XT_RETURN                                                       ; $8814 execution token
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
        db      $6A,$6A,$9F,$9F,$9F,$9F,$9F,$9F                                 ; $888D preserved bytes

ROUND_TERSE_8895:
        rst     $08                                                             ; $8895 colon entry
        dw      XT_0                                                            ; $8896 execution token
        dw      XT_LIT                                                          ; $8898 execution token
        dw      $FD6D                                                           ; $889A inline word
        dw      $2BEF                                                           ; $889C execution token
        dw      XT_LIT                                                          ; $889E execution token
        dw      $F5F2                                                           ; $88A0 inline word
        dw      XT_BZERO                                                        ; $88A2 execution token
        dw      XT_LITbyte                                                      ; $88A4 execution token
        db      $30                                                             ; $88A6 inline byte
        dw      $2AF2                                                           ; $88A7 execution token
        dw      XT_LITbyte                                                      ; $88A9 execution token
        db      $0A                                                             ; $88AB inline byte
        dw      XT_LIT                                                          ; $88AC execution token
        dw      $00AF                                                           ; $88AE inline word
        dw      $2B2E                                                           ; $88B0 execution token
L88B2:
        dw      XT_LIT                                                          ; $88B2 execution token
        dw      $F5F2                                                           ; $88B4 inline word
        dw      XT_Bat                                                          ; $88B6 execution token
        dw      XT_BARRAY                                                       ; $88B8 execution token
        dw      $881D                                                           ; $88BA inline word
        dw      XT_Bat                                                          ; $88BC execution token
        dw      XT_LIT                                                          ; $88BE execution token
        dw      $F5F2                                                           ; $88C0 inline word
        dw      XT_Bat                                                          ; $88C2 execution token
        dw      XT_BARRAY                                                       ; $88C4 execution token
        dw      $8831                                                           ; $88C6 inline word
        dw      XT_Bat                                                          ; $88C8 execution token
        dw      XT_LIT                                                          ; $88CA execution token
        dw      $F5F2                                                           ; $88CC inline word
        dw      XT_Bat                                                          ; $88CE execution token
        dw      XT_BARRAY                                                       ; $88D0 execution token
        dw      $8845                                                           ; $88D2 inline word
        dw      XT_Bat                                                          ; $88D4 execution token
        dw      $2B71                                                           ; $88D6 execution token
        dw      XT_LITbyte                                                      ; $88D8 execution token
        db      $04                                                             ; $88DA inline byte
        dw      $2BA8                                                           ; $88DB execution token
        dw      XT_LIT                                                          ; $88DD execution token
        dw      $F5F2                                                           ; $88DF inline word
        dw      XT_DUP                                                          ; $88E1 execution token
        dw      XT_1plusBbang                                                   ; $88E3 execution token
        dw      XT_Bat                                                          ; $88E5 execution token
        dw      XT_LITbyte                                                      ; $88E7 execution token
        db      $13                                                             ; $88E9 inline byte
        dw      XT_gt                                                           ; $88EA execution token
        dw      XT_0BRANCH                                                      ; $88EC execution token
        dw      L88B2                                                           ; $88EE branch target
        dw      XT_LIT                                                          ; $88F0 execution token
        dw      $F5F2                                                           ; $88F2 inline word
        dw      XT_BZERO                                                        ; $88F4 execution token
        dw      $2B8C                                                           ; $88F6 execution token
        dw      XT_RETURN                                                       ; $88F8 execution token

ROUND_TERSE_88FA:
        rst     $08                                                             ; $88FA colon entry
        dw      XT_0                                                            ; $88FB execution token
        dw      XT_LIT                                                          ; $88FD execution token
        dw      $FD3D                                                           ; $88FF inline word
        dw      $2BEF                                                           ; $8901 execution token
        dw      XT_LIT                                                          ; $8903 execution token
        dw      $F5F1                                                           ; $8905 inline word
        dw      XT_BZERO                                                        ; $8907 execution token
        dw      XT_LITbyte                                                      ; $8909 execution token
        db      $00                                                             ; $890B inline byte
        dw      XT_LITbyte                                                      ; $890C execution token
        db      $00                                                             ; $890E inline byte
        dw      $2B2E                                                           ; $890F execution token
        dw      XT_LITbyte                                                      ; $8911 execution token
        db      $03                                                             ; $8913 inline byte
        dw      $2BA8                                                           ; $8914 execution token
        dw      XT_LITbyte                                                      ; $8916 execution token
        db      $30                                                             ; $8918 inline byte
        dw      $2AF2                                                           ; $8919 execution token
        dw      XT_LITbyte                                                      ; $891B execution token
        db      $0A                                                             ; $891D inline byte
        dw      XT_LIT                                                          ; $891E execution token
        dw      $00AF                                                           ; $8920 inline word
        dw      $2B2E                                                           ; $8922 execution token
L8924:
        dw      XT_LIT                                                          ; $8924 execution token
        dw      $F5F1                                                           ; $8926 inline word
        dw      XT_Bat                                                          ; $8928 execution token
        dw      XT_BARRAY                                                       ; $892A execution token
        dw      $8859                                                           ; $892C inline word
        dw      XT_Bat                                                          ; $892E execution token
        dw      XT_LIT                                                          ; $8930 execution token
        dw      $F5F1                                                           ; $8932 inline word
        dw      XT_Bat                                                          ; $8934 execution token
        dw      XT_BARRAY                                                       ; $8936 execution token
        dw      $886D                                                           ; $8938 inline word
        dw      XT_Bat                                                          ; $893A execution token
        dw      XT_LIT                                                          ; $893C execution token
        dw      $F5F1                                                           ; $893E inline word
        dw      XT_Bat                                                          ; $8940 execution token
        dw      XT_BARRAY                                                       ; $8942 execution token
        dw      $8881                                                           ; $8944 inline word
        dw      XT_Bat                                                          ; $8946 execution token
        dw      $2B71                                                           ; $8948 execution token
        dw      XT_LITbyte                                                      ; $894A execution token
        db      $04                                                             ; $894C inline byte
        dw      $2BA8                                                           ; $894D execution token
        dw      XT_LIT                                                          ; $894F execution token
        dw      $F5F1                                                           ; $8951 inline word
        dw      XT_DUP                                                          ; $8953 execution token
        dw      XT_1plusBbang                                                   ; $8955 execution token
        dw      XT_Bat                                                          ; $8957 execution token
        dw      XT_LITbyte                                                      ; $8959 execution token
        db      $13                                                             ; $895B inline byte
        dw      XT_gt                                                           ; $895C execution token
        dw      XT_0BRANCH                                                      ; $895E execution token
        dw      L8924                                                           ; $8960 branch target
        dw      XT_LIT                                                          ; $8962 execution token
        dw      $F5F1                                                           ; $8964 inline word
        dw      XT_BZERO                                                        ; $8966 execution token
        dw      $2B8C                                                           ; $8968 execution token
        dw      XT_RETURN                                                       ; $896A execution token
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
ROUND_TERSE_898B:
        rst     $08                                                             ; $898B colon entry
        dw      XT_1                                                            ; $898C execution token
        dw      XT_LIT                                                          ; $898E execution token
        dw      $FD6D                                                           ; $8990 inline word
        dw      $2BEF                                                           ; $8992 execution token
        dw      XT_LITbyte                                                      ; $8994 execution token
        db      $28                                                             ; $8996 inline byte
        dw      $2AF2                                                           ; $8997 execution token
        dw      XT_LIT                                                          ; $8999 execution token
        dw      $0081                                                           ; $899B inline word
        dw      $2B35                                                           ; $899D execution token
        dw      XT_LIT                                                          ; $899F execution token
        dw      $F5F0                                                           ; $89A1 inline word
        dw      XT_BZERO                                                        ; $89A3 execution token
        dw      XT_LIT                                                          ; $89A5 execution token
        dw      $006A                                                           ; $89A7 inline word
        dw      XT_LITbyte                                                      ; $89A9 execution token
        db      $34                                                             ; $89AB inline byte
        dw      XT_LITbyte                                                      ; $89AC execution token
        db      $1A                                                             ; $89AE inline byte
        dw      $2B71                                                           ; $89AF execution token
        dw      TERSE_COLON_897F                                                ; $89B1 execution token
        dw      XT_LITbyte                                                      ; $89B3 execution token
        db      $10                                                             ; $89B5 inline byte
        dw      $2BA8                                                           ; $89B6 execution token
        dw      XT_LITbyte                                                      ; $89B8 execution token
        db      $00                                                             ; $89BA inline byte
        dw      XT_LITbyte                                                      ; $89BB execution token
        db      $00                                                             ; $89BD inline byte
        dw      $2B2E                                                           ; $89BE execution token
        dw      XT_LITbyte                                                      ; $89C0 execution token
        db      $04                                                             ; $89C2 inline byte
        dw      $2BA8                                                           ; $89C3 execution token
        dw      TERSE_COLON_897F                                                ; $89C5 execution token
        dw      XT_LITbyte                                                      ; $89C7 execution token
        db      $08                                                             ; $89C9 inline byte
        dw      $2BA8                                                           ; $89CA execution token
        dw      XT_LITbyte                                                      ; $89CC execution token
        db      $00                                                             ; $89CE inline byte
        dw      XT_LITbyte                                                      ; $89CF execution token
        db      $00                                                             ; $89D1 inline byte
        dw      $2B2E                                                           ; $89D2 execution token
        dw      XT_LITbyte                                                      ; $89D4 execution token
        db      $04                                                             ; $89D6 inline byte
        dw      $2BA8                                                           ; $89D7 execution token
        dw      TERSE_COLON_897F                                                ; $89D9 execution token
        dw      XT_LITbyte                                                      ; $89DB execution token
        db      $08                                                             ; $89DD inline byte
        dw      $2BA8                                                           ; $89DE execution token
        dw      XT_LITbyte                                                      ; $89E0 execution token
        db      $00                                                             ; $89E2 inline byte
        dw      XT_LITbyte                                                      ; $89E3 execution token
        db      $00                                                             ; $89E5 inline byte
        dw      $2B2E                                                           ; $89E6 execution token
        dw      XT_LITbyte                                                      ; $89E8 execution token
        db      $04                                                             ; $89EA inline byte
        dw      $2BA8                                                           ; $89EB execution token
        dw      XT_LIT                                                          ; $89ED execution token
        dw      $006A                                                           ; $89EF inline word
        dw      XT_LIT                                                          ; $89F1 execution token
        dw      $0085                                                           ; $89F3 inline word
        dw      XT_LITbyte                                                      ; $89F5 execution token
        db      $42                                                             ; $89F7 inline byte
        dw      $2B71                                                           ; $89F8 execution token
        dw      TERSE_COLON_897F                                                ; $89FA execution token
        dw      XT_LITbyte                                                      ; $89FC execution token
        db      $14                                                             ; $89FE inline byte
        dw      $2BA8                                                           ; $89FF execution token
        dw      XT_LITbyte                                                      ; $8A01 execution token
        db      $00                                                             ; $8A03 inline byte
        dw      XT_LITbyte                                                      ; $8A04 execution token
        db      $00                                                             ; $8A06 inline byte
        dw      $2B2E                                                           ; $8A07 execution token
        dw      XT_LITbyte                                                      ; $8A09 execution token
        db      $04                                                             ; $8A0B inline byte
        dw      $2BA8                                                           ; $8A0C execution token
        dw      XT_LITbyte                                                      ; $8A0E execution token
        db      $59                                                             ; $8A10 inline byte
        dw      XT_LITbyte                                                      ; $8A11 execution token
        db      $3B                                                             ; $8A13 inline byte
        dw      XT_LITbyte                                                      ; $8A14 execution token
        db      $2C                                                             ; $8A16 inline byte
        dw      $2B71                                                           ; $8A17 execution token
        dw      TERSE_COLON_897F                                                ; $8A19 execution token
        dw      XT_LITbyte                                                      ; $8A1B execution token
        db      $14                                                             ; $8A1D inline byte
        dw      $2BA8                                                           ; $8A1E execution token
        dw      XT_LITbyte                                                      ; $8A20 execution token
        db      $00                                                             ; $8A22 inline byte
        dw      XT_LITbyte                                                      ; $8A23 execution token
        db      $00                                                             ; $8A25 inline byte
        dw      $2B2E                                                           ; $8A26 execution token
        dw      XT_LITbyte                                                      ; $8A28 execution token
        db      $04                                                             ; $8A2A inline byte
        dw      $2BA8                                                           ; $8A2B execution token
        dw      XT_LITbyte                                                      ; $8A2D execution token
        db      $20                                                             ; $8A2F inline byte
        dw      XT_LIT                                                          ; $8A30 execution token
        dw      $0085                                                           ; $8A32 inline word
        dw      XT_LITbyte                                                      ; $8A34 execution token
        db      $42                                                             ; $8A36 inline byte
        dw      $2B71                                                           ; $8A37 execution token
        dw      TERSE_COLON_897F                                                ; $8A39 execution token
        dw      XT_LITbyte                                                      ; $8A3B execution token
        db      $28                                                             ; $8A3D inline byte
        dw      $2BA8                                                           ; $8A3E execution token
        dw      XT_LITbyte                                                      ; $8A40 execution token
        db      $00                                                             ; $8A42 inline byte
        dw      XT_LITbyte                                                      ; $8A43 execution token
        db      $00                                                             ; $8A45 inline byte
        dw      $2B2E                                                           ; $8A46 execution token
        dw      XT_LITbyte                                                      ; $8A48 execution token
        db      $04                                                             ; $8A4A inline byte
        dw      $2BA8                                                           ; $8A4B execution token
        dw      $2B8C                                                           ; $8A4D execution token
        dw      XT_RETURN                                                       ; $8A4F execution token

ROUND_TERSE_8A51:
        rst     $08                                                             ; $8A51 colon entry
        dw      XT_1                                                            ; $8A52 execution token
        dw      XT_LIT                                                          ; $8A54 execution token
        dw      $FD3D                                                           ; $8A56 inline word
        dw      $2BEF                                                           ; $8A58 execution token
        dw      XT_LITbyte                                                      ; $8A5A execution token
        db      $28                                                             ; $8A5C inline byte
        dw      $2AF2                                                           ; $8A5D execution token
        dw      XT_LIT                                                          ; $8A5F execution token
        dw      $0081                                                           ; $8A61 inline word
        dw      $2B35                                                           ; $8A63 execution token
        dw      XT_LITbyte                                                      ; $8A65 execution token
        db      $00                                                             ; $8A67 inline byte
        dw      XT_LITbyte                                                      ; $8A68 execution token
        db      $00                                                             ; $8A6A inline byte
        dw      $2B2E                                                           ; $8A6B execution token
        dw      XT_LITbyte                                                      ; $8A6D execution token
        db      $02                                                             ; $8A6F inline byte
        dw      $2BA8                                                           ; $8A70 execution token
        dw      XT_LITbyte                                                      ; $8A72 execution token
        db      $34                                                             ; $8A74 inline byte
        dw      XT_LIT                                                          ; $8A75 execution token
        dw      $006A                                                           ; $8A77 inline word
        dw      XT_LITbyte                                                      ; $8A79 execution token
        db      $2C                                                             ; $8A7B inline byte
        dw      $2B71                                                           ; $8A7C execution token
        dw      TERSE_COLON_897F                                                ; $8A7E execution token
        dw      XT_LITbyte                                                      ; $8A80 execution token
        db      $10                                                             ; $8A82 inline byte
        dw      $2BA8                                                           ; $8A83 execution token
        dw      XT_LITbyte                                                      ; $8A85 execution token
        db      $00                                                             ; $8A87 inline byte
        dw      XT_LITbyte                                                      ; $8A88 execution token
        db      $00                                                             ; $8A8A inline byte
        dw      $2B2E                                                           ; $8A8B execution token
        dw      XT_LITbyte                                                      ; $8A8D execution token
        db      $04                                                             ; $8A8F inline byte
        dw      $2BA8                                                           ; $8A90 execution token
        dw      TERSE_COLON_897F                                                ; $8A92 execution token
        dw      XT_LITbyte                                                      ; $8A94 execution token
        db      $08                                                             ; $8A96 inline byte
        dw      $2BA8                                                           ; $8A97 execution token
        dw      XT_LITbyte                                                      ; $8A99 execution token
        db      $00                                                             ; $8A9B inline byte
        dw      XT_LITbyte                                                      ; $8A9C execution token
        db      $00                                                             ; $8A9E inline byte
        dw      $2B2E                                                           ; $8A9F execution token
        dw      XT_LITbyte                                                      ; $8AA1 execution token
        db      $04                                                             ; $8AA3 inline byte
        dw      $2BA8                                                           ; $8AA4 execution token
        dw      TERSE_COLON_897F                                                ; $8AA6 execution token
        dw      XT_LITbyte                                                      ; $8AA8 execution token
        db      $08                                                             ; $8AAA inline byte
        dw      $2BA8                                                           ; $8AAB execution token
        dw      XT_LITbyte                                                      ; $8AAD execution token
        db      $00                                                             ; $8AAF inline byte
        dw      XT_LITbyte                                                      ; $8AB0 execution token
        db      $00                                                             ; $8AB2 inline byte
        dw      $2B2E                                                           ; $8AB3 execution token
        dw      XT_LITbyte                                                      ; $8AB5 execution token
        db      $04                                                             ; $8AB7 inline byte
        dw      $2BA8                                                           ; $8AB8 execution token
        dw      XT_LIT                                                          ; $8ABA execution token
        dw      $006A                                                           ; $8ABC inline word
        dw      XT_LIT                                                          ; $8ABE execution token
        dw      $0085                                                           ; $8AC0 inline word
        dw      XT_LITbyte                                                      ; $8AC2 execution token
        db      $42                                                             ; $8AC4 inline byte
        dw      $2B71                                                           ; $8AC5 execution token
        dw      TERSE_COLON_897F                                                ; $8AC7 execution token
        dw      XT_LITbyte                                                      ; $8AC9 execution token
        db      $14                                                             ; $8ACB inline byte
        dw      $2BA8                                                           ; $8ACC execution token
        dw      XT_LITbyte                                                      ; $8ACE execution token
        db      $00                                                             ; $8AD0 inline byte
        dw      XT_LITbyte                                                      ; $8AD1 execution token
        db      $00                                                             ; $8AD3 inline byte
        dw      $2B2E                                                           ; $8AD4 execution token
        dw      XT_LITbyte                                                      ; $8AD6 execution token
        db      $04                                                             ; $8AD8 inline byte
        dw      $2BA8                                                           ; $8AD9 execution token
        dw      XT_LITbyte                                                      ; $8ADB execution token
        db      $59                                                             ; $8ADD inline byte
        dw      XT_LITbyte                                                      ; $8ADE execution token
        db      $3B                                                             ; $8AE0 inline byte
        dw      XT_LITbyte                                                      ; $8AE1 execution token
        db      $2C                                                             ; $8AE3 inline byte
        dw      $2B71                                                           ; $8AE4 execution token
        dw      TERSE_COLON_897F                                                ; $8AE6 execution token
        dw      XT_LITbyte                                                      ; $8AE8 execution token
        db      $14                                                             ; $8AEA inline byte
        dw      $2BA8                                                           ; $8AEB execution token
        dw      XT_LITbyte                                                      ; $8AED execution token
        db      $00                                                             ; $8AEF inline byte
        dw      XT_LITbyte                                                      ; $8AF0 execution token
        db      $00                                                             ; $8AF2 inline byte
        dw      $2B2E                                                           ; $8AF3 execution token
        dw      XT_LITbyte                                                      ; $8AF5 execution token
        db      $04                                                             ; $8AF7 inline byte
        dw      $2BA8                                                           ; $8AF8 execution token
        dw      XT_LITbyte                                                      ; $8AFA execution token
        db      $20                                                             ; $8AFC inline byte
        dw      XT_LIT                                                          ; $8AFD execution token
        dw      $0085                                                           ; $8AFF inline word
        dw      XT_LITbyte                                                      ; $8B01 execution token
        db      $42                                                             ; $8B03 inline byte
        dw      $2B71                                                           ; $8B04 execution token
        dw      TERSE_COLON_897F                                                ; $8B06 execution token
        dw      XT_LITbyte                                                      ; $8B08 execution token
        db      $28                                                             ; $8B0A inline byte
        dw      $2BA8                                                           ; $8B0B execution token
        dw      XT_LITbyte                                                      ; $8B0D execution token
        db      $00                                                             ; $8B0F inline byte
        dw      XT_LITbyte                                                      ; $8B10 execution token
        db      $00                                                             ; $8B12 inline byte
        dw      $2B2E                                                           ; $8B13 execution token
        dw      XT_LITbyte                                                      ; $8B15 execution token
        db      $04                                                             ; $8B17 inline byte
        dw      $2BA8                                                           ; $8B18 execution token
        dw      XT_LIT                                                          ; $8B1A execution token
        dw      $F5F0                                                           ; $8B1C inline word
        dw      XT_BONE                                                         ; $8B1E execution token
        dw      $2B8C                                                           ; $8B20 execution token
        dw      XT_RETURN                                                       ; $8B22 execution token
TERSE_COLON_8B24:
        rst     $08                             ; $8B24 colon entry
        dw      $898B                ; $8B25 execution token $898B
        dw      $8A51                ; $8B27 execution token $8A51
        dw      XT_RETURN               ; $8B29 _RETURN
; Store the per-question variant chosen by a PPQ initializer. ( variant -- )
SET_QUESTION_VARIANT_BYTE:
        rst     $08                             ; $8B2B colon entry
        dw      XT_LIT                  ; $8B2C _LIT
        dw      QUESTION_VARIANT_ADDR ; $8B2E inline word
        dw      XT_SBbang               ; $8B30 _SBbang
        dw      XT_RETURN               ; $8B32 _RETURN
TERSE_COLON_8B34:
        rst     $08                             ; $8B34 colon entry
        dw      XT_GET_CURRENT_TASK  ; $8B35 current action-task record
        dw      XT_LITbyte              ; $8B37 _LITbyte
        db      $45                  ; $8B39 inline byte
        dw      XT_plus                 ; $8B3A _plus
        dw      XT_at                   ; $8B3C _at
        dw      XT_LITbyte              ; $8B3E _LITbyte
        db      $47                  ; $8B40 inline byte
        dw      XT_minussign            ; $8B41 _minussign
        dw      XT_DUP                  ; $8B43 _DUP
        dw      XT_GET_CURRENT_OBJECT_VALUE_1 ; $8B45 read current value 1
        dw      XT_SWAP                 ; $8B47 _SWAP
        dw      XT_GET_CURRENT_OBJECT_VALUE_2 ; $8B49 read current value 2
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $8B4B install adjusted pair
        dw      XT_RETURN               ; $8B4D _RETURN
; Assign the current answer object to a random slot 0-2.  The chosen index is
; retained as the correct-answer slot used by IS_SELECTED_ANSWER_CORRECT.
PLACE_CORRECT_ANSWER_RANDOM_SLOT:
        rst     $08                             ; $8B4F colon entry
        dw      XT_LITbyte              ; $8B50 _LITbyte
        db      $03                  ; $8B52 inline byte
        dw      XT_RANDOM_BELOW      ; $8B53 RANDOM_BELOW
        dw      XT_GET_CURRENT_TASK  ; $8B55 current action-task record
        dw      XT_OVER                 ; $8B57 _OVER
        dw      XT_ARRAY                ; $8B59 _ARRAY
        dw      QUESTION_SLOT_TASK_TABLE_ADDR ; $8B5B inline word
        dw      XT_bang                 ; $8B5D _bang
        dw      XT_DUP                  ; $8B5F _DUP
        dw      XT_LIT                  ; $8B61 _LIT
        dw      QUESTION_CORRECT_SLOT_ADDR ; $8B63 inline word
        dw      XT_SBbang               ; $8B65 _SBbang
        dw      XT_2splat               ; $8B67 _2splat
        dw      XT_LIT                  ; $8B69 _LIT
        dw      QUESTION_SLOT_RENDER_TABLE_ADDR ; $8B6B inline word
        dw      XT_at                   ; $8B6D _at
        dw      XT_plus                 ; $8B6F _plus
        dw      XT_at                   ; $8B71 _at
        dw      XT_CONFIGURE_OBJECT_RENDER ; $8B73 configure slot rendering
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $8B75 mark object dirty
        dw      XT_SET_OBJECT_MODE_2 ; $8B77 standard answer-object mode
        dw      XT_RETURN               ; $8B79 _RETURN
; Choose a slot distinct from the correct-answer slot, assign the current
; distractor to it, and retain the third unoccupied slot.
PLACE_DISTRACTOR_IN_SECOND_SLOT:
        rst     $08                             ; $8B7B colon entry
L8B7C:
        dw      XT_LITbyte              ; $8B7C _LITbyte
        db      $03                  ; $8B7E inline byte
        dw      XT_RANDOM_BELOW      ; $8B7F RANDOM_BELOW
        dw      XT_LIT                  ; $8B81 _LIT
        dw      QUESTION_CORRECT_SLOT_ADDR ; $8B83 inline word
        dw      XT_Bat                  ; $8B85 _Bat
        dw      XT_OVER                 ; $8B87 _OVER
        dw      XT_not_equal            ; $8B89 _not_equal
        dw      XT_0BRANCH              ; $8B8B _0BRANCH
        dw      L8B7C                ; $8B8D branch target
        dw      XT_GET_CURRENT_TASK  ; $8B8F current action-task record
        dw      XT_OVER                 ; $8B91 _OVER
        dw      XT_ARRAY                ; $8B93 _ARRAY
        dw      QUESTION_SLOT_TASK_TABLE_ADDR ; $8B95 inline word
        dw      XT_bang                 ; $8B97 _bang
        dw      XT_DUP                  ; $8B99 _DUP
        dw      XT_2splat               ; $8B9B _2splat
        dw      XT_LIT                  ; $8B9D _LIT
        dw      QUESTION_SLOT_RENDER_TABLE_ADDR ; $8B9F inline word
        dw      XT_at                   ; $8BA1 _at
        dw      XT_plus                 ; $8BA3 _plus
        dw      XT_at                   ; $8BA5 _at
        dw      XT_CONFIGURE_OBJECT_RENDER ; $8BA7 configure slot rendering
        dw      XT_LIT                  ; $8BA9 _LIT
        dw      QUESTION_CORRECT_SLOT_ADDR ; $8BAB inline word
        dw      XT_Bat                  ; $8BAD _Bat
        dw      XT_OR                   ; $8BAF _OR
        dw      XT_LITbyte              ; $8BB1 _LITbyte
        db      $03                  ; $8BB3 inline byte
        dw      XT_SWAP                 ; $8BB4 _SWAP
        dw      XT_minussign            ; $8BB6 _minussign
        dw      XT_LIT                  ; $8BB8 _LIT
        dw      QUESTION_REMAINING_SLOT_ADDR ; $8BBA inline word
        dw      XT_SBbang               ; $8BBC _SBbang
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $8BBE mark object dirty
        dw      XT_SET_OBJECT_MODE_2 ; $8BC0 standard answer-object mode
        dw      XT_RETURN               ; $8BC2 _RETURN
; Cache a three-word object setup tuple and apply it to the current task.
; The tuple is retained for REAPPLY_CACHED_QUESTION_OBJECT_SETUP. ( a b c -- )
CACHE_AND_APPLY_QUESTION_OBJECT_SETUP:
        rst     $08                             ; $8BC4 colon entry
        dw      XT_DUP                  ; $8BC5 _DUP
        dw      XT_SET_CURRENT_OBJECT_WORD_1D ; $8BC7 install setup word 3
        dw      XT_LIT                  ; $8BC9 _LIT
        dw      QUESTION_OBJECT_WORD_1D_CACHE_ADDR ; $8BCB inline word
        dw      XT_bang                 ; $8BCD _bang
        dw      XT_DUP                  ; $8BCF _DUP
        dw      XT_SET_CURRENT_OBJECT_VALUE_2 ; $8BD1 apply setup word 2
        dw      XT_LIT                  ; $8BD3 _LIT
        dw      QUESTION_OBJECT_VALUE_2_CACHE_ADDR ; $8BD5 inline word
        dw      XT_bang                 ; $8BD7 _bang
        dw      XT_DUP                  ; $8BD9 _DUP
        dw      XT_SET_CURRENT_OBJECT_VALUE_1 ; $8BDB apply setup word 1
        dw      XT_LIT                  ; $8BDD _LIT
        dw      QUESTION_OBJECT_VALUE_1_CACHE_ADDR ; $8BDF inline word
        dw      XT_bang                 ; $8BE1 _bang
        dw      XT_LITbyte              ; $8BE3 _LITbyte
        db      $0A                  ; $8BE5 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18 ; $8BE6 install draw parameter
        dw      XT_INITIALIZE_OBJECT_DRAW_STATE ; $8BE8 initialize renderer
        dw      XT_RESET_OBJECT_DRAW_STATE ; $8BEA reset transient draw state
        dw      XT_RETURN               ; $8BEC _RETURN
; Reapply the cached three-word setup to the current task. ( -- )
REAPPLY_CACHED_QUESTION_OBJECT_SETUP:
        rst     $08                             ; $8BEE colon entry
        dw      XT_SET_OBJECT_MODE_2 ; $8BEF standard answer-object mode
        dw      XT_LITbyte              ; $8BF1 _LITbyte
        db      $0A                  ; $8BF3 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18 ; $8BF4 install draw parameter
        dw      XT_LIT                  ; $8BF6 _LIT
        dw      QUESTION_OBJECT_WORD_1D_CACHE_ADDR ; $8BF8 inline word
        dw      XT_at                   ; $8BFA _at
        dw      XT_SET_CURRENT_OBJECT_WORD_1D ; $8BFC apply setup word 3
        dw      XT_LIT                  ; $8BFE _LIT
        dw      QUESTION_OBJECT_VALUE_1_CACHE_ADDR ; $8C00 inline word
        dw      XT_at                   ; $8C02 _at
        dw      XT_LIT                  ; $8C04 _LIT
        dw      QUESTION_OBJECT_VALUE_2_CACHE_ADDR ; $8C06 inline word
        dw      XT_at                   ; $8C08 _at
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $8C0A apply setup words 1-2
        dw      XT_INITIALIZE_OBJECT_DRAW_STATE ; $8C0C initialize renderer
        dw      XT_RESET_OBJECT_DRAW_STATE ; $8C0E reset transient draw state
        dw      XT_RETURN               ; $8C10 _RETURN
; Assign the final distractor to the one slot not used by the correct answer
; or the first distractor.
PLACE_DISTRACTOR_IN_REMAINING_SLOT:
        rst     $08                             ; $8C12 colon entry
        dw      XT_LIT                  ; $8C13 _LIT
        dw      QUESTION_REMAINING_SLOT_ADDR ; $8C15 inline word
        dw      XT_Bat                  ; $8C17 _Bat
        dw      XT_GET_CURRENT_TASK  ; $8C19 current action-task record
        dw      XT_OVER                 ; $8C1B _OVER
        dw      XT_ARRAY                ; $8C1D _ARRAY
        dw      QUESTION_SLOT_TASK_TABLE_ADDR ; $8C1F inline word
        dw      XT_bang                 ; $8C21 _bang
        dw      XT_2splat               ; $8C23 _2splat
        dw      XT_LIT                  ; $8C25 _LIT
        dw      QUESTION_SLOT_RENDER_TABLE_ADDR ; $8C27 inline word
        dw      XT_at                   ; $8C29 _at
        dw      XT_plus                 ; $8C2B _plus
        dw      XT_at                   ; $8C2D _at
        dw      XT_CONFIGURE_OBJECT_RENDER ; $8C2F configure slot rendering
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $8C31 mark object dirty
        dw      XT_SET_OBJECT_MODE_2 ; $8C33 standard answer-object mode
        dw      XT_RETURN               ; $8C35 _RETURN
; Initialize the shared presentation table, retain the slot-render table,
; apply the four-word scene tuple, and publish the scene task. ( a b c d -- )
CONFIGURE_QUESTION_SCENE:
        rst     $08                             ; $8C37 colon entry
        dw      XT_CLEAR_PRESENTATION_TABLE ; $8C38 clear shared work table
        dw      XT_LIT                  ; $8C3A _LIT
        dw      QUESTION_SLOT_RENDER_TABLE_ADDR ; $8C3C inline word
        dw      XT_bang                 ; $8C3E _bang
        dw      CACHE_AND_APPLY_QUESTION_OBJECT_SETUP ; $8C40 cache/apply tuple
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $8C42 mark object dirty
        dw      XT_SET_OBJECT_MODE_2 ; $8C44 standard question-object mode
        dw      XT_GET_CURRENT_TASK  ; $8C46 current action-task record
        dw      XT_LIT                  ; $8C48 _LIT
        dw      QUESTION_SCENE_TASK_ADDR ; $8C4A inline word
        dw      XT_bang                 ; $8C4C _bang
        dw      XT_RETURN               ; $8C4E _RETURN
; Signal completion and release the current action's scheduler bit.
COMPLETE_QUESTION_ACTION:
        rst     $08                             ; $8C50 colon entry
        dw      XT_LIT                  ; $8C51 _LIT
        dw      QUESTION_ACTION_COMPLETE_ADDR ; $8C53 inline word
        dw      XT_BONE                 ; $8C55 _BONE
        dw      XT_CLEAR_TASK_ACTIVE_BIT ; $8C57 release current action task
        dw      XT_RETURN               ; $8C59 _RETURN
QUESTION_SLOT_POSITION_TABLE:
        dw      $31AA,$322F,$329A              ; $8C5B
; Derive and draw the two slot objects that are not owned by the current task.
; The two input values are added to the current object's saved values before
; the per-slot positions and descriptors are applied. ( delta1 delta2 -- )
UPDATE_OTHER_SLOT_OBJECTS:
        rst     $08                             ; $8C61 colon entry
        dw      XT_LITbyte              ; $8C62 _LITbyte
        db      $03                  ; $8C64 inline byte
        dw      XT_0                    ; $8C65 _0
        dw      XT_DO                   ; $8C67 _DO
        dw      XT_I                    ; $8C69 _I
        dw      XT_ARRAY                ; $8C6B _ARRAY
        dw      QUESTION_SLOT_TASK_TABLE_ADDR ; $8C6D inline word
        dw      XT_at                   ; $8C6F _at
        dw      XT_GET_CURRENT_TASK  ; $8C71 current action-task record
        dw      XT_equal                ; $8C73 _equal
        dw      XT_0BRANCH              ; $8C75 _0BRANCH
        dw      L8CBB                ; $8C77 branch target
        dw      XT_GET_CURRENT_TASK  ; $8C79 current action-task record
        dw      XT_GET_CURRENT_OBJECT_VALUE_2 ; $8C7B read current value 2
        dw      XT_DUP                  ; $8C7D _DUP
        dw      XT_ROT                  ; $8C7F _ROT
        dw      XT_plus                 ; $8C81 _plus
        dw      XT_I                    ; $8C83 _I
        dw      XT_ARRAY                ; $8C85 _ARRAY
        dw      QUESTION_SLOT_VALUE_2_TABLE_ADDR ; $8C87 inline word
        dw      XT_bang                 ; $8C89 _bang
        dw      XT_GET_CURRENT_TASK  ; $8C8B current action-task record
        dw      XT_GET_CURRENT_OBJECT_VALUE_1 ; $8C8D read current value 1
        dw      XT_ROT                  ; $8C8F _ROT
        dw      XT_OVER                 ; $8C91 _OVER
        dw      XT_plus                 ; $8C93 _plus
        dw      XT_I                    ; $8C95 _I
        dw      XT_ARRAY                ; $8C97 _ARRAY
        dw      QUESTION_SLOT_VALUE_1_TABLE_ADDR ; $8C99 inline word
        dw      XT_bang                 ; $8C9B _bang
        dw      XT_I                    ; $8C9D _I
        dw      XT_ARRAY                ; $8C9F _ARRAY
        dw      QUESTION_SLOT_POSITION_TABLE ; $8CA1 inline word
        dw      XT_at                   ; $8CA3 _at
        dw      XT_APPLY_OBJECT_DESCRIPTOR ; $8CA5 install slot descriptor
        dw      XT_I                    ; $8CA7 _I
        dw      XT_ARRAY                ; $8CA9 _ARRAY
        dw      QUESTION_SLOT_VALUE_1_TABLE_ADDR ; $8CAB inline word
        dw      XT_at                   ; $8CAD _at
        dw      XT_I                    ; $8CAF _I
        dw      XT_ARRAY                ; $8CB1 _ARRAY
        dw      QUESTION_SLOT_VALUE_2_TABLE_ADDR ; $8CB3 inline word
        dw      XT_at                   ; $8CB5 _at
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $8CB7 install slot values
        dw      XT_DRAW_CURRENT_OBJECT ; $8CB9 draw positioned object
L8CBB:
        dw      XT_LOOP                 ; $8CBB _LOOP
        dw      XT_SET_CURRENT_OBJECT_VALUE_1 ; $8CBD restore current value 1
        dw      XT_SET_CURRENT_OBJECT_VALUE_2 ; $8CBF restore current value 2
        dw      XT_RESET_OBJECT_DRAW_STATE ; $8CC1 reset transient draw state
        dw      XT_RETURN               ; $8CC3 _RETURN
; Draw the current object when selector/2 is nonzero. ( selector -- )
OPTIONAL_OBJECT_DRAW:
        rst     $08                             ; $8CC5 colon entry
        dw      XT_2slash               ; $8CC6 _2slash
        dw      XT_0BRANCH              ; $8CC8 _0BRANCH
        dw      L8CCE                ; $8CCA branch target
        dw      XT_DRAW_CURRENT_OBJECT ; $8CCC draw when selector/2 is nonzero
L8CCE:
        dw      XT_RETURN               ; $8CCE _RETURN
; Fill presentation-table entries 3-27 with random nibbles and mark the table
; ready. This is retained as a decoded support word; no rooted PPQ family calls
; it directly. ( -- )
RANDOMIZE_PRESENTATION_TABLE:
        rst     $08                             ; $8CD0 colon entry
        dw      XT_LITbyte              ; $8CD1 _LITbyte
        db      $1C                  ; $8CD3 inline byte
        dw      XT_LITbyte              ; $8CD4 _LITbyte
        db      $03                  ; $8CD6 inline byte
        dw      XT_DO                   ; $8CD7 _DO
        dw      XT_LITbyte              ; $8CD9 _LITbyte
        db      $10                  ; $8CDB inline byte
        dw      XT_RANDOM_BELOW      ; $8CDC RANDOM_BELOW
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
; Copy source bytes into presentation-table entries 3-26 and mark the table
; ready. Used by line-intersection and juggler-memory questions. ( source -- )
LOAD_PRESENTATION_TABLE:
        rst     $08                             ; $8CF2 colon entry
        dw      XT_LITbyte              ; $8CF3 _LITbyte
        db      $1B                  ; $8CF5 inline byte
        dw      XT_LITbyte              ; $8CF6 _LITbyte
        db      $03                  ; $8CF8 inline byte
        dw      XT_COPY_PRESENTATION_TABLE ; $8CF9 copy indexed source bytes
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
        db      $64,$6F,$75,$62,$6C,$65,$20,$73,$63,$6F,$72,$65                 ; $9093 preserved bytes

PLAYER_PROMPT_TASK:
        rst     $08                                                             ; $909F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $90A0 execution token
        dw      XT_LIT                                                          ; $90A2 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $90A4 inline word
        dw      XT_Bat                                                          ; $90A6 execution token
        dw      XT_1                                                            ; $90A8 execution token
        dw      XT_equal                                                        ; $90AA execution token
        dw      XT_0BRANCH                                                      ; $90AC execution token
        dw      L90B7                                                           ; $90AE branch target
        dw      XT_LITbyte                                                      ; $90B0 execution token
        db      $3C                                                             ; $90B2 inline byte
        dw      XT_BRANCH                                                       ; $90B3 execution token
        dw      L90BB                                                           ; $90B5 branch target
L90B7:
        dw      XT_LIT                                                          ; $90B7 execution token
        dw      $FF64                                                           ; $90B9 inline word
L90BB:
        dw      XT_LITbyte                                                      ; $90BB execution token
        db      $21                                                             ; $90BD inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $90BE execution token
        dw      XT_LITbyte                                                      ; $90C0 execution token
        db      $0B                                                             ; $90C2 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $90C3 execution token
        dw      XT_LIT                                                          ; $90C5 execution token
        dw      $9092                                                           ; $90C7 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $90C9 execution token
        dw      $2083                                                           ; $90CB execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $90CD execution token
        dw      XT_CLEAR_TASK_ACTIVE_BIT                                        ; $90CF execution token
        dw      XT_RETURN                                                       ; $90D1 execution token
        db      $06,$70,$75,$70,$69,$6C,$20,$01,$31,$01,$32,$0C,$20,$20,$20,$69 ; $90D3
        db      $6E,$63,$6F,$72,$72,$65,$63,$74,$05,$20,$6F,$6E,$6C,$79,$0C,$20 ; $90E3
        db      $20,$20,$74,$72,$79,$20,$61,$67,$61,$69,$6E                     ; $90F3 preserved bytes

ROUND_TERSE_90FE:
        rst     $08                                                             ; $90FE colon entry
        dw      XT_LIT                                                          ; $90FF execution token
        dw      CURRENT_PLAYER_INDEX_ADDR                                       ; $9101 inline word
        dw      XT_Bat                                                          ; $9103 execution token
        dw      XT_1                                                            ; $9105 execution token
        dw      XT_gt                                                           ; $9107 execution token
        dw      XT_0BRANCH                                                      ; $9109 execution token
        dw      L9133                                                           ; $910B branch target
        dw      XT_LIT                                                          ; $910D execution token
        dw      $90D3                                                           ; $910F inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $9111 execution token
        dw      $207E                                                           ; $9113 execution token
        dw      $2CD4                                                           ; $9115 execution token
        dw      XT_0BRANCH                                                      ; $9117 execution token
        dw      L9123                                                           ; $9119 branch target
        dw      XT_LIT                                                          ; $911B execution token
        dw      $90DA                                                           ; $911D inline word
        dw      XT_BRANCH                                                       ; $911F execution token
        dw      L9127                                                           ; $9121 branch target
L9123:
        dw      XT_LIT                                                          ; $9123 execution token
        dw      $90DC                                                           ; $9125 inline word
L9127:
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $9127 execution token
        dw      $207E                                                           ; $9129 execution token
        dw      XT_LIT                                                          ; $912B execution token
        dw      $90EB                                                           ; $912D inline word
        dw      XT_BRANCH                                                       ; $912F execution token
        dw      L9137                                                           ; $9131 branch target
L9133:
        dw      XT_LIT                                                          ; $9133 execution token
        dw      $90F1                                                           ; $9135 inline word
L9137:
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $9137 execution token
        dw      $2083                                                           ; $9139 execution token
        dw      XT_RETURN                                                       ; $913B execution token

        db      $0B,$20,$20,$20,$20,$74                                         ; $913D preserved bytes
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
        db      $01,$44,$05,$53,$01,$DE,$01,$EA,$03,$7A,$91,$37,$23,$FD,$00     ; $91A0 preserved bytes

ANSWER_INPUT_GATE_TASK:
        rst     $08                                                             ; $91AF colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $91B0 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $91B2 execution token
        dw      XT_LIT                                                          ; $91B4 execution token
        dw      $F724                                                           ; $91B6 inline word
        dw      XT_BZERO                                                        ; $91B8 execution token
        dw      XT_1                                                            ; $91BA execution token
        dw      XT_SET_TASK_BYTE_0C                                             ; $91BC execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $91BE execution token
        dw      XT_LITbyte                                                      ; $91C0 execution token
        db      $63                                                             ; $91C2 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $91C3 execution token
        dw      XT_LIT                                                          ; $91C5 execution token
        dw      $9023                                                           ; $91C7 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $91C9 execution token
L91CB:
        dw      XT_0                                                            ; $91CB execution token
        dw      XT_LIT                                                          ; $91CD execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $91CF inline word
        dw      $1A80                                                           ; $91D1 execution token
        dw      XT_0BRANCH                                                      ; $91D3 execution token
        dw      L91DE                                                           ; $91D5 branch target
        dw      XT_LITbyte                                                      ; $91D7 execution token
        db      $60                                                             ; $91D9 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $91DA execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $91DC execution token
L91DE:
        dw      XT_1                                                            ; $91DE execution token
        dw      XT_LIT                                                          ; $91E0 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $91E2 inline word
        dw      $1A80                                                           ; $91E4 execution token
        dw      XT_0BRANCH                                                      ; $91E6 execution token
        dw      L91F2                                                           ; $91E8 branch target
        dw      XT_LIT                                                          ; $91EA execution token
        dw      $FFA0                                                           ; $91EC inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $91EE execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $91F0 execution token
L91F2:
        dw      XT_LITbyte                                                      ; $91F2 execution token
        db      $20                                                             ; $91F4 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $91F5 execution token
        dw      $1A2C                                                           ; $91F7 execution token
        dw      XT_LIT                                                          ; $91F9 execution token
        dw      $F724                                                           ; $91FB inline word
        dw      XT_Bat                                                          ; $91FD execution token
        dw      XT_0BRANCH                                                      ; $91FF execution token
        dw      L91CB                                                           ; $9201 branch target
        dw      XT_CLEAR_TASK_ACTIVE_BIT                                        ; $9203 execution token
        dw      XT_RETURN                                                       ; $9205 execution token

ROUND_TERSE_9207:
        rst     $08                                                             ; $9207 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $9208 execution token
        dw      XT_LIT                                                          ; $920A execution token
        dw      $F71E                                                           ; $920C inline word
        dw      XT_BZERO                                                        ; $920E execution token
        dw      XT_LITbyte                                                      ; $9210 execution token
        db      $0F                                                             ; $9212 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $9213 execution token
        dw      XT_LIT                                                          ; $9215 execution token
        dw      $FFD6                                                           ; $9217 inline word
        dw      XT_LITbyte                                                      ; $9219 execution token
        db      $23                                                             ; $921B inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $921C execution token
        dw      $1EDC                                                           ; $921E execution token
        dw      XT_LIT                                                          ; $9220 execution token
        dw      $8F83                                                           ; $9222 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $9224 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $9226 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $9228 execution token
        dw      XT_IS_SELECTED_ANSWER_CORRECT                                   ; $922A execution token
        dw      XT_zeroequal                                                    ; $922C execution token
        dw      XT_0BRANCH                                                      ; $922E execution token
        dw      L927B                                                           ; $9230 branch target
        dw      XT_LIT                                                          ; $9232 execution token
        dw      QUESTION_RESPONSE_READY_ADDR                                    ; $9234 inline word
        dw      XT_Bat                                                          ; $9236 execution token
        dw      XT_LIT                                                          ; $9238 execution token
        dw      BONUS_QUESTION_FLAG_ADDR                                        ; $923A inline word
        dw      XT_Bat                                                          ; $923C execution token
        dw      XT_XOR                                                          ; $923E execution token
        dw      XT_0BRANCH                                                      ; $9240 execution token
        dw      L9250                                                           ; $9242 branch target
        dw      XT_LIT                                                          ; $9244 execution token
        dw      $90DE                                                           ; $9246 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $9248 execution token
        dw      $2083                                                           ; $924A execution token
        dw      XT_BRANCH                                                       ; $924C execution token
        dw      L927B                                                           ; $924E branch target
L9250:
        dw      XT_LITbyte                                                      ; $9250 execution token
        db      $05                                                             ; $9252 inline byte
        dw      XT_LIT                                                          ; $9253 execution token
        dw      $F71F                                                           ; $9255 inline word
        dw      XT_SBbang                                                       ; $9257 execution token
L9259:
        dw      XT_LIT                                                          ; $9259 execution token
        dw      $FFD6                                                           ; $925B inline word
        dw      XT_LITbyte                                                      ; $925D execution token
        db      $23                                                             ; $925F inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $9260 execution token
        dw      ROUND_TERSE_90FE                                                ; $9262 execution token
        dw      XT_LITbyte                                                      ; $9264 execution token
        db      $10                                                             ; $9266 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $9267 execution token
        dw      $1A2C                                                           ; $9269 execution token
        dw      XT_LIT                                                          ; $926B execution token
        dw      $F71F                                                           ; $926D inline word
        dw      XT_DUP                                                          ; $926F execution token
        dw      XT_1minusBbang                                                  ; $9271 execution token
        dw      XT_Bat                                                          ; $9273 execution token
        dw      XT_zeroequal                                                    ; $9275 execution token
        dw      XT_0BRANCH                                                      ; $9277 execution token
        dw      L9259                                                           ; $9279 branch target
L927B:
        dw      XT_CLEAR_TASK_ACTIVE_BIT                                        ; $927B execution token
        dw      XT_RETURN                                                       ; $927D execution token
TERSE_COLON_927F:
        rst     $08                             ; $927F colon entry
        dw      XT_LITbyte              ; $9280 _LITbyte
        db      $15                  ; $9282 inline byte
        dw      $1F4B                ; $9283 execution token $1F4B
        dw      XT_LIT                  ; $9285 _LIT
        dw      $F720                ; $9287 inline word
        dw      XT_BZERO                ; $9289 _BZERO
        dw      XT_RETURN               ; $928B _RETURN
ROUND_TERSE_928D:
        rst     $08                                                             ; $928D colon entry
        dw      XT_0                                                            ; $928E execution token
        dw      XT_LIT                                                          ; $9290 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $9292 inline word
        dw      $1A80                                                           ; $9294 execution token
        dw      XT_0BRANCH                                                      ; $9296 execution token
        dw      L92A2                                                           ; $9298 branch target
        dw      XT_LIT                                                          ; $929A execution token
        dw      $0070                                                           ; $929C inline word
        dw      XT_BRANCH                                                       ; $929E execution token
        dw      L92A4                                                           ; $92A0 branch target
L92A2:
        dw      XT_0                                                            ; $92A2 execution token
L92A4:
        dw      XT_1                                                            ; $92A4 execution token
        dw      XT_LIT                                                          ; $92A6 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $92A8 inline word
        dw      $1A80                                                           ; $92AA execution token
        dw      XT_0BRANCH                                                      ; $92AC execution token
        dw      L92B7                                                           ; $92AE branch target
        dw      XT_LITbyte                                                      ; $92B0 execution token
        db      $07                                                             ; $92B2 inline byte
        dw      XT_BRANCH                                                       ; $92B3 execution token
        dw      L92B9                                                           ; $92B5 branch target
L92B7:
        dw      XT_0                                                            ; $92B7 execution token
L92B9:
        dw      XT_OR                                                           ; $92B9 execution token
        dw      XT_DUP                                                          ; $92BB execution token
        dw      XT_LIT                                                          ; $92BD execution token
        dw      $F720                                                           ; $92BF inline word
        dw      XT_SBbang                                                       ; $92C1 execution token
        dw      XT_LIT                                                          ; $92C3 execution token
        dw      $0100                                                           ; $92C5 inline word
        dw      XT_star                                                         ; $92C7 execution token
        dw      XT_LITbyte                                                      ; $92C9 execution token
        db      $15                                                             ; $92CB inline byte
        dw      XT_plus                                                         ; $92CC execution token
        dw      $1F4B                                                           ; $92CE execution token
        dw      XT_RETURN                                                       ; $92D0 execution token
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
ANSWER_SELECTION_TASK:
        rst     $08                                                             ; $93E6 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $93E7 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $93E9 execution token
        dw      XT_LIT                                                          ; $93EB execution token
        dw      $F6E6                                                           ; $93ED inline word
        dw      XT_BZERO                                                        ; $93EF execution token
        dw      XT_LIT                                                          ; $93F1 execution token
        dw      $F725                                                           ; $93F3 inline word
        dw      XT_BZERO                                                        ; $93F5 execution token
L93F7:
        dw      $15E7                                                           ; $93F7 execution token
        dw      XT_LITbyte                                                      ; $93F9 execution token
        db      $04                                                             ; $93FB inline byte
        dw      XT_LIT                                                          ; $93FC execution token
        dw      QUESTION_SELECTED_SLOT_ADDR                                     ; $93FE inline word
        dw      XT_SBbang                                                       ; $9400 execution token
        dw      XT_0                                                            ; $9402 execution token
        dw      XT_LIT                                                          ; $9404 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $9406 inline word
        dw      $1A80                                                           ; $9408 execution token
        dw      XT_0BRANCH                                                      ; $940A execution token
        dw      L943F                                                           ; $940C branch target
        dw      XT_LITbyte                                                      ; $940E execution token
        db      $11                                                             ; $9410 inline byte
        dw      XT_INP                                                          ; $9411 execution token
        dw      $2CB9                                                           ; $9413 execution token
        dw      TERSE_COLON_9318                                                ; $9415 execution token
        dw      XT_DUP                                                          ; $9417 execution token
        dw      TERSE_COLON_9322                                                ; $9419 execution token
        dw      XT_0BRANCH                                                      ; $941B execution token
        dw      L943D                                                           ; $941D branch target
        dw      XT_2slash                                                       ; $941F execution token
        dw      XT_LIT                                                          ; $9421 execution token
        dw      QUESTION_SELECTED_SLOT_ADDR                                     ; $9423 inline word
        dw      XT_SBbang                                                       ; $9425 execution token
        dw      XT_LIT                                                          ; $9427 execution token
        dw      $F727                                                           ; $9429 inline word
        dw      XT_BONE                                                         ; $942B execution token
        dw      XT_LIT                                                          ; $942D execution token
        dw      $F6E6                                                           ; $942F inline word
        dw      XT_BONE                                                         ; $9431 execution token
        dw      XT_LIT                                                          ; $9433 execution token
        dw      $F725                                                           ; $9435 inline word
        dw      XT_BONE                                                         ; $9437 execution token
        dw      XT_BRANCH                                                       ; $9439 execution token
        dw      L943F                                                           ; $943B branch target
L943D:
        dw      XT_DROP                                                         ; $943D execution token
L943F:
        dw      $34FB                                                           ; $943F execution token
        dw      XT_NOT                                                          ; $9441 execution token
        dw      XT_1                                                            ; $9443 execution token
        dw      XT_LIT                                                          ; $9445 execution token
        dw      QUESTION_ROUND_MODE_ADDR                                        ; $9447 inline word
        dw      $1A80                                                           ; $9449 execution token
        dw      XT_AND                                                          ; $944B execution token
        dw      XT_0BRANCH                                                      ; $944D execution token
        dw      L9483                                                           ; $944F branch target
        dw      XT_LITbyte                                                      ; $9451 execution token
        db      $11                                                             ; $9453 inline byte
        dw      XT_INP                                                          ; $9454 execution token
        dw      TERSE_COLON_9318                                                ; $9456 execution token
        dw      XT_DUP                                                          ; $9458 execution token
        dw      TERSE_COLON_9322                                                ; $945A execution token
        dw      XT_0BRANCH                                                      ; $945C execution token
        dw      L9481                                                           ; $945E branch target
        dw      XT_2slash                                                       ; $9460 execution token
        dw      XT_LIT                                                          ; $9462 execution token
        dw      QUESTION_SELECTED_SLOT_ADDR                                     ; $9464 inline word
        dw      XT_SBbang                                                       ; $9466 execution token
        dw      XT_LIT                                                          ; $9468 execution token
        dw      $F727                                                           ; $946A inline word
        dw      XT_BZERO                                                        ; $946C execution token
        dw      XT_LITbyte                                                      ; $946E execution token
        db      $02                                                             ; $9470 inline byte
        dw      XT_LIT                                                          ; $9471 execution token
        dw      $F6E6                                                           ; $9473 inline word
        dw      XT_SBbang                                                       ; $9475 execution token
        dw      XT_LIT                                                          ; $9477 execution token
        dw      $F725                                                           ; $9479 inline word
        dw      XT_BONE                                                         ; $947B execution token
        dw      XT_BRANCH                                                       ; $947D execution token
        dw      L9483                                                           ; $947F branch target
L9481:
        dw      XT_DROP                                                         ; $9481 execution token
L9483:
        dw      $34FB                                                           ; $9483 execution token
        dw      XT_LIT                                                          ; $9485 execution token
        dw      QUESTION_RESPONSE_LATCH_ADDR                                    ; $9487 inline word
        dw      XT_Bat                                                          ; $9489 execution token
        dw      XT_OR                                                           ; $948B execution token
        dw      XT_0BRANCH                                                      ; $948D execution token
        dw      L93F7                                                           ; $948F branch target
        dw      XT_LIT                                                          ; $9491 execution token
        dw      $F724                                                           ; $9493 inline word
        dw      XT_BONE                                                         ; $9495 execution token
        dw      XT_LIT                                                          ; $9497 execution token
        dw      $F6E7                                                           ; $9499 inline word
        dw      XT_BONE                                                         ; $949B execution token
        dw      XT_LIT                                                          ; $949D execution token
        dw      QUESTION_RESPONSE_LATCH_ADDR                                    ; $949F inline word
        dw      XT_Bat                                                          ; $94A1 execution token
        dw      XT_NOT                                                          ; $94A3 execution token
        dw      XT_0BRANCH                                                      ; $94A5 execution token
        dw      L94E2                                                           ; $94A7 branch target
        dw      XT_SET_OBJECT_MODE_2                                            ; $94A9 execution token
        dw      TERSE_COLON_9363                                                ; $94AB execution token
        dw      XT_IS_SELECTED_ANSWER_CORRECT                                   ; $94AD execution token
        dw      XT_0BRANCH                                                      ; $94AF execution token
        dw      L94C3                                                           ; $94B1 branch target
        dw      TERSE_COLON_830B                                                ; $94B3 execution token
        dw      TERSE_COLON_9394                                                ; $94B5 execution token
        dw      XT_LIT                                                          ; $94B7 execution token
        dw      $9170                                                           ; $94B9 inline word
        dw      $2CDD                                                           ; $94BB execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $94BD execution token
        dw      XT_BRANCH                                                       ; $94BF execution token
        dw      L94D7                                                           ; $94C1 branch target
L94C3:
        dw      XT_LIT                                                          ; $94C3 execution token
        dw      QUESTION_RESPONSE_READY_ADDR                                    ; $94C5 inline word
        dw      XT_Bat                                                          ; $94C7 execution token
        dw      XT_0BRANCH                                                      ; $94C9 execution token
        dw      L94D3                                                           ; $94CB branch target
        dw      TERSE_COLON_896C                                                ; $94CD execution token
        dw      XT_BRANCH                                                       ; $94CF execution token
        dw      L94D5                                                           ; $94D1 branch target
L94D3:
        dw      TERSE_COLON_8816                                                ; $94D3 execution token
L94D5:
        dw      TERSE_COLON_93B1                                                ; $94D5 execution token
L94D7:
        dw      XT_LITbyte                                                      ; $94D7 execution token
        db      $10                                                             ; $94D9 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $94DA execution token
        dw      $1A2C                                                           ; $94DC execution token
        dw      XT_BRANCH                                                       ; $94DE execution token
        dw      L94E8                                                           ; $94E0 branch target
L94E2:
        dw      XT_LIT                                                          ; $94E2 execution token
        dw      QUESTION_RESPONSE_READY_ADDR                                    ; $94E4 inline word
        dw      XT_BONE                                                         ; $94E6 execution token
L94E8:
        dw      XT_CLEAR_TASK_ACTIVE_BIT                                        ; $94E8 execution token
        dw      XT_RETURN                                                       ; $94EA execution token

        db      $1C,$14,$0D,$15,$AF,$11,$01,$00,$00,$00                         ; $94EC preserved bytes
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
