; Professor Pac-Man program ROM PPS9
; Fixed CPU address $C000-$DFFF
; Native Z80 uses mnemonics; TERSE threads use structured tokens and operands.
; Graphics and unclassified data retain addressed DB definitions.

        include "src/profpac_common.include"

        org     $C000

        db      $00,$40,$CB,$DE,$CE,$DE,$D5,$DE,$D8,$DE,$DE,$DE,$DB,$DE,$08,$D4 ; $C000
        db      $01,$D4,$0B,$D4,$10,$D4,$13,$D4,$00,$00,$1A,$D4,$F9,$D0,$1F,$D4 ; $C010
        db      $40,$81,$40,$81,$D0,$80,$40,$81,$04,$0F,$AF,$EC,$BF,$F4,$BF,$20 ; $C020
        db      $C0,$30                                                         ; $C030
TERSE_COLON_C032:
        rst     $08                             ; $C032 colon entry
        dw      $0109                ; $C033 _LIT
        dw      $FFC4                ; $C035 inline word
        dw      $0109                ; $C037 _LIT
        dw      $FFE3                ; $C039 inline word
        dw      $1D54                ; $C03B execution token $1D54
        dw      $0109                ; $C03D _LIT
        dw      $AD0E                ; $C03F inline word
        dw      $2CF2                ; $C041 execution token $2CF2
        dw      $0109                ; $C043 _LIT
        dw      $AE1D                ; $C045 inline word
        dw      $2CF2                ; $C047 execution token $2CF2
        dw      $0112                ; $C049 _LITbyte
        db      $3C                  ; $C04B inline byte
        dw      $1D24                ; $C04C execution token $1D24
        dw      $0109                ; $C04E _LIT
        dw      $AF2C                ; $C050 inline word
        dw      $2CF2                ; $C052 execution token $2CF2
        dw      $0109                ; $C054 _LIT
        dw      $B047                ; $C056 inline word
        dw      $2CF2                ; $C058 execution token $2CF2
        dw      $00FD                ; $C05A _RETURN
        db      $CF,$99,$15,$2B,$2D,$09,$01,$AE,$BE,$7C,$2D,$09,$01,$3D,$E1,$53 ; $C05C
        db      $01,$EA,$03,$79,$C0,$09,$01,$28,$C0,$E2,$03,$87,$C0,$09,$01,$04 ; $C06C
        db      $C0,$4C,$01,$BB,$22,$F7,$15,$09,$01,$44,$83,$36,$01,$67,$3D,$E7 ; $C07C
        db      $3D,$DC,$1E,$DB,$BF,$C9,$BF,$9B,$1E,$09,$01,$A1,$FF,$12,$01,$03 ; $C08C
        db      $54,$1D,$09,$01,$0F,$A7,$F2,$2C,$09,$01,$D1,$FF,$24,$1D,$09,$01 ; $C09C
        db      $E0,$A6,$F2,$2C,$12,$01,$60,$24,$1D,$09,$01,$A1,$A6,$F2,$2C,$09 ; $C0AC
        db      $01,$91,$00,$24,$1D,$09,$01,$EA,$A4,$F2,$2C,$09,$01,$E9,$FF,$12 ; $C0BC
        db      $01,$33,$54,$1D,$09,$01,$E2,$A7,$F2,$2C,$09,$01,$29,$AA,$F2,$2C ; $C0CC
        db      $09,$01,$70,$AC,$F2,$2C,$09,$01,$CF,$AC,$F2,$2C,$9B,$1E,$32,$C0 ; $C0DC
        db      $12,$01,$4B,$12,$01,$04,$54,$1D,$09,$01,$0A,$A3,$F2,$2C,$A8,$1E ; $C0EC
        db      $09,$01,$F5,$FF,$12,$01,$4B,$54,$1D,$09,$01,$17,$A0,$F2,$2C,$12 ; $C0FC
        db      $01,$44,$12,$01,$1B,$54,$1D,$09,$01,$A4,$A1,$F2,$2C,$09,$01,$3D ; $C10C
        db      $E1,$53,$01,$25,$02,$EA,$03,$76,$C1,$12,$01,$04,$09,$01,$BF,$FF ; $C11C
        db      $54,$1D,$09,$01,$96,$9F,$F2,$2C,$09,$01,$00,$A0,$B4,$1C,$30,$01 ; $C12C
        db      $09,$01,$46,$E1,$80,$1A,$E3,$01,$EA,$03,$58,$C1,$9B,$1E,$2A,$01 ; $C13C
        db      $24,$1D,$CF,$1E,$0C,$1E,$E9,$1E,$0C,$1E,$F6,$1E,$14,$1F,$0C,$1E ; $C14C
        db      $C2,$1E,$0C,$1E,$F6,$1E,$A8,$1E,$12,$01,$44,$12,$01,$1B,$54,$1D ; $C15C
        db      $09,$01,$A4,$A1,$B4,$1C,$0C,$1E,$14,$1F,$09,$01,$3E,$BF,$B4,$1C ; $C16C
        db      $09,$01,$DD,$F6,$36,$01,$3F,$05,$1D,$1C,$E9,$19,$09,$01,$3D,$E1 ; $C17C
        db      $53,$01,$30,$01,$08,$02,$EA,$03,$A8,$C1,$A8,$1E,$09,$01,$C2,$BF ; $C18C
        db      $BB,$22,$F7,$15,$A8,$1E,$32,$C0,$E2,$03,$AF,$C1,$12,$01,$1E,$DF ; $C19C
        db      $1B,$E9,$19,$2B,$2D,$E7,$15,$02,$23,$54,$22,$FD,$00,$07,$63,$6F ; $C1AC
        db      $72,$72,$65,$63,$74,$07,$61,$6E,$73,$77,$65,$72,$73,$08,$20,$73 ; $C1BC
        db      $6F,$20,$66,$61,$72,$20,$1A,$20,$20,$20,$20,$20,$77,$65,$6C,$6C ; $C1CC
        db      $20,$64,$6F,$6E,$65,$20,$70,$75,$70,$69,$6C,$20,$6F,$6E,$65,$20 ; $C1DC
        db      $21,$1B,$20,$77,$68,$6F,$6F,$70,$2D,$64,$65,$65,$20,$64,$6F,$6F ; $C1EC
        db      $20,$70,$75,$70,$69,$6C,$20,$74,$77,$6F,$20,$21,$20,$0D,$6C,$61 ; $C1FC
        db      $73,$74,$20,$71,$75,$65,$73,$74,$69,$6F,$6E,$0C,$73,$63,$6F,$72 ; $C20C
        db      $65,$20,$20,$2E,$20,$2E,$20,$2E,$16,$62,$6F,$6E,$75,$73,$20,$20 ; $C21C
        db      $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$78,$20,$20,$32,$19 ; $C22C
        db      $67,$65,$74,$20,$72,$65,$61,$64,$79,$20,$74,$6F,$20,$74,$72,$79 ; $C23C
        db      $20,$61,$67,$61,$69,$6E,$20,$21,$20,$10,$20,$20,$20,$20,$20,$20 ; $C24C
        db      $20,$20,$73,$6F,$72,$72,$79,$20,$21,$21,$CF,$09,$01,$FD,$F6,$36 ; $C25C
        db      $01,$8E,$1E,$46,$01,$2A,$01,$12,$01,$03,$F1,$02,$12,$01,$02,$6D ; $C26C
        db      $21,$12,$01,$02,$CA,$02,$32,$05,$86,$21,$A8,$1E,$83,$20,$FD,$00 ; $C27C
        db      $CF,$09,$01,$FD,$F6,$36,$01,$8E,$1E,$EA,$02,$EA,$02,$12,$01,$03 ; $C28C
        db      $F1,$02,$12,$01,$06,$6D,$21,$12,$01,$06,$CA,$02,$32,$05,$86,$21 ; $C29C
        db      $83,$20,$FD,$00,$CF,$99,$15,$12,$01,$0F,$09,$01,$BF,$00,$D8,$02 ; $C2AC
        db      $2B,$2D,$A8,$1E,$12,$01,$0D,$7D,$1E,$09,$01,$64,$00,$12,$01,$2D ; $C2BC
        db      $54,$1D,$09,$01,$B9,$C1,$00,$2D,$12,$01,$15,$3C,$1D,$09,$01,$C9 ; $C2CC
        db      $C1,$00,$2D,$12,$01,$62,$12,$01,$21,$54,$1D,$09,$01,$C1,$C1,$00 ; $C2DC
        db      $2D,$09,$01,$DD,$E1,$53,$01,$12,$01,$02,$CF,$01,$EA,$03,$25,$C3 ; $C2EC
        db      $09,$01,$6D,$FF,$12,$01,$2D,$54,$1D,$09,$01,$B9,$C1,$00,$2D,$12 ; $C2FC
        db      $01,$15,$3C,$1D,$09,$01,$C9,$C1,$00,$2D,$09,$01,$6B,$FF,$12,$01 ; $C30C
        db      $21,$54,$1D,$09,$01,$C1,$C1,$00,$2D,$12,$01,$0E,$5C,$1E,$09,$01 ; $C31C
        db      $73,$00,$12,$01,$02,$54,$1D,$09,$01,$45,$E1,$53,$01,$66,$C2,$09 ; $C32C
        db      $01,$DD,$E1,$53,$01,$12,$01,$02,$CF,$01,$EA,$03,$58,$C3,$09,$01 ; $C33C
        db      $7A,$FF,$24,$1D,$09,$01,$43,$E1,$53,$01,$66,$C2,$12,$01,$0F,$5C ; $C34C
        db      $1E,$09,$01,$B0,$FF,$12,$01,$38,$54,$1D,$C3,$2C,$EA,$03,$82,$C3 ; $C35C
        db      $D4,$2C,$EA,$03,$7A,$C3,$09,$01,$D2,$C1,$E2,$03,$7E,$C3,$09,$01 ; $C36C
        db      $ED,$C1,$E2,$03,$86,$C3,$09,$01,$55,$C2,$00,$2D,$C3,$2C,$EA,$03 ; $C37C
        db      $05,$C4,$12,$01,$09,$5C,$1E,$09,$01,$B6,$FF,$12,$01,$0F,$54,$1D ; $C38C
        db      $09,$01,$09,$C2,$00,$2D,$09,$01,$E3,$FF,$12,$01,$03,$54,$1D,$09 ; $C39C
        db      $01,$17,$C2,$00,$2D,$09,$01,$3E,$E1,$53,$01,$E3,$01,$EA,$03,$C2 ; $C3AC
        db      $C3,$12,$01,$0E,$5C,$1E,$12,$01,$2A,$24,$1D,$09,$01,$28,$F7,$4C ; $C3BC
        db      $01,$2A,$01,$8C,$C2,$09,$01,$3E,$E1,$53,$01,$EA,$03,$05,$C4,$09 ; $C3CC
        db      $01,$E2,$FF,$09,$01,$EF,$FF,$54,$1D,$09,$01,$24,$C2,$00,$2D,$12 ; $C3DC
        db      $01,$0E,$5C,$1E,$12,$01,$2C,$09,$01,$DB,$FF,$54,$1D,$09,$01,$28 ; $C3EC
        db      $F7,$4C,$01,$A6,$01,$2A,$01,$8C,$C2,$12,$01,$40,$12,$01,$0F,$88 ; $C3FC
        db      $01,$7D,$1E,$09,$01,$7B,$FF,$09,$01,$BA,$FF,$54,$1D,$09,$01,$3B ; $C40C
        db      $C2,$00,$2D,$2A,$01,$09,$01,$BF,$00,$D8,$02,$02,$23,$54,$22,$FD ; $C41C
        db      $00,$01,$B0,$C2,$00,$0A,$04,$14,$1A,$2C,$30,$99,$99,$99,$96,$55 ; $C42C
        db      $66,$66,$65,$66,$55,$59,$99,$59,$99,$95,$66,$95,$56,$66,$59,$56 ; $C43C
        db      $65,$59,$95,$65,$59,$95,$66,$59,$95,$66,$55,$95,$56,$55,$99,$55 ; $C44C
        db      $65,$59,$56,$56,$55,$95,$65,$65,$59,$56,$59,$55,$95,$65,$55,$55 ; $C45C
        db      $56,$55,$96,$55,$55,$59,$55,$55,$55,$55,$65,$55,$55,$55,$55,$55 ; $C46C
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$59,$CF,$99,$15,$09,$01 ; $C47C
        db      $EF,$F5,$53,$01,$A8,$34,$E3,$01,$79,$01,$EA,$03,$A8,$C4,$09,$01 ; $C48C
        db      $16,$C0,$4C,$01,$BB,$22,$F7,$15,$E2,$03,$AC,$C4,$2B,$2D,$D5,$36 ; $C49C
        db      $A8,$34,$E3,$01,$EA,$03,$BC,$C4,$09,$01,$AB,$BE,$BB,$22,$F7,$15 ; $C4AC
        db      $BC,$33,$09,$01,$E7,$F6,$36,$01,$3A,$05,$3A,$05,$AB,$22,$A9,$BD ; $C4BC
        db      $9B,$1E,$93,$2C,$12,$01,$60,$12,$01,$63,$54,$1D,$DE,$3C,$09,$01 ; $C4CC
        db      $A7,$37,$09,$01,$AE,$38,$8E,$1E,$0C,$1E,$09,$01,$DD,$E1,$53,$01 ; $C4DC
        db      $12,$01,$02,$CF,$01,$EA,$03,$05,$C5,$09,$01,$A0,$FF,$24,$1D,$DE ; $C4EC
        db      $3C,$09,$01,$37,$39,$8E,$1E,$0C,$1E,$2A,$01,$12,$01,$63,$54,$1D ; $C4FC
        db      $09,$01,$7C,$3C,$8E,$1E,$0C,$1E,$12,$01,$48,$3C,$1D,$09,$01,$C0 ; $C50C
        db      $39,$B4,$1C,$0C,$1E,$12,$01,$0A,$7D,$1E,$09,$01,$FB,$FF,$12,$01 ; $C51C
        db      $3B,$54,$1D,$09,$01,$47,$E1,$09,$01,$FF,$E1,$53,$01,$E3,$01,$EA ; $C52C
        db      $03,$56,$C5,$36,$01,$36,$01,$53,$01,$12,$01,$62,$1C,$02,$EA,$03 ; $C53C
        db      $54,$C5,$3A,$05,$E2,$03,$56,$C5,$49,$05,$53,$01,$66,$C2,$12,$01 ; $C54C
        db      $0F,$5C,$1E,$12,$01,$48,$3C,$1D,$9B,$1E,$12,$01,$49,$24,$1D,$09 ; $C55C
        db      $01,$E2,$E1,$A2,$20,$8C,$C2,$09,$01,$DD,$E1,$53,$01,$12,$01,$02 ; $C56C
        db      $CF,$01,$EA,$03,$98,$C5,$09,$01,$89,$FF,$24,$1D,$09,$01,$DE,$E1 ; $C57C
        db      $A2,$20,$8C,$C2,$09,$01,$27,$F7,$3F,$05,$9F,$35,$09,$01,$27,$F7 ; $C58C
        db      $3A,$05,$9F,$35,$02,$23,$54,$22,$FD,$00,$0F,$00,$04,$10,$19,$2F ; $C59C
        db      $30,$00,$00,$00,$10,$00,$00,$00,$64,$00,$00,$01,$A9,$00,$00,$06 ; $C5AC
        db      $A4,$00,$00,$1A,$90,$00,$00,$6A,$40,$40,$01,$A9,$00,$50,$06,$A4 ; $C5BC
        db      $00,$64,$1A,$90,$00,$69,$6A,$40,$00,$6A,$A9,$00,$00,$6A,$A4,$00 ; $C5CC
        db      $00,$6A,$A4,$00,$00,$6A,$A9,$00,$00,$6A,$AA,$40,$00,$55,$55,$50 ; $C5DC
        db      $00,$CF,$09,$01,$A9,$FD,$36,$01,$53,$01,$46,$01,$3A,$05,$A8,$1E ; $C5EC
        db      $7E,$20,$09,$01,$A9,$FD,$32,$05,$FD,$00                         ; $C5FC
TERSE_COLON_C606:
        rst     $08                             ; $C606 colon entry
        dw      $1E8E                ; $C607 execution token $1E8E
        dw      $C5ED                ; $C609 execution token $C5ED
        dw      $00FD                ; $C60B _RETURN
        db      $07,$61,$6E,$73,$77,$65,$72,$20,$0E,$71,$75,$65,$73,$74,$69,$6F ; $C60D
        db      $6E,$73,$20,$77,$69,$74,$68,$07,$62,$75,$74,$74,$6F,$6E,$73,$11 ; $C61D
        db      $66,$61,$73,$74,$65,$72,$20,$72,$65,$73,$70,$6F,$6E,$73,$65,$73 ; $C62D
        db      $20,$15,$72,$65,$63,$65,$69,$76,$65,$20,$68,$69,$67,$68,$65,$72 ; $C63D
        db      $20,$73,$63,$6F,$72,$65,$73,$0D,$77,$72,$6F,$6E,$67,$20,$61,$6E ; $C64D
        db      $73,$77,$65,$72,$20,$0F,$73,$75,$62,$74,$72,$61,$63,$74,$73,$20 ; $C65D
        db      $66,$72,$75,$69,$74,$0E,$63,$6F,$72,$72,$65,$63,$74,$20,$62,$6F ; $C66D
        db      $6E,$75,$73,$20,$11,$61,$6E,$73,$77,$65,$72,$20,$61,$64,$64,$73 ; $C67D
        db      $20,$66,$72,$75,$69,$74,$CF,$99,$15,$12,$01,$0F,$7D,$1E,$09,$01 ; $C68D
        db      $B8,$FF,$12,$01,$14,$54,$1D,$09,$01,$0D,$C6,$06,$C6,$E7,$15,$09 ; $C69D
        db      $01,$15,$C6,$00,$2D,$09,$01,$E8,$FF,$2A,$01,$54,$1D,$09,$01,$24 ; $C6AD
        db      $C6,$00,$2D,$93,$2C,$09,$01,$DD,$E1,$53,$01,$30,$01,$1C,$02,$EA ; $C6BD
        db      $03,$20,$C7,$09,$01,$7E,$FF,$09,$01,$F1,$FF,$54,$1D,$09,$01,$AA ; $C6CD
        db      $31,$F2,$2C,$09,$01,$A1,$FF,$09,$01,$FB,$FF,$54,$1D,$09,$01,$2F ; $C6DD
        db      $32,$F2,$2C,$09,$01,$C4,$FF,$09,$01,$F1,$FF,$54,$1D,$09,$01,$9A ; $C6ED
        db      $32,$F2,$2C,$09,$01,$AA,$FF,$09,$01,$BA,$FF,$54,$1D,$09,$01,$A6 ; $C6FD
        db      $C5,$F2,$2C,$09,$01,$8F,$FF,$09,$01,$CE,$FF,$54,$1D,$09,$01,$37 ; $C70D
        db      $39,$F2,$2C,$12,$01,$25,$09,$01,$F1,$FF,$54,$1D,$09,$01,$AA,$31 ; $C71D
        db      $F2,$2C,$12,$01,$49,$09,$01,$FB,$FF,$54,$1D,$09,$01,$2F,$32,$F2 ; $C72D
        db      $2C,$09,$01,$6B,$00,$09,$01,$F1,$FF,$54,$1D,$09,$01,$9A,$32,$F2 ; $C73D
        db      $2C,$CF,$1E,$12,$01,$56,$09,$01,$BA,$FF,$54,$1D,$09,$01,$A6,$C5 ; $C74D
        db      $F2,$2C,$F6,$1E,$12,$01,$3A,$09,$01,$CE,$FF,$54,$1D,$09,$01,$AE ; $C75D
        db      $38,$F2,$2C,$09,$01,$E6,$00,$DF,$1B,$2C,$1A,$2F,$0C,$40,$2D,$32 ; $C76D
        db      $0C,$12,$01,$0F,$7D,$1E,$A8,$1E,$E7,$15,$09,$01,$8D,$FF,$09,$01 ; $C77D
        db      $E2,$FF,$54,$1D,$09,$01,$2C,$C6,$06,$C6,$E7,$15,$09,$01,$3E,$C6 ; $C78D
        db      $00,$2D,$09,$01,$AF,$00,$DF,$1B,$2C,$1A,$09,$01,$8D,$FF,$24,$1D ; $C79D
        db      $09,$01,$2C,$C6,$06,$C6,$E7,$15,$09,$01,$3E,$C6,$00,$2D,$E7,$15 ; $C7AD
        db      $09,$01,$9D,$FF,$09,$01,$F6,$FF,$54,$1D,$09,$01,$72,$C6,$06,$C6 ; $C7BD
        db      $E7,$15,$09,$01,$81,$C6,$00,$2D,$09,$01,$EC,$FF,$3C,$1D,$93,$2C ; $C7CD
        db      $09,$01,$ED,$F5,$3F,$05,$DC,$1E,$E7,$15,$09,$01,$ED,$F5,$53,$01 ; $C7DD
        db      $25,$01,$88,$31,$4C,$01,$B4,$1C,$09,$01,$96,$FF,$24,$1D,$09,$01 ; $C7ED
        db      $ED,$F5,$53,$01,$95,$01,$2A,$01,$6F,$02,$0E,$1F,$9B,$1D,$12,$01 ; $C7FD
        db      $19,$5A,$01,$24,$1D,$0C,$1E,$8A,$02,$12,$01,$1E,$DF,$1B,$2C,$1A ; $C80D
        db      $09,$01,$ED,$F5,$36,$01,$49,$05,$53,$01,$12,$01,$07,$CF,$01,$EA ; $C81D
        db      $03,$E5,$C7,$12,$01,$3C,$DF,$1B,$2C,$1A,$12,$01,$0F,$7D,$1E,$09 ; $C82D
        db      $01,$9D,$FF,$09,$01,$F6,$FF,$54,$1D,$09,$01,$72,$C6,$06,$C6,$09 ; $C83D
        db      $01,$81,$C6,$06,$C6,$09,$01,$9D,$FF,$09,$01,$D3,$FF,$54,$1D,$09 ; $C84D
        db      $01,$54,$C6,$06,$C6,$09,$01,$62,$C6,$00,$2D,$93,$2C,$12,$01,$45 ; $C85D
        db      $09,$01,$EC,$FF,$54,$1D,$12,$01,$06,$09,$01,$ED,$F5,$32,$05,$09 ; $C86D
        db      $01,$CB,$2F,$B4,$1C,$E7,$15,$0C,$1E,$0E,$1F,$9B,$1D,$12,$01,$19 ; $C87D
        db      $60,$01,$24,$1D,$12,$01,$14,$DF,$1B,$2C,$1A,$09,$01,$ED,$F5,$36 ; $C88D
        db      $01,$44,$05,$53,$01,$09,$01,$FF,$00,$CF,$01,$EA,$03,$84,$C8,$02 ; $C89D
        db      $23,$54,$22,$FD,$00,$CF,$99,$15,$02,$23,$09,$01,$EE,$F5,$3F,$05 ; $C8AD
        db      $E7,$15,$12,$01,$11,$E0,$02,$6E,$01,$09,$01,$77,$00,$79,$01,$25 ; $C8BD
        db      $02,$09,$01,$EE,$F5,$53,$01,$88,$01,$EA,$03,$BD,$C8,$09,$01,$EE ; $C8CD
        db      $F5,$53,$01,$E3,$01,$EA,$03,$06,$C9,$B1,$34,$C3,$34,$09,$01,$EF ; $C8DD
        db      $F5,$3F,$05,$09,$01,$B9,$FC,$36,$01,$90,$22,$09,$01,$1C,$C0,$4C ; $C8ED
        db      $01,$BA,$22,$84,$27,$E2,$03,$08,$C9,$54,$22,$FD,$00,$10,$00,$81 ; $C8FD
        db      $07,$FC,$BB,$07,$4A,$BC,$07,$FC,$BB,$07,$4A,$BC,$07,$FC,$BB,$07 ; $C90D
        db      $4A,$BC,$07,$FC,$BB,$07,$1B,$BC,$07,$FC,$BB,$07,$1B,$BC,$07,$FC ; $C91D
        db      $BB,$07,$1B,$BC,$07,$4A,$BC,$07,$FC,$BB,$07,$4A,$BC,$0F,$FC,$BB ; $C92D
        db      $00,$0D,$C9,$0C,$00,$81,$04,$9A,$B6,$04,$3D,$B7,$04,$D3,$B3,$04 ; $C93D
        db      $97,$B4,$04,$20,$B5,$04,$DD,$B5,$04,$9A,$B6,$04,$3D,$B7,$04,$D3 ; $C94D
        db      $B3,$04,$97,$B4,$04,$20,$B5,$04,$DD,$B5,$00,$43,$C9,$05,$00,$81 ; $C95D
        db      $07,$D3,$B3,$0C,$C6,$B7,$0E,$69,$B8,$0C,$ED,$B8,$46,$7B,$B9,$00 ; $C96D
        db      $6D,$C9,$00,$00,$90,$7A,$FF,$4E,$00,$40,$07,$00,$00,$40,$00,$00 ; $C97D
        db      $F0,$FF,$00,$00,$18,$FC,$00,$00,$C0,$00,$00,$07,$00,$00,$00,$E8 ; $C98D
        db      $03,$00,$00,$40,$00,$00,$F9,$FF,$00,$00,$18,$FC,$00,$00,$C0,$00 ; $C99D
        db      $00,$05,$00,$00,$00,$E8,$03,$00,$00,$40,$00,$00,$FB,$FF,$00,$00 ; $C9AD
        db      $18,$FC,$00,$00,$C0,$00,$00,$02,$00,$00,$00,$E8,$03,$00,$00,$40 ; $C9BD
        db      $00,$00,$FE,$FF,$00,$00,$18,$FC,$00,$CF,$99,$15,$A8,$1E,$2B,$2D ; $C9CD
        db      $D5,$36,$09,$01,$DD,$F6,$3F,$05,$E9,$82,$09,$01,$89,$00,$12,$01 ; $C9DD
        db      $48,$54,$1D,$09,$01,$AA,$BC,$B4,$1C,$0C,$1E,$09,$01,$0A,$C9,$B4 ; $C9ED
        db      $1C,$F3,$1D,$09,$01,$DD,$F6,$1D,$1C,$E9,$19,$02,$83,$09,$01,$AA ; $C9FD
        db      $BC,$B4,$1C,$34,$1E,$14,$1F,$09,$01,$89,$00,$12,$01,$48,$54,$1D ; $CA0D
        db      $09,$01,$40,$C9,$B4,$1C,$09,$01,$7C,$FF,$5F,$1C,$CF,$1E,$E0,$1D ; $CA1D
        db      $E7,$15,$21,$1F,$09,$01,$D4,$FE,$5B,$1D,$12,$01,$09,$DF,$1B,$43 ; $CA2D
        db      $1C,$E9,$19,$83,$1C,$E3,$01,$EA,$03,$58,$CA,$12,$01,$03,$DF,$1B ; $CA3D
        db      $2C,$1A,$12,$01,$09,$DF,$1B,$43,$1C,$E9,$19,$83,$1C,$E3,$01,$EA ; $CA4D
        db      $03,$6D,$CA,$12,$01,$03,$DF,$1B,$2C,$1A,$2A,$01,$E2,$03,$6F,$CA ; $CA5D
        db      $30,$01,$EA,$03,$2D,$CA,$E0,$1D,$F3,$1D,$09,$01,$AA,$BC,$B4,$1C ; $CA6D
        db      $0C,$1E,$09,$01,$0A,$C9,$B4,$1C,$F3,$1D,$09,$01,$09,$01,$DF,$1B ; $CA7D
        db      $E9,$19,$09,$01,$AA,$BC,$B4,$1C,$34,$1E,$14,$1F,$09,$01,$6A,$C9 ; $CA8D
        db      $B4,$1C,$09,$01,$EE,$F5,$3A,$05,$09,$01,$7B,$FF,$12,$01,$48,$54 ; $CA9D
        db      $1D,$12,$01,$5F,$DF,$1B,$E9,$19,$09,$01,$AF,$BA,$B4,$1C,$0C,$1E ; $CAAD
        db      $14,$1F,$09,$01,$7F,$C9,$D4,$24,$09,$01,$C1,$BB,$B4,$1C,$C8,$36 ; $CABD
        db      $37,$23,$F3,$1D,$09,$01,$32,$37,$B4,$1C,$CF,$1E,$12,$01,$0D,$7D ; $CACD
        db      $1E,$09,$01,$67,$FF,$12,$01,$3A,$54,$1D,$0C,$1E,$12,$01,$1E,$DF ; $CADD
        db      $1B,$2C,$1A,$93,$2C,$09,$01,$7B,$FF,$12,$01,$48,$54,$1D,$09,$01 ; $CAED
        db      $2A,$BA,$B4,$1C,$0C,$1E,$09,$01,$F2,$BA,$B4,$1C,$0C,$1E,$12,$01 ; $CAFD
        db      $0A,$DF,$1B,$2C,$1A,$0C,$1E,$02,$23,$54,$22,$FD,$00,$CF,$99,$15 ; $CB0D
        db      $09,$01,$F4,$F5,$3F,$05,$98,$87,$12,$01,$30,$09,$01,$BF,$00,$D8 ; $CB1D
        db      $02,$E7,$15,$09,$01,$F4,$F5,$1D,$1C,$2C,$1A,$09,$01,$47,$E1,$53 ; $CB2D
        db      $01,$12,$01,$06,$08,$02,$EA,$03,$4F,$CB,$09,$01,$80,$00,$E2,$03 ; $CB3D
        db      $52,$CB,$12,$01,$10,$DF,$1B,$2C,$1A,$2A,$01,$09,$01,$BF,$00,$D8 ; $CB4D
        db      $02,$D8,$02,$02,$23,$54,$22,$FD,$00                             ; $CB5D
NATIVE_CB66:
        pop de                          ; $CB66
        pop hl                          ; $CB67
        ex (sp),hl                      ; $CB68
        ex de,hl                        ; $CB69
        call $05dd                      ; $CB6A
        inc hl                          ; $CB6D
        inc hl                          ; $CB6E
        pop de                          ; $CB6F
        call $05dd                      ; $CB70
        jp (iy)                         ; $CB73
        db      $CF,$99,$15,$09,$01,$4A,$E1,$49,$05,$12,$01,$48,$3C,$1D,$D4,$2C ; $CB75
        db      $EA,$03,$91,$CB,$09,$01,$45,$E1,$E2,$03,$95,$CB,$09,$01,$43,$E1 ; $CB85
        db      $36,$01,$53,$01,$12,$01,$62,$1C,$02,$EA,$03,$A8,$CB,$3F,$05,$E2 ; $CB95
        db      $03,$AA,$CB,$49,$05,$09,$01,$44,$E1,$09,$01,$42,$E1,$D4,$2C,$EA ; $CBA5
        db      $03,$CB,$CB,$09,$01,$41,$E1,$09,$01,$23,$F7,$09,$01,$E2,$E1,$12 ; $CBB5
        db      $01,$49,$E2,$03,$DD,$CB,$46,$01,$09,$01,$40,$E1,$09,$01,$22,$F7 ; $CBC5
        db      $09,$01,$DE,$E1,$09,$01,$89,$FF,$24,$1D,$9B,$1E,$12,$01,$0B,$7D ; $CBD5
        db      $1E,$09,$01,$31,$8F,$8E,$1E,$0C,$1E,$09,$01,$28,$F7,$4C,$01,$09 ; $CBE5
        db      $01,$3E,$E1,$53,$01,$EA,$03,$00,$CC,$A6,$01,$2A,$01,$12,$01,$03 ; $CBF5
        db      $F1,$02,$A2,$20,$BC,$20,$12,$01,$03,$F1,$02,$66,$CB,$09,$01,$FD ; $CC05
        db      $F6,$36,$01,$B4,$1C,$46,$01,$A2,$20,$12,$01,$03,$F1,$02,$12,$01 ; $CC15
        db      $06,$6D,$21,$12,$01,$06,$CA,$02,$32,$05,$86,$21,$12,$01,$0D,$5C ; $CC25
        db      $1E,$83,$20,$09,$01,$3E,$E1,$53,$01,$EA,$03,$4A,$CC,$49,$05,$49 ; $CC35
        db      $05,$E2,$03,$4C,$CC,$FB,$02,$3F,$05,$09,$01,$3E,$E1,$53,$01,$EA ; $CC45
        db      $03,$5E,$CC,$3F,$05,$E2,$03,$60,$CC,$49,$05,$14,$1F,$0E,$1F,$9B ; $CC55
        db      $1D,$9F,$35,$12,$01,$02,$5A,$01,$24,$1D,$93,$2C,$12,$01,$56,$3C ; $CC65
        db      $1D,$9B,$1E,$09,$01,$25,$8F,$B4,$1C,$12,$01,$02,$2F,$1F,$14,$1F ; $CC75
        db      $09,$01,$E8,$F6,$36,$01,$3F,$05,$1D,$1C,$E9,$19,$19,$1D,$F3,$1D ; $CC85
        db      $54,$22,$FD,$00,$05,$02,$02,$0C,$00,$00,$00,$00,$00,$00,$00,$00 ; $CC95
        db      $00,$00,$80,$20,$E0,$E0,$FB,$E0,$7F,$C0,$7F,$C0,$3F,$80,$0E,$00 ; $CCA5
        db      $00,$00,$05,$01,$02,$0B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CCB5
        db      $00,$00,$08,$00,$3E,$00,$FF,$80,$7F,$00,$1C,$00,$00,$00,$05,$01 ; $CCC5
        db      $02,$0C,$04,$00,$04,$00,$20,$80,$00,$00,$00,$00,$C0,$60,$00,$00 ; $CCD5
        db      $00,$00,$20,$80,$04,$00,$04,$00,$00,$00,$04,$00,$81,$05,$32,$37 ; $CCE5
        db      $15,$99,$CC,$15,$B7,$CC,$20,$D3,$CC,$00,$F2,$CC,$CF,$99,$15,$09 ; $CCF5
        db      $01,$05,$F7,$3F,$05,$14,$1F,$21,$1F,$CF,$1E,$12,$01,$0D,$7D,$1E ; $CD05
        db      $DC,$1E,$09,$01,$55,$F7,$53,$01,$EA,$03,$2B,$CD,$09,$01,$2A,$F7 ; $CD15
        db      $4C,$01,$E2,$03,$2F,$CD,$09,$01,$67,$FF,$12,$01,$3A,$54,$1D,$12 ; $CD25
        db      $01,$14,$DF,$1B,$2C,$1A,$09,$01,$98,$37,$B4,$1C,$09,$01,$95,$00 ; $CD35
        db      $5F,$1C,$09,$01,$48,$E1,$4C,$01,$5B,$1D,$09,$01,$25,$F7,$53,$01 ; $CD45
        db      $E3,$01,$EA,$03,$76,$CD,$09,$01,$55,$F7,$53,$01,$EA,$03,$72,$CD ; $CD55
        db      $09,$01,$FF,$F5,$3A,$05,$12,$01,$20,$DF,$1B,$2C,$1A,$1A,$85,$43 ; $CD65
        db      $1C,$09,$01,$25,$F7,$1D,$1C,$E9,$19,$2A,$01,$5B,$1D,$30,$1C,$EA ; $CD75
        db      $03,$F7,$CD,$0E,$1F,$9B,$1D,$09,$01,$2A,$F7,$61,$05,$C3,$2C,$EA ; $CD85
        db      $03,$F3,$CD,$09,$01,$32,$01,$36,$01,$36,$01,$0E,$1F,$9B,$1D,$09 ; $CD95
        db      $01,$9A,$00,$5A,$01,$60,$01,$60,$01,$60,$01,$12,$01,$03,$FF,$02 ; $CDA5
        db      $36,$01,$09,$01,$84,$03,$1C,$02,$EA,$03,$C7,$CD,$43,$01,$09,$01 ; $CDB5
        db      $84,$03,$09,$01,$28,$F7,$61,$05,$09,$01,$F1,$E1,$53,$01,$A6,$01 ; $CDC5
        db      $09,$01,$48,$E1,$36,$01,$4C,$01,$09,$01,$20,$02,$08,$02,$EA,$03 ; $CDD5
        db      $ED,$CD,$7D,$05,$E2,$03,$EF,$CD,$FB,$02,$AB,$22,$75,$CB,$E2,$03 ; $CDE5
        db      $42,$CE,$09,$01,$05,$F7,$3A,$05,$09,$01,$3D,$E1,$53,$01,$09,$01 ; $CDF5
        db      $DD,$E1,$53,$01,$08,$02,$EA,$03,$27,$CE,$09,$01,$27,$F7,$2A,$01 ; $CE05
        db      $09,$01,$46,$E1,$80,$1A,$EA,$03,$25,$CE,$3A,$05,$E2,$03,$27,$CE ; $CE15
        db      $3F,$05,$A8,$1E,$0C,$1E,$14,$1F,$09,$01,$EF,$CC,$B4,$1C,$6C,$86 ; $CE25
        db      $E7,$15,$12,$01,$48,$DF,$1B,$E9,$19,$0C,$1E,$49,$91,$02,$23,$54 ; $CE35
        db      $22,$FD,$00                                                     ; $CE45
TERSE_COLON_CE48:
        rst     $08                             ; $CE48 colon entry
        dw      $0109                ; $CE49 _LIT
        dw      $E13D                ; $CE4B inline word
        dw      $2CD4                ; $CE4D execution token $2CD4
        dw      $03EA                ; $CE4F _0BRANCH
        dw      LCE5F                ; $CE51 branch target
        dw      $0109                ; $CE53 _LIT
        dw      $E141                ; $CE55 inline word
        dw      $0109                ; $CE57 _LIT
        dw      $E144                ; $CE59 inline word
        dw      $03E2                ; $CE5B _BRANCH
        dw      LCE67                ; $CE5D branch target
LCE5F:
        dw      $0109                ; $CE5F _LIT
        dw      $E140                ; $CE61 inline word
        dw      $0109                ; $CE63 _LIT
        dw      $E142                ; $CE65 inline word
LCE67:
        dw      $053F                ; $CE67 _BZERO
        dw      $0136                ; $CE69 _DUP
        dw      $0153                ; $CE6B _Bat
        dw      $0225                ; $CE6D _0gt
        dw      $03EA                ; $CE6F _0BRANCH
        dw      LCE77                ; $CE71 branch target
        dw      $0136                ; $CE73 _DUP
        dw      $0544                ; $CE75 _1minusBbang
LCE77:
        dw      $0153                ; $CE77 _Bat
        dw      $01DE                ; $CE79 _zeroequal
        dw      $03EA                ; $CE7B _0BRANCH
        dw      LCE91                ; $CE7D branch target
        dw      $0136                ; $CE7F _DUP
        dw      $0153                ; $CE81 _Bat
        dw      $0146                ; $CE83 _SWAP
        dw      $0544                ; $CE85 _1minusBbang
        dw      $0109                ; $CE87 _LIT
        dw      $E13F                ; $CE89 inline word
        dw      $053A                ; $CE8B _BONE
        dw      $03E2                ; $CE8D _BRANCH
        dw      LCE93                ; $CE8F branch target
LCE91:
        dw      $0153                ; $CE91 _Bat
LCE93:
        dw      $359F                ; $CE93 execution token $359F
        dw      $0112                ; $CE95 _LITbyte
        db      $02                  ; $CE97 inline byte
        dw      $01CF                ; $CE98 _equal
        dw      $03EA                ; $CE9A _0BRANCH
        dw      LCEBD                ; $CE9C branch target
        dw      $0109                ; $CE9E _LIT
        dw      $E146                ; $CEA0 inline word
        dw      $0109                ; $CEA2 _LIT
        dw      $F727                ; $CEA4 inline word
        dw      $0136                ; $CEA6 _DUP
        dw      $0153                ; $CEA8 _Bat
        dw      $03EA                ; $CEAA _0BRANCH
        dw      LCEB9                ; $CEAC branch target
        dw      $053F                ; $CEAE _BZERO
        dw      $0112                ; $CEB0 _LITbyte
        db      $02                  ; $CEB2 inline byte
        dw      $055C                ; $CEB3 _Bbang
        dw      $03E2                ; $CEB5 _BRANCH
        dw      LCEBD                ; $CEB7 branch target
LCEB9:
        dw      $053A                ; $CEB9 _BONE
        dw      $053A                ; $CEBB _BONE
LCEBD:
        dw      $00FD                ; $CEBD _RETURN
TERSE_COLON_CEBF:
        rst     $08                             ; $CEBF colon entry
        dw      $0109                ; $CEC0 _LIT
        dw      $F753                ; $CEC2 inline word
        dw      $0153                ; $CEC4 _Bat
        dw      $00FD                ; $CEC6 _RETURN
TERSE_COLON_CEC8:
        rst     $08                             ; $CEC8 colon entry
LCEC9:
        dw      $0109                ; $CEC9 _LIT
        dw      $DF1D                ; $CECB inline word
        dw      $0153                ; $CECD _Bat
        dw      $1B32                ; $CECF execution token $1B32
        dw      $0109                ; $CED1 _LIT
        dw      $0080                ; $CED3 inline word
        dw      $015A                ; $CED5 _plus
        dw      $0109                ; $CED7 _LIT
        dw      $F753                ; $CED9 inline word
        dw      $0532                ; $CEDB _SBbang
        dw      TERSE_COLON_CEBF     ; $CEDD TERSE_COLON_CEBF
        dw      $0109                ; $CEDF _LIT
        dw      $00F3                ; $CEE1 inline word
        dw      $02D8                ; $CEE3 _OUTP
        dw      $0109                ; $CEE5 _LIT
        dw      $C000                ; $CEE7 inline word
        dw      $014C                ; $CEE9 _at
        dw      $014C                ; $CEEB _at
        dw      $0109                ; $CEED _LIT
        dw      $FFFF                ; $CEEF inline word
        dw      $01E5                ; $CEF1 _not_equal
        dw      $03EA                ; $CEF3 _0BRANCH
        dw      LCEC9                ; $CEF5 branch target
        dw      $00FD                ; $CEF7 _RETURN
TERSE_COLON_CEF9:
        rst     $08                             ; $CEF9 colon entry
        dw      $0109                ; $CEFA _LIT
        dw      $E14A                ; $CEFC inline word
        dw      $0153                ; $CEFE _Bat
        dw      $00FD                ; $CF00 _RETURN
TERSE_COLON_CF02:
        rst     $08                             ; $CF02 colon entry
        dw      TERSE_COLON_CEF9     ; $CF03 TERSE_COLON_CEF9
        dw      $0112                ; $CF05 _LITbyte
        db      $06                  ; $CF07 inline byte
        dw      $038D                ; $CF08 _slash
        dw      $01A6                ; $CF0A _2splat
        dw      $0109                ; $CF0C _LIT
        dw      $E13E                ; $CF0E inline word
        dw      $0153                ; $CF10 _Bat
        dw      $03EA                ; $CF12 _0BRANCH
        dw      LCF1B                ; $CF14 branch target
        dw      $0112                ; $CF16 _LITbyte
        db      $08                  ; $CF18 inline byte
        dw      $015A                ; $CF19 _plus
LCF1B:
        dw      $0136                ; $CF1B _DUP
        dw      $0112                ; $CF1D _LITbyte
        db      $0E                  ; $CF1F inline byte
        dw      $021C                ; $CF20 _gt
        dw      $03EA                ; $CF22 _0BRANCH
        dw      LCF2B                ; $CF24 branch target
        dw      $0143                ; $CF26 _DROP
        dw      $0112                ; $CF28 _LITbyte
        db      $0E                  ; $CF2A inline byte
LCF2B:
        dw      $0109                ; $CF2B _LIT
        dw      $E14B                ; $CF2D inline word
        dw      $0532                ; $CF2F _SBbang
        dw      $00FD                ; $CF31 _RETURN
TERSE_COLON_CF33:
        rst     $08                             ; $CF33 colon entry
        dw      $0109                ; $CF34 _LIT
        dw      $C000                ; $CF36 inline word
        dw      $014C                ; $CF38 _at
        dw      $014C                ; $CF3A _at
        dw      $0109                ; $CF3C _LIT
        dw      $E14B                ; $CF3E inline word
        dw      $0153                ; $CF40 _Bat
        dw      $015A                ; $CF42 _plus
        dw      $014C                ; $CF44 _at
        dw      $00FD                ; $CF46 _RETURN
TERSE_COLON_CF48:
        rst     $08                             ; $CF48 colon entry
        dw      $0136                ; $CF49 _DUP
        dw      $0153                ; $CF4B _Bat
        dw      $1B32                ; $CF4D execution token $1B32
        dw      $01A6                ; $CF4F _2splat
        dw      $015A                ; $CF51 _plus
        dw      $0195                ; $CF53 _1plus
        dw      $014C                ; $CF55 _at
        dw      $00FD                ; $CF57 _RETURN
TERSE_COLON_CF59:
        rst     $08                             ; $CF59 colon entry
        dw      $0112                ; $CF5A _LITbyte
        db      $10                  ; $CF5C inline byte
        dw      $012A                ; $CF5D _0
        dw      $026F                ; $CF5F _DO
        dw      $0136                ; $CF61 _DUP
        dw      $02B8                ; $CF63 _I
        dw      $0125                ; $CF65 _ARRAY
        dw      $F730                ; $CF67 inline word
        dw      $014C                ; $CF69 _at
        dw      $01CF                ; $CF6B _equal
        dw      $03EA                ; $CF6D _0BRANCH
        dw      LCF77                ; $CF6F branch target
        dw      $0143                ; $CF71 _DROP
        dw      $012A                ; $CF73 _0
        dw      $03F7                ; $CF75 _LEAVE
LCF77:
        dw      $028A                ; $CF77 _LOOP
        dw      $00FD                ; $CF79 _RETURN
TERSE_COLON_CF7B:
        rst     $08                             ; $CF7B colon entry
        dw      $0109                ; $CF7C _LIT
        dw      $F751                ; $CF7E inline word
        dw      $0136                ; $CF80 _DUP
        dw      $0136                ; $CF82 _DUP
        dw      $0153                ; $CF84 _Bat
        dw      $0112                ; $CF86 _LITbyte
        db      $0E                  ; $CF88 inline byte
        dw      $021C                ; $CF89 _gt
        dw      $03EA                ; $CF8B _0BRANCH
        dw      LCF95                ; $CF8D branch target
        dw      $053F                ; $CF8F _BZERO
        dw      $03E2                ; $CF91 _BRANCH
        dw      LCF97                ; $CF93 branch target
LCF95:
        dw      $0549                ; $CF95 _1plusBbang
LCF97:
        dw      $0153                ; $CF97 _Bat
        dw      $0125                ; $CF99 _ARRAY
        dw      $F730                ; $CF9B inline word
        dw      $0561                ; $CF9D _bang
        dw      $00FD                ; $CF9F _RETURN
TERSE_COLON_CFA1:
        rst     $08                             ; $CFA1 colon entry
        dw      $0112                ; $CFA2 _LITbyte
        db      $05                  ; $CFA4 inline byte
        dw      $0109                ; $CFA5 _LIT
        dw      $F752                ; $CFA7 inline word
        dw      $0532                ; $CFA9 _SBbang
        dw      $0109                ; $CFAB _LIT
        dw      $F750                ; $CFAD inline word
        dw      $0136                ; $CFAF _DUP
        dw      $0544                ; $CFB1 _1minusBbang
        dw      $0153                ; $CFB3 _Bat
        dw      $01DE                ; $CFB5 _zeroequal
        dw      $03EA                ; $CFB7 _0BRANCH
        dw      LCFC8                ; $CFB9 branch target
        dw      $0112                ; $CFBB _LITbyte
        db      $0A                  ; $CFBD inline byte
        dw      $0109                ; $CFBE _LIT
        dw      $F750                ; $CFC0 inline word
        dw      $0532                ; $CFC2 _SBbang
        dw      $03E2                ; $CFC4 _BRANCH
        dw      LCFE0                ; $CFC6 branch target
LCFC8:
        dw      $0136                ; $CFC8 _DUP
        dw      $0109                ; $CFCA _LIT
        dw      $F751                ; $CFCC inline word
        dw      $0153                ; $CFCE _Bat
        dw      $0125                ; $CFD0 _ARRAY
        dw      $F730                ; $CFD2 inline word
        dw      $014C                ; $CFD4 _at
        dw      $01CF                ; $CFD6 _equal
        dw      $03EA                ; $CFD8 _0BRANCH
        dw      LCFE0                ; $CFDA branch target
        dw      $0143                ; $CFDC _DROP
        dw      $012A                ; $CFDE _0
LCFE0:
        dw      $00FD                ; $CFE0 _RETURN
        db      $CF,$12,$01,$05,$09,$01,$52,$F7,$32,$05,$12,$01,$10,$09,$01,$50 ; $CFE2
        db      $F7,$32,$05,$02,$CF,$C8,$CE,$33,$CF,$9F,$34,$EA,$03,$1D,$D0,$48 ; $CFF2
        db      $CF,$BA,$22,$09,$01,$52,$F7,$36,$01,$44,$05,$53,$01,$EA,$03,$19 ; $D002
        db      $D0,$59,$CF,$E2,$03,$1B,$D0,$A1,$CF,$9F,$34,$EA,$03,$F7         ; $D012
TERSE_COLON_D020:
        rst     $08                             ; $D020 colon entry
        dw      $0136                ; $D021 _DUP
        dw      TERSE_COLON_CF7B     ; $D023 TERSE_COLON_CF7B
        dw      $00FD                ; $D025 _RETURN
TERSE_COLON_D027:
        rst     $08                             ; $D027 colon entry
        dw      $012A                ; $D028 _0
        dw      $0109                ; $D02A _LIT
        dw      $F000                ; $D02C inline word
        dw      $0109                ; $D02E _LIT
        dw      $0300                ; $D030 inline word
        dw      $21A2                ; $D032 execution token $21A2
        dw      $00FD                ; $D034 _RETURN
TERSE_COLON_D036:
        rst     $08                             ; $D036 colon entry
        dw      $012A                ; $D037 _0
        dw      $012A                ; $D039 _0
        dw      $013B                ; $D03B _2DUP
        dw      $0109                ; $D03D _LIT
        dw      $E1E2                ; $D03F inline word
        dw      NATIVE_CB66          ; $D041 NATIVE_CB66
        dw      $0109                ; $D043 _LIT
        dw      $E1DE                ; $D045 inline word
        dw      NATIVE_CB66          ; $D047 NATIVE_CB66
        dw      $0109                ; $D049 _LIT
        dw      $FEF9                ; $D04B inline word
        dw      $0569                ; $D04D _ZERO
        dw      $0109                ; $D04F _LIT
        dw      $FEF8                ; $D051 inline word
        dw      $053F                ; $D053 _BZERO
        dw      $0109                ; $D055 _LIT
        dw      $E1F2                ; $D057 inline word
        dw      $0153                ; $D059 _Bat
        dw      $0190                ; $D05B _1minus
        dw      $0112                ; $D05D _LITbyte
        db      $10                  ; $D05F inline byte
        dw      $02FF                ; $D060 _star
        dw      $0112                ; $D062 _LITbyte
        db      $60                  ; $D064 inline byte
        dw      $015A                ; $D065 _plus
        dw      $0109                ; $D067 _LIT
        dw      $E148                ; $D069 inline word
        dw      $0561                ; $D06B _bang
        dw      $0109                ; $D06D _LIT
        dw      $E14A                ; $D06F inline word
        dw      $053F                ; $D071 _BZERO
        dw      $0109                ; $D073 _LIT
        dw      $E1EE                ; $D075 inline word
        dw      $0153                ; $D077 _Bat
        dw      $0136                ; $D079 _DUP
        dw      $0109                ; $D07B _LIT
        dw      $E141                ; $D07D inline word
        dw      $0532                ; $D07F _SBbang
        dw      $0109                ; $D081 _LIT
        dw      $E140                ; $D083 inline word
        dw      $0532                ; $D085 _SBbang
        dw      $0109                ; $D087 _LIT
        dw      $E145                ; $D089 inline word
        dw      $053F                ; $D08B _BZERO
        dw      $0109                ; $D08D _LIT
        dw      $E143                ; $D08F inline word
        dw      $053F                ; $D091 _BZERO
        dw      $0109                ; $D093 _LIT
        dw      $E13E                ; $D095 inline word
        dw      $053F                ; $D097 _BZERO
        dw      $0109                ; $D099 _LIT
        dw      $FD83                ; $D09B inline word
        dw      $053A                ; $D09D _BONE
        dw      $00FD                ; $D09F _RETURN
NATIVE_D0A1:
        call $07fe                      ; $D0A1
        jp (iy)                         ; $D0A4
NATIVE_D0A6:
        call $0813                      ; $D0A6
        jp (iy)                         ; $D0A9
NATIVE_D0AB:
        call $07e7                      ; $D0AB
        jp (iy)                         ; $D0AE
TERSE_COLON_D0B0:
        rst     $08                             ; $D0B0 colon entry
        dw      $0109                ; $D0B1 _LIT
        dw      $E1DD                ; $D0B3 inline word
        dw      $0153                ; $D0B5 _Bat
        dw      $0190                ; $D0B7 _1minus
        dw      $03EA                ; $D0B9 _0BRANCH
        dw      LD0C3                ; $D0BB branch target
        dw      NATIVE_D0A6          ; $D0BD NATIVE_D0A6
        dw      $03E2                ; $D0BF _BRANCH
        dw      LD0C5                ; $D0C1 branch target
LD0C3:
        dw      NATIVE_D0A1          ; $D0C3 NATIVE_D0A1
LD0C5:
        dw      NATIVE_D0AB          ; $D0C5 NATIVE_D0AB
        dw      $00FD                ; $D0C7 _RETURN
TERSE_COLON_D0C9:
        rst     $08                             ; $D0C9 colon entry
        dw      $012A                ; $D0CA _0
        dw      $0109                ; $D0CC _LIT
        dw      $00F3                ; $D0CE inline word
        dw      $02D8                ; $D0D0 _OUTP
        dw      $00FD                ; $D0D2 _RETURN
TERSE_COLON_D0D4:
        rst     $08                             ; $D0D4 colon entry
        dw      $0112                ; $D0D5 _LITbyte
        db      $20                  ; $D0D7 inline byte
        dw      $0109                ; $D0D8 _LIT
        dw      $00F3                ; $D0DA inline word
        dw      $02D8                ; $D0DC _OUTP
        dw      $00FD                ; $D0DE _RETURN
NATIVE_D0E0:
        call $0673                      ; $D0E0
        jp (iy)                         ; $D0E3
TERSE_COLON_D0E5:
        rst     $08                             ; $D0E5 colon entry
        dw      $0112                ; $D0E6 _LITbyte
        db      $03                  ; $D0E8 inline byte
        dw      $012A                ; $D0E9 _0
        dw      $026F                ; $D0EB _DO
        dw      $02B8                ; $D0ED _I
        dw      $0125                ; $D0EF _ARRAY
        dw      $F6F4                ; $D0F1 inline word
        dw      $0569                ; $D0F3 _ZERO
        dw      $028A                ; $D0F5 _LOOP
        dw      $00FD                ; $D0F7 _RETURN
        db      $CF,$99,$15,$C9,$D0,$09,$01,$47,$E1,$53,$01,$DE,$01,$EA,$03,$0C ; $D0F9
        db      $D1,$36,$D0,$27,$D0,$2A,$01,$09,$01,$C3,$00,$D8,$02,$09,$01,$95 ; $D109
        db      $2D,$7C,$2D,$7F,$92,$E5,$D0,$09,$01,$55,$F7,$3F,$05,$09,$01,$05 ; $D119
        db      $F7,$3F,$05,$09,$01,$21,$F7,$3F,$05,$09,$01,$28,$F7,$69,$05,$09 ; $D129
        db      $01,$3E,$E1,$53,$01,$EA,$03,$4A,$D1,$09,$01,$10,$C0,$E2,$03,$5E ; $D139
        db      $D1,$A8,$34,$DE,$01,$EA,$03,$5A,$D1,$09,$01,$0E,$C0,$E2,$03,$5E ; $D149
        db      $D1,$09,$01,$12,$C0,$4C,$01,$BB,$22,$F7,$15,$E2,$CF,$BB,$22,$F7 ; $D159
        db      $15,$8D,$92,$09,$01,$57,$F7,$3F,$05,$09,$01,$55,$F7,$3F,$05,$09 ; $D169
        db      $01,$21,$F7,$3A,$05,$09,$01,$1A,$C0,$4C,$01,$BB,$22,$F7,$15,$09 ; $D179
        db      $01,$1E,$C0,$4C,$01,$BB,$22,$F7,$15,$09,$01,$3F,$E1,$3F,$05,$C3 ; $D189
        db      $2C,$09,$01,$3E,$E1,$53,$01,$88,$01,$DE,$01,$EA,$03,$17,$D2,$48 ; $D199
        db      $CE,$09,$01,$05,$F7,$53,$01,$DE,$01,$09,$01,$3D,$E1,$53,$01,$25 ; $D1A9
        db      $02,$79,$01,$EA,$03,$E7,$D1,$AB,$22,$07,$92,$12,$01,$14,$DF,$1B ; $D1B9
        db      $2C,$1A,$09,$01,$55,$F7,$3A,$05,$09,$01,$1A,$C0,$4C,$01,$BB,$22 ; $D1C9
        db      $09,$01,$1E,$C0,$4C,$01,$BB,$22,$F7,$15,$AB,$22,$A9,$BD,$C3,$2C ; $D1D9
        db      $09,$01,$05,$F7,$53,$01,$09,$01,$55,$F7,$53,$01,$79,$01,$09,$01 ; $D1E9
        db      $3D,$E1,$53,$01,$30,$01,$CF,$01,$79,$01,$88,$01,$DE,$01,$09,$01 ; $D1F9
        db      $3D,$E1,$53,$01,$25,$02,$79,$01,$EA,$03,$17,$D2,$48,$CE,$09,$01 ; $D209
        db      $FF,$F5,$3A,$05,$09,$01,$05,$F7,$53,$01,$09,$01,$3D,$E1,$53,$01 ; $D219
        db      $DE,$01,$88,$01,$EA,$03,$3C,$D2,$12,$01,$3C,$DF,$1B,$2C,$1A,$E2 ; $D229
        db      $03,$46,$D2,$09,$01,$1E,$F7,$3A,$05,$AB,$22,$07,$92,$12,$01,$3C ; $D239
        db      $DF,$1B,$2C,$1A,$64,$35,$09,$01,$FA,$F6,$1D,$1C,$2C,$1A,$09,$35 ; $D249
        db      $09,$01,$FA,$F6,$1D,$1C,$2C,$1A,$12,$01,$32,$DF,$1B,$2C,$1A,$09 ; $D259
        db      $01,$E8,$F6,$3A,$05,$09,$01,$E7,$F6,$3A,$05,$12,$01,$14,$DF,$1B ; $D269
        db      $2C,$1A,$7F,$92,$09,$01,$3F,$E1,$53,$01,$EA,$03,$A9,$D2,$09,$01 ; $D279
        db      $3D,$E1,$53,$01,$DE,$01,$EA,$03,$95,$D2,$B0,$D0,$09,$01,$0C,$C0 ; $D289
        db      $4C,$01,$BB,$22,$F7,$15,$09,$01,$14,$C0,$4C,$01,$BB,$22,$F7,$15 ; $D299
        db      $09,$01,$2D,$C4,$BB,$22,$F7,$15,$09,$01,$3E,$E1,$3F,$05,$09,$01 ; $D2A9
        db      $44,$E1,$53,$01,$09,$01,$F3,$E1,$53,$01,$F9,$CE,$12,$01,$1D,$1C ; $D2B9
        db      $02,$EA,$03,$D0,$D2,$9A,$01,$CF,$01,$EA,$03,$EC,$D2,$09,$01,$46 ; $D2C9
        db      $E1,$3A,$05,$09,$01,$3E,$E1,$3A,$05,$09,$01,$44,$E1,$3F,$05,$E2 ; $D2D9
        db      $03,$20,$D3,$09,$01,$42,$E1,$53,$01,$09,$01,$F3,$E1,$53,$01,$F9 ; $D2E9
        db      $CE,$12,$01,$1D,$1C,$02,$EA,$03,$05,$D3,$9A,$01,$CF,$01,$EA,$03 ; $D2F9
        db      $20,$D3,$12,$01,$02,$09,$01,$46,$E1,$32,$05,$09,$01,$3E,$E1,$3A ; $D309
        db      $05,$09,$01,$42,$E1,$3F,$05,$09,$01,$3D,$E1,$53,$01,$30,$01,$1C ; $D319
        db      $02,$09,$01,$3E,$E1,$53,$01,$DE,$01,$79,$01,$EA,$03,$41,$D3,$12 ; $D329
        db      $01,$03,$09,$01,$46,$E1,$32,$05,$09,$01,$3D,$E1,$53,$01,$30,$01 ; $D339
        db      $08,$02,$EA,$03,$0C,$D1,$E0,$D0,$B1,$34,$C3,$34,$D4,$D0,$09,$01 ; $D349
        db      $EF,$E1,$53,$01,$09,$01,$83,$FD,$32,$05,$09,$01,$02,$C0,$4C,$01 ; $D359
        db      $BB,$22,$84,$27,$FD,$00,$CF,$99,$15,$12,$01,$05,$09,$01,$BF,$00 ; $D369
        db      $D8,$02,$12,$01,$02,$40,$1F,$12,$01,$2C,$09,$01,$F0,$FF,$54,$1D ; $D379
        db      $93,$2C,$09,$01,$30,$C4,$8E,$1E,$9B,$1E,$0C,$1E,$12,$01,$4D,$7D ; $D389
        db      $1E,$09,$01,$E6,$FF,$3C,$1D,$D4,$2C,$EA,$03,$B0,$D3,$09,$01,$DA ; $D399
        db      $90,$8E,$1E,$E2,$03,$B6,$D3,$09,$01,$DC,$90,$8E,$1E,$83,$20,$12 ; $D3A9
        db      $01,$10,$09,$01,$BF,$00,$D8,$02,$1E,$84,$09,$01,$CE,$FD,$36,$01 ; $D3B9
        db      $53,$01,$30,$01,$60,$01,$12,$01,$0F,$79,$01,$5C,$05,$09,$01,$AF ; $D3C9
        db      $FD,$3A,$05,$12,$01,$02,$DF,$1B,$2C,$1A,$09,$01,$DD,$F6,$53,$01 ; $D3D9
        db      $EA,$03,$C3,$D3,$09,$01,$95,$2D,$7C,$2D,$02,$23,$2A,$01,$09,$01 ; $D3E9
        db      $BF,$00,$D8,$02,$54,$22,$FD,$00,$03,$6F,$D3,$87,$C4,$9F,$90,$01 ; $D3F9
        db      $87,$C4,$02,$1A,$CB,$87,$C4,$01,$5C,$C0,$03,$B2,$C8,$D6,$C9,$93 ; $D409
        db      $C6,$02,$E6,$93,$AF,$91,$01,$01,$CD,$91,$01,$01,$CD,$CF,$99,$15 ; $D419
        db      $E7,$15,$09,$01,$EC,$E1,$53,$CF,$99,$15,$02,$23,$12,$01,$02,$40 ; $D429
        db      $1F,$09,$01,$EC,$E1,$53,$01,$9F,$34,$EA,$03,$5C,$D4,$30,$01,$1C ; $D439
        db      $02,$EA,$03,$56,$D4,$09,$01,$14,$0C,$E2,$03,$5A,$D4,$09,$01,$14 ; $D449
        db      $04,$4B,$1F,$09,$01,$F0,$E1,$53,$01,$EA,$03,$6C,$D4,$09,$01,$14 ; $D459
        db      $0C,$4B,$1F,$12,$01,$15,$DF,$1B,$2C,$1A,$12,$01,$14,$4B,$1F,$12 ; $D469
        db      $01,$15,$DF,$1B,$2C,$1A,$2A,$01,$EA,$03,$3A,$D4,$54,$22,$FD,$00 ; $D479
        db      $CF,$99,$15,$21,$1F,$02,$23,$09,$01,$15,$14,$EF,$3C,$2C,$1A,$09 ; $D489
        db      $01,$15,$36,$EF,$3C,$2C,$1A,$09,$01,$15,$77,$EF,$3C,$2C,$1A,$12 ; $D499
        db      $01,$05,$DF,$1B,$2C,$1A,$09,$01,$15,$63,$EF,$3C,$2C,$1A,$09,$01 ; $D4A9
        db      $15,$41,$EF,$3C,$2C,$1A,$12,$01,$15,$EF,$3C,$2C,$1A,$09,$01,$00 ; $D4B9
        db      $01,$32,$1B,$12,$01,$10,$5A,$01,$DF,$1B,$2C,$1A,$2A,$01,$EA,$03 ; $D4C9
        db      $90,$D4,$54,$22,$FD,$00,$CF,$99,$15,$02,$23,$09,$01,$54,$F7,$3F ; $D4D9
        db      $05,$E7,$15,$09,$01,$EC,$E1,$53,$01,$25,$02,$09,$01,$F0,$E1,$53 ; $D4E9
        db      $01,$88,$01,$EA,$03,$E4,$D5,$E7,$15,$12,$01,$10,$E0,$02,$6E,$01 ; $D4F9
        db      $B9,$2C,$12,$01,$03,$79,$01,$36,$01,$12,$01,$02,$1C,$02,$EA,$03 ; $D509
        db      $1F,$D5,$43,$01,$2A,$01,$9F,$34,$EA,$03,$00,$D5,$09,$01,$F0,$E1 ; $D519
        db      $53,$01,$EA,$03,$37,$D5,$36,$01,$09,$01,$EC,$E1,$32,$05,$09,$01 ; $D529
        db      $EC,$E1,$36,$01,$53,$01,$36,$01,$30,$01,$1C,$02,$EA,$03,$6B,$D5 ; $D539
        db      $12,$01,$03,$F1,$02,$60,$01,$5C,$05,$36,$01,$30,$01,$CF,$01,$EA ; $D549
        db      $03,$62,$D5,$30,$01,$E2,$03,$65,$D5,$12,$01,$03,$30,$01,$E2,$03 ; $D559
        db      $8C,$D5,$12,$01,$03,$F1,$02,$36,$01,$30,$01,$CF,$01,$EA,$03,$86 ; $D569
        db      $D5,$60,$01,$5C,$05,$30,$01,$30,$01,$E2,$03,$8C,$D5,$FB,$02,$FB ; $D579
        db      $02,$2A,$01,$EA,$03,$DE,$D5,$09,$01,$46,$E1,$32,$05,$36,$01,$09 ; $D589
        db      $01,$3D,$E1,$32,$05,$09,$01,$DD,$E1,$32,$05,$2A,$01,$2A,$01,$3B ; $D599
        db      $01,$09,$01,$E2,$E1,$AE,$20,$09,$01,$DE,$E1,$AE,$20,$09,$01,$47 ; $D5A9
        db      $E1,$3F,$05,$09,$01,$FF,$E1,$3F,$05,$09,$01,$23,$F7,$3F,$05,$09 ; $D5B9
        db      $01,$22,$F7,$3F,$05,$12,$01,$14,$4B,$1F,$12,$01,$15,$4B,$1F,$30 ; $D5C9
        db      $01,$E2,$03,$E0,$D5,$2A,$01,$E2,$03,$E6,$D5,$2A,$01,$EA,$03,$EA ; $D5D9
        db      $D4,$89,$27,$09,$01,$EF,$F5,$3A,$05,$09,$01,$FD,$E1,$3F,$05,$2B ; $D5E9
        db      $2D,$B1,$34,$C3,$34,$09,$01,$B9,$FC,$36,$01,$90,$22,$09,$01,$1C ; $D5F9
        db      $C0,$4C,$01,$BA,$22,$84,$27,$FD,$00                             ; $D609
TERSE_COLON_D612:
        rst     $08                             ; $D612 colon entry
        dw      $0109                ; $D613 _LIT
        dw      $F6C8                ; $D615 inline word
        dw      $0195                ; $D617 _1plus
        dw      $0532                ; $D619 _SBbang
        dw      $00FD                ; $D61B _RETURN
TERSE_COLON_D61D:
        rst     $08                             ; $D61D colon entry
        dw      $0109                ; $D61E _LIT
        dw      $E1DD                ; $D620 inline word
        dw      $0153                ; $D622 _Bat
        dw      $0190                ; $D624 _1minus
        dw      $00FD                ; $D626 _RETURN
TERSE_COLON_D628:
        rst     $08                             ; $D628 colon entry
        dw      $1D3C                ; $D629 execution token $1D3C
        dw      $1D24                ; $D62B execution token $1D24
        dw      $1E8E                ; $D62D execution token $1E8E
        dw      $00FD                ; $D62F _RETURN
        db      $15,$66,$69,$6E,$64,$20,$69,$6E,$69,$74,$69,$61,$6C,$20,$66,$6F ; $D631
        db      $72,$77,$61,$72,$64,$73,$16,$66,$69,$6E,$64,$20,$69,$6E,$69,$74 ; $D641
        db      $69,$61,$6C,$20,$62,$61,$63,$6B,$77,$61,$72,$64,$73,$0D,$65,$6E ; $D651
        db      $74,$65,$72,$20,$69,$6E,$69,$74,$69,$61,$6C                     ; $D661
TERSE_COLON_D66C:
        rst     $08                             ; $D66C colon entry
        dw      $012A                ; $D66D _0
        dw      $0112                ; $D66F _LITbyte
        db      $1E                  ; $D671 inline byte
        dw      $1D54                ; $D672 execution token $1D54
        dw      $0109                ; $D674 _LIT
        dw      $31AA                ; $D676 inline word
        dw      $2CF2                ; $D678 execution token $2CF2
        dw      $0109                ; $D67A _LIT
        dw      $FFF6                ; $D67C inline word
        dw      $1D3C                ; $D67E execution token $1D3C
        dw      $0109                ; $D680 _LIT
        dw      $322F                ; $D682 inline word
        dw      $2CF2                ; $D684 execution token $2CF2
        dw      $0109                ; $D686 _LIT
        dw      $FFCE                ; $D688 inline word
        dw      $1D3C                ; $D68A execution token $1D3C
        dw      $0109                ; $D68C _LIT
        dw      $329A                ; $D68E inline word
        dw      $2CF2                ; $D690 execution token $2CF2
        dw      $0112                ; $D692 _LITbyte
        db      $0F                  ; $D694 inline byte
        dw      $1E7D                ; $D695 execution token $1E7D
        dw      $0112                ; $D697 _LITbyte
        db      $1E                  ; $D699 inline byte
        dw      $0112                ; $D69A _LITbyte
        db      $0A                  ; $D69C inline byte
        dw      $1D54                ; $D69D execution token $1D54
        dw      $0109                ; $D69F _LIT
        dw      $D631                ; $D6A1 inline word
        dw      $2D00                ; $D6A3 execution token $2D00
        dw      $0109                ; $D6A5 _LIT
        dw      $FFE2                ; $D6A7 inline word
        dw      $1D3C                ; $D6A9 execution token $1D3C
        dw      $0109                ; $D6AB _LIT
        dw      $D65E                ; $D6AD inline word
        dw      $2D00                ; $D6AF execution token $2D00
        dw      $0109                ; $D6B1 _LIT
        dw      $FFBA                ; $D6B3 inline word
        dw      $1D3C                ; $D6B5 execution token $1D3C
        dw      $0109                ; $D6B7 _LIT
        dw      $D647                ; $D6B9 inline word
        dw      $2D00                ; $D6BB execution token $2D00
        dw      $2C93                ; $D6BD execution token $2C93
        dw      $00FD                ; $D6BF _RETURN
        db      $CF,$99,$15,$02,$23,$54,$22,$FD,$00,$CF,$99,$15,$0E,$1F,$09,$01 ; $D6C1
        db      $D8,$F6,$61,$05,$12,$01,$3C,$DF,$1B,$2C,$1A,$30,$01,$09,$01,$CA ; $D6D1
        db      $F6,$53,$01,$EA,$03,$F0,$D6,$09,$01,$CA,$F6,$44,$05,$E3,$01,$EA ; $D6E1
        db      $03,$D5,$D6,$12,$01,$03,$09,$01,$CB,$F6,$32,$05,$02,$23,$54,$22 ; $D6F1
        db      $FD,$00,$CF,$99,$15,$09,$01,$30,$2A,$DF,$1B,$2C,$1A,$09,$01,$D8 ; $D701
        db      $F6,$4C,$01,$C1,$D6,$12,$01,$03,$09,$01,$CB,$F6,$32,$05,$02,$23 ; $D711
        db      $54,$22,$FD,$00,$02,$CA,$D6,$03,$D7                             ; $D721
TERSE_COLON_D72A:
        rst     $08                             ; $D72A colon entry
        dw      $0136                ; $D72B _DUP
        dw      $03EA                ; $D72D _0BRANCH
        dw      LD733                ; $D72F branch target
        dw      $0190                ; $D731 _1minus
LD733:
        dw      $0112                ; $D733 _LITbyte
        db      $03                  ; $D735 inline byte
        dw      $02FF                ; $D736 _star
        dw      $0109                ; $D738 _LIT
        dw      $E178                ; $D73A inline word
        dw      $015A                ; $D73C _plus
        dw      $00FD                ; $D73E _RETURN
TERSE_COLON_D740:
        rst     $08                             ; $D740 colon entry
        dw      TERSE_COLON_D72A     ; $D741 TERSE_COLON_D72A
        dw      $0109                ; $D743 _LIT
        dw      $F6CB                ; $D745 inline word
        dw      $0195                ; $D747 _1plus
        dw      $0146                ; $D749 _SWAP
        dw      $0112                ; $D74B _LITbyte
        db      $03                  ; $D74D inline byte
        dw      $05A3                ; $D74E _MOVE
        dw      $00FD                ; $D750 _RETURN
TERSE_COLON_D752:
        rst     $08                             ; $D752 colon entry
        dw      TERSE_COLON_D72A     ; $D753 TERSE_COLON_D72A
        dw      $0109                ; $D755 _LIT
        dw      $F6CB                ; $D757 inline word
        dw      $0195                ; $D759 _1plus
        dw      $0112                ; $D75B _LITbyte
        db      $03                  ; $D75D inline byte
        dw      $05A3                ; $D75E _MOVE
        dw      $0112                ; $D760 _LITbyte
        db      $03                  ; $D762 inline byte
        dw      $0109                ; $D763 _LIT
        dw      $F6CB                ; $D765 inline word
        dw      $0532                ; $D767 _SBbang
        dw      $00FD                ; $D769 _RETURN
TERSE_COLON_D76B:
        rst     $08                             ; $D76B colon entry
        dw      $0136                ; $D76C _DUP
        dw      $03EA                ; $D76E _0BRANCH
        dw      LD774                ; $D770 branch target
        dw      $0190                ; $D772 _1minus
LD774:
        dw      $0112                ; $D774 _LITbyte
        db      $04                  ; $D776 inline byte
        dw      $02FF                ; $D777 _star
        dw      $0109                ; $D779 _LIT
        dw      $E150                ; $D77B inline word
        dw      $015A                ; $D77D _plus
        dw      $00FD                ; $D77F _RETURN
TERSE_COLON_D781:
        rst     $08                             ; $D781 colon entry
        dw      TERSE_COLON_D76B     ; $D782 TERSE_COLON_D76B
        dw      $0136                ; $D784 _DUP
        dw      $019A                ; $D786 _2plus
        dw      $014C                ; $D788 _at
        dw      $0146                ; $D78A _SWAP
        dw      $014C                ; $D78C _at
        dw      $00FD                ; $D78E _RETURN
TERSE_COLON_D790:
        rst     $08                             ; $D790 colon entry
        dw      TERSE_COLON_D76B     ; $D791 TERSE_COLON_D76B
        dw      $0136                ; $D793 _DUP
        dw      $02EA                ; $D795 _ROT
        dw      $0146                ; $D797 _SWAP
        dw      $0561                ; $D799 _bang
        dw      $019A                ; $D79B _2plus
        dw      $0561                ; $D79D _bang
        dw      $00FD                ; $D79F _RETURN
TERSE_COLON_D7A1:
        rst     $08                             ; $D7A1 colon entry
        dw      $0109                ; $D7A2 _LIT
        dw      $E1E2                ; $D7A4 inline word
        dw      $014C                ; $D7A6 _at
        dw      $0109                ; $D7A8 _LIT
        dw      $E1E2                ; $D7AA inline word
        dw      $019A                ; $D7AC _2plus
        dw      $014C                ; $D7AE _at
        dw      $00FD                ; $D7B0 _RETURN
TERSE_COLON_D7B2:
        rst     $08                             ; $D7B2 colon entry
        dw      $0109                ; $D7B3 _LIT
        dw      $E1DE                ; $D7B5 inline word
        dw      $014C                ; $D7B7 _at
        dw      $0109                ; $D7B9 _LIT
        dw      $E1DE                ; $D7BB inline word
        dw      $019A                ; $D7BD _2plus
        dw      $014C                ; $D7BF _at
        dw      $00FD                ; $D7C1 _RETURN
TERSE_COLON_D7C3:
        rst     $08                             ; $D7C3 colon entry
        dw      $0109                ; $D7C4 _LIT
        dw      $F6DA                ; $D7C6 inline word
        dw      $0153                ; $D7C8 _Bat
        dw      $00FD                ; $D7CA _RETURN
        db      $CF,$09,$01,$CB,$F6,$12,$01,$06,$6D,$21,$12,$01,$06,$09,$01,$CB ; $D7CC
        db      $F6,$32,$05,$09,$01,$CB,$F6,$36,$01,$86,$21,$8E,$1E,$FD,$00     ; $D7DC
TERSE_COLON_D7EB:
        rst     $08                             ; $D7EB colon entry
        dw      $0109                ; $D7EC _LIT
        dw      $F6D6                ; $D7EE inline word
        dw      $0153                ; $D7F0 _Bat
        dw      TERSE_COLON_D7C3     ; $D7F2 TERSE_COLON_D7C3
        dw      $01CF                ; $D7F4 _equal
        dw      $0109                ; $D7F6 _LIT
        dw      $F6D5                ; $D7F8 inline word
        dw      $0153                ; $D7FA _Bat
        dw      TERSE_COLON_D7C3     ; $D7FC TERSE_COLON_D7C3
        dw      $01CF                ; $D7FE _equal
        dw      $0188                ; $D800 _OR
        dw      $00FD                ; $D802 _RETURN
TERSE_COLON_D804:
        rst     $08                             ; $D804 colon entry
        dw      $1F0E                ; $D805 execution token $1F0E
        dw      $1D9B                ; $D807 execution token $1D9B
        dw      $015A                ; $D809 _plus
        dw      $1D24                ; $D80B execution token $1D24
        dw      $00FD                ; $D80D _RETURN
        db      $CF,$12,$01,$0A,$F2,$2A,$12,$01,$2E,$12,$01,$5E,$12,$01,$2E,$71 ; $D80F
        db      $2B,$12,$01,$0F,$09,$01,$F8,$00,$2E,$2B,$FD,$00                 ; $D81F
TERSE_COLON_D82B:
        rst     $08                             ; $D82B colon entry
        dw      $0109                ; $D82C _LIT
        dw      $F6C2                ; $D82E inline word
        dw      $0136                ; $D830 _DUP
        dw      $0549                ; $D832 _1plusBbang
        dw      $0153                ; $D834 _Bat
        dw      $00FD                ; $D836 _RETURN
TERSE_COLON_D838:
        rst     $08                             ; $D838 colon entry
        dw      $0109                ; $D839 _LIT
        dw      $F6C1                ; $D83B inline word
        dw      $0136                ; $D83D _DUP
        dw      $0549                ; $D83F _1plusBbang
        dw      $0153                ; $D841 _Bat
        dw      $00FD                ; $D843 _RETURN
TERSE_COLON_D845:
        rst     $08                             ; $D845 colon entry
        dw      $0112                ; $D846 _LITbyte
        db      $0F                  ; $D848 inline byte
        dw      $0109                ; $D849 _LIT
        dw      $00F8                ; $D84B inline word
        dw      $2B2E                ; $D84D execution token $2B2E
        dw      $00FD                ; $D84F _RETURN
        db      $CF,$30,$01,$09,$01,$6D,$FD,$EF,$2B,$09,$01,$C2,$F6,$3F,$05,$0F ; $D851
        db      $D8,$45,$D8,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B ; $D861
        db      $12,$01,$02,$A8,$2B,$2B,$D8,$12,$01,$03,$1C,$02,$EA,$03,$62,$D8 ; $D871
        db      $8C,$2B,$FD,$00,$CF,$30,$01,$09,$01,$3D,$FD,$EF,$2B,$09,$01,$C1 ; $D881
        db      $F6,$3F,$05,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B ; $D891
        db      $0F,$D8,$45,$D8,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E ; $D8A1
        db      $2B,$12,$01,$02,$A8,$2B,$38,$D8,$12,$01,$03,$1C,$02,$EA,$03,$A3 ; $D8B1
        db      $D8,$8C,$2B,$FD,$00                                             ; $D8C1
TERSE_COLON_D8C6:
        rst     $08                             ; $D8C6 colon entry
        dw      $D851                ; $D8C7 execution token $D851
        dw      $D885                ; $D8C9 execution token $D885
        dw      $00FD                ; $D8CB _RETURN
        db      $CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$0A,$09,$01,$FF,$00 ; $D8CD
        db      $2E,$2B,$12,$01,$48,$F2,$2A,$09,$01,$88,$00,$12,$01,$50,$09,$01 ; $D8DD
        db      $64,$00,$71,$2B,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E ; $D8ED
        db      $2B,$12,$01,$02,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12 ; $D8FD
        db      $01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8 ; $D90D
        db      $2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12 ; $D91D
        db      $01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$20,$F2 ; $D92D
        db      $2A,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$09,$A8,$2B,$12 ; $D93D
        db      $01,$00,$12,$01,$00,$2E,$2B,$12,$01,$06,$A8,$2B,$12,$01,$0A,$09 ; $D94D
        db      $01,$FF,$00,$2E,$2B,$12,$01,$09,$A8,$2B,$8C,$2B,$FD,$00,$CF,$2A ; $D95D
        db      $01,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12 ; $D96D
        db      $01,$04,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$48 ; $D97D
        db      $F2,$2A,$09,$01,$88,$00,$12,$01,$50,$09,$01,$64,$00,$71,$2B,$12 ; $D98D
        db      $01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8 ; $D99D
        db      $2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12 ; $D9AD
        db      $01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$0A,$09 ; $D9BD
        db      $01,$FF,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00 ; $D9CD
        db      $2E,$2B,$12,$01,$02,$A8,$2B,$12,$01,$20,$F2,$2A,$12,$01,$0A,$09 ; $D9DD
        db      $01,$FF,$00,$2E,$2B,$12,$01,$09,$A8,$2B,$12,$01,$00,$12,$01,$00 ; $D9ED
        db      $2E,$2B,$12,$01,$06,$A8,$2B,$12,$01,$0A,$09,$01,$FF,$00,$2E,$2B ; $D9FD
        db      $12,$01,$09,$A8,$2B,$8C,$2B,$FD,$00                             ; $DA0D
TERSE_COLON_DA16:
        rst     $08                             ; $DA16 colon entry
        dw      $D8CD                ; $DA17 execution token $D8CD
        dw      $D96B                ; $DA19 execution token $D96B
        dw      $00FD                ; $DA1B _RETURN
        db      $E1,$D1,$C3,$FB,$01,$CF,$EA,$02,$3B,$01,$F9,$01,$EA,$03,$37,$DA ; $DA1D
        db      $FB,$02,$FB,$02,$30,$01,$E2,$03,$53,$DA,$1D,$DA,$EA,$03,$45,$DA ; $DA2D
        db      $FB,$02,$2A,$01,$E2,$03,$53,$DA,$1D,$DA,$EA,$03,$51,$DA,$30,$01 ; $DA3D
        db      $E2,$03,$53,$DA,$2A,$01,$FD,$00                                 ; $DA4D
TERSE_COLON_DA55:
        rst     $08                             ; $DA55 colon entry
        dw      $012A                ; $DA56 _0
        dw      $0112                ; $DA58 _LITbyte
        db      $0A                  ; $DA5A inline byte
        dw      $026F                ; $DA5B _DO
        dw      $013B                ; $DA5D _2DUP
        dw      $02B8                ; $DA5F _I
        dw      TERSE_COLON_D781     ; $DA61 TERSE_COLON_D781
        dw      $DA22                ; $DA63 execution token $DA22
        dw      $01E3                ; $DA65 _NOT
        dw      $02B8                ; $DA67 _I
        dw      $01DE                ; $DA69 _zeroequal
        dw      $0188                ; $DA6B _OR
        dw      $03EA                ; $DA6D _0BRANCH
        dw      LDAC9                ; $DA6F branch target
        dw      $02B8                ; $DA71 _I
        dw      $0112                ; $DA73 _LITbyte
        db      $09                  ; $DA75 inline byte
        dw      $01E5                ; $DA76 _not_equal
        dw      $03EA                ; $DA78 _0BRANCH
        dw      LDA9F                ; $DA7A branch target
        dw      $02B8                ; $DA7C _I
        dw      $0195                ; $DA7E _1plus
        dw      $0112                ; $DA80 _LITbyte
        db      $09                  ; $DA82 inline byte
        dw      $026F                ; $DA83 _DO
        dw      $02B8                ; $DA85 _I
        dw      TERSE_COLON_D781     ; $DA87 TERSE_COLON_D781
        dw      $02B8                ; $DA89 _I
        dw      $0195                ; $DA8B _1plus
        dw      TERSE_COLON_D790     ; $DA8D TERSE_COLON_D790
        dw      $02B8                ; $DA8F _I
        dw      TERSE_COLON_D752     ; $DA91 TERSE_COLON_D752
        dw      $02B8                ; $DA93 _I
        dw      $0195                ; $DA95 _1plus
        dw      TERSE_COLON_D740     ; $DA97 TERSE_COLON_D740
        dw      $0109                ; $DA99 _LIT
        dw      $FFFF                ; $DA9B inline word
        dw      $0397                ; $DA9D _plusLOOP
LDA9F:
        dw      $02B8                ; $DA9F _I
        dw      $0195                ; $DAA1 _1plus
        dw      $0136                ; $DAA3 _DUP
        dw      $0109                ; $DAA5 _LIT
        dw      $F6D7                ; $DAA7 inline word
        dw      $0532                ; $DAA9 _SBbang
        dw      TERSE_COLON_D72A     ; $DAAB TERSE_COLON_D72A
        dw      $0112                ; $DAAD _LITbyte
        db      $03                  ; $DAAF inline byte
        dw      $012A                ; $DAB0 _0
        dw      $026F                ; $DAB2 _DO
        dw      $0112                ; $DAB4 _LITbyte
        db      $20                  ; $DAB6 inline byte
        dw      $02CA                ; $DAB7 _OVER
        dw      $0532                ; $DAB9 _SBbang
        dw      $0195                ; $DABB _1plus
        dw      $028A                ; $DABD _LOOP
        dw      $0143                ; $DABF _DROP
        dw      $02B8                ; $DAC1 _I
        dw      $0195                ; $DAC3 _1plus
        dw      TERSE_COLON_D790     ; $DAC5 TERSE_COLON_D790
        dw      $03F7                ; $DAC7 _LEAVE
LDAC9:
        dw      $0109                ; $DAC9 _LIT
        dw      $FFFF                ; $DACB inline word
        dw      $0397                ; $DACD _plusLOOP
        dw      $0143                ; $DACF _DROP
        dw      $00FD                ; $DAD1 _RETURN
TERSE_COLON_DAD3:
        rst     $08                             ; $DAD3 colon entry
        dw      $0112                ; $DAD4 _LITbyte
        db      $11                  ; $DAD6 inline byte
        dw      $02E0                ; $DAD7 _INP
        dw      $0109                ; $DAD9 _LIT
        dw      $F6D6                ; $DADB inline word
        dw      $0153                ; $DADD _Bat
        dw      $0109                ; $DADF _LIT
        dw      $F6D7                ; $DAE1 inline word
        dw      $0153                ; $DAE3 _Bat
        dw      $01CF                ; $DAE5 _equal
        dw      $03EA                ; $DAE7 _0BRANCH
        dw      LDAED                ; $DAE9 branch target
        dw      $2CB9                ; $DAEB execution token $2CB9
LDAED:
        dw      $016E                ; $DAED _COM
        dw      $0112                ; $DAEF _LITbyte
        db      $07                  ; $DAF1 inline byte
        dw      $0179                ; $DAF2 _AND
        dw      $00FD                ; $DAF4 _RETURN
        db      $CF,$2A,$01,$09,$01,$46,$E1,$80,$1A,$09,$01,$3D,$E1,$53,$01,$56 ; $DAF6
        db      $02,$EA,$03,$13,$DB,$09,$01,$AE,$38,$E2,$03,$17,$DB,$09,$01,$37 ; $DB06
        db      $39,$F2,$2C,$FD,$00,$CF,$99,$15,$21,$1F,$30,$01,$40,$1F,$09,$01 ; $DB16
        db      $D6,$F6,$3F,$05,$09,$01,$D5,$F6,$3F,$05,$09,$01,$C8,$F6,$3A,$05 ; $DB26
        db      $30,$01,$09,$01,$46,$E1,$80,$1A,$09,$01,$3D,$E1,$53,$01,$56,$02 ; $DB36
        db      $EA,$03,$50,$DB,$B2,$D7,$E2,$03,$52,$DB,$A1,$D7,$12,$01,$0A,$81 ; $DB46
        db      $D7,$22,$DA,$09,$01,$FF,$E1,$53,$01,$88,$01,$EA,$03,$91,$DE,$09 ; $DB56
        db      $01,$FF,$E1,$53,$01,$E3,$01,$EA,$03,$B3,$DB,$2A,$01,$09,$01,$46 ; $DB66
        db      $E1,$80,$1A,$09,$01,$3D,$E1,$53,$01,$56,$02,$EA,$03,$9D,$DB,$A1 ; $DB76
        db      $D7,$55,$DA,$09,$01,$D7,$F6,$53,$01,$09,$01,$D6,$F6,$32,$05,$09 ; $DB86
        db      $01,$15,$70,$E2,$03,$B1,$DB,$B2,$D7,$55,$DA,$09,$01,$D7,$F6,$53 ; $DB96
        db      $01,$09,$01,$D5,$F6,$32,$05,$09,$01,$15,$07,$4B,$1F,$14,$1F,$9B ; $DBA6
        db      $1E,$2B,$2D,$69,$1F,$12,$01,$02,$09,$01,$A9,$FD,$32,$05,$09,$01 ; $DBB6
        db      $DA,$F6,$3A,$05,$2A,$01,$12,$01,$62,$54,$1D,$DE,$3C,$09,$01,$FF ; $DBC6
        db      $E1,$53,$01,$EA,$03,$FC,$DB,$09,$01,$61,$B9,$F2,$2C,$12,$01,$32 ; $DBD6
        db      $09,$01,$D8,$FF,$54,$1D,$09,$01,$DB,$92,$B4,$1C,$CF,$1E,$0C,$1E ; $DBE6
        db      $F6,$1E,$E2,$03,$00,$DC,$F6,$DA,$6C,$D6,$09,$01,$E9,$FF,$12,$01 ; $DBF6
        db      $47,$54,$1D,$12,$01,$0F,$7D,$1E,$9B,$1E,$30,$01,$81,$D7,$CC,$D7 ; $DC06
        db      $83,$20,$30,$01,$52,$D7,$09,$01,$F4,$FF,$12,$01,$35,$54,$1D,$12 ; $DC16
        db      $01,$0A,$5C,$1E,$83,$20,$12,$01,$1A,$3C,$1D,$09,$01,$DA,$F6,$49 ; $DC26
        db      $05,$09,$01,$CB,$F6,$8E,$1E,$C3,$D7,$36,$01,$12,$01,$0B,$E5,$01 ; $DC36
        db      $EA,$03,$D4,$DC,$09,$01,$74,$FF,$24,$1D,$C3,$D7,$2A,$01,$09,$01 ; $DC46
        db      $CB,$F6,$12,$01,$02,$6D,$21,$69,$1F,$12,$01,$05,$EB,$D7,$EA,$03 ; $DC56
        db      $6B,$DC,$12,$01,$02,$7D,$1E,$12,$01,$02,$09,$01,$CB,$F6,$32,$05 ; $DC66
        db      $09,$01,$CB,$F6,$86,$21,$83,$20,$09,$01,$88,$FF,$24,$1D,$C3,$D7 ; $DC76
        db      $52,$D7,$12,$01,$08,$7D,$1E,$12,$01,$04,$09,$01,$A9,$FD,$32,$05 ; $DC86
        db      $83,$20,$12,$01,$02,$09,$01,$A9,$FD,$32,$05,$09,$01,$BF,$FF,$24 ; $DC96
        db      $1D,$C3,$D7,$81,$D7,$CC,$D7,$72,$1F,$12,$01,$05,$EB,$D7,$EA,$03 ; $DCA6
        db      $BB,$DC,$12,$01,$02,$7D,$1E,$83,$20,$09,$01,$DA,$F6,$49,$05,$0E ; $DCB6
        db      $1F,$AA,$1D,$12,$01,$0E,$60,$01,$3C,$1D,$E2,$03,$3D,$DC,$43,$01 ; $DCC6
        db      $69,$1F,$09,$01,$FF,$E1,$53,$01,$E3,$01,$EA,$03,$8F,$DE,$A8,$1E ; $DCD6
        db      $30,$01,$09,$01,$46,$E1,$80,$1A,$09,$01,$3D,$E1,$53,$01,$56,$02 ; $DCE6
        db      $EA,$03,$02,$DD,$09,$01,$D5,$F6,$E2,$03,$06,$DD,$09,$01,$D6,$F6 ; $DCF6
        db      $53,$01,$36,$01,$09,$01,$D7,$F6,$32,$05,$12,$01,$1E,$09,$01,$CA ; $DD06
        db      $F6,$32,$05,$09,$01,$25,$D7,$BB,$22,$36,$01,$30,$01,$CF,$01,$EA ; $DD16
        db      $03,$36,$DD,$43,$01,$12,$01,$35,$09,$01,$F4,$FF,$E2,$03,$46,$DD ; $DD26
        db      $12,$01,$36,$46,$01,$12,$01,$0E,$FF,$02,$60,$01,$09,$01,$88,$FF ; $DD36
        db      $09,$01,$C4,$F6,$61,$05,$09,$01,$C6,$F6,$61,$05,$12,$01,$61,$09 ; $DD46
        db      $01,$DA,$F6,$32,$05,$12,$01,$0D,$7D,$1E,$C3,$D7,$12,$D6,$09,$01 ; $DD56
        db      $C8,$F6,$09,$01,$C4,$F6,$4C,$01,$09,$01,$C6,$F6,$4C,$01,$28,$D6 ; $DD66
        db      $A8,$1E,$83,$20,$09,$01,$CB,$F6,$3F,$05,$12,$01,$20,$09,$01,$CB ; $DD76
        db      $F6,$95,$01,$12,$01,$03,$A2,$21,$D3,$DA,$30,$01,$10,$04,$B9,$DD ; $DD86
        db      $C3,$D7,$09,$01,$7A,$00,$08,$02,$EA,$03,$AC,$DD,$09,$01,$DA,$F6 ; $DD96
        db      $49,$05,$E2,$03,$B5,$DD,$12,$01,$5D,$09,$01,$DA,$F6,$32,$05,$E2 ; $DDA6
        db      $03,$50,$DE,$12,$01,$04,$10,$04,$E3,$DD,$C3,$D7,$12,$01,$5D,$1C ; $DDB6
        db      $02,$EA,$03,$D5,$DD,$09,$01,$DA,$F6,$44,$05,$E2,$03,$DF,$DD,$09 ; $DDC6
        db      $01,$7A,$00,$09,$01,$DA,$F6,$32,$05,$E2,$03,$50,$DE,$12,$01,$02 ; $DDD6
        db      $10,$04,$4E,$DE,$C6,$D8,$12,$01,$0A,$DF,$1B,$2C,$1A,$C3,$D7,$09 ; $DDE6
        db      $01,$CB,$F6,$49,$05,$09,$01,$CB,$F6,$36,$01,$53,$01,$5A,$01,$32 ; $DDF6
        db      $05,$12,$01,$14,$09,$01,$CA,$F6,$32,$05,$09,$01,$CB,$F6,$53,$01 ; $DE06
        db      $12,$01,$03,$08,$02,$EA,$03,$3D,$DE,$C3,$D7,$12,$01,$61,$36,$01 ; $DE16
        db      $09,$01,$DA,$F6,$61,$05,$12,$D6,$80,$09,$90,$01,$53,$01,$12,$01 ; $DE26
        db      $04,$5A,$01,$04,$D8,$83,$20,$E7,$15,$D3,$DA,$12,$01,$02,$E5,$01 ; $DE36
        db      $EA,$03,$3D,$DE,$E2,$03,$50,$DE,$43,$01,$C3,$D7,$09,$01,$C8,$F6 ; $DE46
        db      $95,$01,$53,$01,$E5,$01,$EA,$03,$71,$DE,$12,$01,$0A,$09,$01,$CA ; $DE56
        db      $F6,$32,$05,$83,$20,$C3,$D7,$12,$D6,$83,$20,$12,$01,$0A,$DF,$1B ; $DE66
        db      $2C,$1A,$09,$01,$CB,$F6,$53,$01,$12,$01,$03,$2A,$02,$EA,$03,$8E ; $DE76
        db      $DD,$09,$01,$D7,$F6,$53,$01,$40,$D7,$16,$DA,$09,$01,$FF,$E1,$53 ; $DE86
        db      $01,$EA,$03,$AB,$DE,$16,$DA,$09,$01,$56,$F7,$1D,$1C,$09,$01,$FA ; $DE96
        db      $00,$E2,$03,$B3,$DE,$12,$01,$15,$4B,$1F,$12,$01,$3C,$DF,$1B,$2C ; $DEA6
        db      $1A,$02,$23,$54,$22,$FD,$00                                     ; $DEB6
SERVICE_THREAD_WORD:
        rst     $08                             ; $DEBD colon entry
SERVICE_THREAD:
        dw      $0112                ; $DEBE _LITbyte
        db      $20                  ; $DEC0 inline byte
        dw      $0109                ; $DEC1 _LIT
        dw      $00F3                ; $DEC3 inline word
        dw      $02D8                ; $DEC5 _OUTP
        dw      $BE66                ; $DEC7 execution token $BE66
        dw      $00FD                ; $DEC9 _RETURN
        db      $01,$DB,$BC,$03,$DF,$D4,$89,$D4,$30,$D4,$01,$C9,$B6,$01,$FC,$B4 ; $DECB
        db      $01,$1B,$DB,$01,$B4,$B8,$01,$CB,$F6,$53,$01,$12,$01,$03,$08,$02 ; $DEDB
        db      $EA,$03,$0D,$DF,$93,$D8,$12,$01,$61,$36,$01,$09,$01,$DA,$F6,$61 ; $DEEB
        db      $05,$E2,$D6,$80,$09,$00,$00,$6E,$00,$92,$5A,$00,$E7,$CC,$00,$07 ; $DEFB
        db      $19,$20,$36,$BB,$20,$9A,$99,$20,$9E,$E8,$20,$13,$B4,$00,$2A,$D1 ; $DF0B
        db      $40,$FF,$1F,$40,$FF,$1F,$40,$FF,$1F,$40,$FF,$1F,$60,$FF,$1F,$60 ; $DF1B
        db      $FF,$1F,$60,$FF,$1F,$60,$FF,$1F,$01,$00,$0E,$00,$00,$3B,$43,$51 ; $DF2B
        db      $17,$CC,$80,$D5,$47,$7F,$69,$01,$F2,$55,$1A,$12,$8F,$EA,$52,$82 ; $DF3B
        db      $4D,$F3,$96,$6B,$72,$DA,$EE,$C1,$4F,$00,$00,$00,$00,$00,$00,$00 ; $DF4B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $DF5B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $DF6B
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$50,$52 ; $DF7B
        db      $4F,$46,$45,$53,$53,$4F,$52,$20,$50,$41,$43,$2D,$4D,$41,$4E,$00 ; $DF8B
        db      $0D,$43,$4F,$50,$59,$52,$49,$47,$48,$54,$20,$44,$4E,$41,$13,$41 ; $DF9B
        db      $4C,$4C,$20,$52,$49,$47,$48,$54,$53,$20,$52,$45,$53,$45,$52,$56 ; $DFAB
        db      $45,$44,$00,$07,$18,$83,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $DFBB
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $DFCB
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $DFDB
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $DFEB
        db      $FF,$FF,$FF,$FF,$FF                                             ; $DFFB
