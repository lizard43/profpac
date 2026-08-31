; Professor Pac-Man program ROM PPS6
; Bank configuration 1, CPU address $6000-$7FFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $6000

        db      $01,$88,$13,$09,$01,$E8,$03,$8D,$03,$FF,$02,$96,$45,$05,$04,$02 ; $6000
        db      $20,$6B,$EA,$44,$8F,$46,$2A,$45,$B8,$02,$25,$01,$98,$E1,$4C,$01 ; $6010
        db      $96,$45,$1E,$44,$8A,$02,$86,$46,$12,$45,$12,$01,$0A,$90,$01,$09 ; $6020
        db      $01,$88,$13,$09,$01,$E8,$03,$8D,$03,$FF,$02,$96,$45,$05,$04,$04 ; $6030
        db      $20,$6B,$20,$2B,$EA,$44,$8F,$46,$2A,$45,$12,$01,$09,$25,$01,$98 ; $6040
        db      $E1,$4C,$01,$96,$45,$34,$44,$1E,$44,$FA,$44,$2A,$01,$25,$01,$98 ; $6050
        db      $E1,$F7,$5D,$2C,$49,$FD,$00                                     ; $6060
TERSE_COLON_6067:
        rst     $08                             ; $6067 colon entry
        dw      $0112                ; $6068 _LITbyte
        db      $0A                  ; $606A inline byte
        dw      $012A                ; $606B _0
        dw      $026F                ; $606D _DO
        dw      $02B8                ; $606F _I
        dw      $0125                ; $6071 _ARRAY
        dw      $E198                ; $6073 inline word
        dw      $4091                ; $6075 ALIAS_ZERO
        dw      $028A                ; $6077 _LOOP
        dw      $0109                ; $6079 _LIT
        dw      $E196                ; $607B inline word
        dw      $4091                ; $607D ALIAS_ZERO
        dw      $5FB2                ; $607F execution token $5FB2
        dw      $00FD                ; $6081 _RETURN
        db      $0F,$63,$69,$72,$63,$75,$69,$74,$72,$79,$20,$74,$65,$73,$74,$73 ; $6083
        db      $11,$76,$69,$64,$65,$6F,$20,$74,$65,$73,$74,$2F,$61,$64,$6A,$75 ; $6093
        db      $73,$74,$10,$61,$75,$64,$69,$6F,$2F,$6D,$65,$63,$68,$61,$6E,$69 ; $60A3
        db      $63,$61,$6C,$0A,$73,$74,$61,$74,$69,$73,$74,$69,$63,$73,$0D,$67 ; $60B3
        db      $61,$6D,$65,$20,$73,$65,$74,$74,$69,$6E,$67,$73,$83,$60,$93,$60 ; $60C3
        db      $A5,$60,$B6,$60,$C1,$60,$09,$72,$61,$6D,$20,$74,$65,$73,$74,$73 ; $60D3
        db      $09,$72,$6F,$6D,$20,$74,$65,$73,$74,$73,$14,$31,$36,$20,$63,$6F ; $60E3
        db      $6C,$6F,$72,$20,$62,$6F,$61,$72,$64,$20,$74,$65,$73,$74,$73,$0F ; $60F3
        db      $63,$6F,$6E,$74,$69,$6E,$75,$6F,$75,$73,$20,$74,$65,$73,$74,$ED ; $6103
        db      $60,$D9,$60,$E3,$60,$02,$61,$0B,$63,$72,$6F,$73,$73,$2D,$68,$61 ; $6113
        db      $74,$63,$68,$0A,$63,$6F,$6C,$6F,$72,$2D,$62,$61,$72,$73,$0B,$67 ; $6123
        db      $72,$65,$79,$20,$6C,$65,$76,$65,$6C,$73,$06,$70,$75,$72,$69,$74 ; $6133
        db      $79,$1A,$61,$26,$61,$31,$61,$3D,$61,$06,$73,$6F,$75,$6E,$64,$73 ; $6143
        db      $08,$73,$77,$69,$74,$63,$68,$65,$73,$07,$64,$65,$76,$69,$63,$65 ; $6153
        db      $73,$4C,$61,$53,$61,$5C,$61,$11,$74,$69,$6D,$65,$20,$69,$6E,$64 ; $6163
        db      $65,$78,$20,$31,$2D,$70,$6C,$79,$72,$11,$74,$69,$6D,$65,$20,$69 ; $6173
        db      $6E,$64,$65,$78,$20,$32,$2D,$70,$6C,$79,$72,$0B,$73,$63,$6F,$72 ; $6183
        db      $65,$20,$69,$6E,$64,$65,$78,$10,$63,$6C,$65,$61,$72,$20,$73,$74 ; $6193
        db      $61,$74,$69,$73,$74,$69,$63,$73,$6A,$61,$7C,$61,$8E,$61,$9A,$61 ; $61A3
        db      $0C,$63,$6C,$65,$61,$72,$20,$31,$2D,$70,$6C,$79,$72,$0C,$63,$6C ; $61B3
        db      $65,$61,$72,$20,$32,$2D,$70,$6C,$79,$72,$0B,$63,$6C,$65,$61,$72 ; $61C3
        db      $20,$73,$63,$6F,$72,$65,$B3,$61,$C0,$61,$CD,$61,$09,$63,$6F,$69 ; $61D3
        db      $6E,$63,$6E,$74,$72,$31,$09,$63,$6F,$69,$6E,$63,$6E,$74,$72,$32 ; $61E3
        db      $05,$6C,$65,$64,$20,$31,$05,$6C,$65,$64,$20,$32,$0C,$6C,$65,$66 ; $61F3
        db      $74,$20,$6C,$61,$6D,$70,$20,$61,$20,$0C,$6C,$65,$66,$74,$20,$6C ; $6203
        db      $61,$6D,$70,$20,$62,$20,$0C,$6C,$65,$66,$74,$20,$6C,$61,$6D,$70 ; $6213
        db      $20,$63,$20,$0D,$72,$69,$67,$68,$74,$20,$6C,$61,$6D,$70,$20,$61 ; $6223
        db      $20,$0D,$72,$69,$67,$68,$74,$20,$6C,$61,$6D,$70,$20,$63,$20,$0D ; $6233
        db      $72,$69,$67,$68,$74,$20,$6C,$61,$6D,$70,$20,$62,$20,$DF,$61,$E9 ; $6243
        db      $61,$F3,$61,$F9,$61,$FF,$61,$0C,$62,$19,$62,$26,$62,$42,$62,$34 ; $6253
        db      $62,$0B,$77,$72,$69,$74,$65,$20,$6D,$6F,$64,$65,$73,$09,$69,$6E ; $6263
        db      $74,$65,$72,$63,$65,$70,$74,$64,$62,$70,$62,$0F,$73,$75,$70,$65 ; $6273
        db      $72,$20,$67,$61,$6D,$65,$20,$63,$61,$72,$64,$08,$31,$36,$6B,$20 ; $6283
        db      $63,$61,$72,$64,$7E,$62,$8E,$62,$0A,$73,$63,$72,$65,$65,$6E,$20 ; $6293
        db      $72,$61,$6D,$0B,$73,$63,$72,$61,$74,$63,$68,$20,$70,$61,$64,$0D ; $62A3
        db      $77,$72,$69,$74,$65,$20,$70,$72,$6F,$74,$65,$63,$74,$9B,$62,$A6 ; $62B3
        db      $62,$B2,$62,$0E,$73,$74,$61,$72,$74,$20,$6E,$65,$77,$20,$74,$65 ; $62C3
        db      $73,$74,$16,$63,$6F,$6E,$74,$69,$6E,$75,$65,$20,$70,$72,$65,$76 ; $62D3
        db      $69,$6F,$75,$73,$20,$74,$65,$73,$74,$C6,$62,$D5,$62,$09,$66,$72 ; $62E3
        db      $65,$65,$20,$70,$6C,$61,$79,$0C,$73,$68,$69,$6C,$6C,$20,$73,$6F ; $62F3
        db      $75,$6E,$64,$73,$0A,$2D,$2D,$64,$65,$66,$61,$75,$6C,$74,$73,$0B ; $6303
        db      $64,$6F,$6F,$72,$31,$2D,$63,$6F,$2F,$63,$72,$0B,$64,$6F,$6F,$72 ; $6313
        db      $32,$2D,$63,$6F,$2F,$63,$72,$0B,$62,$6F,$6E,$75,$73,$20,$65,$76 ; $6323
        db      $65,$72,$79,$07,$23,$66,$72,$75,$69,$74,$73,$0D,$73,$74,$61,$72 ; $6333
        db      $74,$69,$6E,$67,$20,$64,$69,$66,$66,$10,$69,$6E,$63,$72,$65,$6D ; $6343
        db      $65,$6E,$74,$61,$6C,$20,$64,$69,$66,$66,$FA,$62,$F0,$62,$12,$63 ; $6353
        db      $1E,$63,$36,$63,$2A,$63,$3E,$63,$4C,$63,$07,$63,$CF,$60,$12,$61 ; $6363
        db      $44,$61,$64,$61,$AB,$61,$5D,$63,$50,$62,$D9,$61,$7A,$62,$C0,$62 ; $6373
        db      $97,$62,$EC,$62                                                 ; $6383
TERSE_COLON_6387:
        rst     $08                             ; $6387 colon entry
        dw      $47DC                ; $6388 execution token $47DC
        dw      $44FA                ; $638A execution token $44FA
        dw      $4686                ; $638C execution token $4686
        dw      $0405                ; $638E _Aquote
        db      $0C,$20,$20,$20,$20,$20,$73,$6F,$75,$6E,$64,$73,$20             ; $6390 counted string
        dw      $44EA                ; $639D execution token $44EA
        dw      $0112                ; $639F _LITbyte
        db      $0B                  ; $63A1 inline byte
        dw      $44F1                ; $63A2 execution token $44F1
        dw      $441E                ; $63A4 execution token $441E
        dw      $441E                ; $63A6 execution token $441E
        dw      $4686                ; $63A8 execution token $4686
        dw      $0405                ; $63AA _Aquote
        db      $0B,$32,$20,$63,$68,$61,$6E,$6E,$65,$6C,$73,$20                 ; $63AC counted string
        dw      $44EA                ; $63B8 execution token $44EA
        dw      $4502                ; $63BA execution token $4502
        dw      $441E                ; $63BC execution token $441E
        dw      $441E                ; $63BE execution token $441E
        dw      $4686                ; $63C0 execution token $4686
        dw      $0405                ; $63C2 _Aquote
        db      $13,$33,$20,$6E,$6F,$74,$65,$73,$20,$70,$65,$72,$20,$63,$68,$61,$6E,$6E,$65,$6C ; $63C4 counted string
        dw      $44EA                ; $63D8 execution token $44EA
        dw      $451A                ; $63DA execution token $451A
        dw      $441E                ; $63DC execution token $441E
        dw      $441E                ; $63DE execution token $441E
        dw      $4686                ; $63E0 execution token $4686
        dw      $0405                ; $63E2 _Aquote
        db      $10,$61,$74,$20,$65,$71,$75,$61,$6C,$20,$76,$6F,$6C,$75,$6D,$65,$73 ; $63E4 counted string
        dw      $44EA                ; $63F5 execution token $44EA
        dw      $0112                ; $63F7 _LITbyte
        db      $08                  ; $63F9 inline byte
        dw      $012A                ; $63FA _0
        dw      $026F                ; $63FC _DO
        dw      $02B8                ; $63FE _I
        dw      $011A                ; $6400 _BARRAY
        dw      $4000                ; $6402 inline word
        dw      $0153                ; $6404 _Bat
        dw      $0136                ; $6406 _DUP
        dw      $02B8                ; $6408 _I
        dw      $0112                ; $640A _LITbyte
        db      $10                  ; $640C inline byte
        dw      $015A                ; $640D _plus
        dw      $02D8                ; $640F _OUTP
        dw      $02B8                ; $6411 _I
        dw      $0112                ; $6413 _LITbyte
        db      $50                  ; $6415 inline byte
        dw      $015A                ; $6416 _plus
        dw      $02D8                ; $6418 _OUTP
        dw      $028A                ; $641A _LOOP
        dw      $0112                ; $641C _LITbyte
        db      $41                  ; $641E inline byte
        dw      $0112                ; $641F _LITbyte
        db      $50                  ; $6421 inline byte
        dw      $02D8                ; $6422 _OUTP
        dw      $0109                ; $6424 _LIT
        dw      $0500                ; $6426 inline word
        dw      $46E7                ; $6428 execution token $46E7
        dw      $492C                ; $642A execution token $492C
        dw      $4610                ; $642C SELFTEST_HARDWARE_RESET
        dw      $00FD                ; $642E _RETURN
NATIVE_6430:
        exx                             ; $6430
        pop bc                          ; $6431
        in d,(c)                        ; $6432
        ld b,$00                        ; $6434
        ld hl,$fee4                     ; $6436
        add hl,bc                       ; $6439
        ld e,(hl)                       ; $643A
        ld (hl),d                       ; $643B
        ld a,d                          ; $643C
        xor e                           ; $643D
        jp nz,L6448                     ; $643E
        ld hl,$0000                     ; $6441
        push hl                         ; $6444
        jp L644D                        ; $6445
L6448:
        ld e,$00                        ; $6448
        push de                         ; $644A
        ld d,a                          ; $644B
        push de                         ; $644C
L644D:
        exx                             ; $644D
        jp (iy)                         ; $644E
TERSE_COLON_6450:
        rst     $08                             ; $6450 colon entry
        dw      $0109                ; $6451 _LIT
        dw      $0080                ; $6453 inline word
        dw      $0179                ; $6455 _AND
        dw      $03EA                ; $6457 _0BRANCH
        dw      L6462                ; $6459 branch target
        dw      $0112                ; $645B _LITbyte
        db      $04                  ; $645D inline byte
        dw      $03E2                ; $645E _BRANCH
        dw      L6465                ; $6460 branch target
L6462:
        dw      $0112                ; $6462 _LITbyte
        db      $05                  ; $6464 inline byte
L6465:
        dw      $4D7F                ; $6465 execution token $4D7F
        dw      $00FD                ; $6467 _RETURN
TERSE_COLON_6469:
        rst     $08                             ; $6469 colon entry
        dw      NATIVE_6430          ; $646A NATIVE_6430
        dw      $024C                ; $646C _minusDUP
        dw      $03EA                ; $646E _0BRANCH
        dw      L64A3                ; $6470 branch target
        dw      $0112                ; $6472 _LITbyte
        db      $08                  ; $6474 inline byte
        dw      $012A                ; $6475 _0
        dw      $026F                ; $6477 _DO
        dw      $0146                ; $6479 _SWAP
        dw      $01AB                ; $647B _2slash
        dw      $0146                ; $647D _SWAP
        dw      $01AB                ; $647F _2slash
        dw      $0136                ; $6481 _DUP
        dw      $0109                ; $6483 _LIT
        dw      $0080                ; $6485 inline word
        dw      $0179                ; $6487 _AND
        dw      $03EA                ; $6489 _0BRANCH
        dw      L6499                ; $648B branch target
        dw      $02CA                ; $648D _OVER
        dw      TERSE_COLON_6450     ; $648F TERSE_COLON_6450
        dw      $0109                ; $6491 _LIT
        dw      $0200                ; $6493 inline word
        dw      $03E2                ; $6495 _BRANCH
        dw      L649D                ; $6497 branch target
L6499:
        dw      $0109                ; $6499 _LIT
        dw      $0700                ; $649B inline word
L649D:
        dw      $4408                ; $649D execution token $4408
        dw      $028A                ; $649F _LOOP
        dw      $02FB                ; $64A1 _2DROP
L64A3:
        dw      $00FD                ; $64A3 _RETURN
TERSE_COLON_64A5:
        rst     $08                             ; $64A5 colon entry
        dw      $0112                ; $64A6 _LITbyte
        db      $08                  ; $64A8 inline byte
        dw      $012A                ; $64A9 _0
        dw      $026F                ; $64AB _DO
        dw      $0109                ; $64AD _LIT
        dw      $FEA1                ; $64AF inline word
        dw      $014C                ; $64B1 _at
        dw      $0146                ; $64B3 _SWAP
        dw      $44EA                ; $64B5 execution token $44EA
        dw      $0109                ; $64B7 _LIT
        dw      $0700                ; $64B9 inline word
        dw      $015A                ; $64BB _plus
        dw      $4413                ; $64BD execution token $4413
        dw      $028A                ; $64BF _LOOP
        dw      $00FD                ; $64C1 _RETURN
TERSE_COLON_64C3:
        rst     $08                             ; $64C3 colon entry
        dw      $441E                ; $64C4 execution token $441E
        dw      $441E                ; $64C6 execution token $441E
        dw      $467D                ; $64C8 execution token $467D
        dw      $02E0                ; $64CA _INP
        dw      $02D1                ; $64CC _SWAB
        dw      $0112                ; $64CE _LITbyte
        db      $08                  ; $64D0 inline byte
        dw      $012A                ; $64D1 _0
        dw      $026F                ; $64D3 _DO
        dw      $01AB                ; $64D5 _2slash
        dw      $0136                ; $64D7 _DUP
        dw      TERSE_COLON_6450     ; $64D9 TERSE_COLON_6450
        dw      $0109                ; $64DB _LIT
        dw      $0200                ; $64DD inline word
        dw      $4408                ; $64DF execution token $4408
        dw      $028A                ; $64E1 _LOOP
        dw      $0143                ; $64E3 _DROP
        dw      $00FD                ; $64E5 _RETURN
TERSE_COLON_64E7:
        rst     $08                             ; $64E7 colon entry
        dw      $443B                ; $64E8 execution token $443B
        dw      $441E                ; $64EA execution token $441E
        dw      $441E                ; $64EC execution token $441E
        dw      $0112                ; $64EE _LITbyte
        db      $10                  ; $64F0 inline byte
        dw      TERSE_COLON_64C3     ; $64F1 TERSE_COLON_64C3
        dw      $0112                ; $64F3 _LITbyte
        db      $11                  ; $64F5 inline byte
        dw      TERSE_COLON_64C3     ; $64F6 TERSE_COLON_64C3
        dw      $0112                ; $64F8 _LITbyte
        db      $13                  ; $64FA inline byte
        dw      TERSE_COLON_64C3     ; $64FB TERSE_COLON_64C3
        dw      $00FD                ; $64FD _RETURN
TERSE_COLON_64FF:
        rst     $08                             ; $64FF colon entry
        dw      $443B                ; $6500 execution token $443B
        dw      $441E                ; $6502 execution token $441E
        dw      $441E                ; $6504 execution token $441E
        dw      $441E                ; $6506 execution token $441E
        dw      $441E                ; $6508 execution token $441E
        dw      $467D                ; $650A execution token $467D
        dw      $0112                ; $650C _LITbyte
        db      $10                  ; $650E inline byte
        dw      TERSE_COLON_6469     ; $650F TERSE_COLON_6469
        dw      $441E                ; $6511 execution token $441E
        dw      $441E                ; $6513 execution token $441E
        dw      $467D                ; $6515 execution token $467D
        dw      $0112                ; $6517 _LITbyte
        db      $11                  ; $6519 inline byte
        dw      TERSE_COLON_6469     ; $651A TERSE_COLON_6469
        dw      $441E                ; $651C execution token $441E
        dw      $441E                ; $651E execution token $441E
        dw      $467D                ; $6520 execution token $467D
        dw      $0112                ; $6522 _LITbyte
        db      $13                  ; $6524 inline byte
        dw      TERSE_COLON_6469     ; $6525 TERSE_COLON_6469
        dw      $00FD                ; $6527 _RETURN
TERSE_COLON_6529:
        rst     $08                             ; $6529 colon entry
        dw      $47DC                ; $652A execution token $47DC
        dw      $0112                ; $652C _LITbyte
        db      $09                  ; $652E inline byte
        dw      $012A                ; $652F _0
        dw      $011A                ; $6531 _BARRAY
        dw      $FEE4                ; $6533 inline word
        dw      $0112                ; $6535 _LITbyte
        db      $10                  ; $6537 inline byte
        dw      $41F6                ; $6538 _BFILL
        dw      $44FA                ; $653A execution token $44FA
        dw      $467D                ; $653C execution token $467D
        dw      $0405                ; $653E _Aquote
        db      $0C,$69,$6E,$70,$75,$74,$20,$70,$6F,$72,$74,$73,$20             ; $6540 counted string
        dw      $44EA                ; $654D execution token $44EA
        dw      $4434                ; $654F execution token $4434
        dw      $4522                ; $6551 execution token $4522
        dw      $441E                ; $6553 execution token $441E
        dw      $0405                ; $6555 _Aquote
        db      $04,$70,$6F,$72,$74                                             ; $6557 counted string
        dw      $44EA                ; $655C execution token $44EA
        dw      $467D                ; $655E execution token $467D
        dw      $4502                ; $6560 execution token $4502
        dw      $0405                ; $6562 _Aquote
        db      $0D,$20,$20,$20,$20,$20,$20,$20,$64,$65,$76,$69,$63,$65         ; $6564 counted string
        dw      $44EA                ; $6572 execution token $44EA
        dw      $4434                ; $6574 execution token $4434
        dw      $4522                ; $6576 execution token $4522
        dw      $0112                ; $6578 _LITbyte
        db      $10                  ; $657A inline byte
        dw      $4576                ; $657B execution token $4576
        dw      $4502                ; $657D execution token $4502
        dw      $467D                ; $657F execution token $467D
        dw      $0405                ; $6581 _Aquote
        db      $02,$20,$20                                                     ; $6583 counted string
        dw      $0405                ; $6586 _Aquote
        db      $02,$20,$20                                                     ; $6588 counted string
        dw      $0405                ; $658B _Aquote
        db      $02,$32,$70                                                     ; $658D counted string
        dw      $0405                ; $6590 _Aquote
        db      $02,$31,$70                                                     ; $6592 counted string
        dw      $0405                ; $6595 _Aquote
        db      $02,$73,$6C                                                     ; $6597 counted string
        dw      $0405                ; $659A _Aquote
        db      $02,$74,$73                                                     ; $659C counted string
        dw      $0405                ; $659F _Aquote
        db      $02,$63,$32                                                     ; $65A1 counted string
        dw      $0405                ; $65A4 _Aquote
        db      $02,$63,$31                                                     ; $65A6 counted string
        dw      TERSE_COLON_64A5     ; $65A9 TERSE_COLON_64A5
        dw      $4434                ; $65AB execution token $4434
        dw      $441E                ; $65AD execution token $441E
        dw      $4522                ; $65AF execution token $4522
        dw      $0112                ; $65B1 _LITbyte
        db      $11                  ; $65B3 inline byte
        dw      $4576                ; $65B4 execution token $4576
        dw      $4502                ; $65B6 execution token $4502
        dw      $467D                ; $65B8 execution token $467D
        dw      $0405                ; $65BA _Aquote
        db      $02,$20,$20                                                     ; $65BC counted string
        dw      $0405                ; $65BF _Aquote
        db      $02,$72,$63                                                     ; $65C1 counted string
        dw      $0405                ; $65C4 _Aquote
        db      $02,$72,$62                                                     ; $65C6 counted string
        dw      $0405                ; $65C9 _Aquote
        db      $02,$72,$61                                                     ; $65CB counted string
        dw      $0405                ; $65CE _Aquote
        db      $02,$20,$20                                                     ; $65D0 counted string
        dw      $0405                ; $65D3 _Aquote
        db      $02,$6C,$63                                                     ; $65D5 counted string
        dw      $0405                ; $65D8 _Aquote
        db      $02,$6C,$62                                                     ; $65DA counted string
        dw      $0405                ; $65DD _Aquote
        db      $02,$6C,$61                                                     ; $65DF counted string
        dw      TERSE_COLON_64A5     ; $65E2 TERSE_COLON_64A5
        dw      $4434                ; $65E4 execution token $4434
        dw      $441E                ; $65E6 execution token $441E
        dw      $4522                ; $65E8 execution token $4522
        dw      $0112                ; $65EA _LITbyte
        db      $13                  ; $65EC inline byte
        dw      $4576                ; $65ED execution token $4576
        dw      $4502                ; $65EF execution token $4502
        dw      $467D                ; $65F1 execution token $467D
        dw      $0405                ; $65F3 _Aquote
        db      $02,$73,$38                                                     ; $65F5 counted string
        dw      $0405                ; $65F8 _Aquote
        db      $02,$73,$37                                                     ; $65FA counted string
        dw      $0405                ; $65FD _Aquote
        db      $02,$73,$36                                                     ; $65FF counted string
        dw      $0405                ; $6602 _Aquote
        db      $02,$72,$6D                                                     ; $6604 counted string
        dw      $0405                ; $6607 _Aquote
        db      $02,$62,$70                                                     ; $6609 counted string
        dw      $0405                ; $660C _Aquote
        db      $02,$6C,$6B                                                     ; $660E counted string
        dw      $0405                ; $6611 _Aquote
        db      $02,$72,$73                                                     ; $6613 counted string
        dw      $0405                ; $6616 _Aquote
        db      $02,$63,$74                                                     ; $6618 counted string
        dw      TERSE_COLON_64A5     ; $661B TERSE_COLON_64A5
        dw      TERSE_COLON_64E7     ; $661D TERSE_COLON_64E7
L661F:
        dw      TERSE_COLON_64FF     ; $661F TERSE_COLON_64FF
        dw      $45FB                ; $6621 execution token $45FB
        dw      $03EA                ; $6623 _0BRANCH
        dw      L661F                ; $6625 branch target
        dw      $0112                ; $6627 _LITbyte
        db      $40                  ; $6629 inline byte
        dw      $012A                ; $662A _0
        dw      $026F                ; $662C _DO
        dw      TERSE_COLON_64FF     ; $662E TERSE_COLON_64FF
        dw      $028A                ; $6630 _LOOP
        dw      $45FB                ; $6632 execution token $45FB
        dw      $03EA                ; $6634 _0BRANCH
        dw      L661F                ; $6636 branch target
        dw      $4502                ; $6638 execution token $4502
        dw      $4911                ; $663A execution token $4911
        dw      $00FD                ; $663C _RETURN
TERSE_COLON_663E:
        rst     $08                             ; $663E colon entry
        dw      $0109                ; $663F _LIT
        dw      $0400                ; $6641 inline word
        dw      $46E7                ; $6643 execution token $46E7
        dw      $012A                ; $6645 _0
        dw      $0109                ; $6647 _LIT
        dw      $0100                ; $6649 inline word
        dw      $012A                ; $664B _0
        dw      $026F                ; $664D _DO
        dw      $43B7                ; $664F execution token $43B7
        dw      $432E                ; $6651 execution token $432E
        dw      $0112                ; $6653 _LITbyte
        db      $10                  ; $6655 inline byte
        dw      $0179                ; $6656 _AND
        dw      $03EA                ; $6658 _0BRANCH
        dw      L6660                ; $665A branch target
        dw      $0195                ; $665C _1plus
        dw      $03F7                ; $665E _LEAVE
L6660:
        dw      $028A                ; $6660 _LOOP
        dw      $00FD                ; $6662 _RETURN
NATIVE_6664:
        exx                             ; $6664
        pop bc                          ; $6665
        in a,(c)                        ; $6666
        exx                             ; $6668
        jp (iy)                         ; $6669
TERSE_COLON_666B:
        rst     $08                             ; $666B colon entry
        dw      $0109                ; $666C _LIT
        dw      $0600                ; $666E inline word
        dw      $46E7                ; $6670 execution token $46E7
L6672:
        dw      $0136                ; $6672 _DUP
        dw      NATIVE_6664          ; $6674 NATIVE_6664
        dw      TERSE_COLON_663E     ; $6676 TERSE_COLON_663E
        dw      $02CA                ; $6678 _OVER
        dw      $0109                ; $667A _LIT
        dw      $00FF                ; $667C inline word
        dw      $0179                ; $667E _AND
        dw      NATIVE_6664          ; $6680 NATIVE_6664
        dw      $024C                ; $6682 _minusDUP
        dw      $01E3                ; $6684 _NOT
        dw      $03EA                ; $6686 _0BRANCH
        dw      L668C                ; $6688 branch target
        dw      TERSE_COLON_663E     ; $668A TERSE_COLON_663E
L668C:
        dw      $03EA                ; $668C _0BRANCH
        dw      L6672                ; $668E branch target
        dw      $0143                ; $6690 _DROP
        dw      $0109                ; $6692 _LIT
        dw      $0600                ; $6694 inline word
        dw      $46E7                ; $6696 execution token $46E7
        dw      $012A                ; $6698 _0
        dw      $00FD                ; $669A _RETURN
TERSE_COLON_669C:
        rst     $08                             ; $669C colon entry
        dw      $0109                ; $669D _LIT
        dw      $0114                ; $669F inline word
        dw      TERSE_COLON_666B     ; $66A1 TERSE_COLON_666B
        dw      $00FD                ; $66A3 _RETURN
TERSE_COLON_66A5:
        rst     $08                             ; $66A5 colon entry
        dw      $0109                ; $66A6 _LIT
        dw      $0214                ; $66A8 inline word
        dw      TERSE_COLON_666B     ; $66AA TERSE_COLON_666B
        dw      $00FD                ; $66AC _RETURN
TERSE_COLON_66AE:
        rst     $08                             ; $66AE colon entry
        dw      $0109                ; $66AF _LIT
        dw      $0414                ; $66B1 inline word
        dw      TERSE_COLON_666B     ; $66B3 TERSE_COLON_666B
        dw      $00FD                ; $66B5 _RETURN
TERSE_COLON_66B7:
        rst     $08                             ; $66B7 colon entry
        dw      $0109                ; $66B8 _LIT
        dw      $0814                ; $66BA inline word
        dw      TERSE_COLON_666B     ; $66BC TERSE_COLON_666B
        dw      $00FD                ; $66BE _RETURN
TERSE_COLON_66C0:
        rst     $08                             ; $66C0 colon entry
        dw      $0109                ; $66C1 _LIT
        dw      $0115                ; $66C3 inline word
        dw      TERSE_COLON_666B     ; $66C5 TERSE_COLON_666B
        dw      $00FD                ; $66C7 _RETURN
TERSE_COLON_66C9:
        rst     $08                             ; $66C9 colon entry
        dw      $0109                ; $66CA _LIT
        dw      $0215                ; $66CC inline word
        dw      TERSE_COLON_666B     ; $66CE TERSE_COLON_666B
        dw      $00FD                ; $66D0 _RETURN
TERSE_COLON_66D2:
        rst     $08                             ; $66D2 colon entry
        dw      $0109                ; $66D3 _LIT
        dw      $0415                ; $66D5 inline word
        dw      TERSE_COLON_666B     ; $66D7 TERSE_COLON_666B
        dw      $00FD                ; $66D9 _RETURN
TERSE_COLON_66DB:
        rst     $08                             ; $66DB colon entry
        dw      $0109                ; $66DC _LIT
        dw      $1015                ; $66DE inline word
        dw      TERSE_COLON_666B     ; $66E0 TERSE_COLON_666B
        dw      $00FD                ; $66E2 _RETURN
TERSE_COLON_66E4:
        rst     $08                             ; $66E4 colon entry
        dw      $0109                ; $66E5 _LIT
        dw      $2015                ; $66E7 inline word
        dw      TERSE_COLON_666B     ; $66E9 TERSE_COLON_666B
        dw      $00FD                ; $66EB _RETURN
TERSE_COLON_66ED:
        rst     $08                             ; $66ED colon entry
        dw      $0109                ; $66EE _LIT
        dw      $4015                ; $66F0 inline word
        dw      TERSE_COLON_666B     ; $66F2 TERSE_COLON_666B
        dw      $00FD                ; $66F4 _RETURN
        db      $09,$20,$20,$20,$71,$75,$65,$73,$74,$73                         ; $66F6
TERSE_COLON_6700:
        rst     $08                             ; $6700 colon entry
        dw      $4A30                ; $6701 execution token $4A30
L6703:
        dw      $4A4E                ; $6703 execution token $4A4E
        dw      $468F                ; $6705 execution token $468F
        dw      $0112                ; $6707 _LITbyte
        db      $10                  ; $6709 inline byte
        dw      $0179                ; $670A _AND
        dw      $03EA                ; $670C _0BRANCH
        dw      L6703                ; $670E branch target
        dw      $00FD                ; $6710 _RETURN
TERSE_COLON_6712:
        rst     $08                             ; $6712 colon entry
        dw      $0112                ; $6713 _LITbyte
        db      $02                  ; $6715 inline byte
        dw      $0112                ; $6716 _LITbyte
        db      $06                  ; $6718 inline byte
        dw      $4A0D                ; $6719 execution token $4A0D
        dw      $450A                ; $671B execution token $450A
        dw      $468F                ; $671D execution token $468F
        dw      $0109                ; $671F _LIT
        dw      $66F6                ; $6721 inline word
        dw      $44EA                ; $6723 execution token $44EA
        dw      $468F                ; $6725 execution token $468F
        dw      $0109                ; $6727 _LIT
        dw      $E1F3                ; $6729 inline word
        dw      $0153                ; $672B _Bat
        dw      TERSE_COLON_6700     ; $672D TERSE_COLON_6700
        dw      $0109                ; $672F _LIT
        dw      $E1F3                ; $6731 inline word
        dw      $4070                ; $6733 ALIAS_SBbang
        dw      $012A                ; $6735 _0
        dw      $00FD                ; $6737 _RETURN
TERSE_COLON_6739:
        rst     $08                             ; $6739 colon entry
        dw      $4A1C                ; $673A execution token $4A1C
        dw      $468F                ; $673C execution token $468F
        dw      $0109                ; $673E _LIT
        dw      $E1F2                ; $6740 inline word
        dw      $0153                ; $6742 _Bat
        dw      TERSE_COLON_6700     ; $6744 TERSE_COLON_6700
        dw      $0109                ; $6746 _LIT
        dw      $E1F2                ; $6748 inline word
        dw      $4070                ; $674A ALIAS_SBbang
        dw      $012A                ; $674C _0
        dw      $00FD                ; $674E _RETURN
TERSE_COLON_6750:
        rst     $08                             ; $6750 colon entry
        dw      $4A1C                ; $6751 execution token $4A1C
        dw      $468F                ; $6753 execution token $468F
        dw      $0109                ; $6755 _LIT
        dw      $E1F1                ; $6757 inline word
        dw      $0153                ; $6759 _Bat
        dw      TERSE_COLON_6700     ; $675B TERSE_COLON_6700
        dw      $0109                ; $675D _LIT
        dw      $E1F1                ; $675F inline word
        dw      $4070                ; $6761 ALIAS_SBbang
        dw      $012A                ; $6763 _0
        dw      $00FD                ; $6765 _RETURN
TERSE_COLON_6767:
        rst     $08                             ; $6767 colon entry
        dw      $4A1C                ; $6768 execution token $4A1C
        dw      $468F                ; $676A execution token $468F
        dw      $0109                ; $676C _LIT
        dw      $E1EE                ; $676E inline word
        dw      $0153                ; $6770 _Bat
        dw      TERSE_COLON_6700     ; $6772 TERSE_COLON_6700
        dw      $0109                ; $6774 _LIT
        dw      $E1EE                ; $6776 inline word
        dw      $4070                ; $6778 ALIAS_SBbang
        dw      $012A                ; $677A _0
        dw      $00FD                ; $677C _RETURN
TERSE_COLON_677E:
        rst     $08                             ; $677E colon entry
        dw      $4A1C                ; $677F execution token $4A1C
        dw      $468F                ; $6781 execution token $468F
        dw      $0109                ; $6783 _LIT
        dw      $E1F9                ; $6785 inline word
        dw      $0153                ; $6787 _Bat
        dw      $0109                ; $6789 _LIT
        dw      $E1FB                ; $678B inline word
        dw      $0153                ; $678D _Bat
        dw      $4B19                ; $678F execution token $4B19
        dw      $4B79                ; $6791 execution token $4B79
        dw      $0109                ; $6793 _LIT
        dw      $E1F6                ; $6795 inline word
        dw      $408B                ; $6797 ALIAS_bang
        dw      $0109                ; $6799 _LIT
        dw      $E1FB                ; $679B inline word
        dw      $4070                ; $679D ALIAS_SBbang
        dw      $0109                ; $679F _LIT
        dw      $E1F9                ; $67A1 inline word
        dw      $4070                ; $67A3 ALIAS_SBbang
        dw      $012A                ; $67A5 _0
        dw      $00FD                ; $67A7 _RETURN
TERSE_COLON_67A9:
        rst     $08                             ; $67A9 colon entry
        dw      $4A1C                ; $67AA execution token $4A1C
        dw      $468F                ; $67AC execution token $468F
        dw      $0109                ; $67AE _LIT
        dw      $E1F8                ; $67B0 inline word
        dw      $0153                ; $67B2 _Bat
        dw      $0109                ; $67B4 _LIT
        dw      $E1FA                ; $67B6 inline word
        dw      $0153                ; $67B8 _Bat
        dw      $4B19                ; $67BA execution token $4B19
        dw      $4B79                ; $67BC execution token $4B79
        dw      $0109                ; $67BE _LIT
        dw      $E1F4                ; $67C0 inline word
        dw      $408B                ; $67C2 ALIAS_bang
        dw      $0109                ; $67C4 _LIT
        dw      $E1FA                ; $67C6 inline word
        dw      $4070                ; $67C8 ALIAS_SBbang
        dw      $0109                ; $67CA _LIT
        dw      $E1F8                ; $67CC inline word
        dw      $4070                ; $67CE ALIAS_SBbang
        dw      $012A                ; $67D0 _0
        dw      $00FD                ; $67D2 _RETURN
TERSE_COLON_67D4:
        rst     $08                             ; $67D4 colon entry
        dw      $450A                ; $67D5 execution token $450A
        dw      $441E                ; $67D7 execution token $441E
        dw      $468F                ; $67D9 execution token $468F
        dw      $0109                ; $67DB _LIT
        dw      $E1F9                ; $67DD inline word
        dw      $0153                ; $67DF _Bat
        dw      $4A45                ; $67E1 execution token $4A45
        dw      $0109                ; $67E3 _LIT
        dw      $401C                ; $67E5 inline word
        dw      $44EA                ; $67E7 execution token $44EA
        dw      $0109                ; $67E9 _LIT
        dw      $E1FB                ; $67EB inline word
        dw      $0153                ; $67ED _Bat
        dw      $4A45                ; $67EF execution token $4A45
        dw      $441E                ; $67F1 execution token $441E
        dw      $468F                ; $67F3 execution token $468F
        dw      $0109                ; $67F5 _LIT
        dw      $E1F8                ; $67F7 inline word
        dw      $0153                ; $67F9 _Bat
        dw      $4A45                ; $67FB execution token $4A45
        dw      $0109                ; $67FD _LIT
        dw      $401C                ; $67FF inline word
        dw      $44EA                ; $6801 execution token $44EA
        dw      $0109                ; $6803 _LIT
        dw      $E1FA                ; $6805 inline word
        dw      $0153                ; $6807 _Bat
        dw      $4A45                ; $6809 execution token $4A45
        dw      $441E                ; $680B execution token $441E
        dw      $468F                ; $680D execution token $468F
        dw      $0109                ; $680F _LIT
        dw      $E1EE                ; $6811 inline word
        dw      $0153                ; $6813 _Bat
        dw      $4A45                ; $6815 execution token $4A45
        dw      $441E                ; $6817 execution token $441E
        dw      $468F                ; $6819 execution token $468F
        dw      $0109                ; $681B _LIT
        dw      $66F6                ; $681D inline word
        dw      $44EA                ; $681F execution token $44EA
        dw      $468F                ; $6821 execution token $468F
        dw      $0109                ; $6823 _LIT
        dw      $E1F3                ; $6825 inline word
        dw      $0153                ; $6827 _Bat
        dw      $4A45                ; $6829 execution token $4A45
        dw      $441E                ; $682B execution token $441E
        dw      $468F                ; $682D execution token $468F
        dw      $0109                ; $682F _LIT
        dw      $E1F2                ; $6831 inline word
        dw      $0153                ; $6833 _Bat
        dw      $4A45                ; $6835 execution token $4A45
        dw      $441E                ; $6837 execution token $441E
        dw      $468F                ; $6839 execution token $468F
        dw      $0109                ; $683B _LIT
        dw      $E1F1                ; $683D inline word
        dw      $0153                ; $683F _Bat
        dw      $4A45                ; $6841 execution token $4A45
        dw      $452A                ; $6843 execution token $452A
        dw      $00FD                ; $6845 _RETURN
TERSE_COLON_6847:
        rst     $08                             ; $6847 colon entry
        dw      $446A                ; $6848 execution token $446A
        dw      $4686                ; $684A execution token $4686
        dw      $46A8                ; $684C execution token $46A8
        dw      $0109                ; $684E _LIT
        dw      $FEA9                ; $6850 inline word
        dw      $0153                ; $6852 _Bat
        dw      $01E3                ; $6854 _NOT
        dw      $03EA                ; $6856 _0BRANCH
        dw      L685C                ; $6858 branch target
        dw      $441E                ; $685A execution token $441E
L685C:
        dw      $0136                ; $685C _DUP
        dw      $0125                ; $685E _ARRAY
        dw      $636F                ; $6860 inline word
        dw      $014C                ; $6862 _at
        dw      $0146                ; $6864 _SWAP
        dw      $011A                ; $6866 _BARRAY
        dw      $4034                ; $6868 inline word
        dw      $0153                ; $686A _Bat
        dw      $01A6                ; $686C _2splat
        dw      $012A                ; $686E _0
        dw      $026F                ; $6870 _DO
        dw      $4686                ; $6872 execution token $4686
        dw      $441E                ; $6874 execution token $441E
        dw      $0109                ; $6876 _LIT
        dw      $FEA9                ; $6878 inline word
        dw      $0153                ; $687A _Bat
        dw      $03EA                ; $687C _0BRANCH
        dw      L6882                ; $687E branch target
        dw      $441E                ; $6880 execution token $441E
L6882:
        dw      $0136                ; $6882 _DUP
        dw      $02B8                ; $6884 _I
        dw      $015A                ; $6886 _plus
        dw      $014C                ; $6888 _at
        dw      $44EA                ; $688A execution token $44EA
        dw      $0112                ; $688C _LITbyte
        db      $02                  ; $688E inline byte
        dw      $0397                ; $688F _plusLOOP
        dw      $0143                ; $6891 _DROP
        dw      $468F                ; $6893 execution token $468F
        dw      $441E                ; $6895 execution token $441E
        dw      $0109                ; $6897 _LIT
        dw      $FEA9                ; $6899 inline word
        dw      $0153                ; $689B _Bat
        dw      $03EA                ; $689D _0BRANCH
        dw      L68A3                ; $689F branch target
        dw      $441E                ; $68A1 execution token $441E
L68A3:
        dw      $0109                ; $68A3 _LIT
        dw      $FEA8                ; $68A5 inline word
        dw      $0153                ; $68A7 _Bat
        dw      $44FA                ; $68A9 execution token $44FA
        dw      $0112                ; $68AB _LITbyte
        db      $10                  ; $68AD inline byte
        dw      $02E0                ; $68AE _INP
        dw      $0112                ; $68B0 _LITbyte
        db      $04                  ; $68B2 inline byte
        dw      $0179                ; $68B3 _AND
        dw      $03EA                ; $68B5 _0BRANCH
        dw      L68C1                ; $68B7 branch target
        dw      $0109                ; $68B9 _LIT
        dw      $4028                ; $68BB inline word
        dw      $03E2                ; $68BD _BRANCH
        dw      L68DE                ; $68BF branch target
L68C1:
        dw      $0109                ; $68C1 _LIT
        dw      $FEAA                ; $68C3 inline word
        dw      $0153                ; $68C5 _Bat
        dw      $01DE                ; $68C7 _zeroequal
        dw      $03EA                ; $68C9 _0BRANCH
        dw      L68D5                ; $68CB branch target
        dw      $0109                ; $68CD _LIT
        dw      $402D                ; $68CF inline word
        dw      $03E2                ; $68D1 _BRANCH
        dw      L68DE                ; $68D3 branch target
L68D5:
        dw      $0405                ; $68D5 _Aquote
        db      $06,$72,$65,$74,$75,$72,$6E                                     ; $68D7 counted string
L68DE:
        dw      $44EA                ; $68DE execution token $44EA
        dw      $44F1                ; $68E0 execution token $44F1
        dw      $00FD                ; $68E2 _RETURN
TERSE_COLON_68E4:
        rst     $08                             ; $68E4 colon entry
        dw      $0109                ; $68E5 _LIT
        dw      $FEAC                ; $68E7 inline word
        dw      $0532                ; $68E9 _SBbang
        dw      $0109                ; $68EB _LIT
        dw      $0340                ; $68ED inline word
        dw      $0109                ; $68EF _LIT
        dw      $FEA9                ; $68F1 inline word
        dw      $0153                ; $68F3 _Bat
        dw      $03EA                ; $68F5 _0BRANCH
        dw      L68FB                ; $68F7 branch target
        dw      $01A6                ; $68F9 _2splat
L68FB:
        dw      $00FD                ; $68FB _RETURN
TERSE_COLON_68FD:
        rst     $08                             ; $68FD colon entry
        dw      $011A                ; $68FE _BARRAY
        dw      $4034                ; $6900 inline word
        dw      $0153                ; $6902 _Bat
        dw      $0195                ; $6904 _1plus
        dw      $0109                ; $6906 _LIT
        dw      $FEAB                ; $6908 inline word
        dw      $0532                ; $690A _SBbang
L690C:
        dw      $0136                ; $690C _DUP
        dw      $0109                ; $690E _LIT
        dw      $FEAC                ; $6910 inline word
        dw      $0532                ; $6912 _SBbang
        dw      $0109                ; $6914 _LIT
        dw      $FEA9                ; $6916 inline word
        dw      $0153                ; $6918 _Bat
        dw      $03EA                ; $691A _0BRANCH
        dw      L6920                ; $691C branch target
        dw      $01A6                ; $691E _2splat
L6920:
        dw      $443B                ; $6920 execution token $443B
        dw      $0112                ; $6922 _LITbyte
        db      $02                  ; $6924 inline byte
        dw      $015A                ; $6925 _plus
        dw      $0109                ; $6927 _LIT
        dw      $0340                ; $6929 inline word
        dw      $02FF                ; $692B _star
        dw      $0109                ; $692D _LIT
        dw      $FE9F                ; $692F inline word
        dw      $057D                ; $6931 _plusbang
L6933:
        dw      $442B                ; $6933 execution token $442B
        dw      $4782                ; $6935 execution token $4782
        dw      $0109                ; $6937 _LIT
        dw      $0500                ; $6939 inline word
        dw      $46E7                ; $693B execution token $46E7
L693D:
        dw      $432E                ; $693D execution token $432E
        dw      $43B7                ; $693F execution token $43B7
        dw      $0112                ; $6941 _LITbyte
        db      $13                  ; $6943 inline byte
        dw      $0179                ; $6944 _AND
        dw      $024C                ; $6946 _minusDUP
        dw      $03EA                ; $6948 _0BRANCH
        dw      L693D                ; $694A branch target
        dw      $0136                ; $694C _DUP
        dw      $0112                ; $694E _LITbyte
        db      $10                  ; $6950 inline byte
        dw      $0179                ; $6951 _AND
        dw      $03EA                ; $6953 _0BRANCH
        dw      L6961                ; $6955 branch target
        dw      $0143                ; $6957 _DROP
        dw      $0130                ; $6959 _1
        dw      $0130                ; $695B _1
        dw      $03E2                ; $695D _BRANCH
        dw      L69CE                ; $695F branch target
L6961:
        dw      $442B                ; $6961 execution token $442B
        dw      $467D                ; $6963 execution token $467D
        dw      $4808                ; $6965 execution token $4808
        dw      $0109                ; $6967 _LIT
        dw      $FEAC                ; $6969 inline word
        dw      $0153                ; $696B _Bat
        dw      $0146                ; $696D _SWAP
        dw      $0112                ; $696F _LITbyte
        db      $01                  ; $6971 inline byte
        dw      $0179                ; $6972 _AND
        dw      $03EA                ; $6974 _0BRANCH
        dw      L69AC                ; $6976 branch target
        dw      $0190                ; $6978 _1minus
        dw      $0136                ; $697A _DUP
        dw      $0220                ; $697C _0less
        dw      $03EA                ; $697E _0BRANCH
        dw      L6994                ; $6980 branch target
        dw      $0143                ; $6982 _DROP
        dw      $0109                ; $6984 _LIT
        dw      $FEAB                ; $6986 inline word
        dw      $0153                ; $6988 _Bat
        dw      $0190                ; $698A _1minus
        dw      $012A                ; $698C _0
        dw      $0130                ; $698E _1
        dw      $03E2                ; $6990 _BRANCH
        dw      L69A8                ; $6992 branch target
L6994:
        dw      TERSE_COLON_68E4     ; $6994 TERSE_COLON_68E4
        dw      $0109                ; $6996 _LIT
        dw      $FE9F                ; $6998 inline word
        dw      $014C                ; $699A _at
        dw      $0146                ; $699C _SWAP
        dw      $0160                ; $699E _minussign
        dw      $0109                ; $69A0 _LIT
        dw      $FE9F                ; $69A2 inline word
        dw      $0561                ; $69A4 _bang
        dw      $012A                ; $69A6 _0
L69A8:
        dw      $03E2                ; $69A8 _BRANCH
        dw      L69CE                ; $69AA branch target
L69AC:
        dw      $0195                ; $69AC _1plus
        dw      $0109                ; $69AE _LIT
        dw      $FEAB                ; $69B0 inline word
        dw      $0153                ; $69B2 _Bat
        dw      $0383                ; $69B4 _MOD
        dw      $0136                ; $69B6 _DUP
        dw      $03EA                ; $69B8 _0BRANCH
        dw      L69CA                ; $69BA branch target
        dw      TERSE_COLON_68E4     ; $69BC TERSE_COLON_68E4
        dw      $0109                ; $69BE _LIT
        dw      $FE9F                ; $69C0 inline word
        dw      $057D                ; $69C2 _plusbang
        dw      $012A                ; $69C4 _0
        dw      $03E2                ; $69C6 _BRANCH
        dw      L69CE                ; $69C8 branch target
L69CA:
        dw      $012A                ; $69CA _0
        dw      $0130                ; $69CC _1
L69CE:
        dw      $03EA                ; $69CE _0BRANCH
        dw      L6933                ; $69D0 branch target
        dw      $03EA                ; $69D2 _0BRANCH
        dw      L690C                ; $69D4 branch target
        dw      $00FD                ; $69D6 _RETURN
TERSE_COLON_69D8:
        rst     $08                             ; $69D8 colon entry
        dw      $468F                ; $69D9 execution token $468F
        dw      $4808                ; $69DB execution token $4808
        dw      $468F                ; $69DD execution token $468F
        dw      $03EA                ; $69DF _0BRANCH
        dw      L69ED                ; $69E1 branch target
        dw      $4522                ; $69E3 execution token $4522
        dw      $0109                ; $69E5 _LIT
        dw      $4020                ; $69E7 inline word
        dw      $03E2                ; $69E9 _BRANCH
        dw      L69F3                ; $69EB branch target
L69ED:
        dw      $4502                ; $69ED execution token $4502
        dw      $0109                ; $69EF _LIT
        dw      $4024                ; $69F1 inline word
L69F3:
        dw      $44EA                ; $69F3 execution token $44EA
        dw      $450A                ; $69F5 execution token $450A
        dw      $00FD                ; $69F7 _RETURN
TERSE_COLON_69F9:
        rst     $08                             ; $69F9 colon entry
        dw      $0465                ; $69FA _0lessFRAME
L69FC:
        dw      $0109                ; $69FC _LIT
        dw      $0500                ; $69FE inline word
        dw      $46E7                ; $6A00 execution token $46E7
        dw      $432E                ; $6A02 execution token $432E
        dw      $0136                ; $6A04 _DUP
        dw      $0112                ; $6A06 _LITbyte
        db      $03                  ; $6A08 inline byte
        dw      $0179                ; $6A09 _AND
        dw      $03EA                ; $6A0B _0BRANCH
        dw      L6A1E                ; $6A0D branch target
        dw      $0136                ; $6A0F _DUP
        dw      $0112                ; $6A11 _LITbyte
        db      $01                  ; $6A13 inline byte
        dw      $0179                ; $6A14 _AND
        dw      $0136                ; $6A16 _DUP
        dw      TERSE_COLON_69D8     ; $6A18 TERSE_COLON_69D8
        dw      $04D0                ; $6A1A _1PARAMat
        dw      $4070                ; $6A1C ALIAS_SBbang
L6A1E:
        dw      $0112                ; $6A1E _LITbyte
        db      $10                  ; $6A20 inline byte
        dw      $0179                ; $6A21 _AND
        dw      $03EA                ; $6A23 _0BRANCH
        dw      L69FC                ; $6A25 branch target
        dw      $048B                ; $6A27 _1FRAMEgt
        dw      $00FD                ; $6A29 _RETURN
TERSE_COLON_6A2B:
        rst     $08                             ; $6A2B colon entry
        dw      $0136                ; $6A2C _DUP
        dw      $0153                ; $6A2E _Bat
        dw      TERSE_COLON_69D8     ; $6A30 TERSE_COLON_69D8
        dw      TERSE_COLON_69F9     ; $6A32 TERSE_COLON_69F9
        dw      $012A                ; $6A34 _0
        dw      $00FD                ; $6A36 _RETURN
TERSE_COLON_6A38:
        rst     $08                             ; $6A38 colon entry
        dw      $4770                ; $6A39 execution token $4770
        dw      $47D3                ; $6A3B execution token $47D3
        dw      $0112                ; $6A3D _LITbyte
        db      $06                  ; $6A3F inline byte
        dw      TERSE_COLON_6847     ; $6A40 TERSE_COLON_6847
        dw      $443B                ; $6A42 execution token $443B
        dw      $4686                ; $6A44 execution token $4686
        dw      $44FA                ; $6A46 execution token $44FA
        dw      $0405                ; $6A48 _Aquote
        db      $08,$64,$65,$76,$69,$63,$65,$73,$20                             ; $6A4A counted string
        dw      $44EA                ; $6A53 execution token $44EA
        dw      $012A                ; $6A55 _0
L6A57:
        dw      $0112                ; $6A57 _LITbyte
        db      $06                  ; $6A59 inline byte
        dw      TERSE_COLON_68FD     ; $6A5A TERSE_COLON_68FD
        dw      $0109                ; $6A5C _LIT
        dw      $FEAC                ; $6A5E inline word
        dw      $0153                ; $6A60 _Bat
        dw      $0136                ; $6A62 _DUP
        dw      $442B                ; $6A64 execution token $442B
        dw      $467D                ; $6A66 execution token $467D
        dw      $4808                ; $6A68 execution token $4808
        dw      $0436                ; $6A6A _CASES
        dw      $6A84                ; $6A6C CASES table end
        dw      TERSE_COLON_669C     ; $6A6E TERSE_COLON_669C
        dw      TERSE_COLON_66A5     ; $6A70 TERSE_COLON_66A5
        dw      TERSE_COLON_66AE     ; $6A72 TERSE_COLON_66AE
        dw      TERSE_COLON_66B7     ; $6A74 TERSE_COLON_66B7
        dw      TERSE_COLON_66C0     ; $6A76 TERSE_COLON_66C0
        dw      TERSE_COLON_66C9     ; $6A78 TERSE_COLON_66C9
        dw      TERSE_COLON_66D2     ; $6A7A TERSE_COLON_66D2
        dw      TERSE_COLON_66DB     ; $6A7C TERSE_COLON_66DB
        dw      TERSE_COLON_66E4     ; $6A7E TERSE_COLON_66E4
        dw      TERSE_COLON_66ED     ; $6A80 TERSE_COLON_66ED
        dw      $0130                ; $6A82 _1
        dw      $442B                ; $6A84 execution token $442B
        dw      $4782                ; $6A86 execution token $4782
        dw      $03EA                ; $6A88 _0BRANCH
        dw      L6A57                ; $6A8A branch target
        dw      $0143                ; $6A8C _DROP
        dw      $4779                ; $6A8E execution token $4779
        dw      $4911                ; $6A90 execution token $4911
        dw      $00FD                ; $6A92 _RETURN
TERSE_COLON_6A94:
        rst     $08                             ; $6A94 colon entry
        dw      $0109                ; $6A95 _LIT
        dw      $E1F0                ; $6A97 inline word
        dw      TERSE_COLON_6A2B     ; $6A99 TERSE_COLON_6A2B
        dw      $00FD                ; $6A9B _RETURN
TERSE_COLON_6A9D:
        rst     $08                             ; $6A9D colon entry
        dw      $0109                ; $6A9E _LIT
        dw      $E1EF                ; $6AA0 inline word
        dw      TERSE_COLON_6A2B     ; $6AA2 TERSE_COLON_6A2B
        dw      $00FD                ; $6AA4 _RETURN
TERSE_COLON_6AA6:
        rst     $08                             ; $6AA6 colon entry
        dw      $443B                ; $6AA7 execution token $443B
        dw      $441E                ; $6AA9 execution token $441E
        dw      $441E                ; $6AAB execution token $441E
        dw      $0109                ; $6AAD _LIT
        dw      $E1EF                ; $6AAF inline word
        dw      $0153                ; $6AB1 _Bat
        dw      TERSE_COLON_69D8     ; $6AB3 TERSE_COLON_69D8
        dw      $441E                ; $6AB5 execution token $441E
        dw      $0109                ; $6AB7 _LIT
        dw      $E1F0                ; $6AB9 inline word
        dw      $0153                ; $6ABB _Bat
        dw      TERSE_COLON_69D8     ; $6ABD TERSE_COLON_69D8
        dw      TERSE_COLON_67D4     ; $6ABF TERSE_COLON_67D4
        dw      $00FD                ; $6AC1 _RETURN
TERSE_COLON_6AC3:
        rst     $08                             ; $6AC3 colon entry
        dw      $068B                ; $6AC4 READ_AND_VALIDATE_CONFIGURATION
        dw      TERSE_COLON_6AA6     ; $6AC6 TERSE_COLON_6AA6
        dw      $441E                ; $6AC8 execution token $441E
        dw      $4698                ; $6ACA execution token $4698
        dw      $0112                ; $6ACC _LITbyte
        db      $0A                  ; $6ACE inline byte
        dw      $44F1                ; $6ACF execution token $44F1
        dw      $0405                ; $6AD1 _Aquote
        db      $03,$73,$65,$74                                                 ; $6AD3 counted string
        dw      $44EA                ; $6AD7 execution token $44EA
        dw      $0109                ; $6AD9 _LIT
        dw      $1000                ; $6ADB inline word
        dw      $46E7                ; $6ADD execution token $46E7
        dw      $4698                ; $6ADF execution token $4698
        dw      $4808                ; $6AE1 execution token $4808
        dw      $012A                ; $6AE3 _0
        dw      $452A                ; $6AE5 execution token $452A
        dw      $00FD                ; $6AE7 _RETURN
TERSE_COLON_6AE9:
        rst     $08                             ; $6AE9 colon entry
        dw      $47D3                ; $6AEA execution token $47D3
        dw      $012A                ; $6AEC _0
L6AEE:
        dw      $0112                ; $6AEE _LITbyte
        db      $03                  ; $6AF0 inline byte
        dw      TERSE_COLON_6847     ; $6AF1 TERSE_COLON_6847
        dw      $0112                ; $6AF3 _LITbyte
        db      $03                  ; $6AF5 inline byte
        dw      TERSE_COLON_68FD     ; $6AF6 TERSE_COLON_68FD
        dw      $0109                ; $6AF8 _LIT
        dw      $FEAC                ; $6AFA inline word
        dw      $0153                ; $6AFC _Bat
        dw      $0136                ; $6AFE _DUP
        dw      $0436                ; $6B00 _CASES
        dw      $6B0C                ; $6B02 CASES table end
        dw      TERSE_COLON_6387     ; $6B04 TERSE_COLON_6387
        dw      TERSE_COLON_6529     ; $6B06 TERSE_COLON_6529
        dw      TERSE_COLON_6A38     ; $6B08 TERSE_COLON_6A38
        dw      $0130                ; $6B0A _1
        dw      $03EA                ; $6B0C _0BRANCH
        dw      L6AEE                ; $6B0E branch target
        dw      $0143                ; $6B10 _DROP
        dw      $4911                ; $6B12 execution token $4911
        dw      $00FD                ; $6B14 _RETURN
TERSE_COLON_6B16:
        rst     $08                             ; $6B16 colon entry
        dw      $47D3                ; $6B17 execution token $47D3
        dw      $4779                ; $6B19 execution token $4779
        dw      $012A                ; $6B1B _0
L6B1D:
        dw      $0112                ; $6B1D _LITbyte
        db      $08                  ; $6B1F inline byte
        dw      TERSE_COLON_6847     ; $6B20 TERSE_COLON_6847
        dw      $0112                ; $6B22 _LITbyte
        db      $08                  ; $6B24 inline byte
        dw      TERSE_COLON_68FD     ; $6B25 TERSE_COLON_68FD
        dw      $0109                ; $6B27 _LIT
        dw      $FEAC                ; $6B29 inline word
        dw      $0153                ; $6B2B _Bat
        dw      $0136                ; $6B2D _DUP
        dw      $0436                ; $6B2F _CASES
        dw      $6B39                ; $6B31 CASES table end
        dw      $5CDC                ; $6B33 execution token $5CDC
        dw      $58ED                ; $6B35 execution token $58ED
        dw      $0130                ; $6B37 _1
        dw      $03EA                ; $6B39 _0BRANCH
        dw      L6B1D                ; $6B3B branch target
        dw      $0143                ; $6B3D _DROP
        dw      $4779                ; $6B3F execution token $4779
        dw      $4911                ; $6B41 execution token $4911
        dw      $00FD                ; $6B43 _RETURN
TERSE_COLON_6B45:
        rst     $08                             ; $6B45 colon entry
        dw      $47D3                ; $6B46 execution token $47D3
        dw      $012A                ; $6B48 _0
L6B4A:
        dw      $51FD                ; $6B4A execution token $51FD
        dw      $03EA                ; $6B4C _0BRANCH
        dw      L6B58                ; $6B4E branch target
        dw      $5650                ; $6B50 execution token $5650
        dw      $0195                ; $6B52 _1plus
        dw      $03E2                ; $6B54 _BRANCH
        dw      L6B74                ; $6B56 branch target
L6B58:
        dw      $0112                ; $6B58 _LITbyte
        db      $0A                  ; $6B5A inline byte
        dw      TERSE_COLON_6847     ; $6B5B TERSE_COLON_6847
        dw      $0112                ; $6B5D _LITbyte
        db      $0A                  ; $6B5F inline byte
        dw      TERSE_COLON_68FD     ; $6B60 TERSE_COLON_68FD
        dw      $0109                ; $6B62 _LIT
        dw      $FEAC                ; $6B64 inline word
        dw      $0153                ; $6B66 _Bat
        dw      $0136                ; $6B68 _DUP
        dw      $0436                ; $6B6A _CASES
        dw      L6B74                ; $6B6C CASES table end
        dw      $5469                ; $6B6E execution token $5469
        dw      $5576                ; $6B70 execution token $5576
        dw      $0130                ; $6B72 _1
L6B74:
        dw      $03EA                ; $6B74 _0BRANCH
        dw      L6B4A                ; $6B76 branch target
        dw      $0143                ; $6B78 _DROP
        dw      $4911                ; $6B7A execution token $4911
        dw      $00FD                ; $6B7C _RETURN
TERSE_COLON_6B7E:
        rst     $08                             ; $6B7E colon entry
        dw      $0109                ; $6B7F _LIT
        dw      $E1D9                ; $6B81 inline word
        dw      $4073                ; $6B83 ALIAS_BONE
L6B85:
        dw      $0109                ; $6B85 _LIT
        dw      $FEAA                ; $6B87 inline word
        dw      $053A                ; $6B89 _BONE
        dw      $4828                ; $6B8B execution token $4828
        dw      $0130                ; $6B8D _1
        dw      $03EA                ; $6B8F _0BRANCH
        dw      L6C15                ; $6B91 branch target
        dw      $0109                ; $6B93 _LIT
        dw      $4000                ; $6B95 inline word
        dw      $46E7                ; $6B97 execution token $46E7
        dw      $4770                ; $6B99 execution token $4770
        dw      $0112                ; $6B9B _LITbyte
        db      $08                  ; $6B9D inline byte
        dw      $47BA                ; $6B9E execution token $47BA
        dw      $5CDC                ; $6BA0 execution token $5CDC
        dw      $58ED                ; $6BA2 execution token $58ED
        dw      $4779                ; $6BA4 execution token $4779
        dw      $0112                ; $6BA6 _LITbyte
        db      $09                  ; $6BA8 inline byte
        dw      $47BA                ; $6BA9 execution token $47BA
        dw      $4E47                ; $6BAB execution token $4E47
        dw      $4FEE                ; $6BAD execution token $4FEE
        dw      $50EE                ; $6BAF execution token $50EE
        dw      $51FD                ; $6BB1 execution token $51FD
        dw      $03EA                ; $6BB3 _0BRANCH
        dw      L6BBD                ; $6BB5 branch target
        dw      $5650                ; $6BB7 execution token $5650
        dw      $03E2                ; $6BB9 _BRANCH
        dw      L6BC1                ; $6BBB branch target
L6BBD:
        dw      $5469                ; $6BBD execution token $5469
        dw      $5576                ; $6BBF execution token $5576
L6BC1:
        dw      $4BC1                ; $6BC1 execution token $4BC1
        dw      $4C15                ; $6BC3 execution token $4C15
        dw      $4CA2                ; $6BC5 execution token $4CA2
        dw      $4CBC                ; $6BC7 execution token $4CBC
        dw      $0112                ; $6BC9 _LITbyte
        db      $03                  ; $6BCB inline byte
        dw      $47BA                ; $6BCC execution token $47BA
        dw      TERSE_COLON_6387     ; $6BCE TERSE_COLON_6387
        dw      TERSE_COLON_6529     ; $6BD0 TERSE_COLON_6529
        dw      $4770                ; $6BD2 execution token $4770
        dw      $0112                ; $6BD4 _LITbyte
        db      $06                  ; $6BD6 inline byte
        dw      TERSE_COLON_6847     ; $6BD7 TERSE_COLON_6847
        dw      $0109                ; $6BD9 _LIT
        dw      $FEAC                ; $6BDB inline word
        dw      $053F                ; $6BDD _BZERO
        dw      $4792                ; $6BDF execution token $4792
        dw      $4782                ; $6BE1 execution token $4782
        dw      TERSE_COLON_669C     ; $6BE3 TERSE_COLON_669C
        dw      $4813                ; $6BE5 execution token $4813
        dw      TERSE_COLON_66A5     ; $6BE7 TERSE_COLON_66A5
        dw      $4813                ; $6BE9 execution token $4813
        dw      TERSE_COLON_66AE     ; $6BEB TERSE_COLON_66AE
        dw      $4813                ; $6BED execution token $4813
        dw      TERSE_COLON_66B7     ; $6BEF TERSE_COLON_66B7
        dw      $4813                ; $6BF1 execution token $4813
        dw      TERSE_COLON_66C0     ; $6BF3 TERSE_COLON_66C0
        dw      $4813                ; $6BF5 execution token $4813
        dw      TERSE_COLON_66C9     ; $6BF7 TERSE_COLON_66C9
        dw      $4813                ; $6BF9 execution token $4813
        dw      TERSE_COLON_66D2     ; $6BFB TERSE_COLON_66D2
        dw      $4813                ; $6BFD execution token $4813
        dw      TERSE_COLON_66DB     ; $6BFF TERSE_COLON_66DB
        dw      $4813                ; $6C01 execution token $4813
        dw      TERSE_COLON_66E4     ; $6C03 TERSE_COLON_66E4
        dw      $4813                ; $6C05 execution token $4813
        dw      TERSE_COLON_66ED     ; $6C07 TERSE_COLON_66ED
        dw      $4813                ; $6C09 execution token $4813
        dw      $0109                ; $6C0B _LIT
        dw      $E1D7                ; $6C0D inline word
        dw      $4097                ; $6C0F ALIAS_1plusbang
        dw      $03E2                ; $6C11 _BRANCH
        dw      L6B85                ; $6C13 branch target
L6C15:
        dw      $00FD                ; $6C15 _RETURN
TERSE_COLON_6C17:
        rst     $08                             ; $6C17 colon entry
        dw      $0109                ; $6C18 _LIT
        dw      $E1D7                ; $6C1A inline word
        dw      $4091                ; $6C1C ALIAS_ZERO
        dw      $0109                ; $6C1E _LIT
        dw      $E1DB                ; $6C20 inline word
        dw      $4091                ; $6C22 ALIAS_ZERO
        dw      $0109                ; $6C24 _LIT
        dw      $E1DA                ; $6C26 inline word
        dw      $4076                ; $6C28 ALIAS_BZERO
        dw      TERSE_COLON_6B7E     ; $6C2A TERSE_COLON_6B7E
        dw      $00FD                ; $6C2C _RETURN
TERSE_COLON_6C2E:
        rst     $08                             ; $6C2E colon entry
        dw      $47D3                ; $6C2F execution token $47D3
        dw      $012A                ; $6C31 _0
L6C33:
        dw      $0112                ; $6C33 _LITbyte
        db      $0B                  ; $6C35 inline byte
        dw      TERSE_COLON_6847     ; $6C36 TERSE_COLON_6847
        dw      $0112                ; $6C38 _LITbyte
        db      $0B                  ; $6C3A inline byte
        dw      TERSE_COLON_68FD     ; $6C3B TERSE_COLON_68FD
        dw      $0109                ; $6C3D _LIT
        dw      $FEAC                ; $6C3F inline word
        dw      $0153                ; $6C41 _Bat
        dw      $0136                ; $6C43 _DUP
        dw      $0436                ; $6C45 _CASES
        dw      $6C4F                ; $6C47 CASES table end
        dw      TERSE_COLON_6C17     ; $6C49 TERSE_COLON_6C17
        dw      TERSE_COLON_6B7E     ; $6C4B TERSE_COLON_6B7E
        dw      $0130                ; $6C4D _1
        dw      $03EA                ; $6C4F _0BRANCH
        dw      L6C33                ; $6C51 branch target
        dw      $0143                ; $6C53 _DROP
        dw      $4911                ; $6C55 execution token $4911
        dw      $00FD                ; $6C57 _RETURN
TERSE_COLON_6C59:
        rst     $08                             ; $6C59 colon entry
        dw      $47D3                ; $6C5A execution token $47D3
        dw      $012A                ; $6C5C _0
L6C5E:
        dw      $0112                ; $6C5E _LITbyte
        db      $09                  ; $6C60 inline byte
        dw      TERSE_COLON_6847     ; $6C61 TERSE_COLON_6847
        dw      $0112                ; $6C63 _LITbyte
        db      $09                  ; $6C65 inline byte
        dw      TERSE_COLON_68FD     ; $6C66 TERSE_COLON_68FD
        dw      $0109                ; $6C68 _LIT
        dw      $FEAC                ; $6C6A inline word
        dw      $0153                ; $6C6C _Bat
        dw      $0136                ; $6C6E _DUP
        dw      $0436                ; $6C70 _CASES
        dw      $6C7C                ; $6C72 CASES table end
        dw      $4E47                ; $6C74 execution token $4E47
        dw      $4FEE                ; $6C76 execution token $4FEE
        dw      $50EE                ; $6C78 execution token $50EE
        dw      $0130                ; $6C7A _1
        dw      $03EA                ; $6C7C _0BRANCH
        dw      L6C5E                ; $6C7E branch target
        dw      $0143                ; $6C80 _DROP
        dw      $4911                ; $6C82 execution token $4911
        dw      $00FD                ; $6C84 _RETURN
TERSE_COLON_6C86:
        rst     $08                             ; $6C86 colon entry
        dw      $47D3                ; $6C87 execution token $47D3
        dw      $012A                ; $6C89 _0
L6C8B:
        dw      $0130                ; $6C8B _1
        dw      TERSE_COLON_6847     ; $6C8D TERSE_COLON_6847
        dw      $0130                ; $6C8F _1
        dw      TERSE_COLON_68FD     ; $6C91 TERSE_COLON_68FD
        dw      $0109                ; $6C93 _LIT
        dw      $FEAC                ; $6C95 inline word
        dw      $0153                ; $6C97 _Bat
        dw      $0136                ; $6C99 _DUP
        dw      $0436                ; $6C9B _CASES
        dw      $6CA9                ; $6C9D CASES table end
        dw      TERSE_COLON_6B16     ; $6C9F TERSE_COLON_6B16
        dw      TERSE_COLON_6C59     ; $6CA1 TERSE_COLON_6C59
        dw      TERSE_COLON_6B45     ; $6CA3 TERSE_COLON_6B45
        dw      TERSE_COLON_6C2E     ; $6CA5 TERSE_COLON_6C2E
        dw      $0130                ; $6CA7 _1
        dw      $03EA                ; $6CA9 _0BRANCH
        dw      L6C8B                ; $6CAB branch target
        dw      $0143                ; $6CAD _DROP
        dw      $4911                ; $6CAF execution token $4911
        dw      $00FD                ; $6CB1 _RETURN
TERSE_COLON_6CB3:
        rst     $08                             ; $6CB3 colon entry
        dw      $47D3                ; $6CB4 execution token $47D3
        dw      $012A                ; $6CB6 _0
L6CB8:
        dw      $0112                ; $6CB8 _LITbyte
        db      $02                  ; $6CBA inline byte
        dw      TERSE_COLON_6847     ; $6CBB TERSE_COLON_6847
        dw      $0112                ; $6CBD _LITbyte
        db      $02                  ; $6CBF inline byte
        dw      TERSE_COLON_68FD     ; $6CC0 TERSE_COLON_68FD
        dw      $0109                ; $6CC2 _LIT
        dw      $FEAC                ; $6CC4 inline word
        dw      $0153                ; $6CC6 _Bat
        dw      $0136                ; $6CC8 _DUP
        dw      $0436                ; $6CCA _CASES
        dw      $6CD8                ; $6CCC CASES table end
        dw      $4BC1                ; $6CCE execution token $4BC1
        dw      $4C15                ; $6CD0 execution token $4C15
        dw      $4CA2                ; $6CD2 execution token $4CA2
        dw      $4CBC                ; $6CD4 execution token $4CBC
        dw      $0130                ; $6CD6 _1
        dw      $03EA                ; $6CD8 _0BRANCH
        dw      L6CB8                ; $6CDA branch target
        dw      $0143                ; $6CDC _DROP
        dw      $4911                ; $6CDE execution token $4911
        dw      $00FD                ; $6CE0 _RETURN
TERSE_COLON_6CE2:
        rst     $08                             ; $6CE2 colon entry
        dw      $47D3                ; $6CE3 execution token $47D3
        dw      $012A                ; $6CE5 _0
L6CE7:
        dw      $0112                ; $6CE7 _LITbyte
        db      $07                  ; $6CE9 inline byte
        dw      TERSE_COLON_6847     ; $6CEA TERSE_COLON_6847
        dw      $0112                ; $6CEC _LITbyte
        db      $07                  ; $6CEE inline byte
        dw      TERSE_COLON_68FD     ; $6CEF TERSE_COLON_68FD
        dw      $0109                ; $6CF1 _LIT
        dw      $FEAC                ; $6CF3 inline word
        dw      $0153                ; $6CF5 _Bat
        dw      $0136                ; $6CF7 _DUP
        dw      $0436                ; $6CF9 _CASES
        dw      $6D05                ; $6CFB CASES table end
        dw      $5EDD                ; $6CFD execution token $5EDD
        dw      $5F9C                ; $6CFF execution token $5F9C
        dw      TERSE_COLON_6067     ; $6D01 TERSE_COLON_6067
        dw      $0130                ; $6D03 _1
        dw      $03EA                ; $6D05 _0BRANCH
        dw      L6CE7                ; $6D07 branch target
        dw      $0143                ; $6D09 _DROP
        dw      $4911                ; $6D0B execution token $4911
        dw      $00FD                ; $6D0D _RETURN
TERSE_COLON_6D0F:
        rst     $08                             ; $6D0F colon entry
        dw      $47D3                ; $6D10 execution token $47D3
        dw      $012A                ; $6D12 _0
L6D14:
        dw      $0112                ; $6D14 _LITbyte
        db      $04                  ; $6D16 inline byte
        dw      TERSE_COLON_6847     ; $6D17 TERSE_COLON_6847
        dw      $0112                ; $6D19 _LITbyte
        db      $04                  ; $6D1B inline byte
        dw      TERSE_COLON_68FD     ; $6D1C TERSE_COLON_68FD
        dw      $0109                ; $6D1E _LIT
        dw      $FEAC                ; $6D20 inline word
        dw      $0153                ; $6D22 _Bat
        dw      $0136                ; $6D24 _DUP
        dw      $0436                ; $6D26 _CASES
        dw      $6D34                ; $6D28 CASES table end
        dw      $5E3A                ; $6D2A execution token $5E3A
        dw      $5EF3                ; $6D2C execution token $5EF3
        dw      $5FB2                ; $6D2E execution token $5FB2
        dw      TERSE_COLON_6CE2     ; $6D30 TERSE_COLON_6CE2
        dw      $0130                ; $6D32 _1
        dw      $03EA                ; $6D34 _0BRANCH
        dw      L6D14                ; $6D36 branch target
        dw      $0143                ; $6D38 _DROP
        dw      $4911                ; $6D3A execution token $4911
        dw      $00FD                ; $6D3C _RETURN
TERSE_COLON_6D3E:
        rst     $08                             ; $6D3E colon entry
        dw      $4770                ; $6D3F execution token $4770
        dw      $47D3                ; $6D41 execution token $47D3
        dw      $0112                ; $6D43 _LITbyte
        db      $05                  ; $6D45 inline byte
        dw      TERSE_COLON_6847     ; $6D46 TERSE_COLON_6847
        dw      $443B                ; $6D48 execution token $443B
        dw      $4686                ; $6D4A execution token $4686
        dw      $44FA                ; $6D4C execution token $44FA
        dw      $0405                ; $6D4E _Aquote
        db      $15,$70,$72,$6F,$67,$72,$61,$6D,$6D,$61,$62,$6C,$65,$20,$6F,$70,$74,$69,$6F,$6E,$73,$20 ; $6D50 counted string
        dw      $44EA                ; $6D66 execution token $44EA
        dw      TERSE_COLON_6AA6     ; $6D68 TERSE_COLON_6AA6
        dw      $012A                ; $6D6A _0
L6D6C:
        dw      $0112                ; $6D6C _LITbyte
        db      $05                  ; $6D6E inline byte
        dw      TERSE_COLON_68FD     ; $6D6F TERSE_COLON_68FD
        dw      $0109                ; $6D71 _LIT
        dw      $FEAC                ; $6D73 inline word
        dw      $0153                ; $6D75 _Bat
        dw      $0136                ; $6D77 _DUP
        dw      $442B                ; $6D79 execution token $442B
        dw      $467D                ; $6D7B execution token $467D
        dw      $4808                ; $6D7D execution token $4808
        dw      $0436                ; $6D7F _CASES
        dw      $6D97                ; $6D81 CASES table end
        dw      TERSE_COLON_6A9D     ; $6D83 TERSE_COLON_6A9D
        dw      TERSE_COLON_6A94     ; $6D85 TERSE_COLON_6A94
        dw      TERSE_COLON_677E     ; $6D87 TERSE_COLON_677E
        dw      TERSE_COLON_67A9     ; $6D89 TERSE_COLON_67A9
        dw      TERSE_COLON_6767     ; $6D8B TERSE_COLON_6767
        dw      TERSE_COLON_6712     ; $6D8D TERSE_COLON_6712
        dw      TERSE_COLON_6739     ; $6D8F TERSE_COLON_6739
        dw      TERSE_COLON_6750     ; $6D91 TERSE_COLON_6750
        dw      TERSE_COLON_6AC3     ; $6D93 TERSE_COLON_6AC3
        dw      $0130                ; $6D95 _1
        dw      $442B                ; $6D97 execution token $442B
        dw      $4782                ; $6D99 execution token $4782
        dw      $03EA                ; $6D9B _0BRANCH
        dw      L6D6C                ; $6D9D branch target
        dw      $0143                ; $6D9F _DROP
        dw      $4911                ; $6DA1 execution token $4911
        dw      $4779                ; $6DA3 execution token $4779
        dw      $00FD                ; $6DA5 _RETURN
TERSE_COLON_6DA7:
        rst     $08                             ; $6DA7 colon entry
L6DA8:
        dw      $0112                ; $6DA8 _LITbyte
        db      $00                  ; $6DAA inline byte
        dw      $0136                ; $6DAB _DUP
        dw      TERSE_COLON_6847     ; $6DAD TERSE_COLON_6847
        dw      TERSE_COLON_68FD     ; $6DAF TERSE_COLON_68FD
        dw      $0109                ; $6DB1 _LIT
        dw      $FEAC                ; $6DB3 inline word
        dw      $0153                ; $6DB5 _Bat
        dw      $0136                ; $6DB7 _DUP
        dw      $0436                ; $6DB9 _CASES
        dw      $6DC9                ; $6DBB CASES table end
        dw      TERSE_COLON_6C86     ; $6DBD TERSE_COLON_6C86
        dw      TERSE_COLON_6CB3     ; $6DBF TERSE_COLON_6CB3
        dw      TERSE_COLON_6AE9     ; $6DC1 TERSE_COLON_6AE9
        dw      TERSE_COLON_6D0F     ; $6DC3 TERSE_COLON_6D0F
        dw      TERSE_COLON_6D3E     ; $6DC5 TERSE_COLON_6D3E
        dw      $0130                ; $6DC7 _1
        dw      $03EA                ; $6DC9 _0BRANCH
        dw      L6DA8                ; $6DCB branch target
        dw      $0143                ; $6DCD _DROP
        dw      $00FD                ; $6DCF _RETURN
INITIAL_THREAD_WORD:
        rst     $08                             ; $6DD1 colon entry
INITIAL_THREAD:
        dw      $0693                ; $6DD2 VALIDATE_BATTERY_RAM
        dw      $0109                ; $6DD4 _LIT
        dw      $E1DA                ; $6DD6 inline word
        dw      $4076                ; $6DD8 ALIAS_BZERO
        dw      $47C5                ; $6DDA execution token $47C5
        dw      $0109                ; $6DDC _LIT
        dw      $E1D9                ; $6DDE inline word
        dw      $0153                ; $6DE0 _Bat
        dw      $0130                ; $6DE2 _1
        dw      $01CF                ; $6DE4 _equal
        dw      $03EA                ; $6DE6 _0BRANCH
        dw      L6DF0                ; $6DE8 branch target
        dw      TERSE_COLON_6B7E     ; $6DEA TERSE_COLON_6B7E
        dw      $03E2                ; $6DEC _BRANCH
        dw      L6E0B                ; $6DEE branch target
L6DF0:
        dw      $0109                ; $6DF0 _LIT
        dw      $E1D9                ; $6DF2 inline word
        dw      $4076                ; $6DF4 ALIAS_BZERO
        dw      $4779                ; $6DF6 execution token $4779
        dw      $452A                ; $6DF8 execution token $452A
        dw      $4610                ; $6DFA SELFTEST_HARDWARE_RESET
        dw      $0112                ; $6DFC _LITbyte
        db      $00                  ; $6DFE inline byte
        dw      $0136                ; $6DFF _DUP
        dw      $0136                ; $6E01 _DUP
        dw      $0109                ; $6E03 _LIT
        dw      $FEAA                ; $6E05 inline word
        dw      $0532                ; $6E07 _SBbang
        dw      TERSE_COLON_6DA7     ; $6E09 TERSE_COLON_6DA7
L6E0B:
        dw      $0109                ; $6E0B _LIT
        dw      $E1ED                ; $6E0D inline word
        dw      $4073                ; $6E0F ALIAS_BONE
        dw      $45FA                ; $6E11 COLD_RESTART_WORD
        db      $FD,$00,$FF,$FF,$46,$12,$01,$00,$36,$01,$36,$01,$09,$01,$AA,$FE ; $6E13
        db      $32,$05,$C3,$6D,$09,$01,$ED,$E1,$73,$40,$FA,$45,$FD,$00,$FF,$FF ; $6E23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6E93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6EA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6EB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6EC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6ED3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6EE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6EF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6F93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $6FF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7003
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7013
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7023
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7033
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7043
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7053
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7063
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7073
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7083
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7093
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $70F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7103
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7113
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7123
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7133
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7143
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7153
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7163
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7173
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7183
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7193
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $71F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7203
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7213
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7223
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7233
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7243
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7253
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7263
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7273
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7283
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7293
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $72F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7303
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7313
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7323
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7333
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7343
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7353
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7363
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7373
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7383
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7393
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $73F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7403
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7413
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7423
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7433
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7443
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7453
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7463
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7473
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7483
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7493
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $74F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7503
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7513
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7523
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7533
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7543
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7553
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7563
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7573
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7583
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7593
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $75F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7603
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7613
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7623
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7633
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7643
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7653
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7663
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7673
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7683
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7693
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $76F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7703
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7713
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7723
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7733
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7743
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7753
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7763
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7773
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7783
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7793
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $77F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7803
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7813
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7823
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7833
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7843
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7853
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7863
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7873
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7883
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7893
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $78F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7903
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7913
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7923
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7933
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7943
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7953
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7963
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7973
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7983
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7993
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79A3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79B3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79C3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79D3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79E3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $79F3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7A93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7AF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7B93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7BF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7C93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7CF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7D93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7DF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7E93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F03
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F13
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F23
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F33
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F43
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F53
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F63
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F73
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F83
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F93
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE3
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF             ; $7FF3
