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
        dw      XT_LIT                  ; $C033 _LIT
        dw      $FFC4                ; $C035 inline word
        dw      XT_LIT                  ; $C037 _LIT
        dw      $FFE3                ; $C039 inline word
        dw      $1D54                ; $C03B execution token $1D54
        dw      XT_LIT                  ; $C03D _LIT
        dw      $AD0E                ; $C03F inline word
        dw      $2CF2                ; $C041 execution token $2CF2
        dw      XT_LIT                  ; $C043 _LIT
        dw      $AE1D                ; $C045 inline word
        dw      $2CF2                ; $C047 execution token $2CF2
        dw      XT_LITbyte              ; $C049 _LITbyte
        db      $3C                  ; $C04B inline byte
        dw      $1D24                ; $C04C execution token $1D24
        dw      XT_LIT                  ; $C04E _LIT
        dw      $AF2C                ; $C050 inline word
        dw      $2CF2                ; $C052 execution token $2CF2
        dw      XT_LIT                  ; $C054 _LIT
        dw      $B047                ; $C056 inline word
        dw      $2CF2                ; $C058 execution token $2CF2
        dw      XT_RETURN               ; $C05A _RETURN
; Recovered reachable question-round TERSE word.
ROUND_STATUS_DISPLAY_TASK:
        rst    $08                          ; $C05C colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C05D execution token
        dw     $2D2B                        ; $C05F execution token
        dw     XT_LIT                       ; $C061 execution token
        dw     $BEAE                        ; $C063 inline word
        dw     $2D7C                        ; $C065 execution token
        dw     XT_LIT                       ; $C067 execution token
        dw     $E13D                        ; $C069 inline word
        dw     XT_Bat                       ; $C06B execution token
        dw     XT_0BRANCH                   ; $C06D execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR1 ; $C06F branch target
        dw     XT_LIT                       ; $C071 execution token
        dw     $C028                        ; $C073 inline word
        dw     XT_BRANCH                    ; $C075 execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR2 ; $C077 branch target
ROUND_STATUS_DISPLAY_TASK_BR1:
        dw     XT_LIT                       ; $C079 execution token
        dw     $C004                        ; $C07B inline word
        dw     XT_at                        ; $C07D execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $C07F execution token
        dw     XT_YIELD_ACTION_TASK         ; $C081 execution token
        dw     XT_LIT                       ; $C083 execution token
        dw     $8344                        ; $C085 inline word
ROUND_STATUS_DISPLAY_TASK_BR2:
        dw     XT_DUP                       ; $C087 execution token
        dw     XT_SOUND_UPDATE_STATE_F6E2   ; $C089 execution token
        dw     XT_SOUND_UPDATE_STATE_F6E0   ; $C08B execution token
        dw     $1EDC                        ; $C08D execution token
        dw     $BFDB                        ; $C08F execution token
        dw     $BFC9                        ; $C091 execution token
        dw     $1E9B                        ; $C093 execution token
        dw     XT_LIT                       ; $C095 execution token
        dw     $FFA1                        ; $C097 inline word
        dw     XT_LITbyte                   ; $C099 execution token
        db     $03                          ; $C09B inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C09C execution token
        dw     XT_LIT                       ; $C09E execution token
        dw     $A70F                        ; $C0A0 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0A2 execution token
        dw     XT_LIT                       ; $C0A4 execution token
        dw     $FFD1                        ; $C0A6 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C0A8 execution token
        dw     XT_LIT                       ; $C0AA execution token
        dw     $A6E0                        ; $C0AC inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0AE execution token
        dw     XT_LITbyte                   ; $C0B0 execution token
        db     $60                          ; $C0B2 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C0B3 execution token
        dw     XT_LIT                       ; $C0B5 execution token
        dw     $A6A1                        ; $C0B7 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0B9 execution token
        dw     XT_LIT                       ; $C0BB execution token
        dw     $0091                        ; $C0BD inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C0BF execution token
        dw     XT_LIT                       ; $C0C1 execution token
        dw     $A4EA                        ; $C0C3 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0C5 execution token
        dw     XT_LIT                       ; $C0C7 execution token
        dw     $FFE9                        ; $C0C9 inline word
        dw     XT_LITbyte                   ; $C0CB execution token
        db     $33                          ; $C0CD inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C0CE execution token
        dw     XT_LIT                       ; $C0D0 execution token
        dw     $A7E2                        ; $C0D2 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0D4 execution token
        dw     XT_LIT                       ; $C0D6 execution token
        dw     $AA29                        ; $C0D8 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0DA execution token
        dw     XT_LIT                       ; $C0DC execution token
        dw     $AC70                        ; $C0DE inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0E0 execution token
        dw     XT_LIT                       ; $C0E2 execution token
        dw     $ACCF                        ; $C0E4 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0E6 execution token
        dw     $1E9B                        ; $C0E8 execution token
        dw     $C032                        ; $C0EA execution token
        dw     XT_LITbyte                   ; $C0EC execution token
        db     $4B                          ; $C0EE inline byte
        dw     XT_LITbyte                   ; $C0EF execution token
        db     $04                          ; $C0F1 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C0F2 execution token
        dw     XT_LIT                       ; $C0F4 execution token
        dw     $A30A                        ; $C0F6 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C0F8 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C0FA execution token
        dw     XT_LIT                       ; $C0FC execution token
        dw     $FFF5                        ; $C0FE inline word
        dw     XT_LITbyte                   ; $C100 execution token
        db     $4B                          ; $C102 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C103 execution token
        dw     XT_LIT                       ; $C105 execution token
        dw     $A017                        ; $C107 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C109 execution token
        dw     XT_LITbyte                   ; $C10B execution token
        db     $44                          ; $C10D inline byte
        dw     XT_LITbyte                   ; $C10E execution token
        db     $1B                          ; $C110 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C111 execution token
        dw     XT_LIT                       ; $C113 execution token
        dw     $A1A4                        ; $C115 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C117 execution token
        dw     XT_LIT                       ; $C119 execution token
        dw     $E13D                        ; $C11B inline word
        dw     XT_Bat                       ; $C11D execution token
        dw     XT_0gt                       ; $C11F execution token
        dw     XT_0BRANCH                   ; $C121 execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR4 ; $C123 branch target
        dw     XT_LITbyte                   ; $C125 execution token
        db     $04                          ; $C127 inline byte
        dw     XT_LIT                       ; $C128 execution token
        dw     $FFBF                        ; $C12A inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C12C execution token
        dw     XT_LIT                       ; $C12E execution token
        dw     $9F96                        ; $C130 inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C132 execution token
        dw     XT_LIT                       ; $C134 execution token
        dw     $A000                        ; $C136 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C138 execution token
        dw     XT_1                         ; $C13A execution token
        dw     XT_LIT                       ; $C13C execution token
        dw     $E146                        ; $C13E inline word
        dw     $1A80                        ; $C140 execution token
        dw     XT_NOT                       ; $C142 execution token
        dw     XT_0BRANCH                   ; $C144 execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR3 ; $C146 branch target
        dw     $1E9B                        ; $C148 execution token
        dw     XT_0                         ; $C14A execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C14C execution token
        dw     XT_SET_OBJECT_MODE_1         ; $C14E execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C150 execution token
        dw     $1EE9                        ; $C152 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C154 execution token
        dw     $1EF6                        ; $C156 execution token
ROUND_STATUS_DISPLAY_TASK_BR3:
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $C158 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C15A execution token
        dw     $1EC2                        ; $C15C execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C15E execution token
        dw     $1EF6                        ; $C160 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C162 execution token
        dw     XT_LITbyte                   ; $C164 execution token
        db     $44                          ; $C166 inline byte
        dw     XT_LITbyte                   ; $C167 execution token
        db     $1B                          ; $C169 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C16A execution token
        dw     XT_LIT                       ; $C16C execution token
        dw     $A1A4                        ; $C16E inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C170 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C172 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $C174 execution token
ROUND_STATUS_DISPLAY_TASK_BR4:
        dw     XT_LIT                       ; $C176 execution token
        dw     $BF3E                        ; $C178 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C17A execution token
        dw     XT_LIT                       ; $C17C execution token
        dw     $F6DD                        ; $C17E inline word
        dw     XT_DUP                       ; $C180 execution token
        dw     XT_BZERO                     ; $C182 execution token
        dw     $1C1D                        ; $C184 execution token
        dw     $19E9                        ; $C186 execution token
        dw     XT_LIT                       ; $C188 execution token
        dw     $E13D                        ; $C18A inline word
        dw     XT_Bat                       ; $C18C execution token
        dw     XT_1                         ; $C18E execution token
        dw     XT_less                      ; $C190 execution token
        dw     XT_0BRANCH                   ; $C192 execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR5 ; $C194 branch target
        dw     XT_SET_OBJECT_MODE_2         ; $C196 execution token
        dw     XT_LIT                       ; $C198 execution token
        dw     $BFC2                        ; $C19A inline word
        dw     XT_START_COUNTED_ACTION_LIST ; $C19C execution token
        dw     XT_YIELD_ACTION_TASK         ; $C19E execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C1A0 execution token
        dw     $C032                        ; $C1A2 execution token
        dw     XT_BRANCH                    ; $C1A4 execution token
        dw     ROUND_STATUS_DISPLAY_TASK_BR6 ; $C1A6 branch target
ROUND_STATUS_DISPLAY_TASK_BR5:
        dw     XT_LITbyte                   ; $C1A8 execution token
        db     $1E                          ; $C1AA inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $C1AB execution token
        dw     $19E9                        ; $C1AD execution token
ROUND_STATUS_DISPLAY_TASK_BR6:
        dw     $2D2B                        ; $C1AF execution token
        dw     $15E7                        ; $C1B1 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $C1B3 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $C1B5 execution token
        dw     XT_RETURN                    ; $C1B7 execution token
        db     $07,$63,$6F                  ; $C1B9 original data
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
        db     $20,$20,$73,$6F,$72,$72,$79,$20,$21,$21 ; $C25C original data
; Recovered reachable question-round TERSE word.
ROUND_TERSE_C266:
        rst    $08                          ; $C266 colon entry
        dw     XT_LIT                       ; $C267 execution token
        dw     $F6FD                        ; $C269 inline word
        dw     XT_DUP                       ; $C26B execution token
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $C26D execution token
        dw     XT_SWAP                      ; $C26F execution token
        dw     XT_0                         ; $C271 execution token
        dw     XT_LITbyte                   ; $C273 execution token
        db     $03                          ; $C275 inline byte
        dw     XT_PICK                      ; $C276 execution token
        dw     XT_LITbyte                   ; $C278 execution token
        db     $02                          ; $C27A inline byte
        dw     $216D                        ; $C27B execution token
        dw     XT_LITbyte                   ; $C27D execution token
        db     $02                          ; $C27F inline byte
        dw     XT_OVER                      ; $C280 execution token
        dw     XT_SBbang                    ; $C282 execution token
        dw     $2186                        ; $C284 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C286 execution token
        dw     $2083                        ; $C288 execution token
        dw     XT_RETURN                    ; $C28A execution token
; Recovered reachable question-round TERSE word.
ROUND_TERSE_C28C:
        rst    $08                          ; $C28C colon entry
        dw     XT_LIT                       ; $C28D execution token
        dw     $F6FD                        ; $C28F inline word
        dw     XT_DUP                       ; $C291 execution token
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $C293 execution token
        dw     XT_ROT                       ; $C295 execution token
        dw     XT_ROT                       ; $C297 execution token
        dw     XT_LITbyte                   ; $C299 execution token
        db     $03                          ; $C29B inline byte
        dw     XT_PICK                      ; $C29C execution token
        dw     XT_LITbyte                   ; $C29E execution token
        db     $06                          ; $C2A0 inline byte
        dw     $216D                        ; $C2A1 execution token
        dw     XT_LITbyte                   ; $C2A3 execution token
        db     $06                          ; $C2A5 inline byte
        dw     XT_OVER                      ; $C2A6 execution token
        dw     XT_SBbang                    ; $C2A8 execution token
        dw     $2186                        ; $C2AA execution token
        dw     $2083                        ; $C2AC execution token
        dw     XT_RETURN                    ; $C2AE execution token
; Recovered reachable question-round TERSE word.
RESPONSE_FEEDBACK_TASK:
        rst    $08                          ; $C2B0 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C2B1 execution token
        dw     XT_LITbyte                   ; $C2B3 execution token
        db     $0F                          ; $C2B5 inline byte
        dw     XT_LIT                       ; $C2B6 execution token
        dw     $00BF                        ; $C2B8 inline word
        dw     XT_OUTP                      ; $C2BA execution token
        dw     $2D2B                        ; $C2BC execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C2BE execution token
        dw     XT_LITbyte                   ; $C2C0 execution token
        db     $0D                          ; $C2C2 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C2C3 execution token
        dw     XT_LIT                       ; $C2C5 execution token
        dw     $0064                        ; $C2C7 inline word
        dw     XT_LITbyte                   ; $C2C9 execution token
        db     $2D                          ; $C2CB inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C2CC execution token
        dw     XT_LIT                       ; $C2CE execution token
        dw     $C1B9                        ; $C2D0 inline word
        dw     $2D00                        ; $C2D2 execution token
        dw     XT_LITbyte                   ; $C2D4 execution token
        db     $15                          ; $C2D6 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $C2D7 execution token
        dw     XT_LIT                       ; $C2D9 execution token
        dw     $C1C9                        ; $C2DB inline word
        dw     $2D00                        ; $C2DD execution token
        dw     XT_LITbyte                   ; $C2DF execution token
        db     $62                          ; $C2E1 inline byte
        dw     XT_LITbyte                   ; $C2E2 execution token
        db     $21                          ; $C2E4 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C2E5 execution token
        dw     XT_LIT                       ; $C2E7 execution token
        dw     $C1C1                        ; $C2E9 inline word
        dw     $2D00                        ; $C2EB execution token
        dw     XT_LIT                       ; $C2ED execution token
        dw     $E1DD                        ; $C2EF inline word
        dw     XT_Bat                       ; $C2F1 execution token
        dw     XT_LITbyte                   ; $C2F3 execution token
        db     $02                          ; $C2F5 inline byte
        dw     XT_equal                     ; $C2F6 execution token
        dw     XT_0BRANCH                   ; $C2F8 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR1   ; $C2FA branch target
        dw     XT_LIT                       ; $C2FC execution token
        dw     $FF6D                        ; $C2FE inline word
        dw     XT_LITbyte                   ; $C300 execution token
        db     $2D                          ; $C302 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C303 execution token
        dw     XT_LIT                       ; $C305 execution token
        dw     $C1B9                        ; $C307 inline word
        dw     $2D00                        ; $C309 execution token
        dw     XT_LITbyte                   ; $C30B execution token
        db     $15                          ; $C30D inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $C30E execution token
        dw     XT_LIT                       ; $C310 execution token
        dw     $C1C9                        ; $C312 inline word
        dw     $2D00                        ; $C314 execution token
        dw     XT_LIT                       ; $C316 execution token
        dw     $FF6B                        ; $C318 inline word
        dw     XT_LITbyte                   ; $C31A execution token
        db     $21                          ; $C31C inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C31D execution token
        dw     XT_LIT                       ; $C31F execution token
        dw     $C1C1                        ; $C321 inline word
        dw     $2D00                        ; $C323 execution token
RESPONSE_FEEDBACK_TASK_BR1:
        dw     XT_LITbyte                   ; $C325 execution token
        db     $0E                          ; $C327 inline byte
        dw     $1E5C                        ; $C328 execution token
        dw     XT_LIT                       ; $C32A execution token
        dw     $0073                        ; $C32C inline word
        dw     XT_LITbyte                   ; $C32E execution token
        db     $02                          ; $C330 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C331 execution token
        dw     XT_LIT                       ; $C333 execution token
        dw     $E145                        ; $C335 inline word
        dw     XT_Bat                       ; $C337 execution token
        dw     ROUND_TERSE_C266             ; $C339 execution token
        dw     XT_LIT                       ; $C33B execution token
        dw     $E1DD                        ; $C33D inline word
        dw     XT_Bat                       ; $C33F execution token
        dw     XT_LITbyte                   ; $C341 execution token
        db     $02                          ; $C343 inline byte
        dw     XT_equal                     ; $C344 execution token
        dw     XT_0BRANCH                   ; $C346 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR2   ; $C348 branch target
        dw     XT_LIT                       ; $C34A execution token
        dw     $FF7A                        ; $C34C inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C34E execution token
        dw     XT_LIT                       ; $C350 execution token
        dw     $E143                        ; $C352 inline word
        dw     XT_Bat                       ; $C354 execution token
        dw     ROUND_TERSE_C266             ; $C356 execution token
RESPONSE_FEEDBACK_TASK_BR2:
        dw     XT_LITbyte                   ; $C358 execution token
        db     $0F                          ; $C35A inline byte
        dw     $1E5C                        ; $C35B execution token
        dw     XT_LIT                       ; $C35D execution token
        dw     $FFB0                        ; $C35F inline word
        dw     XT_LITbyte                   ; $C361 execution token
        db     $38                          ; $C363 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C364 execution token
        dw     XT_IS_SELECTED_ANSWER_CORRECT ; $C366 execution token
        dw     XT_0BRANCH                   ; $C368 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR5   ; $C36A branch target
        dw     $2CD4                        ; $C36C execution token
        dw     XT_0BRANCH                   ; $C36E execution token
        dw     RESPONSE_FEEDBACK_TASK_BR3   ; $C370 branch target
        dw     XT_LIT                       ; $C372 execution token
        dw     $C1D2                        ; $C374 inline word
        dw     XT_BRANCH                    ; $C376 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR4   ; $C378 branch target
RESPONSE_FEEDBACK_TASK_BR3:
        dw     XT_LIT                       ; $C37A execution token
        dw     $C1ED                        ; $C37C inline word
RESPONSE_FEEDBACK_TASK_BR4:
        dw     XT_BRANCH                    ; $C37E execution token
        dw     RESPONSE_FEEDBACK_TASK_BR6   ; $C380 branch target
RESPONSE_FEEDBACK_TASK_BR5:
        dw     XT_LIT                       ; $C382 execution token
        dw     $C255                        ; $C384 inline word
RESPONSE_FEEDBACK_TASK_BR6:
        dw     $2D00                        ; $C386 execution token
        dw     XT_IS_SELECTED_ANSWER_CORRECT ; $C388 execution token
        dw     XT_0BRANCH                   ; $C38A execution token
        dw     RESPONSE_FEEDBACK_TASK_BR8   ; $C38C branch target
        dw     XT_LITbyte                   ; $C38E execution token
        db     $09                          ; $C390 inline byte
        dw     $1E5C                        ; $C391 execution token
        dw     XT_LIT                       ; $C393 execution token
        dw     $FFB6                        ; $C395 inline word
        dw     XT_LITbyte                   ; $C397 execution token
        db     $0F                          ; $C399 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C39A execution token
        dw     XT_LIT                       ; $C39C execution token
        dw     $C209                        ; $C39E inline word
        dw     $2D00                        ; $C3A0 execution token
        dw     XT_LIT                       ; $C3A2 execution token
        dw     $FFE3                        ; $C3A4 inline word
        dw     XT_LITbyte                   ; $C3A6 execution token
        db     $03                          ; $C3A8 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C3A9 execution token
        dw     XT_LIT                       ; $C3AB execution token
        dw     $C217                        ; $C3AD inline word
        dw     $2D00                        ; $C3AF execution token
        dw     XT_LIT                       ; $C3B1 execution token
        dw     $E13E                        ; $C3B3 inline word
        dw     XT_Bat                       ; $C3B5 execution token
        dw     XT_NOT                       ; $C3B7 execution token
        dw     XT_0BRANCH                   ; $C3B9 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR7   ; $C3BB branch target
        dw     XT_LITbyte                   ; $C3BD execution token
        db     $0E                          ; $C3BF inline byte
        dw     $1E5C                        ; $C3C0 execution token
RESPONSE_FEEDBACK_TASK_BR7:
        dw     XT_LITbyte                   ; $C3C2 execution token
        db     $2A                          ; $C3C4 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C3C5 execution token
        dw     XT_LIT                       ; $C3C7 execution token
        dw     $F728                        ; $C3C9 inline word
        dw     XT_at                        ; $C3CB execution token
        dw     XT_0                         ; $C3CD execution token
        dw     ROUND_TERSE_C28C             ; $C3CF execution token
        dw     XT_LIT                       ; $C3D1 execution token
        dw     $E13E                        ; $C3D3 inline word
        dw     XT_Bat                       ; $C3D5 execution token
        dw     XT_0BRANCH                   ; $C3D7 execution token
        dw     RESPONSE_FEEDBACK_TASK_BR8   ; $C3D9 branch target
        dw     XT_LIT                       ; $C3DB execution token
        dw     $FFE2                        ; $C3DD inline word
        dw     XT_LIT                       ; $C3DF execution token
        dw     $FFEF                        ; $C3E1 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C3E3 execution token
        dw     XT_LIT                       ; $C3E5 execution token
        dw     $C224                        ; $C3E7 inline word
        dw     $2D00                        ; $C3E9 execution token
        dw     XT_LITbyte                   ; $C3EB execution token
        db     $0E                          ; $C3ED inline byte
        dw     $1E5C                        ; $C3EE execution token
        dw     XT_LITbyte                   ; $C3F0 execution token
        db     $2C                          ; $C3F2 inline byte
        dw     XT_LIT                       ; $C3F3 execution token
        dw     $FFDB                        ; $C3F5 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C3F7 execution token
        dw     XT_LIT                       ; $C3F9 execution token
        dw     $F728                        ; $C3FB inline word
        dw     XT_at                        ; $C3FD execution token
        dw     XT_2splat                    ; $C3FF execution token
        dw     XT_0                         ; $C401 execution token
        dw     ROUND_TERSE_C28C             ; $C403 execution token
RESPONSE_FEEDBACK_TASK_BR8:
        dw     XT_LITbyte                   ; $C405 execution token
        db     $40                          ; $C407 inline byte
        dw     XT_LITbyte                   ; $C408 execution token
        db     $0F                          ; $C40A inline byte
        dw     XT_OR                        ; $C40B execution token
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C40D execution token
        dw     XT_LIT                       ; $C40F execution token
        dw     $FF7B                        ; $C411 inline word
        dw     XT_LIT                       ; $C413 execution token
        dw     $FFBA                        ; $C415 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C417 execution token
        dw     XT_LIT                       ; $C419 execution token
        dw     $C23B                        ; $C41B inline word
        dw     $2D00                        ; $C41D execution token
        dw     XT_0                         ; $C41F execution token
        dw     XT_LIT                       ; $C421 execution token
        dw     $00BF                        ; $C423 inline word
        dw     XT_OUTP                      ; $C425 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $C427 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $C429 execution token
        dw     XT_RETURN                    ; $C42B execution token
        db     $01,$B0,$C2,$00,$0A,$04,$14,$1A,$2C,$30,$99,$99,$99,$96,$55 ; $C42D original data
        db      $66,$66,$65,$66,$55,$59,$99,$59,$99,$95,$66,$95,$56,$66,$59,$56 ; $C43C
        db      $65,$59,$95,$65,$59,$95,$66,$59,$95,$66,$55,$95,$56,$55,$99,$55 ; $C44C
        db      $65,$59,$56,$56,$55,$95,$65,$65,$59,$56,$59,$55,$95,$65,$55,$55 ; $C45C
        db      $56,$55,$96,$55,$55,$59,$55,$55,$55,$55,$65,$55,$55,$55,$55,$55 ; $C46C
        db     $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$59 ; $C47C original data
; Recovered reachable question-round TERSE word.
QUESTION_ROUND_OPEN_TASK:
        rst    $08                          ; $C487 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C488 execution token
        dw     XT_LIT                       ; $C48A execution token
        dw     $F5EF                        ; $C48C inline word
        dw     XT_Bat                       ; $C48E execution token
        dw     $34A8                        ; $C490 execution token
        dw     XT_NOT                       ; $C492 execution token
        dw     XT_AND                       ; $C494 execution token
        dw     XT_0BRANCH                   ; $C496 execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR1 ; $C498 branch target
        dw     XT_LIT                       ; $C49A execution token
        dw     $C016                        ; $C49C inline word
        dw     XT_at                        ; $C49E execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $C4A0 execution token
        dw     XT_YIELD_ACTION_TASK         ; $C4A2 execution token
        dw     XT_BRANCH                    ; $C4A4 execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR2 ; $C4A6 branch target
QUESTION_ROUND_OPEN_TASK_BR1:
        dw     $2D2B                        ; $C4A8 execution token
        dw     $36D5                        ; $C4AA execution token
QUESTION_ROUND_OPEN_TASK_BR2:
        dw     $34A8                        ; $C4AC execution token
        dw     XT_NOT                       ; $C4AE execution token
        dw     XT_0BRANCH                   ; $C4B0 execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR3 ; $C4B2 branch target
        dw     XT_LIT                       ; $C4B4 execution token
        dw     $BEAB                        ; $C4B6 inline word
        dw     XT_START_COUNTED_ACTION_LIST ; $C4B8 execution token
        dw     XT_YIELD_ACTION_TASK         ; $C4BA execution token
QUESTION_ROUND_OPEN_TASK_BR3:
        dw     $33BC                        ; $C4BC execution token
        dw     XT_LIT                       ; $C4BE execution token
        dw     $F6E7                        ; $C4C0 inline word
        dw     XT_DUP                       ; $C4C2 execution token
        dw     XT_BONE                      ; $C4C4 execution token
        dw     XT_BONE                      ; $C4C6 execution token
        dw     $22AB                        ; $C4C8 execution token
        dw     $BDA9                        ; $C4CA execution token
        dw     $1E9B                        ; $C4CC execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $C4CE execution token
        dw     XT_LITbyte                   ; $C4D0 execution token
        db     $60                          ; $C4D2 inline byte
        dw     XT_LITbyte                   ; $C4D3 execution token
        db     $63                          ; $C4D5 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C4D6 execution token
        dw     $3CDE                        ; $C4D8 execution token
        dw     XT_LIT                       ; $C4DA execution token
        dw     $37A7                        ; $C4DC inline word
        dw     XT_LIT                       ; $C4DE execution token
        dw     $38AE                        ; $C4E0 inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $C4E2 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C4E4 execution token
        dw     XT_LIT                       ; $C4E6 execution token
        dw     $E1DD                        ; $C4E8 inline word
        dw     XT_Bat                       ; $C4EA execution token
        dw     XT_LITbyte                   ; $C4EC execution token
        db     $02                          ; $C4EE inline byte
        dw     XT_equal                     ; $C4EF execution token
        dw     XT_0BRANCH                   ; $C4F1 execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR4 ; $C4F3 branch target
        dw     XT_LIT                       ; $C4F5 execution token
        dw     $FFA0                        ; $C4F7 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C4F9 execution token
        dw     $3CDE                        ; $C4FB execution token
        dw     XT_LIT                       ; $C4FD execution token
        dw     $3937                        ; $C4FF inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $C501 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C503 execution token
QUESTION_ROUND_OPEN_TASK_BR4:
        dw     XT_0                         ; $C505 execution token
        dw     XT_LITbyte                   ; $C507 execution token
        db     $63                          ; $C509 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C50A execution token
        dw     XT_LIT                       ; $C50C execution token
        dw     $3C7C                        ; $C50E inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $C510 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C512 execution token
        dw     XT_LITbyte                   ; $C514 execution token
        db     $48                          ; $C516 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $C517 execution token
        dw     XT_LIT                       ; $C519 execution token
        dw     $39C0                        ; $C51B inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C51D execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C51F execution token
        dw     XT_LITbyte                   ; $C521 execution token
        db     $0A                          ; $C523 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C524 execution token
        dw     XT_LIT                       ; $C526 execution token
        dw     $FFFB                        ; $C528 inline word
        dw     XT_LITbyte                   ; $C52A execution token
        db     $3B                          ; $C52C inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C52D execution token
        dw     XT_LIT                       ; $C52F execution token
        dw     $E147                        ; $C531 inline word
        dw     XT_LIT                       ; $C533 execution token
        dw     $E1FF                        ; $C535 inline word
        dw     XT_Bat                       ; $C537 execution token
        dw     XT_NOT                       ; $C539 execution token
        dw     XT_0BRANCH                   ; $C53B execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR6 ; $C53D branch target
        dw     XT_DUP                       ; $C53F execution token
        dw     XT_DUP                       ; $C541 execution token
        dw     XT_Bat                       ; $C543 execution token
        dw     XT_LITbyte                   ; $C545 execution token
        db     $62                          ; $C547 inline byte
        dw     XT_gt                        ; $C548 execution token
        dw     XT_0BRANCH                   ; $C54A execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR5 ; $C54C branch target
        dw     XT_BONE                      ; $C54E execution token
        dw     XT_BRANCH                    ; $C550 execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR6 ; $C552 branch target
QUESTION_ROUND_OPEN_TASK_BR5:
        dw     XT_1plusBbang                ; $C554 execution token
QUESTION_ROUND_OPEN_TASK_BR6:
        dw     XT_Bat                       ; $C556 execution token
        dw     ROUND_TERSE_C266             ; $C558 execution token
        dw     XT_LITbyte                   ; $C55A execution token
        db     $0F                          ; $C55C inline byte
        dw     $1E5C                        ; $C55D execution token
        dw     XT_LITbyte                   ; $C55F execution token
        db     $48                          ; $C561 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $C562 execution token
        dw     $1E9B                        ; $C564 execution token
        dw     XT_LITbyte                   ; $C566 execution token
        db     $49                          ; $C568 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C569 execution token
        dw     XT_LIT                       ; $C56B execution token
        dw     $E1E2                        ; $C56D inline word
        dw     $20A2                        ; $C56F execution token
        dw     ROUND_TERSE_C28C             ; $C571 execution token
        dw     XT_LIT                       ; $C573 execution token
        dw     $E1DD                        ; $C575 inline word
        dw     XT_Bat                       ; $C577 execution token
        dw     XT_LITbyte                   ; $C579 execution token
        db     $02                          ; $C57B inline byte
        dw     XT_equal                     ; $C57C execution token
        dw     XT_0BRANCH                   ; $C57E execution token
        dw     QUESTION_ROUND_OPEN_TASK_BR7 ; $C580 branch target
        dw     XT_LIT                       ; $C582 execution token
        dw     $FF89                        ; $C584 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C586 execution token
        dw     XT_LIT                       ; $C588 execution token
        dw     $E1DE                        ; $C58A inline word
        dw     $20A2                        ; $C58C execution token
        dw     ROUND_TERSE_C28C             ; $C58E execution token
        dw     XT_LIT                       ; $C590 execution token
        dw     $F727                        ; $C592 inline word
        dw     XT_BZERO                     ; $C594 execution token
        dw     $359F                        ; $C596 execution token
QUESTION_ROUND_OPEN_TASK_BR7:
        dw     XT_LIT                       ; $C598 execution token
        dw     $F727                        ; $C59A inline word
        dw     XT_BONE                      ; $C59C execution token
        dw     $359F                        ; $C59E execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $C5A0 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $C5A2 execution token
        dw     XT_RETURN                    ; $C5A4 execution token
        db     $0F,$00,$04,$10,$19,$2F      ; $C5A6 original data
        db      $30,$00,$00,$00,$10,$00,$00,$00,$64,$00,$00,$01,$A9,$00,$00,$06 ; $C5AC
        db      $A4,$00,$00,$1A,$90,$00,$00,$6A,$40,$40,$01,$A9,$00,$50,$06,$A4 ; $C5BC
        db      $00,$64,$1A,$90,$00,$69,$6A,$40,$00,$6A,$A9,$00,$00,$6A,$A4,$00 ; $C5CC
        db      $00,$6A,$A4,$00,$00,$6A,$A9,$00,$00,$6A,$AA,$40,$00,$55,$55,$50 ; $C5DC
        db     $00                          ; $C5EC original data
; Recovered reachable question-round TERSE word.
ROUND_TERSE_C5ED:
        rst    $08                          ; $C5ED colon entry
        dw     XT_LIT                       ; $C5EE execution token
        dw     $FDA9                        ; $C5F0 inline word
        dw     XT_DUP                       ; $C5F2 execution token
        dw     XT_Bat                       ; $C5F4 execution token
        dw     XT_SWAP                      ; $C5F6 execution token
        dw     XT_BONE                      ; $C5F8 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C5FA execution token
        dw     $207E                        ; $C5FC execution token
        dw     XT_LIT                       ; $C5FE execution token
        dw     $FDA9                        ; $C600 inline word
        dw     XT_SBbang                    ; $C602 execution token
        dw     XT_RETURN                    ; $C604 execution token
TERSE_COLON_C606:
        rst     $08                             ; $C606 colon entry
        dw      $1E8E                ; $C607 execution token $1E8E
        dw      $C5ED                ; $C609 execution token $C5ED
        dw      XT_RETURN               ; $C60B _RETURN
        db      $07,$61,$6E,$73,$77,$65,$72,$20,$0E,$71,$75,$65,$73,$74,$69,$6F ; $C60D
        db      $6E,$73,$20,$77,$69,$74,$68,$07,$62,$75,$74,$74,$6F,$6E,$73,$11 ; $C61D
        db      $66,$61,$73,$74,$65,$72,$20,$72,$65,$73,$70,$6F,$6E,$73,$65,$73 ; $C62D
        db      $20,$15,$72,$65,$63,$65,$69,$76,$65,$20,$68,$69,$67,$68,$65,$72 ; $C63D
        db      $20,$73,$63,$6F,$72,$65,$73,$0D,$77,$72,$6F,$6E,$67,$20,$61,$6E ; $C64D
        db      $73,$77,$65,$72,$20,$0F,$73,$75,$62,$74,$72,$61,$63,$74,$73,$20 ; $C65D
        db      $66,$72,$75,$69,$74,$0E,$63,$6F,$72,$72,$65,$63,$74,$20,$62,$6F ; $C66D
        db      $6E,$75,$73,$20,$11,$61,$6E,$73,$77,$65,$72,$20,$61,$64,$64,$73 ; $C67D
        db     $20,$66,$72,$75,$69,$74      ; $C68D original data
; Recovered reachable question-round TERSE word.
RESPONSE_TIMER_TASK:
        rst    $08                          ; $C693 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C694 execution token
        dw     XT_LITbyte                   ; $C696 execution token
        db     $0F                          ; $C698 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C699 execution token
        dw     XT_LIT                       ; $C69B execution token
        dw     $FFB8                        ; $C69D inline word
        dw     XT_LITbyte                   ; $C69F execution token
        db     $14                          ; $C6A1 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C6A2 execution token
        dw     XT_LIT                       ; $C6A4 execution token
        dw     $C60D                        ; $C6A6 inline word
        dw     $C606                        ; $C6A8 execution token
        dw     $15E7                        ; $C6AA execution token
        dw     XT_LIT                       ; $C6AC execution token
        dw     $C615                        ; $C6AE inline word
        dw     $2D00                        ; $C6B0 execution token
        dw     XT_LIT                       ; $C6B2 execution token
        dw     $FFE8                        ; $C6B4 inline word
        dw     XT_0                         ; $C6B6 execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C6B8 execution token
        dw     XT_LIT                       ; $C6BA execution token
        dw     $C624                        ; $C6BC inline word
        dw     $2D00                        ; $C6BE execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $C6C0 execution token
        dw     XT_LIT                       ; $C6C2 execution token
        dw     $E1DD                        ; $C6C4 inline word
        dw     XT_Bat                       ; $C6C6 execution token
        dw     XT_1                         ; $C6C8 execution token
        dw     XT_gt                        ; $C6CA execution token
        dw     XT_0BRANCH                   ; $C6CC execution token
        dw     RESPONSE_TIMER_TASK_BR1      ; $C6CE branch target
        dw     XT_LIT                       ; $C6D0 execution token
        dw     $FF7E                        ; $C6D2 inline word
        dw     XT_LIT                       ; $C6D4 execution token
        dw     $FFF1                        ; $C6D6 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C6D8 execution token
        dw     XT_LIT                       ; $C6DA execution token
        dw     $31AA                        ; $C6DC inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C6DE execution token
        dw     XT_LIT                       ; $C6E0 execution token
        dw     $FFA1                        ; $C6E2 inline word
        dw     XT_LIT                       ; $C6E4 execution token
        dw     $FFFB                        ; $C6E6 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C6E8 execution token
        dw     XT_LIT                       ; $C6EA execution token
        dw     $322F                        ; $C6EC inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C6EE execution token
        dw     XT_LIT                       ; $C6F0 execution token
        dw     $FFC4                        ; $C6F2 inline word
        dw     XT_LIT                       ; $C6F4 execution token
        dw     $FFF1                        ; $C6F6 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C6F8 execution token
        dw     XT_LIT                       ; $C6FA execution token
        dw     $329A                        ; $C6FC inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C6FE execution token
        dw     XT_LIT                       ; $C700 execution token
        dw     $FFAA                        ; $C702 inline word
        dw     XT_LIT                       ; $C704 execution token
        dw     $FFBA                        ; $C706 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C708 execution token
        dw     XT_LIT                       ; $C70A execution token
        dw     $C5A6                        ; $C70C inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C70E execution token
        dw     XT_LIT                       ; $C710 execution token
        dw     $FF8F                        ; $C712 inline word
        dw     XT_LIT                       ; $C714 execution token
        dw     $FFCE                        ; $C716 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C718 execution token
        dw     XT_LIT                       ; $C71A execution token
        dw     $3937                        ; $C71C inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C71E execution token
RESPONSE_TIMER_TASK_BR1:
        dw     XT_LITbyte                   ; $C720 execution token
        db     $25                          ; $C722 inline byte
        dw     XT_LIT                       ; $C723 execution token
        dw     $FFF1                        ; $C725 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C727 execution token
        dw     XT_LIT                       ; $C729 execution token
        dw     $31AA                        ; $C72B inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C72D execution token
        dw     XT_LITbyte                   ; $C72F execution token
        db     $49                          ; $C731 inline byte
        dw     XT_LIT                       ; $C732 execution token
        dw     $FFFB                        ; $C734 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C736 execution token
        dw     XT_LIT                       ; $C738 execution token
        dw     $322F                        ; $C73A inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C73C execution token
        dw     XT_LIT                       ; $C73E execution token
        dw     $006B                        ; $C740 inline word
        dw     XT_LIT                       ; $C742 execution token
        dw     $FFF1                        ; $C744 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C746 execution token
        dw     XT_LIT                       ; $C748 execution token
        dw     $329A                        ; $C74A inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C74C execution token
        dw     XT_SET_OBJECT_MODE_1         ; $C74E execution token
        dw     XT_LITbyte                   ; $C750 execution token
        db     $56                          ; $C752 inline byte
        dw     XT_LIT                       ; $C753 execution token
        dw     $FFBA                        ; $C755 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C757 execution token
        dw     XT_LIT                       ; $C759 execution token
        dw     $C5A6                        ; $C75B inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C75D execution token
        dw     $1EF6                        ; $C75F execution token
        dw     XT_LITbyte                   ; $C761 execution token
        db     $3A                          ; $C763 inline byte
        dw     XT_LIT                       ; $C764 execution token
        dw     $FFCE                        ; $C766 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C768 execution token
        dw     XT_LIT                       ; $C76A execution token
        dw     $38AE                        ; $C76C inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $C76E execution token
        dw     XT_LIT                       ; $C770 execution token
        dw     $00E6                        ; $C772 inline word
        dw     XT_SET_TASK_VECTOR_0D        ; $C774 execution token
        dw     $1A2C                        ; $C776 execution token
        dw     $0C2F                        ; $C778 execution token
        dw     $2D40                        ; $C77A execution token
        dw     $0C32                        ; $C77C execution token
        dw     XT_LITbyte                   ; $C77E execution token
        db     $0F                          ; $C780 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C781 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C783 execution token
        dw     $15E7                        ; $C785 execution token
        dw     XT_LIT                       ; $C787 execution token
        dw     $FF8D                        ; $C789 inline word
        dw     XT_LIT                       ; $C78B execution token
        dw     $FFE2                        ; $C78D inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C78F execution token
        dw     XT_LIT                       ; $C791 execution token
        dw     $C62C                        ; $C793 inline word
        dw     $C606                        ; $C795 execution token
        dw     $15E7                        ; $C797 execution token
        dw     XT_LIT                       ; $C799 execution token
        dw     $C63E                        ; $C79B inline word
        dw     $2D00                        ; $C79D execution token
        dw     XT_LIT                       ; $C79F execution token
        dw     $00AF                        ; $C7A1 inline word
        dw     XT_SET_TASK_VECTOR_0D        ; $C7A3 execution token
        dw     $1A2C                        ; $C7A5 execution token
        dw     XT_LIT                       ; $C7A7 execution token
        dw     $FF8D                        ; $C7A9 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C7AB execution token
        dw     XT_LIT                       ; $C7AD execution token
        dw     $C62C                        ; $C7AF inline word
        dw     $C606                        ; $C7B1 execution token
        dw     $15E7                        ; $C7B3 execution token
        dw     XT_LIT                       ; $C7B5 execution token
        dw     $C63E                        ; $C7B7 inline word
        dw     $2D00                        ; $C7B9 execution token
        dw     $15E7                        ; $C7BB execution token
        dw     XT_LIT                       ; $C7BD execution token
        dw     $FF9D                        ; $C7BF inline word
        dw     XT_LIT                       ; $C7C1 execution token
        dw     $FFF6                        ; $C7C3 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C7C5 execution token
        dw     XT_LIT                       ; $C7C7 execution token
        dw     $C672                        ; $C7C9 inline word
        dw     $C606                        ; $C7CB execution token
        dw     $15E7                        ; $C7CD execution token
        dw     XT_LIT                       ; $C7CF execution token
        dw     $C681                        ; $C7D1 inline word
        dw     $2D00                        ; $C7D3 execution token
        dw     XT_LIT                       ; $C7D5 execution token
        dw     $FFEC                        ; $C7D7 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $C7D9 execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $C7DB execution token
        dw     XT_LIT                       ; $C7DD execution token
        dw     $F5ED                        ; $C7DF inline word
        dw     XT_BZERO                     ; $C7E1 execution token
        dw     $1EDC                        ; $C7E3 execution token
RESPONSE_TIMER_TASK_BR2:
        dw     $15E7                        ; $C7E5 execution token
        dw     XT_LIT                       ; $C7E7 execution token
        dw     $F5ED                        ; $C7E9 inline word
        dw     XT_Bat                       ; $C7EB execution token
        dw     XT_ARRAY                     ; $C7ED execution token
        dw     $3188                        ; $C7EF inline word
        dw     XT_at                        ; $C7F1 execution token
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C7F3 execution token
        dw     XT_LIT                       ; $C7F5 execution token
        dw     $FF96                        ; $C7F7 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C7F9 execution token
        dw     XT_LIT                       ; $C7FB execution token
        dw     $F5ED                        ; $C7FD inline word
        dw     XT_Bat                       ; $C7FF execution token
        dw     XT_1plus                     ; $C801 execution token
        dw     XT_0                         ; $C803 execution token
        dw     XT_DO                        ; $C805 execution token
        dw     XT_GET_CURRENT_TASK          ; $C807 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_1 ; $C809 execution token
        dw     XT_LITbyte                   ; $C80B execution token
        db     $19                          ; $C80D inline byte
        dw     XT_plus                      ; $C80E execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C810 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C812 execution token
        dw     XT_LOOP                      ; $C814 execution token
        dw     XT_LITbyte                   ; $C816 execution token
        db     $1E                          ; $C818 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $C819 execution token
        dw     $1A2C                        ; $C81B execution token
        dw     XT_LIT                       ; $C81D execution token
        dw     $F5ED                        ; $C81F inline word
        dw     XT_DUP                       ; $C821 execution token
        dw     XT_1plusBbang                ; $C823 execution token
        dw     XT_Bat                       ; $C825 execution token
        dw     XT_LITbyte                   ; $C827 execution token
        db     $07                          ; $C829 inline byte
        dw     XT_equal                     ; $C82A execution token
        dw     XT_0BRANCH                   ; $C82C execution token
        dw     RESPONSE_TIMER_TASK_BR2      ; $C82E branch target
        dw     XT_LITbyte                   ; $C830 execution token
        db     $3C                          ; $C832 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $C833 execution token
        dw     $1A2C                        ; $C835 execution token
        dw     XT_LITbyte                   ; $C837 execution token
        db     $0F                          ; $C839 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $C83A execution token
        dw     XT_LIT                       ; $C83C execution token
        dw     $FF9D                        ; $C83E inline word
        dw     XT_LIT                       ; $C840 execution token
        dw     $FFF6                        ; $C842 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C844 execution token
        dw     XT_LIT                       ; $C846 execution token
        dw     $C672                        ; $C848 inline word
        dw     $C606                        ; $C84A execution token
        dw     XT_LIT                       ; $C84C execution token
        dw     $C681                        ; $C84E inline word
        dw     $C606                        ; $C850 execution token
        dw     XT_LIT                       ; $C852 execution token
        dw     $FF9D                        ; $C854 inline word
        dw     XT_LIT                       ; $C856 execution token
        dw     $FFD3                        ; $C858 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C85A execution token
        dw     XT_LIT                       ; $C85C execution token
        dw     $C654                        ; $C85E inline word
        dw     $C606                        ; $C860 execution token
        dw     XT_LIT                       ; $C862 execution token
        dw     $C662                        ; $C864 inline word
        dw     $2D00                        ; $C866 execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $C868 execution token
        dw     XT_LITbyte                   ; $C86A execution token
        db     $45                          ; $C86C inline byte
        dw     XT_LIT                       ; $C86D execution token
        dw     $FFEC                        ; $C86F inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C871 execution token
        dw     XT_LITbyte                   ; $C873 execution token
        db     $06                          ; $C875 inline byte
        dw     XT_LIT                       ; $C876 execution token
        dw     $F5ED                        ; $C878 inline word
        dw     XT_SBbang                    ; $C87A execution token
        dw     XT_LIT                       ; $C87C execution token
        dw     $2FCB                        ; $C87E inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C880 execution token
        dw     $15E7                        ; $C882 execution token
RESPONSE_TIMER_TASK_BR3:
        dw     XT_DRAW_CURRENT_OBJECT       ; $C884 execution token
        dw     XT_GET_CURRENT_TASK          ; $C886 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_1 ; $C888 execution token
        dw     XT_LITbyte                   ; $C88A execution token
        db     $19                          ; $C88C inline byte
        dw     XT_minussign                 ; $C88D execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $C88F execution token
        dw     XT_LITbyte                   ; $C891 execution token
        db     $14                          ; $C893 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $C894 execution token
        dw     $1A2C                        ; $C896 execution token
        dw     XT_LIT                       ; $C898 execution token
        dw     $F5ED                        ; $C89A inline word
        dw     XT_DUP                       ; $C89C execution token
        dw     XT_1minusBbang               ; $C89E execution token
        dw     XT_Bat                       ; $C8A0 execution token
        dw     XT_LIT                       ; $C8A2 execution token
        dw     $00FF                        ; $C8A4 inline word
        dw     XT_equal                     ; $C8A6 execution token
        dw     XT_0BRANCH                   ; $C8A8 execution token
        dw     RESPONSE_TIMER_TASK_BR3      ; $C8AA branch target
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $C8AC execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $C8AE execution token
        dw     XT_RETURN                    ; $C8B0 execution token
; Recovered reachable question-round TERSE word.
RESPONSE_CONTROL_TASK:
        rst    $08                          ; $C8B2 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C8B3 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $C8B5 execution token
        dw     XT_LIT                       ; $C8B7 execution token
        dw     $F5EE                        ; $C8B9 inline word
        dw     XT_BZERO                     ; $C8BB execution token
RESPONSE_CONTROL_TASK_BR1:
        dw     $15E7                        ; $C8BD execution token
        dw     XT_LITbyte                   ; $C8BF execution token
        db     $11                          ; $C8C1 inline byte
        dw     XT_INP                       ; $C8C2 execution token
        dw     XT_COM                       ; $C8C4 execution token
        dw     XT_LIT                       ; $C8C6 execution token
        dw     $0077                        ; $C8C8 inline word
        dw     XT_AND                       ; $C8CA execution token
        dw     XT_0gt                       ; $C8CC execution token
        dw     XT_LIT                       ; $C8CE execution token
        dw     $F5EE                        ; $C8D0 inline word
        dw     XT_Bat                       ; $C8D2 execution token
        dw     XT_OR                        ; $C8D4 execution token
        dw     XT_0BRANCH                   ; $C8D6 execution token
        dw     RESPONSE_CONTROL_TASK_BR1    ; $C8D8 branch target
        dw     XT_LIT                       ; $C8DA execution token
        dw     $F5EE                        ; $C8DC inline word
        dw     XT_Bat                       ; $C8DE execution token
        dw     XT_NOT                       ; $C8E0 execution token
        dw     XT_0BRANCH                   ; $C8E2 execution token
        dw     RESPONSE_CONTROL_TASK_BR2    ; $C8E4 branch target
        dw     $34B1                        ; $C8E6 execution token
        dw     $34C3                        ; $C8E8 execution token
        dw     XT_LIT                       ; $C8EA execution token
        dw     $F5EF                        ; $C8EC inline word
        dw     XT_BZERO                     ; $C8EE execution token
        dw     XT_LIT                       ; $C8F0 execution token
        dw     $FCB9                        ; $C8F2 inline word
        dw     XT_DUP                       ; $C8F4 execution token
        dw     $2290                        ; $C8F6 execution token
        dw     XT_LIT                       ; $C8F8 execution token
        dw     $C01C                        ; $C8FA inline word
        dw     XT_at                        ; $C8FC execution token
        dw     XT_EXECUTE                   ; $C8FE execution token
        dw     $2784                        ; $C900 execution token
        dw     XT_BRANCH                    ; $C902 execution token
        dw     RESPONSE_CONTROL_TASK_BR3    ; $C904 branch target
RESPONSE_CONTROL_TASK_BR2:
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $C906 execution token
RESPONSE_CONTROL_TASK_BR3:
        dw     XT_RETURN                    ; $C908 execution token
        db     $10,$00,$81                  ; $C90A original data
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
        db     $00,$00,$FE,$FF,$00,$00,$18,$FC,$00 ; $C9CD original data
; Recovered reachable question-round TERSE word.
RESPONSE_DISPLAY_TASK:
        rst    $08                          ; $C9D6 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $C9D7 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $C9D9 execution token
        dw     $2D2B                        ; $C9DB execution token
        dw     $36D5                        ; $C9DD execution token
        dw     XT_LIT                       ; $C9DF execution token
        dw     $F6DD                        ; $C9E1 inline word
        dw     XT_BZERO                     ; $C9E3 execution token
        dw     $82E9                        ; $C9E5 execution token
        dw     XT_LIT                       ; $C9E7 execution token
        dw     $0089                        ; $C9E9 inline word
        dw     XT_LITbyte                   ; $C9EB execution token
        db     $48                          ; $C9ED inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $C9EE execution token
        dw     XT_LIT                       ; $C9F0 execution token
        dw     $BCAA                        ; $C9F2 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C9F4 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $C9F6 execution token
        dw     XT_LIT                       ; $C9F8 execution token
        dw     $C90A                        ; $C9FA inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $C9FC execution token
        dw     XT_RENDER_CURRENT_OBJECT     ; $C9FE execution token
        dw     XT_LIT                       ; $CA00 execution token
        dw     $F6DD                        ; $CA02 inline word
        dw     $1C1D                        ; $CA04 execution token
        dw     $19E9                        ; $CA06 execution token
        dw     $8302                        ; $CA08 execution token
        dw     XT_LIT                       ; $CA0A execution token
        dw     $BCAA                        ; $CA0C inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA0E execution token
        dw     $1E34                        ; $CA10 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CA12 execution token
        dw     XT_LIT                       ; $CA14 execution token
        dw     $0089                        ; $CA16 inline word
        dw     XT_LITbyte                   ; $CA18 execution token
        db     $48                          ; $CA1A inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $CA1B execution token
        dw     XT_LIT                       ; $CA1D execution token
        dw     $C940                        ; $CA1F inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA21 execution token
        dw     XT_LIT                       ; $CA23 execution token
        dw     $FF7C                        ; $CA25 inline word
        dw     $1C5F                        ; $CA27 execution token
        dw     XT_SET_OBJECT_MODE_1         ; $CA29 execution token
        dw     $1DE0                        ; $CA2B execution token
RESPONSE_DISPLAY_TASK_BR1:
        dw     $15E7                        ; $CA2D execution token
        dw     $1F21                        ; $CA2F execution token
        dw     XT_LIT                       ; $CA31 execution token
        dw     $FED4                        ; $CA33 inline word
        dw     $1D5B                        ; $CA35 execution token
        dw     XT_LITbyte                   ; $CA37 execution token
        db     $09                          ; $CA39 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CA3A execution token
        dw     $1C43                        ; $CA3C execution token
        dw     $19E9                        ; $CA3E execution token
        dw     $1C83                        ; $CA40 execution token
        dw     XT_NOT                       ; $CA42 execution token
        dw     XT_0BRANCH                   ; $CA44 execution token
        dw     RESPONSE_DISPLAY_TASK_BR2    ; $CA46 branch target
        dw     XT_LITbyte                   ; $CA48 execution token
        db     $03                          ; $CA4A inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CA4B execution token
        dw     $1A2C                        ; $CA4D execution token
        dw     XT_LITbyte                   ; $CA4F execution token
        db     $09                          ; $CA51 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CA52 execution token
        dw     $1C43                        ; $CA54 execution token
        dw     $19E9                        ; $CA56 execution token
RESPONSE_DISPLAY_TASK_BR2:
        dw     $1C83                        ; $CA58 execution token
        dw     XT_NOT                       ; $CA5A execution token
        dw     XT_0BRANCH                   ; $CA5C execution token
        dw     RESPONSE_DISPLAY_TASK_BR3    ; $CA5E branch target
        dw     XT_LITbyte                   ; $CA60 execution token
        db     $03                          ; $CA62 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CA63 execution token
        dw     $1A2C                        ; $CA65 execution token
        dw     XT_0                         ; $CA67 execution token
        dw     XT_BRANCH                    ; $CA69 execution token
        dw     RESPONSE_DISPLAY_TASK_BR4    ; $CA6B branch target
RESPONSE_DISPLAY_TASK_BR3:
        dw     XT_1                         ; $CA6D execution token
RESPONSE_DISPLAY_TASK_BR4:
        dw     XT_0BRANCH                   ; $CA6F execution token
        dw     RESPONSE_DISPLAY_TASK_BR1    ; $CA71 branch target
        dw     $1DE0                        ; $CA73 execution token
        dw     XT_RENDER_CURRENT_OBJECT     ; $CA75 execution token
        dw     XT_LIT                       ; $CA77 execution token
        dw     $BCAA                        ; $CA79 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA7B execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CA7D execution token
        dw     XT_LIT                       ; $CA7F execution token
        dw     $C90A                        ; $CA81 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA83 execution token
        dw     XT_RENDER_CURRENT_OBJECT     ; $CA85 execution token
        dw     XT_LIT                       ; $CA87 execution token
        dw     $0109                        ; $CA89 inline word
        dw     XT_SET_TASK_VECTOR_0D        ; $CA8B execution token
        dw     $19E9                        ; $CA8D execution token
        dw     XT_LIT                       ; $CA8F execution token
        dw     $BCAA                        ; $CA91 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA93 execution token
        dw     $1E34                        ; $CA95 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CA97 execution token
        dw     XT_LIT                       ; $CA99 execution token
        dw     $C96A                        ; $CA9B inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CA9D execution token
        dw     XT_LIT                       ; $CA9F execution token
        dw     $F5EE                        ; $CAA1 inline word
        dw     XT_BONE                      ; $CAA3 execution token
        dw     XT_LIT                       ; $CAA5 execution token
        dw     $FF7B                        ; $CAA7 inline word
        dw     XT_LITbyte                   ; $CAA9 execution token
        db     $48                          ; $CAAB inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $CAAC execution token
        dw     XT_LITbyte                   ; $CAAE execution token
        db     $5F                          ; $CAB0 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CAB1 execution token
        dw     $19E9                        ; $CAB3 execution token
        dw     XT_LIT                       ; $CAB5 execution token
        dw     $BAAF                        ; $CAB7 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CAB9 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CABB execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CABD execution token
        dw     XT_LIT                       ; $CABF execution token
        dw     $C97F                        ; $CAC1 inline word
        dw     XT_CONFIGURE_OBJECT_RENDER   ; $CAC3 execution token
        dw     XT_LIT                       ; $CAC5 execution token
        dw     $BBC1                        ; $CAC7 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CAC9 execution token
        dw     $36C8                        ; $CACB execution token
        dw     XT_SWAP_TASK_THREAD_IP       ; $CACD execution token
        dw     XT_RENDER_CURRENT_OBJECT     ; $CACF execution token
        dw     XT_LIT                       ; $CAD1 execution token
        dw     $3732                        ; $CAD3 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CAD5 execution token
        dw     XT_SET_OBJECT_MODE_1         ; $CAD7 execution token
        dw     XT_LITbyte                   ; $CAD9 execution token
        db     $0D                          ; $CADB inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $CADC execution token
        dw     XT_LIT                       ; $CADE execution token
        dw     $FF67                        ; $CAE0 inline word
        dw     XT_LITbyte                   ; $CAE2 execution token
        db     $3A                          ; $CAE4 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $CAE5 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CAE7 execution token
        dw     XT_LITbyte                   ; $CAE9 execution token
        db     $1E                          ; $CAEB inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CAEC execution token
        dw     $1A2C                        ; $CAEE execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $CAF0 execution token
        dw     XT_LIT                       ; $CAF2 execution token
        dw     $FF7B                        ; $CAF4 inline word
        dw     XT_LITbyte                   ; $CAF6 execution token
        db     $48                          ; $CAF8 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $CAF9 execution token
        dw     XT_LIT                       ; $CAFB execution token
        dw     $BA2A                        ; $CAFD inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CAFF execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CB01 execution token
        dw     XT_LIT                       ; $CB03 execution token
        dw     $BAF2                        ; $CB05 inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CB07 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CB09 execution token
        dw     XT_LITbyte                   ; $CB0B execution token
        db     $0A                          ; $CB0D inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CB0E execution token
        dw     $1A2C                        ; $CB10 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CB12 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $CB14 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $CB16 execution token
        dw     XT_RETURN                    ; $CB18 execution token
; Recovered reachable question-round TERSE word.
QUESTION_BANK_WINDOW_TASK:
        rst    $08                          ; $CB1A colon entry
        dw     XT_ENTER_ACTION_TASK         ; $CB1B execution token
        dw     XT_LIT                       ; $CB1D execution token
        dw     $F5F4                        ; $CB1F inline word
        dw     XT_BZERO                     ; $CB21 execution token
        dw     $8798                        ; $CB23 execution token
        dw     XT_LITbyte                   ; $CB25 execution token
        db     $30                          ; $CB27 inline byte
        dw     XT_LIT                       ; $CB28 execution token
        dw     $00BF                        ; $CB2A inline word
        dw     XT_OUTP                      ; $CB2C execution token
        dw     $15E7                        ; $CB2E execution token
        dw     XT_LIT                       ; $CB30 execution token
        dw     $F5F4                        ; $CB32 inline word
        dw     $1C1D                        ; $CB34 execution token
        dw     $1A2C                        ; $CB36 execution token
        dw     XT_LIT                       ; $CB38 execution token
        dw     $E147                        ; $CB3A inline word
        dw     XT_Bat                       ; $CB3C execution token
        dw     XT_LITbyte                   ; $CB3E execution token
        db     $06                          ; $CB40 inline byte
        dw     XT_less                      ; $CB41 execution token
        dw     XT_0BRANCH                   ; $CB43 execution token
        dw     QUESTION_BANK_WINDOW_TASK_BR1 ; $CB45 branch target
        dw     XT_LIT                       ; $CB47 execution token
        dw     $0080                        ; $CB49 inline word
        dw     XT_BRANCH                    ; $CB4B execution token
        dw     QUESTION_BANK_WINDOW_TASK_BR2 ; $CB4D branch target
QUESTION_BANK_WINDOW_TASK_BR1:
        dw     XT_LITbyte                   ; $CB4F execution token
        db     $10                          ; $CB51 inline byte
QUESTION_BANK_WINDOW_TASK_BR2:
        dw     XT_SET_TASK_VECTOR_0D        ; $CB52 execution token
        dw     $1A2C                        ; $CB54 execution token
        dw     XT_0                         ; $CB56 execution token
        dw     XT_LIT                       ; $CB58 execution token
        dw     $00BF                        ; $CB5A inline word
        dw     XT_OUTP                      ; $CB5C execution token
        dw     XT_OUTP                      ; $CB5E execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $CB60 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $CB62 execution token
        dw     XT_RETURN                    ; $CB64 execution token
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
; Recovered reachable question-round TERSE word.
ROUND_TERSE_CB75:
        rst    $08                          ; $CB75 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $CB76 execution token
        dw     XT_LIT                       ; $CB78 execution token
        dw     $E14A                        ; $CB7A inline word
        dw     XT_1plusBbang                ; $CB7C execution token
        dw     XT_LITbyte                   ; $CB7E execution token
        db     $48                          ; $CB80 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $CB81 execution token
        dw     $2CD4                        ; $CB83 execution token
        dw     XT_0BRANCH                   ; $CB85 execution token
        dw     ROUND_TERSE_CB75_BR1         ; $CB87 branch target
        dw     XT_LIT                       ; $CB89 execution token
        dw     $E145                        ; $CB8B inline word
        dw     XT_BRANCH                    ; $CB8D execution token
        dw     ROUND_TERSE_CB75_BR2         ; $CB8F branch target
ROUND_TERSE_CB75_BR1:
        dw     XT_LIT                       ; $CB91 execution token
        dw     $E143                        ; $CB93 inline word
ROUND_TERSE_CB75_BR2:
        dw     XT_DUP                       ; $CB95 execution token
        dw     XT_Bat                       ; $CB97 execution token
        dw     XT_LITbyte                   ; $CB99 execution token
        db     $62                          ; $CB9B inline byte
        dw     XT_gt                        ; $CB9C execution token
        dw     XT_0BRANCH                   ; $CB9E execution token
        dw     ROUND_TERSE_CB75_BR3         ; $CBA0 branch target
        dw     XT_BZERO                     ; $CBA2 execution token
        dw     XT_BRANCH                    ; $CBA4 execution token
        dw     ROUND_TERSE_CB75_BR4         ; $CBA6 branch target
ROUND_TERSE_CB75_BR3:
        dw     XT_1plusBbang                ; $CBA8 execution token
ROUND_TERSE_CB75_BR4:
        dw     XT_LIT                       ; $CBAA execution token
        dw     $E144                        ; $CBAC inline word
        dw     XT_LIT                       ; $CBAE execution token
        dw     $E142                        ; $CBB0 inline word
        dw     $2CD4                        ; $CBB2 execution token
        dw     XT_0BRANCH                   ; $CBB4 execution token
        dw     ROUND_TERSE_CB75_BR5         ; $CBB6 branch target
        dw     XT_LIT                       ; $CBB8 execution token
        dw     $E141                        ; $CBBA inline word
        dw     XT_LIT                       ; $CBBC execution token
        dw     $F723                        ; $CBBE inline word
        dw     XT_LIT                       ; $CBC0 execution token
        dw     $E1E2                        ; $CBC2 inline word
        dw     XT_LITbyte                   ; $CBC4 execution token
        db     $49                          ; $CBC6 inline byte
        dw     XT_BRANCH                    ; $CBC7 execution token
        dw     ROUND_TERSE_CB75_BR6         ; $CBC9 branch target
ROUND_TERSE_CB75_BR5:
        dw     XT_SWAP                      ; $CBCB execution token
        dw     XT_LIT                       ; $CBCD execution token
        dw     $E140                        ; $CBCF inline word
        dw     XT_LIT                       ; $CBD1 execution token
        dw     $F722                        ; $CBD3 inline word
        dw     XT_LIT                       ; $CBD5 execution token
        dw     $E1DE                        ; $CBD7 inline word
        dw     XT_LIT                       ; $CBD9 execution token
        dw     $FF89                        ; $CBDB inline word
ROUND_TERSE_CB75_BR6:
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $CBDD execution token
        dw     $1E9B                        ; $CBDF execution token
        dw     XT_LITbyte                   ; $CBE1 execution token
        db     $0B                          ; $CBE3 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $CBE4 execution token
        dw     XT_LIT                       ; $CBE6 execution token
        dw     $8F31                        ; $CBE8 inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $CBEA execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CBEC execution token
        dw     XT_LIT                       ; $CBEE execution token
        dw     $F728                        ; $CBF0 inline word
        dw     XT_at                        ; $CBF2 execution token
        dw     XT_LIT                       ; $CBF4 execution token
        dw     $E13E                        ; $CBF6 inline word
        dw     XT_Bat                       ; $CBF8 execution token
        dw     XT_0BRANCH                   ; $CBFA execution token
        dw     ROUND_TERSE_CB75_BR7         ; $CBFC branch target
        dw     XT_2splat                    ; $CBFE execution token
ROUND_TERSE_CB75_BR7:
        dw     XT_0                         ; $CC00 execution token
        dw     XT_LITbyte                   ; $CC02 execution token
        db     $03                          ; $CC04 inline byte
        dw     XT_PICK                      ; $CC05 execution token
        dw     $20A2                        ; $CC07 execution token
        dw     $20BC                        ; $CC09 execution token
        dw     XT_LITbyte                   ; $CC0B execution token
        db     $03                          ; $CC0D inline byte
        dw     XT_PICK                      ; $CC0E execution token
        dw     $CB66                        ; $CC10 execution token
        dw     XT_LIT                       ; $CC12 execution token
        dw     $F6FD                        ; $CC14 inline word
        dw     XT_DUP                       ; $CC16 execution token
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CC18 execution token
        dw     XT_SWAP                      ; $CC1A execution token
        dw     $20A2                        ; $CC1C execution token
        dw     XT_LITbyte                   ; $CC1E execution token
        db     $03                          ; $CC20 inline byte
        dw     XT_PICK                      ; $CC21 execution token
        dw     XT_LITbyte                   ; $CC23 execution token
        db     $06                          ; $CC25 inline byte
        dw     $216D                        ; $CC26 execution token
        dw     XT_LITbyte                   ; $CC28 execution token
        db     $06                          ; $CC2A inline byte
        dw     XT_OVER                      ; $CC2B execution token
        dw     XT_SBbang                    ; $CC2D execution token
        dw     $2186                        ; $CC2F execution token
        dw     XT_LITbyte                   ; $CC31 execution token
        db     $0D                          ; $CC33 inline byte
        dw     $1E5C                        ; $CC34 execution token
        dw     $2083                        ; $CC36 execution token
        dw     XT_LIT                       ; $CC38 execution token
        dw     $E13E                        ; $CC3A inline word
        dw     XT_Bat                       ; $CC3C execution token
        dw     XT_0BRANCH                   ; $CC3E execution token
        dw     ROUND_TERSE_CB75_BR8         ; $CC40 branch target
        dw     XT_1plusBbang                ; $CC42 execution token
        dw     XT_1plusBbang                ; $CC44 execution token
        dw     XT_BRANCH                    ; $CC46 execution token
        dw     ROUND_TERSE_CB75_BR9         ; $CC48 branch target
ROUND_TERSE_CB75_BR8:
        dw     XT_2DROP                     ; $CC4A execution token
ROUND_TERSE_CB75_BR9:
        dw     XT_BZERO                     ; $CC4C execution token
        dw     XT_LIT                       ; $CC4E execution token
        dw     $E13E                        ; $CC50 inline word
        dw     XT_Bat                       ; $CC52 execution token
        dw     XT_0BRANCH                   ; $CC54 execution token
        dw     ROUND_TERSE_CB75_BR10        ; $CC56 branch target
        dw     XT_BZERO                     ; $CC58 execution token
        dw     XT_BRANCH                    ; $CC5A execution token
        dw     ROUND_TERSE_CB75_BR11        ; $CC5C branch target
ROUND_TERSE_CB75_BR10:
        dw     XT_1plusBbang                ; $CC5E execution token
ROUND_TERSE_CB75_BR11:
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CC60 execution token
        dw     XT_GET_CURRENT_TASK          ; $CC62 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_1 ; $CC64 execution token
        dw     $359F                        ; $CC66 execution token
        dw     XT_LITbyte                   ; $CC68 execution token
        db     $02                          ; $CC6A inline byte
        dw     XT_plus                      ; $CC6B execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $CC6D execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $CC6F execution token
        dw     XT_LITbyte                   ; $CC71 execution token
        db     $56                          ; $CC73 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $CC74 execution token
        dw     $1E9B                        ; $CC76 execution token
        dw     XT_LIT                       ; $CC78 execution token
        dw     $8F25                        ; $CC7A inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CC7C execution token
        dw     XT_LITbyte                   ; $CC7E execution token
        db     $02                          ; $CC80 inline byte
        dw     $1F2F                        ; $CC81 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CC83 execution token
        dw     XT_LIT                       ; $CC85 execution token
        dw     $F6E8                        ; $CC87 inline word
        dw     XT_DUP                       ; $CC89 execution token
        dw     XT_BZERO                     ; $CC8B execution token
        dw     $1C1D                        ; $CC8D execution token
        dw     $19E9                        ; $CC8F execution token
        dw     $1D19                        ; $CC91 execution token
        dw     XT_RENDER_CURRENT_OBJECT     ; $CC93 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $CC95 execution token
        dw     XT_RETURN                    ; $CC97 execution token
        db     $05,$02,$02,$0C,$00,$00,$00,$00,$00,$00,$00,$00 ; $CC99 original data
        db      $00,$00,$80,$20,$E0,$E0,$FB,$E0,$7F,$C0,$7F,$C0,$3F,$80,$0E,$00 ; $CCA5
        db      $00,$00,$05,$01,$02,$0B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CCB5
        db      $00,$00,$08,$00,$3E,$00,$FF,$80,$7F,$00,$1C,$00,$00,$00,$05,$01 ; $CCC5
        db      $02,$0C,$04,$00,$04,$00,$20,$80,$00,$00,$00,$00,$C0,$60,$00,$00 ; $CCD5
        db      $00,$00,$20,$80,$04,$00,$04,$00,$00,$00,$04,$00,$81,$05,$32,$37 ; $CCE5
        db     $15,$99,$CC,$15,$B7,$CC,$20,$D3,$CC,$00,$F2,$CC ; $CCF5 original data
; Recovered reachable question-round TERSE word.
ANSWER_CURSOR_TASK:
        rst    $08                          ; $CD01 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $CD02 execution token
        dw     XT_LIT                       ; $CD04 execution token
        dw     $F705                        ; $CD06 inline word
        dw     XT_BZERO                     ; $CD08 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CD0A execution token
        dw     $1F21                        ; $CD0C execution token
        dw     XT_SET_OBJECT_MODE_1         ; $CD0E execution token
        dw     XT_LITbyte                   ; $CD10 execution token
        db     $0D                          ; $CD12 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $CD13 execution token
        dw     $1EDC                        ; $CD15 execution token
        dw     XT_LIT                       ; $CD17 execution token
        dw     $F755                        ; $CD19 inline word
        dw     XT_Bat                       ; $CD1B execution token
        dw     XT_0BRANCH                   ; $CD1D execution token
        dw     ANSWER_CURSOR_TASK_BR1       ; $CD1F branch target
        dw     XT_LIT                       ; $CD21 execution token
        dw     $F72A                        ; $CD23 inline word
        dw     XT_at                        ; $CD25 execution token
        dw     XT_BRANCH                    ; $CD27 execution token
        dw     ANSWER_CURSOR_TASK_BR2       ; $CD29 branch target
ANSWER_CURSOR_TASK_BR1:
        dw     XT_LIT                       ; $CD2B execution token
        dw     $FF67                        ; $CD2D inline word
ANSWER_CURSOR_TASK_BR2:
        dw     XT_LITbyte                   ; $CD2F execution token
        db     $3A                          ; $CD31 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $CD32 execution token
        dw     XT_LITbyte                   ; $CD34 execution token
        db     $14                          ; $CD36 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CD37 execution token
        dw     $1A2C                        ; $CD39 execution token
        dw     XT_LIT                       ; $CD3B execution token
        dw     $3798                        ; $CD3D inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CD3F execution token
        dw     XT_LIT                       ; $CD41 execution token
        dw     $0095                        ; $CD43 inline word
        dw     $1C5F                        ; $CD45 execution token
        dw     XT_LIT                       ; $CD47 execution token
        dw     $E148                        ; $CD49 inline word
        dw     XT_at                        ; $CD4B execution token
        dw     $1D5B                        ; $CD4D execution token
        dw     XT_LIT                       ; $CD4F execution token
        dw     $F725                        ; $CD51 inline word
        dw     XT_Bat                       ; $CD53 execution token
        dw     XT_NOT                       ; $CD55 execution token
        dw     XT_0BRANCH                   ; $CD57 execution token
        dw     ANSWER_CURSOR_TASK_BR4       ; $CD59 branch target
        dw     XT_LIT                       ; $CD5B execution token
        dw     $F755                        ; $CD5D inline word
        dw     XT_Bat                       ; $CD5F execution token
        dw     XT_0BRANCH                   ; $CD61 execution token
        dw     ANSWER_CURSOR_TASK_BR3       ; $CD63 branch target
        dw     XT_LIT                       ; $CD65 execution token
        dw     $F5FF                        ; $CD67 inline word
        dw     XT_BONE                      ; $CD69 execution token
        dw     XT_LITbyte                   ; $CD6B execution token
        db     $20                          ; $CD6D inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CD6E execution token
        dw     $1A2C                        ; $CD70 execution token
ANSWER_CURSOR_TASK_BR3:
        dw     $851A                        ; $CD72 execution token
        dw     $1C43                        ; $CD74 execution token
ANSWER_CURSOR_TASK_BR4:
        dw     XT_LIT                       ; $CD76 execution token
        dw     $F725                        ; $CD78 inline word
        dw     $1C1D                        ; $CD7A execution token
        dw     $19E9                        ; $CD7C execution token
        dw     XT_0                         ; $CD7E execution token
        dw     $1D5B                        ; $CD80 execution token
        dw     $1C30                        ; $CD82 execution token
        dw     XT_0BRANCH                   ; $CD84 execution token
        dw     ANSWER_CURSOR_TASK_BR9       ; $CD86 branch target
        dw     XT_GET_CURRENT_TASK          ; $CD88 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_1 ; $CD8A execution token
        dw     XT_LIT                       ; $CD8C execution token
        dw     $F72A                        ; $CD8E inline word
        dw     XT_bang                      ; $CD90 execution token
        dw     XT_IS_SELECTED_ANSWER_CORRECT ; $CD92 execution token
        dw     XT_0BRANCH                   ; $CD94 execution token
        dw     ANSWER_CURSOR_TASK_BR8       ; $CD96 branch target
        dw     XT_LIT                       ; $CD98 execution token
        dw     $0132                        ; $CD9A inline word
        dw     XT_DUP                       ; $CD9C execution token
        dw     XT_DUP                       ; $CD9E execution token
        dw     XT_GET_CURRENT_TASK          ; $CDA0 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_1 ; $CDA2 execution token
        dw     XT_LIT                       ; $CDA4 execution token
        dw     $009A                        ; $CDA6 inline word
        dw     XT_plus                      ; $CDA8 execution token
        dw     XT_minussign                 ; $CDAA execution token
        dw     XT_minussign                 ; $CDAC execution token
        dw     XT_minussign                 ; $CDAE execution token
        dw     XT_LITbyte                   ; $CDB0 execution token
        db     $03                          ; $CDB2 inline byte
        dw     XT_star                      ; $CDB3 execution token
        dw     XT_DUP                       ; $CDB5 execution token
        dw     XT_LIT                       ; $CDB7 execution token
        dw     $0384                        ; $CDB9 inline word
        dw     XT_gt                        ; $CDBB execution token
        dw     XT_0BRANCH                   ; $CDBD execution token
        dw     ANSWER_CURSOR_TASK_BR5       ; $CDBF branch target
        dw     XT_DROP                      ; $CDC1 execution token
        dw     XT_LIT                       ; $CDC3 execution token
        dw     $0384                        ; $CDC5 inline word
ANSWER_CURSOR_TASK_BR5:
        dw     XT_LIT                       ; $CDC7 execution token
        dw     $F728                        ; $CDC9 inline word
        dw     XT_bang                      ; $CDCB execution token
        dw     XT_LIT                       ; $CDCD execution token
        dw     $E1F1                        ; $CDCF inline word
        dw     XT_Bat                       ; $CDD1 execution token
        dw     XT_2splat                    ; $CDD3 execution token
        dw     XT_LIT                       ; $CDD5 execution token
        dw     $E148                        ; $CDD7 inline word
        dw     XT_DUP                       ; $CDD9 execution token
        dw     XT_at                        ; $CDDB execution token
        dw     XT_LIT                       ; $CDDD execution token
        dw     $0220                        ; $CDDF inline word
        dw     XT_less                      ; $CDE1 execution token
        dw     XT_0BRANCH                   ; $CDE3 execution token
        dw     ANSWER_CURSOR_TASK_BR6       ; $CDE5 branch target
        dw     XT_plusbang                  ; $CDE7 execution token
        dw     XT_BRANCH                    ; $CDE9 execution token
        dw     ANSWER_CURSOR_TASK_BR7       ; $CDEB branch target
ANSWER_CURSOR_TASK_BR6:
        dw     XT_2DROP                     ; $CDED execution token
ANSWER_CURSOR_TASK_BR7:
        dw     $22AB                        ; $CDEF execution token
        dw     ROUND_TERSE_CB75             ; $CDF1 execution token
ANSWER_CURSOR_TASK_BR8:
        dw     XT_BRANCH                    ; $CDF3 execution token
        dw     ANSWER_CURSOR_TASK_BR12      ; $CDF5 branch target
ANSWER_CURSOR_TASK_BR9:
        dw     XT_LIT                       ; $CDF7 execution token
        dw     $F705                        ; $CDF9 inline word
        dw     XT_BONE                      ; $CDFB execution token
        dw     XT_LIT                       ; $CDFD execution token
        dw     $E13D                        ; $CDFF inline word
        dw     XT_Bat                       ; $CE01 execution token
        dw     XT_LIT                       ; $CE03 execution token
        dw     $E1DD                        ; $CE05 inline word
        dw     XT_Bat                       ; $CE07 execution token
        dw     XT_less                      ; $CE09 execution token
        dw     XT_0BRANCH                   ; $CE0B execution token
        dw     ANSWER_CURSOR_TASK_BR11      ; $CE0D branch target
        dw     XT_LIT                       ; $CE0F execution token
        dw     $F727                        ; $CE11 inline word
        dw     XT_0                         ; $CE13 execution token
        dw     XT_LIT                       ; $CE15 execution token
        dw     $E146                        ; $CE17 inline word
        dw     $1A80                        ; $CE19 execution token
        dw     XT_0BRANCH                   ; $CE1B execution token
        dw     ANSWER_CURSOR_TASK_BR10      ; $CE1D branch target
        dw     XT_BONE                      ; $CE1F execution token
        dw     XT_BRANCH                    ; $CE21 execution token
        dw     ANSWER_CURSOR_TASK_BR11      ; $CE23 branch target
ANSWER_CURSOR_TASK_BR10:
        dw     XT_BZERO                     ; $CE25 execution token
ANSWER_CURSOR_TASK_BR11:
        dw     XT_SET_OBJECT_MODE_2         ; $CE27 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CE29 execution token
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $CE2B execution token
        dw     XT_LIT                       ; $CE2D execution token
        dw     $CCEF                        ; $CE2F inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $CE31 execution token
        dw     $866C                        ; $CE33 execution token
        dw     $15E7                        ; $CE35 execution token
        dw     XT_LITbyte                   ; $CE37 execution token
        db     $48                          ; $CE39 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $CE3A execution token
        dw     $19E9                        ; $CE3C execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $CE3E execution token
        dw     $9149                        ; $CE40 execution token
ANSWER_CURSOR_TASK_BR12:
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $CE42 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $CE44 execution token
        dw     XT_RETURN                    ; $CE46 execution token
TERSE_COLON_CE48:
        rst     $08                             ; $CE48 colon entry
        dw      XT_LIT                  ; $CE49 _LIT
        dw      $E13D                ; $CE4B inline word
        dw      $2CD4                ; $CE4D execution token $2CD4
        dw      XT_0BRANCH              ; $CE4F _0BRANCH
        dw      LCE5F                ; $CE51 branch target
        dw      XT_LIT                  ; $CE53 _LIT
        dw      $E141                ; $CE55 inline word
        dw      XT_LIT                  ; $CE57 _LIT
        dw      $E144                ; $CE59 inline word
        dw      XT_BRANCH               ; $CE5B _BRANCH
        dw      LCE67                ; $CE5D branch target
LCE5F:
        dw      XT_LIT                  ; $CE5F _LIT
        dw      $E140                ; $CE61 inline word
        dw      XT_LIT                  ; $CE63 _LIT
        dw      $E142                ; $CE65 inline word
LCE67:
        dw      XT_BZERO                ; $CE67 _BZERO
        dw      XT_DUP                  ; $CE69 _DUP
        dw      XT_Bat                  ; $CE6B _Bat
        dw      XT_0gt                  ; $CE6D _0gt
        dw      XT_0BRANCH              ; $CE6F _0BRANCH
        dw      LCE77                ; $CE71 branch target
        dw      XT_DUP                  ; $CE73 _DUP
        dw      XT_1minusBbang          ; $CE75 _1minusBbang
LCE77:
        dw      XT_Bat                  ; $CE77 _Bat
        dw      XT_zeroequal            ; $CE79 _zeroequal
        dw      XT_0BRANCH              ; $CE7B _0BRANCH
        dw      LCE91                ; $CE7D branch target
        dw      XT_DUP                  ; $CE7F _DUP
        dw      XT_Bat                  ; $CE81 _Bat
        dw      XT_SWAP                 ; $CE83 _SWAP
        dw      XT_1minusBbang          ; $CE85 _1minusBbang
        dw      XT_LIT                  ; $CE87 _LIT
        dw      $E13F                ; $CE89 inline word
        dw      XT_BONE                 ; $CE8B _BONE
        dw      XT_BRANCH               ; $CE8D _BRANCH
        dw      LCE93                ; $CE8F branch target
LCE91:
        dw      XT_Bat                  ; $CE91 _Bat
LCE93:
        dw      $359F                ; $CE93 execution token $359F
        dw      XT_LITbyte              ; $CE95 _LITbyte
        db      $02                  ; $CE97 inline byte
        dw      XT_equal                ; $CE98 _equal
        dw      XT_0BRANCH              ; $CE9A _0BRANCH
        dw      LCEBD                ; $CE9C branch target
        dw      XT_LIT                  ; $CE9E _LIT
        dw      $E146                ; $CEA0 inline word
        dw      XT_LIT                  ; $CEA2 _LIT
        dw      $F727                ; $CEA4 inline word
        dw      XT_DUP                  ; $CEA6 _DUP
        dw      XT_Bat                  ; $CEA8 _Bat
        dw      XT_0BRANCH              ; $CEAA _0BRANCH
        dw      LCEB9                ; $CEAC branch target
        dw      XT_BZERO                ; $CEAE _BZERO
        dw      XT_LITbyte              ; $CEB0 _LITbyte
        db      $02                  ; $CEB2 inline byte
        dw      XT_Bbang                ; $CEB3 _Bbang
        dw      XT_BRANCH               ; $CEB5 _BRANCH
        dw      LCEBD                ; $CEB7 branch target
LCEB9:
        dw      XT_BONE                 ; $CEB9 _BONE
        dw      XT_BONE                 ; $CEBB _BONE
LCEBD:
        dw      XT_RETURN               ; $CEBD _RETURN
READ_SELECTED_QUESTION_BANK_STATE:
        rst     $08                             ; $CEBF colon entry
        dw      XT_LIT                  ; $CEC0 _LIT
        dw      $F753                ; $CEC2 inline word
        dw      XT_Bat                  ; $CEC4 _Bat
        dw      XT_RETURN               ; $CEC6 _RETURN
; Select a populated PPQ EPROM: random index below the bound at $DF1D,
; OR with selector base $80, store selector and OUT to $F3.
; Reject banks whose root-directory word is $FFFF; retry without
; consuming a question-initializer candidate.
SELECT_RANDOM_POPULATED_QUESTION_BANK:
        rst     $08                             ; $CEC8 colon entry
LCEC9:
        dw      XT_LIT                  ; $CEC9 _LIT
        dw      $DF1D                ; $CECB inline word
        dw      XT_Bat                  ; $CECD _Bat
        dw      $1B32                ; $CECF execution token $1B32
        dw      XT_LIT                  ; $CED1 _LIT
        dw      $0080                ; $CED3 inline word
        dw      XT_plus                 ; $CED5 _plus
        dw      XT_LIT                  ; $CED7 _LIT
        dw      $F753                ; $CED9 inline word
        dw      XT_SBbang               ; $CEDB _SBbang
        dw      READ_SELECTED_QUESTION_BANK_STATE     ; $CEDD READ_SELECTED_QUESTION_BANK_STATE
        dw      XT_LIT                  ; $CEDF _LIT
        dw      $00F3                ; $CEE1 inline word
        dw      XT_OUTP                 ; $CEE3 _OUTP
        dw      XT_LIT                  ; $CEE5 _LIT
        dw      $C000                ; $CEE7 inline word
        dw      XT_at                   ; $CEE9 _at
        dw      XT_at                   ; $CEEB _at
        dw      XT_LIT                  ; $CEED _LIT
        dw      $FFFF                ; $CEEF inline word
        dw      XT_not_equal            ; $CEF1 _not_equal
        dw      XT_0BRANCH              ; $CEF3 _0BRANCH
        dw      LCEC9                ; $CEF5 branch target
        dw      XT_RETURN               ; $CEF7 _RETURN
TERSE_COLON_CEF9:
        rst     $08                             ; $CEF9 colon entry
        dw      XT_LIT                  ; $CEFA _LIT
        dw      $E14A                ; $CEFC inline word
        dw      XT_Bat                  ; $CEFE _Bat
        dw      XT_RETURN               ; $CF00 _RETURN
TERSE_COLON_CF02:
        rst     $08                             ; $CF02 colon entry
        dw      TERSE_COLON_CEF9     ; $CF03 TERSE_COLON_CEF9
        dw      XT_LITbyte              ; $CF05 _LITbyte
        db      $06                  ; $CF07 inline byte
        dw      XT_slash                ; $CF08 _slash
        dw      XT_2splat               ; $CF0A _2splat
        dw      XT_LIT                  ; $CF0C _LIT
        dw      $E13E                ; $CF0E inline word
        dw      XT_Bat                  ; $CF10 _Bat
        dw      XT_0BRANCH              ; $CF12 _0BRANCH
        dw      LCF1B                ; $CF14 branch target
        dw      XT_LITbyte              ; $CF16 _LITbyte
        db      $08                  ; $CF18 inline byte
        dw      XT_plus                 ; $CF19 _plus
LCF1B:
        dw      XT_DUP                  ; $CF1B _DUP
        dw      XT_LITbyte              ; $CF1D _LITbyte
        db      $0E                  ; $CF1F inline byte
        dw      XT_gt                   ; $CF20 _gt
        dw      XT_0BRANCH              ; $CF22 _0BRANCH
        dw      LCF2B                ; $CF24 branch target
        dw      XT_DROP                 ; $CF26 _DROP
        dw      XT_LITbyte              ; $CF28 _LITbyte
        db      $0E                  ; $CF2A inline byte
LCF2B:
        dw      XT_LIT                  ; $CF2B _LIT
        dw      $E14B                ; $CF2D inline word
        dw      XT_SBbang               ; $CF2F _SBbang
        dw      XT_RETURN               ; $CF31 _RETURN
TERSE_COLON_CF33:
        rst     $08                             ; $CF33 colon entry
        dw      XT_LIT                  ; $CF34 _LIT
        dw      $C000                ; $CF36 inline word
        dw      XT_at                   ; $CF38 _at
        dw      XT_at                   ; $CF3A _at
        dw      XT_LIT                  ; $CF3C _LIT
        dw      $E14B                ; $CF3E inline word
        dw      XT_Bat                  ; $CF40 _Bat
        dw      XT_plus                 ; $CF42 _plus
        dw      XT_at                   ; $CF44 _at
        dw      XT_RETURN               ; $CF46 _RETURN
TERSE_COLON_CF48:
        rst     $08                             ; $CF48 colon entry
        dw      XT_DUP                  ; $CF49 _DUP
        dw      XT_Bat                  ; $CF4B _Bat
        dw      $1B32                ; $CF4D execution token $1B32
        dw      XT_2splat               ; $CF4F _2splat
        dw      XT_plus                 ; $CF51 _plus
        dw      XT_1plus                ; $CF53 _1plus
        dw      XT_at                   ; $CF55 _at
        dw      XT_RETURN               ; $CF57 _RETURN
TERSE_COLON_CF59:
        rst     $08                             ; $CF59 colon entry
        dw      XT_LITbyte              ; $CF5A _LITbyte
        db      $10                  ; $CF5C inline byte
        dw      XT_0                    ; $CF5D _0
        dw      XT_DO                   ; $CF5F _DO
        dw      XT_DUP                  ; $CF61 _DUP
        dw      XT_I                    ; $CF63 _I
        dw      XT_ARRAY                ; $CF65 _ARRAY
        dw      $F730                ; $CF67 inline word
        dw      XT_at                   ; $CF69 _at
        dw      XT_equal                ; $CF6B _equal
        dw      XT_0BRANCH              ; $CF6D _0BRANCH
        dw      LCF77                ; $CF6F branch target
        dw      XT_DROP                 ; $CF71 _DROP
        dw      XT_0                    ; $CF73 _0
        dw      XT_LEAVE                ; $CF75 _LEAVE
LCF77:
        dw      XT_LOOP                 ; $CF77 _LOOP
        dw      XT_RETURN               ; $CF79 _RETURN
TERSE_COLON_CF7B:
        rst     $08                             ; $CF7B colon entry
        dw      XT_LIT                  ; $CF7C _LIT
        dw      $F751                ; $CF7E inline word
        dw      XT_DUP                  ; $CF80 _DUP
        dw      XT_DUP                  ; $CF82 _DUP
        dw      XT_Bat                  ; $CF84 _Bat
        dw      XT_LITbyte              ; $CF86 _LITbyte
        db      $0E                  ; $CF88 inline byte
        dw      XT_gt                   ; $CF89 _gt
        dw      XT_0BRANCH              ; $CF8B _0BRANCH
        dw      LCF95                ; $CF8D branch target
        dw      XT_BZERO                ; $CF8F _BZERO
        dw      XT_BRANCH               ; $CF91 _BRANCH
        dw      LCF97                ; $CF93 branch target
LCF95:
        dw      XT_1plusBbang           ; $CF95 _1plusBbang
LCF97:
        dw      XT_Bat                  ; $CF97 _Bat
        dw      XT_ARRAY                ; $CF99 _ARRAY
        dw      $F730                ; $CF9B inline word
        dw      XT_bang                 ; $CF9D _bang
        dw      XT_RETURN               ; $CF9F _RETURN
TERSE_COLON_CFA1:
        rst     $08                             ; $CFA1 colon entry
        dw      XT_LITbyte              ; $CFA2 _LITbyte
        db      $05                  ; $CFA4 inline byte
        dw      XT_LIT                  ; $CFA5 _LIT
        dw      $F752                ; $CFA7 inline word
        dw      XT_SBbang               ; $CFA9 _SBbang
        dw      XT_LIT                  ; $CFAB _LIT
        dw      $F750                ; $CFAD inline word
        dw      XT_DUP                  ; $CFAF _DUP
        dw      XT_1minusBbang          ; $CFB1 _1minusBbang
        dw      XT_Bat                  ; $CFB3 _Bat
        dw      XT_zeroequal            ; $CFB5 _zeroequal
        dw      XT_0BRANCH              ; $CFB7 _0BRANCH
        dw      LCFC8                ; $CFB9 branch target
        dw      XT_LITbyte              ; $CFBB _LITbyte
        db      $0A                  ; $CFBD inline byte
        dw      XT_LIT                  ; $CFBE _LIT
        dw      $F750                ; $CFC0 inline word
        dw      XT_SBbang               ; $CFC2 _SBbang
        dw      XT_BRANCH               ; $CFC4 _BRANCH
        dw      LCFE0                ; $CFC6 branch target
LCFC8:
        dw      XT_DUP                  ; $CFC8 _DUP
        dw      XT_LIT                  ; $CFCA _LIT
        dw      $F751                ; $CFCC inline word
        dw      XT_Bat                  ; $CFCE _Bat
        dw      XT_ARRAY                ; $CFD0 _ARRAY
        dw      $F730                ; $CFD2 inline word
        dw      XT_at                   ; $CFD4 _at
        dw      XT_equal                ; $CFD6 _equal
        dw      XT_0BRANCH              ; $CFD8 _0BRANCH
        dw      LCFE0                ; $CFDA branch target
        dw      XT_DROP                 ; $CFDC _DROP
        dw      XT_0                    ; $CFDE _0
LCFE0:
        dw      XT_RETURN               ; $CFE0 _RETURN
; Overlapping TERSE control flow: final 0BRANCH operand spans
; $D01F (low byte $F7) and $D020 (colon opcode $CF). Preserve
; the $D020 RST $08 entry as shared high operand byte.
ROUND_TERSE_CFE2:
        rst     $08                                ; $CFE2 colon entry
        dw      XT_LITbyte                         ; $CFE3 execution token
        db      $05                                ; $CFE5 inline byte
        dw      XT_LIT                             ; $CFE6 execution token
        dw      $F752                              ; $CFE8 inline word
        dw      XT_SBbang                          ; $CFEA execution token
        dw      XT_LITbyte                         ; $CFEC execution token
        db      $10                                ; $CFEE inline byte
        dw      XT_LIT                             ; $CFEF execution token
        dw      $F750                              ; $CFF1 inline word
        dw      XT_SBbang                          ; $CFF3 execution token
        dw      $CF02                              ; $CFF5 execution token
ROUND_TERSE_CFE2_BR1:
        dw      $CEC8                              ; $CFF7 execution token
        dw      $CF33                              ; $CFF9 execution token
        dw      XT_QUESTION_MINUS_DUP              ; $CFFB execution token
        dw      XT_0BRANCH                         ; $CFFD execution token
        dw      ROUND_TERSE_CFE2_BR4               ; $CFFF branch target
        dw      $CF48                              ; $D001 execution token
        dw      XT_EXECUTE                         ; $D003 execution token
        dw      XT_LIT                             ; $D005 execution token
        dw      $F752                              ; $D007 inline word
        dw      XT_DUP                             ; $D009 execution token
        dw      XT_1minusBbang                     ; $D00B execution token
        dw      XT_Bat                             ; $D00D execution token
        dw      XT_0BRANCH                         ; $D00F execution token
        dw      ROUND_TERSE_CFE2_BR2               ; $D011 branch target
        dw      $CF59                              ; $D013 execution token
        dw      XT_BRANCH                          ; $D015 execution token
        dw      ROUND_TERSE_CFE2_BR3               ; $D017 branch target
ROUND_TERSE_CFE2_BR2:
        dw      $CFA1                              ; $D019 execution token
ROUND_TERSE_CFE2_BR3:
        dw      XT_QUESTION_MINUS_DUP              ; $D01B execution token
ROUND_TERSE_CFE2_BR4:
        dw      XT_0BRANCH                         ; $D01D execution token
        db      $F7                                ; $D01F branch operand low; high byte at D020
TERSE_COLON_D020:
        rst     $08                             ; $D020 colon entry
        dw      XT_DUP                  ; $D021 _DUP
        dw      TERSE_COLON_CF7B     ; $D023 TERSE_COLON_CF7B
        dw      XT_RETURN               ; $D025 _RETURN
TERSE_COLON_D027:
        rst     $08                             ; $D027 colon entry
        dw      XT_0                    ; $D028 _0
        dw      XT_LIT                  ; $D02A _LIT
        dw      $F000                ; $D02C inline word
        dw      XT_LIT                  ; $D02E _LIT
        dw      $0300                ; $D030 inline word
        dw      $21A2                ; $D032 execution token $21A2
        dw      XT_RETURN               ; $D034 _RETURN
TERSE_COLON_D036:
        rst     $08                             ; $D036 colon entry
        dw      XT_0                    ; $D037 _0
        dw      XT_0                    ; $D039 _0
        dw      XT_2DUP                 ; $D03B _2DUP
        dw      XT_LIT                  ; $D03D _LIT
        dw      $E1E2                ; $D03F inline word
        dw      NATIVE_CB66          ; $D041 NATIVE_CB66
        dw      XT_LIT                  ; $D043 _LIT
        dw      $E1DE                ; $D045 inline word
        dw      NATIVE_CB66          ; $D047 NATIVE_CB66
        dw      XT_LIT                  ; $D049 _LIT
        dw      $FEF9                ; $D04B inline word
        dw      XT_ZERO                 ; $D04D _ZERO
        dw      XT_LIT                  ; $D04F _LIT
        dw      $FEF8                ; $D051 inline word
        dw      XT_BZERO                ; $D053 _BZERO
        dw      XT_LIT                  ; $D055 _LIT
        dw      $E1F2                ; $D057 inline word
        dw      XT_Bat                  ; $D059 _Bat
        dw      XT_1minus               ; $D05B _1minus
        dw      XT_LITbyte              ; $D05D _LITbyte
        db      $10                  ; $D05F inline byte
        dw      XT_star                 ; $D060 _star
        dw      XT_LITbyte              ; $D062 _LITbyte
        db      $60                  ; $D064 inline byte
        dw      XT_plus                 ; $D065 _plus
        dw      XT_LIT                  ; $D067 _LIT
        dw      $E148                ; $D069 inline word
        dw      XT_bang                 ; $D06B _bang
        dw      XT_LIT                  ; $D06D _LIT
        dw      $E14A                ; $D06F inline word
        dw      XT_BZERO                ; $D071 _BZERO
        dw      XT_LIT                  ; $D073 _LIT
        dw      $E1EE                ; $D075 inline word
        dw      XT_Bat                  ; $D077 _Bat
        dw      XT_DUP                  ; $D079 _DUP
        dw      XT_LIT                  ; $D07B _LIT
        dw      $E141                ; $D07D inline word
        dw      XT_SBbang               ; $D07F _SBbang
        dw      XT_LIT                  ; $D081 _LIT
        dw      $E140                ; $D083 inline word
        dw      XT_SBbang               ; $D085 _SBbang
        dw      XT_LIT                  ; $D087 _LIT
        dw      $E145                ; $D089 inline word
        dw      XT_BZERO                ; $D08B _BZERO
        dw      XT_LIT                  ; $D08D _LIT
        dw      $E143                ; $D08F inline word
        dw      XT_BZERO                ; $D091 _BZERO
        dw      XT_LIT                  ; $D093 _LIT
        dw      $E13E                ; $D095 inline word
        dw      XT_BZERO                ; $D097 _BZERO
        dw      XT_LIT                  ; $D099 _LIT
        dw      $FD83                ; $D09B inline word
        dw      XT_BONE                 ; $D09D _BONE
        dw      XT_RETURN               ; $D09F _RETURN
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
        dw      XT_LIT                  ; $D0B1 _LIT
        dw      $E1DD                ; $D0B3 inline word
        dw      XT_Bat                  ; $D0B5 _Bat
        dw      XT_1minus               ; $D0B7 _1minus
        dw      XT_0BRANCH              ; $D0B9 _0BRANCH
        dw      LD0C3                ; $D0BB branch target
        dw      NATIVE_D0A6          ; $D0BD NATIVE_D0A6
        dw      XT_BRANCH               ; $D0BF _BRANCH
        dw      LD0C5                ; $D0C1 branch target
LD0C3:
        dw      NATIVE_D0A1          ; $D0C3 NATIVE_D0A1
LD0C5:
        dw      NATIVE_D0AB          ; $D0C5 NATIVE_D0AB
        dw      XT_RETURN               ; $D0C7 _RETURN
; Map configuration 0 ($F3 = $00): question presentation vocabulary.
SELECT_SUPER_GAME_CONFIGURATION_0:
        rst     $08                             ; $D0C9 colon entry
        dw      XT_0                    ; $D0CA _0
        dw      XT_LIT                  ; $D0CC _LIT
        dw      $00F3                ; $D0CE inline word
        dw      XT_OUTP                 ; $D0D0 _OUTP
        dw      XT_RETURN               ; $D0D2 _RETURN
; Map configuration 1 ($F3 = $20): game executive and service code.
SELECT_SUPER_GAME_CONFIGURATION_1:
        rst     $08                             ; $D0D4 colon entry
        dw      XT_LITbyte              ; $D0D5 _LITbyte
        db      $20                  ; $D0D7 inline byte
        dw      XT_LIT                  ; $D0D8 _LIT
        dw      $00F3                ; $D0DA inline word
        dw      XT_OUTP                 ; $D0DC _OUTP
        dw      XT_RETURN               ; $D0DE _RETURN
NATIVE_D0E0:
        call $0673                      ; $D0E0
        jp (iy)                         ; $D0E3
TERSE_COLON_D0E5:
        rst     $08                             ; $D0E5 colon entry
        dw      XT_LITbyte              ; $D0E6 _LITbyte
        db      $03                  ; $D0E8 inline byte
        dw      XT_0                    ; $D0E9 _0
        dw      XT_DO                   ; $D0EB _DO
        dw      XT_I                    ; $D0ED _I
        dw      XT_ARRAY                ; $D0EF _ARRAY
        dw      $F6F4                ; $D0F1 inline word
        dw      XT_ZERO                 ; $D0F3 _ZERO
        dw      XT_LOOP                 ; $D0F5 _LOOP
        dw      XT_RETURN               ; $D0F7 _RETURN
; Recovered reachable question-round TERSE word.
QUESTION_ROUND_CONTROLLER:
        rst    $08                          ; $D0F9 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D0FA execution token
        dw     XT_SELECT_SUPER_GAME_CONFIGURATION_0 ; $D0FC execution token
        dw     XT_LIT                       ; $D0FE execution token
        dw     $E147                        ; $D100 inline word
        dw     XT_Bat                       ; $D102 execution token
        dw     XT_zeroequal                 ; $D104 execution token
        dw     XT_0BRANCH                   ; $D106 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR1 ; $D108 branch target
        dw     $D036                        ; $D10A execution token
QUESTION_ROUND_CONTROLLER_BR1:
        dw     $D027                        ; $D10C execution token
        dw     XT_0                         ; $D10E execution token
        dw     XT_LIT                       ; $D110 execution token
        dw     $00C3                        ; $D112 inline word
        dw     XT_OUTP                      ; $D114 execution token
        dw     XT_LIT                       ; $D116 execution token
        dw     $2D95                        ; $D118 inline word
        dw     $2D7C                        ; $D11A execution token
        dw     $927F                        ; $D11C execution token
        dw     $D0E5                        ; $D11E execution token
        dw     XT_LIT                       ; $D120 execution token
        dw     $F755                        ; $D122 inline word
        dw     XT_BZERO                     ; $D124 execution token
        dw     XT_LIT                       ; $D126 execution token
        dw     $F705                        ; $D128 inline word
        dw     XT_BZERO                     ; $D12A execution token
        dw     XT_LIT                       ; $D12C execution token
        dw     $F721                        ; $D12E inline word
        dw     XT_BZERO                     ; $D130 execution token
        dw     XT_LIT                       ; $D132 execution token
        dw     $F728                        ; $D134 inline word
        dw     XT_ZERO                      ; $D136 execution token
        dw     XT_LIT                       ; $D138 execution token
        dw     $E13E                        ; $D13A inline word
        dw     XT_Bat                       ; $D13C execution token
        dw     XT_0BRANCH                   ; $D13E execution token
        dw     QUESTION_ROUND_CONTROLLER_BR2 ; $D140 branch target
        dw     XT_LIT                       ; $D142 execution token
        dw     $C010                        ; $D144 inline word
        dw     XT_BRANCH                    ; $D146 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR4 ; $D148 branch target
QUESTION_ROUND_CONTROLLER_BR2:
        dw     $34A8                        ; $D14A execution token
        dw     XT_zeroequal                 ; $D14C execution token
        dw     XT_0BRANCH                   ; $D14E execution token
        dw     QUESTION_ROUND_CONTROLLER_BR3 ; $D150 branch target
        dw     XT_LIT                       ; $D152 execution token
        dw     $C00E                        ; $D154 inline word
        dw     XT_BRANCH                    ; $D156 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR4 ; $D158 branch target
QUESTION_ROUND_CONTROLLER_BR3:
        dw     XT_LIT                       ; $D15A execution token
        dw     $C012                        ; $D15C inline word
QUESTION_ROUND_CONTROLLER_BR4:
        dw     XT_at                        ; $D15E execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D160 execution token
        dw     XT_YIELD_ACTION_TASK         ; $D162 execution token
        dw     XT_SELECT_NONREPEATING_QUESTION ; $D164 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D166 execution token
        dw     XT_YIELD_ACTION_TASK         ; $D168 execution token
        dw     $928D                        ; $D16A execution token
        dw     XT_LIT                       ; $D16C execution token
        dw     $F757                        ; $D16E inline word
        dw     XT_BZERO                     ; $D170 execution token
        dw     XT_LIT                       ; $D172 execution token
        dw     $F755                        ; $D174 inline word
        dw     XT_BZERO                     ; $D176 execution token
        dw     XT_LIT                       ; $D178 execution token
        dw     $F721                        ; $D17A inline word
        dw     XT_BONE                      ; $D17C execution token
        dw     XT_LIT                       ; $D17E execution token
        dw     $C01A                        ; $D180 inline word
        dw     XT_at                        ; $D182 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D184 execution token
        dw     XT_YIELD_ACTION_TASK         ; $D186 execution token
        dw     XT_LIT                       ; $D188 execution token
        dw     $C01E                        ; $D18A inline word
        dw     XT_at                        ; $D18C execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D18E execution token
        dw     XT_YIELD_ACTION_TASK         ; $D190 execution token
        dw     XT_LIT                       ; $D192 execution token
        dw     $E13F                        ; $D194 inline word
        dw     XT_BZERO                     ; $D196 execution token
        dw     XT_IS_SELECTED_ANSWER_CORRECT ; $D198 execution token
        dw     XT_LIT                       ; $D19A execution token
        dw     $E13E                        ; $D19C inline word
        dw     XT_Bat                       ; $D19E execution token
        dw     XT_OR                        ; $D1A0 execution token
        dw     XT_zeroequal                 ; $D1A2 execution token
        dw     XT_0BRANCH                   ; $D1A4 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR6 ; $D1A6 branch target
        dw     $CE48                        ; $D1A8 execution token
        dw     XT_LIT                       ; $D1AA execution token
        dw     $F705                        ; $D1AC inline word
        dw     XT_Bat                       ; $D1AE execution token
        dw     XT_zeroequal                 ; $D1B0 execution token
        dw     XT_LIT                       ; $D1B2 execution token
        dw     $E13D                        ; $D1B4 inline word
        dw     XT_Bat                       ; $D1B6 execution token
        dw     XT_0gt                       ; $D1B8 execution token
        dw     XT_AND                       ; $D1BA execution token
        dw     XT_0BRANCH                   ; $D1BC execution token
        dw     QUESTION_ROUND_CONTROLLER_BR5 ; $D1BE branch target
        dw     $22AB                        ; $D1C0 execution token
        dw     $9207                        ; $D1C2 execution token
        dw     XT_LITbyte                   ; $D1C4 execution token
        db     $14                          ; $D1C6 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D1C7 execution token
        dw     $1A2C                        ; $D1C9 execution token
        dw     XT_LIT                       ; $D1CB execution token
        dw     $F755                        ; $D1CD inline word
        dw     XT_BONE                      ; $D1CF execution token
        dw     XT_LIT                       ; $D1D1 execution token
        dw     $C01A                        ; $D1D3 inline word
        dw     XT_at                        ; $D1D5 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D1D7 execution token
        dw     XT_LIT                       ; $D1D9 execution token
        dw     $C01E                        ; $D1DB inline word
        dw     XT_at                        ; $D1DD execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D1DF execution token
        dw     XT_YIELD_ACTION_TASK         ; $D1E1 execution token
        dw     $22AB                        ; $D1E3 execution token
        dw     $BDA9                        ; $D1E5 execution token
QUESTION_ROUND_CONTROLLER_BR5:
        dw     XT_IS_SELECTED_ANSWER_CORRECT ; $D1E7 execution token
        dw     XT_LIT                       ; $D1E9 execution token
        dw     $F705                        ; $D1EB inline word
        dw     XT_Bat                       ; $D1ED execution token
        dw     XT_LIT                       ; $D1EF execution token
        dw     $F755                        ; $D1F1 inline word
        dw     XT_Bat                       ; $D1F3 execution token
        dw     XT_AND                       ; $D1F5 execution token
        dw     XT_LIT                       ; $D1F7 execution token
        dw     $E13D                        ; $D1F9 inline word
        dw     XT_Bat                       ; $D1FB execution token
        dw     XT_1                         ; $D1FD execution token
        dw     XT_equal                     ; $D1FF execution token
        dw     XT_AND                       ; $D201 execution token
        dw     XT_OR                        ; $D203 execution token
        dw     XT_zeroequal                 ; $D205 execution token
        dw     XT_LIT                       ; $D207 execution token
        dw     $E13D                        ; $D209 inline word
        dw     XT_Bat                       ; $D20B execution token
        dw     XT_0gt                       ; $D20D execution token
        dw     XT_AND                       ; $D20F execution token
        dw     XT_0BRANCH                   ; $D211 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR6 ; $D213 branch target
        dw     $CE48                        ; $D215 execution token
QUESTION_ROUND_CONTROLLER_BR6:
        dw     XT_LIT                       ; $D217 execution token
        dw     $F5FF                        ; $D219 inline word
        dw     XT_BONE                      ; $D21B execution token
        dw     XT_LIT                       ; $D21D execution token
        dw     $F705                        ; $D21F inline word
        dw     XT_Bat                       ; $D221 execution token
        dw     XT_LIT                       ; $D223 execution token
        dw     $E13D                        ; $D225 inline word
        dw     XT_Bat                       ; $D227 execution token
        dw     XT_zeroequal                 ; $D229 execution token
        dw     XT_OR                        ; $D22B execution token
        dw     XT_0BRANCH                   ; $D22D execution token
        dw     QUESTION_ROUND_CONTROLLER_BR7 ; $D22F branch target
        dw     XT_LITbyte                   ; $D231 execution token
        db     $3C                          ; $D233 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D234 execution token
        dw     $1A2C                        ; $D236 execution token
        dw     XT_BRANCH                    ; $D238 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR8 ; $D23A branch target
QUESTION_ROUND_CONTROLLER_BR7:
        dw     XT_LIT                       ; $D23C execution token
        dw     $F71E                        ; $D23E inline word
        dw     XT_BONE                      ; $D240 execution token
        dw     $22AB                        ; $D242 execution token
        dw     $9207                        ; $D244 execution token
QUESTION_ROUND_CONTROLLER_BR8:
        dw     XT_LITbyte                   ; $D246 execution token
        db     $3C                          ; $D248 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D249 execution token
        dw     $1A2C                        ; $D24B execution token
        dw     $3564                        ; $D24D execution token
        dw     XT_LIT                       ; $D24F execution token
        dw     $F6FA                        ; $D251 inline word
        dw     $1C1D                        ; $D253 execution token
        dw     $1A2C                        ; $D255 execution token
        dw     $3509                        ; $D257 execution token
        dw     XT_LIT                       ; $D259 execution token
        dw     $F6FA                        ; $D25B inline word
        dw     $1C1D                        ; $D25D execution token
        dw     $1A2C                        ; $D25F execution token
        dw     XT_LITbyte                   ; $D261 execution token
        db     $32                          ; $D263 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D264 execution token
        dw     $1A2C                        ; $D266 execution token
        dw     XT_LIT                       ; $D268 execution token
        dw     $F6E8                        ; $D26A inline word
        dw     XT_BONE                      ; $D26C execution token
        dw     XT_LIT                       ; $D26E execution token
        dw     $F6E7                        ; $D270 inline word
        dw     XT_BONE                      ; $D272 execution token
        dw     XT_LITbyte                   ; $D274 execution token
        db     $14                          ; $D276 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D277 execution token
        dw     $1A2C                        ; $D279 execution token
        dw     $927F                        ; $D27B execution token
        dw     XT_LIT                       ; $D27D execution token
        dw     $E13F                        ; $D27F inline word
        dw     XT_Bat                       ; $D281 execution token
        dw     XT_0BRANCH                   ; $D283 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR10 ; $D285 branch target
        dw     XT_LIT                       ; $D287 execution token
        dw     $E13D                        ; $D289 inline word
        dw     XT_Bat                       ; $D28B execution token
        dw     XT_zeroequal                 ; $D28D execution token
        dw     XT_0BRANCH                   ; $D28F execution token
        dw     QUESTION_ROUND_CONTROLLER_BR9 ; $D291 branch target
        dw     $D0B0                        ; $D293 execution token
QUESTION_ROUND_CONTROLLER_BR9:
        dw     XT_LIT                       ; $D295 execution token
        dw     $C00C                        ; $D297 inline word
        dw     XT_at                        ; $D299 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D29B execution token
        dw     XT_YIELD_ACTION_TASK         ; $D29D execution token
        dw     XT_LIT                       ; $D29F execution token
        dw     $C014                        ; $D2A1 inline word
        dw     XT_at                        ; $D2A3 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D2A5 execution token
        dw     XT_YIELD_ACTION_TASK         ; $D2A7 execution token
QUESTION_ROUND_CONTROLLER_BR10:
        dw     XT_LIT                       ; $D2A9 execution token
        dw     $C42D                        ; $D2AB inline word
        dw     XT_START_COUNTED_ACTION_LIST ; $D2AD execution token
        dw     XT_YIELD_ACTION_TASK         ; $D2AF execution token
        dw     XT_LIT                       ; $D2B1 execution token
        dw     $E13E                        ; $D2B3 inline word
        dw     XT_BZERO                     ; $D2B5 execution token
        dw     XT_LIT                       ; $D2B7 execution token
        dw     $E144                        ; $D2B9 inline word
        dw     XT_Bat                       ; $D2BB execution token
        dw     XT_LIT                       ; $D2BD execution token
        dw     $E1F3                        ; $D2BF inline word
        dw     XT_Bat                       ; $D2C1 execution token
        dw     $CEF9                        ; $D2C3 execution token
        dw     XT_LITbyte                   ; $D2C5 execution token
        db     $1D                          ; $D2C7 inline byte
        dw     XT_gt                        ; $D2C8 execution token
        dw     XT_0BRANCH                   ; $D2CA execution token
        dw     QUESTION_ROUND_CONTROLLER_BR11 ; $D2CC branch target
        dw     XT_2plus                     ; $D2CE execution token
QUESTION_ROUND_CONTROLLER_BR11:
        dw     XT_equal                     ; $D2D0 execution token
        dw     XT_0BRANCH                   ; $D2D2 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR12 ; $D2D4 branch target
        dw     XT_LIT                       ; $D2D6 execution token
        dw     $E146                        ; $D2D8 inline word
        dw     XT_BONE                      ; $D2DA execution token
        dw     XT_LIT                       ; $D2DC execution token
        dw     $E13E                        ; $D2DE inline word
        dw     XT_BONE                      ; $D2E0 execution token
        dw     XT_LIT                       ; $D2E2 execution token
        dw     $E144                        ; $D2E4 inline word
        dw     XT_BZERO                     ; $D2E6 execution token
        dw     XT_BRANCH                    ; $D2E8 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR14 ; $D2EA branch target
QUESTION_ROUND_CONTROLLER_BR12:
        dw     XT_LIT                       ; $D2EC execution token
        dw     $E142                        ; $D2EE inline word
        dw     XT_Bat                       ; $D2F0 execution token
        dw     XT_LIT                       ; $D2F2 execution token
        dw     $E1F3                        ; $D2F4 inline word
        dw     XT_Bat                       ; $D2F6 execution token
        dw     $CEF9                        ; $D2F8 execution token
        dw     XT_LITbyte                   ; $D2FA execution token
        db     $1D                          ; $D2FC inline byte
        dw     XT_gt                        ; $D2FD execution token
        dw     XT_0BRANCH                   ; $D2FF execution token
        dw     QUESTION_ROUND_CONTROLLER_BR13 ; $D301 branch target
        dw     XT_2plus                     ; $D303 execution token
QUESTION_ROUND_CONTROLLER_BR13:
        dw     XT_equal                     ; $D305 execution token
        dw     XT_0BRANCH                   ; $D307 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR14 ; $D309 branch target
        dw     XT_LITbyte                   ; $D30B execution token
        db     $02                          ; $D30D inline byte
        dw     XT_LIT                       ; $D30E execution token
        dw     $E146                        ; $D310 inline word
        dw     XT_SBbang                    ; $D312 execution token
        dw     XT_LIT                       ; $D314 execution token
        dw     $E13E                        ; $D316 inline word
        dw     XT_BONE                      ; $D318 execution token
        dw     XT_LIT                       ; $D31A execution token
        dw     $E142                        ; $D31C inline word
        dw     XT_BZERO                     ; $D31E execution token
QUESTION_ROUND_CONTROLLER_BR14:
        dw     XT_LIT                       ; $D320 execution token
        dw     $E13D                        ; $D322 inline word
        dw     XT_Bat                       ; $D324 execution token
        dw     XT_1                         ; $D326 execution token
        dw     XT_gt                        ; $D328 execution token
        dw     XT_LIT                       ; $D32A execution token
        dw     $E13E                        ; $D32C inline word
        dw     XT_Bat                       ; $D32E execution token
        dw     XT_zeroequal                 ; $D330 execution token
        dw     XT_AND                       ; $D332 execution token
        dw     XT_0BRANCH                   ; $D334 execution token
        dw     QUESTION_ROUND_CONTROLLER_BR15 ; $D336 branch target
        dw     XT_LITbyte                   ; $D338 execution token
        db     $03                          ; $D33A inline byte
        dw     XT_LIT                       ; $D33B execution token
        dw     $E146                        ; $D33D inline word
        dw     XT_SBbang                    ; $D33F execution token
QUESTION_ROUND_CONTROLLER_BR15:
        dw     XT_LIT                       ; $D341 execution token
        dw     $E13D                        ; $D343 inline word
        dw     XT_Bat                       ; $D345 execution token
        dw     XT_1                         ; $D347 execution token
        dw     XT_less                      ; $D349 execution token
        dw     XT_0BRANCH                   ; $D34B execution token
        dw     QUESTION_ROUND_CONTROLLER_BR1 ; $D34D branch target
        dw     $D0E0                        ; $D34F execution token
        dw     $34B1                        ; $D351 execution token
        dw     $34C3                        ; $D353 execution token
        dw     XT_SELECT_SUPER_GAME_CONFIGURATION_1 ; $D355 execution token
        dw     XT_LIT                       ; $D357 execution token
        dw     $E1EF                        ; $D359 inline word
        dw     XT_Bat                       ; $D35B execution token
        dw     XT_LIT                       ; $D35D execution token
        dw     $FD83                        ; $D35F inline word
        dw     XT_SBbang                    ; $D361 execution token
        dw     XT_LIT                       ; $D363 execution token
        dw     $C002                        ; $D365 inline word
        dw     XT_at                        ; $D367 execution token
        dw     XT_START_COUNTED_ACTION_LIST ; $D369 execution token
        dw     $2784                        ; $D36B execution token
        dw     XT_RETURN                    ; $D36D execution token
; Recovered reachable question-round TERSE word.
QUESTION_SCENE_OPEN_TASK:
        rst    $08                          ; $D36F colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D370 execution token
        dw     XT_LITbyte                   ; $D372 execution token
        db     $05                          ; $D374 inline byte
        dw     XT_LIT                       ; $D375 execution token
        dw     $00BF                        ; $D377 inline word
        dw     XT_OUTP                      ; $D379 execution token
        dw     XT_LITbyte                   ; $D37B execution token
        db     $02                          ; $D37D inline byte
        dw     XT_SET_TASK_BYTE_0C          ; $D37E execution token
        dw     XT_LITbyte                   ; $D380 execution token
        db     $2C                          ; $D382 inline byte
        dw     XT_LIT                       ; $D383 execution token
        dw     $FFF0                        ; $D385 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $D387 execution token
        dw     XT_RESET_OBJECT_DRAW_STATE   ; $D389 execution token
        dw     XT_LIT                       ; $D38B execution token
        dw     $C430                        ; $D38D inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $D38F execution token
        dw     $1E9B                        ; $D391 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $D393 execution token
        dw     XT_LITbyte                   ; $D395 execution token
        db     $4D                          ; $D397 inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $D398 execution token
        dw     XT_LIT                       ; $D39A execution token
        dw     $FFE6                        ; $D39C inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $D39E execution token
        dw     $2CD4                        ; $D3A0 execution token
        dw     XT_0BRANCH                   ; $D3A2 execution token
        dw     QUESTION_SCENE_OPEN_TASK_BR1 ; $D3A4 branch target
        dw     XT_LIT                       ; $D3A6 execution token
        dw     $90DA                        ; $D3A8 inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $D3AA execution token
        dw     XT_BRANCH                    ; $D3AC execution token
        dw     QUESTION_SCENE_OPEN_TASK_BR2 ; $D3AE branch target
QUESTION_SCENE_OPEN_TASK_BR1:
        dw     XT_LIT                       ; $D3B0 execution token
        dw     $90DC                        ; $D3B2 inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $D3B4 execution token
QUESTION_SCENE_OPEN_TASK_BR2:
        dw     $2083                        ; $D3B6 execution token
        dw     XT_LITbyte                   ; $D3B8 execution token
        db     $10                          ; $D3BA inline byte
        dw     XT_LIT                       ; $D3BB execution token
        dw     $00BF                        ; $D3BD inline word
        dw     XT_OUTP                      ; $D3BF execution token
        dw     $841E                        ; $D3C1 execution token
QUESTION_SCENE_OPEN_TASK_BR3:
        dw     XT_LIT                       ; $D3C3 execution token
        dw     $FDCE                        ; $D3C5 inline word
        dw     XT_DUP                       ; $D3C7 execution token
        dw     XT_Bat                       ; $D3C9 execution token
        dw     XT_1                         ; $D3CB execution token
        dw     XT_minussign                 ; $D3CD execution token
        dw     XT_LITbyte                   ; $D3CF execution token
        db     $0F                          ; $D3D1 inline byte
        dw     XT_AND                       ; $D3D2 execution token
        dw     XT_Bbang                     ; $D3D4 execution token
        dw     XT_LIT                       ; $D3D6 execution token
        dw     $FDAF                        ; $D3D8 inline word
        dw     XT_BONE                      ; $D3DA execution token
        dw     XT_LITbyte                   ; $D3DC execution token
        db     $02                          ; $D3DE inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D3DF execution token
        dw     $1A2C                        ; $D3E1 execution token
        dw     XT_LIT                       ; $D3E3 execution token
        dw     $F6DD                        ; $D3E5 inline word
        dw     XT_Bat                       ; $D3E7 execution token
        dw     XT_0BRANCH                   ; $D3E9 execution token
        dw     QUESTION_SCENE_OPEN_TASK_BR3 ; $D3EB branch target
        dw     XT_LIT                       ; $D3ED execution token
        dw     $2D95                        ; $D3EF inline word
        dw     $2D7C                        ; $D3F1 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D3F3 execution token
        dw     XT_0                         ; $D3F5 execution token
        dw     XT_LIT                       ; $D3F7 execution token
        dw     $00BF                        ; $D3F9 inline word
        dw     XT_OUTP                      ; $D3FB execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D3FD execution token
        dw     XT_RETURN                    ; $D3FF execution token
        db     $03,$6F,$D3,$87,$C4,$9F,$90,$01 ; $D401 original data
        db      $87,$C4,$02,$1A,$CB,$87,$C4,$01,$5C,$C0,$03,$B2,$C8,$D6,$C9,$93 ; $D409
        db      $C6,$02,$E6,$93,$AF,$91,$01,$01,$CD,$91,$01,$01,$CD ; $D419 retained byte data
; Reachable TERSE entry in shared/overlapping game-thread bytes.
GAME_TERSE_D426:
        rst     $08                            ; $D426 colon entry
        db      $99,$15 ; $D427 retained byte data
        db     $E7,$15,$09,$01,$EC,$E1,$53  ; $D429 original data
; Recovered reachable question-round TERSE word.
COIN_CREDIT_CONTROL_TASK:
        rst    $08                          ; $D430 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D431 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D433 execution token
        dw     XT_LITbyte                   ; $D435 execution token
        db     $02                          ; $D437 inline byte
        dw     XT_SET_TASK_BYTE_0C          ; $D438 execution token
COIN_CREDIT_CONTROL_TASK_BR1:
        dw     XT_LIT                       ; $D43A execution token
        dw     $E1EC                        ; $D43C inline word
        dw     XT_Bat                       ; $D43E execution token
        dw     XT_QUESTION_MINUS_DUP        ; $D440 execution token
        dw     XT_0BRANCH                   ; $D442 execution token
        dw     COIN_CREDIT_CONTROL_TASK_BR4 ; $D444 branch target
        dw     XT_1                         ; $D446 execution token
        dw     XT_gt                        ; $D448 execution token
        dw     XT_0BRANCH                   ; $D44A execution token
        dw     COIN_CREDIT_CONTROL_TASK_BR2 ; $D44C branch target
        dw     XT_LIT                       ; $D44E execution token
        dw     $0C14                        ; $D450 inline word
        dw     XT_BRANCH                    ; $D452 execution token
        dw     COIN_CREDIT_CONTROL_TASK_BR3 ; $D454 branch target
COIN_CREDIT_CONTROL_TASK_BR2:
        dw     XT_LIT                       ; $D456 execution token
        dw     $0414                        ; $D458 inline word
COIN_CREDIT_CONTROL_TASK_BR3:
        dw     $1F4B                        ; $D45A execution token
COIN_CREDIT_CONTROL_TASK_BR4:
        dw     XT_LIT                       ; $D45C execution token
        dw     $E1F0                        ; $D45E inline word
        dw     XT_Bat                       ; $D460 execution token
        dw     XT_0BRANCH                   ; $D462 execution token
        dw     COIN_CREDIT_CONTROL_TASK_BR5 ; $D464 branch target
        dw     XT_LIT                       ; $D466 execution token
        dw     $0C14                        ; $D468 inline word
        dw     $1F4B                        ; $D46A execution token
COIN_CREDIT_CONTROL_TASK_BR5:
        dw     XT_LITbyte                   ; $D46C execution token
        db     $15                          ; $D46E inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D46F execution token
        dw     $1A2C                        ; $D471 execution token
        dw     XT_LITbyte                   ; $D473 execution token
        db     $14                          ; $D475 inline byte
        dw     $1F4B                        ; $D476 execution token
        dw     XT_LITbyte                   ; $D478 execution token
        db     $15                          ; $D47A inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D47B execution token
        dw     $1A2C                        ; $D47D execution token
        dw     XT_0                         ; $D47F execution token
        dw     XT_0BRANCH                   ; $D481 execution token
        dw     COIN_CREDIT_CONTROL_TASK_BR1 ; $D483 branch target
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D485 execution token
        dw     XT_RETURN                    ; $D487 execution token
; Recovered reachable question-round TERSE word.
ATTRACT_SOUND_TASK:
        rst    $08                          ; $D489 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D48A execution token
        dw     $1F21                        ; $D48C execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D48E execution token
ATTRACT_SOUND_TASK_BR1:
        dw     XT_LIT                       ; $D490 execution token
        dw     $1415                        ; $D492 inline word
        dw     $3CEF                        ; $D494 execution token
        dw     $1A2C                        ; $D496 execution token
        dw     XT_LIT                       ; $D498 execution token
        dw     $3615                        ; $D49A inline word
        dw     $3CEF                        ; $D49C execution token
        dw     $1A2C                        ; $D49E execution token
        dw     XT_LIT                       ; $D4A0 execution token
        dw     $7715                        ; $D4A2 inline word
        dw     $3CEF                        ; $D4A4 execution token
        dw     $1A2C                        ; $D4A6 execution token
        dw     XT_LITbyte                   ; $D4A8 execution token
        db     $05                          ; $D4AA inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D4AB execution token
        dw     $1A2C                        ; $D4AD execution token
        dw     XT_LIT                       ; $D4AF execution token
        dw     $6315                        ; $D4B1 inline word
        dw     $3CEF                        ; $D4B3 execution token
        dw     $1A2C                        ; $D4B5 execution token
        dw     XT_LIT                       ; $D4B7 execution token
        dw     $4115                        ; $D4B9 inline word
        dw     $3CEF                        ; $D4BB execution token
        dw     $1A2C                        ; $D4BD execution token
        dw     XT_LITbyte                   ; $D4BF execution token
        db     $15                          ; $D4C1 inline byte
        dw     $3CEF                        ; $D4C2 execution token
        dw     $1A2C                        ; $D4C4 execution token
        dw     XT_LIT                       ; $D4C6 execution token
        dw     $0100                        ; $D4C8 inline word
        dw     XT_RANDOM_BELOW              ; $D4CA execution token
        dw     XT_LITbyte                   ; $D4CC execution token
        db     $10                          ; $D4CE inline byte
        dw     XT_plus                      ; $D4CF execution token
        dw     XT_SET_TASK_VECTOR_0D        ; $D4D1 execution token
        dw     $1A2C                        ; $D4D3 execution token
        dw     XT_0                         ; $D4D5 execution token
        dw     XT_0BRANCH                   ; $D4D7 execution token
        dw     ATTRACT_SOUND_TASK_BR1       ; $D4D9 branch target
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D4DB execution token
        dw     XT_RETURN                    ; $D4DD execution token
; Recovered reachable question-round TERSE word.
START_GAME_CONTROL_TASK:
        rst    $08                          ; $D4DF colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D4E0 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D4E2 execution token
        dw     XT_LIT                       ; $D4E4 execution token
        dw     $F754                        ; $D4E6 inline word
        dw     XT_BZERO                     ; $D4E8 execution token
START_GAME_CONTROL_TASK_BR1:
        dw     $15E7                        ; $D4EA execution token
        dw     XT_LIT                       ; $D4EC execution token
        dw     $E1EC                        ; $D4EE inline word
        dw     XT_Bat                       ; $D4F0 execution token
        dw     XT_0gt                       ; $D4F2 execution token
        dw     XT_LIT                       ; $D4F4 execution token
        dw     $E1F0                        ; $D4F6 inline word
        dw     XT_Bat                       ; $D4F8 execution token
        dw     XT_OR                        ; $D4FA execution token
        dw     XT_0BRANCH                   ; $D4FC execution token
        dw     START_GAME_CONTROL_TASK_BR12 ; $D4FE branch target
START_GAME_CONTROL_TASK_BR2:
        dw     $15E7                        ; $D500 execution token
        dw     XT_LITbyte                   ; $D502 execution token
        db     $10                          ; $D504 inline byte
        dw     XT_INP                       ; $D505 execution token
        dw     XT_COM                       ; $D507 execution token
        dw     $2CB9                        ; $D509 execution token
        dw     XT_LITbyte                   ; $D50B execution token
        db     $03                          ; $D50D inline byte
        dw     XT_AND                       ; $D50E execution token
        dw     XT_DUP                       ; $D510 execution token
        dw     XT_LITbyte                   ; $D512 execution token
        db     $02                          ; $D514 inline byte
        dw     XT_gt                        ; $D515 execution token
        dw     XT_0BRANCH                   ; $D517 execution token
        dw     START_GAME_CONTROL_TASK_BR3  ; $D519 branch target
        dw     XT_DROP                      ; $D51B execution token
        dw     XT_0                         ; $D51D execution token
START_GAME_CONTROL_TASK_BR3:
        dw     XT_QUESTION_MINUS_DUP        ; $D51F execution token
        dw     XT_0BRANCH                   ; $D521 execution token
        dw     START_GAME_CONTROL_TASK_BR2  ; $D523 branch target
        dw     XT_LIT                       ; $D525 execution token
        dw     $E1F0                        ; $D527 inline word
        dw     XT_Bat                       ; $D529 execution token
        dw     XT_0BRANCH                   ; $D52B execution token
        dw     START_GAME_CONTROL_TASK_BR4  ; $D52D branch target
        dw     XT_DUP                       ; $D52F execution token
        dw     XT_LIT                       ; $D531 execution token
        dw     $E1EC                        ; $D533 inline word
        dw     XT_SBbang                    ; $D535 execution token
START_GAME_CONTROL_TASK_BR4:
        dw     XT_LIT                       ; $D537 execution token
        dw     $E1EC                        ; $D539 inline word
        dw     XT_DUP                       ; $D53B execution token
        dw     XT_Bat                       ; $D53D execution token
        dw     XT_DUP                       ; $D53F execution token
        dw     XT_1                         ; $D541 execution token
        dw     XT_gt                        ; $D543 execution token
        dw     XT_0BRANCH                   ; $D545 execution token
        dw     START_GAME_CONTROL_TASK_BR7  ; $D547 branch target
        dw     XT_LITbyte                   ; $D549 execution token
        db     $03                          ; $D54B inline byte
        dw     XT_PICK                      ; $D54C execution token
        dw     XT_minussign                 ; $D54E execution token
        dw     XT_Bbang                     ; $D550 execution token
        dw     XT_DUP                       ; $D552 execution token
        dw     XT_1                         ; $D554 execution token
        dw     XT_equal                     ; $D556 execution token
        dw     XT_0BRANCH                   ; $D558 execution token
        dw     START_GAME_CONTROL_TASK_BR5  ; $D55A branch target
        dw     XT_1                         ; $D55C execution token
        dw     XT_BRANCH                    ; $D55E execution token
        dw     START_GAME_CONTROL_TASK_BR6  ; $D560 branch target
START_GAME_CONTROL_TASK_BR5:
        dw     XT_LITbyte                   ; $D562 execution token
        db     $03                          ; $D564 inline byte
START_GAME_CONTROL_TASK_BR6:
        dw     XT_1                         ; $D565 execution token
        dw     XT_BRANCH                    ; $D567 execution token
        dw     START_GAME_CONTROL_TASK_BR9  ; $D569 branch target
START_GAME_CONTROL_TASK_BR7:
        dw     XT_LITbyte                   ; $D56B execution token
        db     $03                          ; $D56D inline byte
        dw     XT_PICK                      ; $D56E execution token
        dw     XT_DUP                       ; $D570 execution token
        dw     XT_1                         ; $D572 execution token
        dw     XT_equal                     ; $D574 execution token
        dw     XT_0BRANCH                   ; $D576 execution token
        dw     START_GAME_CONTROL_TASK_BR8  ; $D578 branch target
        dw     XT_minussign                 ; $D57A execution token
        dw     XT_Bbang                     ; $D57C execution token
        dw     XT_1                         ; $D57E execution token
        dw     XT_1                         ; $D580 execution token
        dw     XT_BRANCH                    ; $D582 execution token
        dw     START_GAME_CONTROL_TASK_BR9  ; $D584 branch target
START_GAME_CONTROL_TASK_BR8:
        dw     XT_2DROP                     ; $D586 execution token
        dw     XT_2DROP                     ; $D588 execution token
        dw     XT_0                         ; $D58A execution token
START_GAME_CONTROL_TASK_BR9:
        dw     XT_0BRANCH                   ; $D58C execution token
        dw     START_GAME_CONTROL_TASK_BR10 ; $D58E branch target
        dw     XT_LIT                       ; $D590 execution token
        dw     $E146                        ; $D592 inline word
        dw     XT_SBbang                    ; $D594 execution token
        dw     XT_DUP                       ; $D596 execution token
        dw     XT_LIT                       ; $D598 execution token
        dw     $E13D                        ; $D59A inline word
        dw     XT_SBbang                    ; $D59C execution token
        dw     XT_LIT                       ; $D59E execution token
        dw     $E1DD                        ; $D5A0 inline word
        dw     XT_SBbang                    ; $D5A2 execution token
        dw     XT_0                         ; $D5A4 execution token
        dw     XT_0                         ; $D5A6 execution token
        dw     XT_2DUP                      ; $D5A8 execution token
        dw     XT_LIT                       ; $D5AA execution token
        dw     $E1E2                        ; $D5AC inline word
        dw     $20AE                        ; $D5AE execution token
        dw     XT_LIT                       ; $D5B0 execution token
        dw     $E1DE                        ; $D5B2 inline word
        dw     $20AE                        ; $D5B4 execution token
        dw     XT_LIT                       ; $D5B6 execution token
        dw     $E147                        ; $D5B8 inline word
        dw     XT_BZERO                     ; $D5BA execution token
        dw     XT_LIT                       ; $D5BC execution token
        dw     $E1FF                        ; $D5BE inline word
        dw     XT_BZERO                     ; $D5C0 execution token
        dw     XT_LIT                       ; $D5C2 execution token
        dw     $F723                        ; $D5C4 inline word
        dw     XT_BZERO                     ; $D5C6 execution token
        dw     XT_LIT                       ; $D5C8 execution token
        dw     $F722                        ; $D5CA inline word
        dw     XT_BZERO                     ; $D5CC execution token
        dw     XT_LITbyte                   ; $D5CE execution token
        db     $14                          ; $D5D0 inline byte
        dw     $1F4B                        ; $D5D1 execution token
        dw     XT_LITbyte                   ; $D5D3 execution token
        db     $15                          ; $D5D5 inline byte
        dw     $1F4B                        ; $D5D6 execution token
        dw     XT_1                         ; $D5D8 execution token
        dw     XT_BRANCH                    ; $D5DA execution token
        dw     START_GAME_CONTROL_TASK_BR11 ; $D5DC branch target
START_GAME_CONTROL_TASK_BR10:
        dw     XT_0                         ; $D5DE execution token
START_GAME_CONTROL_TASK_BR11:
        dw     XT_BRANCH                    ; $D5E0 execution token
        dw     START_GAME_CONTROL_TASK_BR13 ; $D5E2 branch target
START_GAME_CONTROL_TASK_BR12:
        dw     XT_0                         ; $D5E4 execution token
START_GAME_CONTROL_TASK_BR13:
        dw     XT_0BRANCH                   ; $D5E6 execution token
        dw     START_GAME_CONTROL_TASK_BR1  ; $D5E8 branch target
        dw     $2789                        ; $D5EA execution token
        dw     XT_LIT                       ; $D5EC execution token
        dw     $F5EF                        ; $D5EE inline word
        dw     XT_BONE                      ; $D5F0 execution token
        dw     XT_LIT                       ; $D5F2 execution token
        dw     $E1FD                        ; $D5F4 inline word
        dw     XT_BZERO                     ; $D5F6 execution token
        dw     $2D2B                        ; $D5F8 execution token
        dw     $34B1                        ; $D5FA execution token
        dw     $34C3                        ; $D5FC execution token
        dw     XT_LIT                       ; $D5FE execution token
        dw     $FCB9                        ; $D600 inline word
        dw     XT_DUP                       ; $D602 execution token
        dw     $2290                        ; $D604 execution token
        dw     XT_LIT                       ; $D606 execution token
        dw     $C01C                        ; $D608 inline word
        dw     XT_at                        ; $D60A execution token
        dw     XT_EXECUTE                   ; $D60C execution token
        dw     $2784                        ; $D60E execution token
        dw     XT_RETURN                    ; $D610 execution token
TERSE_COLON_D612:
        rst     $08                             ; $D612 colon entry
        dw      XT_LIT                  ; $D613 _LIT
        dw      $F6C8                ; $D615 inline word
        dw      XT_1plus                ; $D617 _1plus
        dw      XT_SBbang               ; $D619 _SBbang
        dw      XT_RETURN               ; $D61B _RETURN
TERSE_COLON_D61D:
        rst     $08                             ; $D61D colon entry
        dw      XT_LIT                  ; $D61E _LIT
        dw      $E1DD                ; $D620 inline word
        dw      XT_Bat                  ; $D622 _Bat
        dw      XT_1minus               ; $D624 _1minus
        dw      XT_RETURN               ; $D626 _RETURN
TERSE_COLON_D628:
        rst     $08                             ; $D628 colon entry
        dw      $1D3C                ; $D629 execution token $1D3C
        dw      $1D24                ; $D62B execution token $1D24
        dw      $1E8E                ; $D62D execution token $1E8E
        dw      XT_RETURN               ; $D62F _RETURN
        db      $15,$66,$69,$6E,$64,$20,$69,$6E,$69,$74,$69,$61,$6C,$20,$66,$6F ; $D631
        db      $72,$77,$61,$72,$64,$73,$16,$66,$69,$6E,$64,$20,$69,$6E,$69,$74 ; $D641
        db      $69,$61,$6C,$20,$62,$61,$63,$6B,$77,$61,$72,$64,$73,$0D,$65,$6E ; $D651
        db      $74,$65,$72,$20,$69,$6E,$69,$74,$69,$61,$6C                     ; $D661
TERSE_COLON_D66C:
        rst     $08                             ; $D66C colon entry
        dw      XT_0                    ; $D66D _0
        dw      XT_LITbyte              ; $D66F _LITbyte
        db      $1E                  ; $D671 inline byte
        dw      $1D54                ; $D672 execution token $1D54
        dw      XT_LIT                  ; $D674 _LIT
        dw      $31AA                ; $D676 inline word
        dw      $2CF2                ; $D678 execution token $2CF2
        dw      XT_LIT                  ; $D67A _LIT
        dw      $FFF6                ; $D67C inline word
        dw      $1D3C                ; $D67E execution token $1D3C
        dw      XT_LIT                  ; $D680 _LIT
        dw      $322F                ; $D682 inline word
        dw      $2CF2                ; $D684 execution token $2CF2
        dw      XT_LIT                  ; $D686 _LIT
        dw      $FFCE                ; $D688 inline word
        dw      $1D3C                ; $D68A execution token $1D3C
        dw      XT_LIT                  ; $D68C _LIT
        dw      $329A                ; $D68E inline word
        dw      $2CF2                ; $D690 execution token $2CF2
        dw      XT_LITbyte              ; $D692 _LITbyte
        db      $0F                  ; $D694 inline byte
        dw      $1E7D                ; $D695 execution token $1E7D
        dw      XT_LITbyte              ; $D697 _LITbyte
        db      $1E                  ; $D699 inline byte
        dw      XT_LITbyte              ; $D69A _LITbyte
        db      $0A                  ; $D69C inline byte
        dw      $1D54                ; $D69D execution token $1D54
        dw      XT_LIT                  ; $D69F _LIT
        dw      $D631                ; $D6A1 inline word
        dw      $2D00                ; $D6A3 execution token $2D00
        dw      XT_LIT                  ; $D6A5 _LIT
        dw      $FFE2                ; $D6A7 inline word
        dw      $1D3C                ; $D6A9 execution token $1D3C
        dw      XT_LIT                  ; $D6AB _LIT
        dw      $D65E                ; $D6AD inline word
        dw      $2D00                ; $D6AF execution token $2D00
        dw      XT_LIT                  ; $D6B1 _LIT
        dw      $FFBA                ; $D6B3 inline word
        dw      $1D3C                ; $D6B5 execution token $1D3C
        dw      XT_LIT                  ; $D6B7 _LIT
        dw      $D647                ; $D6B9 inline word
        dw      $2D00                ; $D6BB execution token $2D00
        dw      $2C93                ; $D6BD execution token $2C93
        dw      XT_RETURN               ; $D6BF _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D6C1:
        rst    $08                          ; $D6C1 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D6C2 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D6C4 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D6C6 execution token
        dw     XT_RETURN                    ; $D6C8 execution token
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D6CA:
        rst    $08                          ; $D6CA colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D6CB execution token
        dw     XT_GET_CURRENT_TASK          ; $D6CD execution token
        dw     XT_LIT                       ; $D6CF execution token
        dw     $F6D8                        ; $D6D1 inline word
        dw     XT_bang                      ; $D6D3 execution token
ROUND_TERSE_D6CA_BR1:
        dw     XT_LITbyte                   ; $D6D5 execution token
        db     $3C                          ; $D6D7 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $D6D8 execution token
        dw     $1A2C                        ; $D6DA execution token
        dw     XT_1                         ; $D6DC execution token
        dw     XT_LIT                       ; $D6DE execution token
        dw     $F6CA                        ; $D6E0 inline word
        dw     XT_Bat                       ; $D6E2 execution token
        dw     XT_0BRANCH                   ; $D6E4 execution token
        dw     ROUND_TERSE_D6CA_BR2         ; $D6E6 branch target
        dw     XT_LIT                       ; $D6E8 execution token
        dw     $F6CA                        ; $D6EA inline word
        dw     XT_1minusBbang               ; $D6EC execution token
        dw     XT_NOT                       ; $D6EE execution token
ROUND_TERSE_D6CA_BR2:
        dw     XT_0BRANCH                   ; $D6F0 execution token
        dw     ROUND_TERSE_D6CA_BR1         ; $D6F2 branch target
        dw     XT_LITbyte                   ; $D6F4 execution token
        db     $03                          ; $D6F6 inline byte
        dw     XT_LIT                       ; $D6F7 execution token
        dw     $F6CB                        ; $D6F9 inline word
        dw     XT_SBbang                    ; $D6FB execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D6FD execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D6FF execution token
        dw     XT_RETURN                    ; $D701 execution token
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D703:
        rst    $08                          ; $D703 colon entry
        dw     XT_ENTER_ACTION_TASK         ; $D704 execution token
        dw     XT_LIT                       ; $D706 execution token
        dw     $2A30                        ; $D708 inline word
        dw     XT_SET_TASK_VECTOR_0D        ; $D70A execution token
        dw     $1A2C                        ; $D70C execution token
        dw     XT_LIT                       ; $D70E execution token
        dw     $F6D8                        ; $D710 inline word
        dw     XT_at                        ; $D712 execution token
        dw     ROUND_TERSE_D6C1             ; $D714 execution token
        dw     XT_LITbyte                   ; $D716 execution token
        db     $03                          ; $D718 inline byte
        dw     XT_LIT                       ; $D719 execution token
        dw     $F6CB                        ; $D71B inline word
        dw     XT_SBbang                    ; $D71D execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $D71F execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $D721 execution token
        dw     XT_RETURN                    ; $D723 execution token
        db     $02,$CA,$D6,$03,$D7          ; $D725 original data
TERSE_COLON_D72A:
        rst     $08                             ; $D72A colon entry
        dw      XT_DUP                  ; $D72B _DUP
        dw      XT_0BRANCH              ; $D72D _0BRANCH
        dw      LD733                ; $D72F branch target
        dw      XT_1minus               ; $D731 _1minus
LD733:
        dw      XT_LITbyte              ; $D733 _LITbyte
        db      $03                  ; $D735 inline byte
        dw      XT_star                 ; $D736 _star
        dw      XT_LIT                  ; $D738 _LIT
        dw      $E178                ; $D73A inline word
        dw      XT_plus                 ; $D73C _plus
        dw      XT_RETURN               ; $D73E _RETURN
TERSE_COLON_D740:
        rst     $08                             ; $D740 colon entry
        dw      TERSE_COLON_D72A     ; $D741 TERSE_COLON_D72A
        dw      XT_LIT                  ; $D743 _LIT
        dw      $F6CB                ; $D745 inline word
        dw      XT_1plus                ; $D747 _1plus
        dw      XT_SWAP                 ; $D749 _SWAP
        dw      XT_LITbyte              ; $D74B _LITbyte
        db      $03                  ; $D74D inline byte
        dw      XT_MOVE                 ; $D74E _MOVE
        dw      XT_RETURN               ; $D750 _RETURN
TERSE_COLON_D752:
        rst     $08                             ; $D752 colon entry
        dw      TERSE_COLON_D72A     ; $D753 TERSE_COLON_D72A
        dw      XT_LIT                  ; $D755 _LIT
        dw      $F6CB                ; $D757 inline word
        dw      XT_1plus                ; $D759 _1plus
        dw      XT_LITbyte              ; $D75B _LITbyte
        db      $03                  ; $D75D inline byte
        dw      XT_MOVE                 ; $D75E _MOVE
        dw      XT_LITbyte              ; $D760 _LITbyte
        db      $03                  ; $D762 inline byte
        dw      XT_LIT                  ; $D763 _LIT
        dw      $F6CB                ; $D765 inline word
        dw      XT_SBbang               ; $D767 _SBbang
        dw      XT_RETURN               ; $D769 _RETURN
TERSE_COLON_D76B:
        rst     $08                             ; $D76B colon entry
        dw      XT_DUP                  ; $D76C _DUP
        dw      XT_0BRANCH              ; $D76E _0BRANCH
        dw      LD774                ; $D770 branch target
        dw      XT_1minus               ; $D772 _1minus
LD774:
        dw      XT_LITbyte              ; $D774 _LITbyte
        db      $04                  ; $D776 inline byte
        dw      XT_star                 ; $D777 _star
        dw      XT_LIT                  ; $D779 _LIT
        dw      $E150                ; $D77B inline word
        dw      XT_plus                 ; $D77D _plus
        dw      XT_RETURN               ; $D77F _RETURN
TERSE_COLON_D781:
        rst     $08                             ; $D781 colon entry
        dw      TERSE_COLON_D76B     ; $D782 TERSE_COLON_D76B
        dw      XT_DUP                  ; $D784 _DUP
        dw      XT_2plus                ; $D786 _2plus
        dw      XT_at                   ; $D788 _at
        dw      XT_SWAP                 ; $D78A _SWAP
        dw      XT_at                   ; $D78C _at
        dw      XT_RETURN               ; $D78E _RETURN
TERSE_COLON_D790:
        rst     $08                             ; $D790 colon entry
        dw      TERSE_COLON_D76B     ; $D791 TERSE_COLON_D76B
        dw      XT_DUP                  ; $D793 _DUP
        dw      XT_ROT                  ; $D795 _ROT
        dw      XT_SWAP                 ; $D797 _SWAP
        dw      XT_bang                 ; $D799 _bang
        dw      XT_2plus                ; $D79B _2plus
        dw      XT_bang                 ; $D79D _bang
        dw      XT_RETURN               ; $D79F _RETURN
TERSE_COLON_D7A1:
        rst     $08                             ; $D7A1 colon entry
        dw      XT_LIT                  ; $D7A2 _LIT
        dw      $E1E2                ; $D7A4 inline word
        dw      XT_at                   ; $D7A6 _at
        dw      XT_LIT                  ; $D7A8 _LIT
        dw      $E1E2                ; $D7AA inline word
        dw      XT_2plus                ; $D7AC _2plus
        dw      XT_at                   ; $D7AE _at
        dw      XT_RETURN               ; $D7B0 _RETURN
TERSE_COLON_D7B2:
        rst     $08                             ; $D7B2 colon entry
        dw      XT_LIT                  ; $D7B3 _LIT
        dw      $E1DE                ; $D7B5 inline word
        dw      XT_at                   ; $D7B7 _at
        dw      XT_LIT                  ; $D7B9 _LIT
        dw      $E1DE                ; $D7BB inline word
        dw      XT_2plus                ; $D7BD _2plus
        dw      XT_at                   ; $D7BF _at
        dw      XT_RETURN               ; $D7C1 _RETURN
TERSE_COLON_D7C3:
        rst     $08                             ; $D7C3 colon entry
        dw      XT_LIT                  ; $D7C4 _LIT
        dw      $F6DA                ; $D7C6 inline word
        dw      XT_Bat                  ; $D7C8 _Bat
        dw      XT_RETURN               ; $D7CA _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D7CC:
        rst    $08                          ; $D7CC colon entry
        dw     XT_LIT                       ; $D7CD execution token
        dw     $F6CB                        ; $D7CF inline word
        dw     XT_LITbyte                   ; $D7D1 execution token
        db     $06                          ; $D7D3 inline byte
        dw     $216D                        ; $D7D4 execution token
        dw     XT_LITbyte                   ; $D7D6 execution token
        db     $06                          ; $D7D8 inline byte
        dw     XT_LIT                       ; $D7D9 execution token
        dw     $F6CB                        ; $D7DB inline word
        dw     XT_SBbang                    ; $D7DD execution token
        dw     XT_LIT                       ; $D7DF execution token
        dw     $F6CB                        ; $D7E1 inline word
        dw     XT_DUP                       ; $D7E3 execution token
        dw     $2186                        ; $D7E5 execution token
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $D7E7 execution token
        dw     XT_RETURN                    ; $D7E9 execution token
TERSE_COLON_D7EB:
        rst     $08                             ; $D7EB colon entry
        dw      XT_LIT                  ; $D7EC _LIT
        dw      $F6D6                ; $D7EE inline word
        dw      XT_Bat                  ; $D7F0 _Bat
        dw      TERSE_COLON_D7C3     ; $D7F2 TERSE_COLON_D7C3
        dw      XT_equal                ; $D7F4 _equal
        dw      XT_LIT                  ; $D7F6 _LIT
        dw      $F6D5                ; $D7F8 inline word
        dw      XT_Bat                  ; $D7FA _Bat
        dw      TERSE_COLON_D7C3     ; $D7FC TERSE_COLON_D7C3
        dw      XT_equal                ; $D7FE _equal
        dw      XT_OR                   ; $D800 _OR
        dw      XT_RETURN               ; $D802 _RETURN
TERSE_COLON_D804:
        rst     $08                             ; $D804 colon entry
        dw      $1F0E                ; $D805 execution token $1F0E
        dw      $1D9B                ; $D807 execution token $1D9B
        dw      XT_plus                 ; $D809 _plus
        dw      $1D24                ; $D80B execution token $1D24
        dw      XT_RETURN               ; $D80D _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D80F:
        rst    $08                          ; $D80F colon entry
        dw     XT_LITbyte                   ; $D810 execution token
        db     $0A                          ; $D812 inline byte
        dw     $2AF2                        ; $D813 execution token
        dw     XT_LITbyte                   ; $D815 execution token
        db     $2E                          ; $D817 inline byte
        dw     XT_LITbyte                   ; $D818 execution token
        db     $5E                          ; $D81A inline byte
        dw     XT_LITbyte                   ; $D81B execution token
        db     $2E                          ; $D81D inline byte
        dw     $2B71                        ; $D81E execution token
        dw     XT_LITbyte                   ; $D820 execution token
        db     $0F                          ; $D822 inline byte
        dw     XT_LIT                       ; $D823 execution token
        dw     $00F8                        ; $D825 inline word
        dw     $2B2E                        ; $D827 execution token
        dw     XT_RETURN                    ; $D829 execution token
TERSE_COLON_D82B:
        rst     $08                             ; $D82B colon entry
        dw      XT_LIT                  ; $D82C _LIT
        dw      $F6C2                ; $D82E inline word
        dw      XT_DUP                  ; $D830 _DUP
        dw      XT_1plusBbang           ; $D832 _1plusBbang
        dw      XT_Bat                  ; $D834 _Bat
        dw      XT_RETURN               ; $D836 _RETURN
TERSE_COLON_D838:
        rst     $08                             ; $D838 colon entry
        dw      XT_LIT                  ; $D839 _LIT
        dw      $F6C1                ; $D83B inline word
        dw      XT_DUP                  ; $D83D _DUP
        dw      XT_1plusBbang           ; $D83F _1plusBbang
        dw      XT_Bat                  ; $D841 _Bat
        dw      XT_RETURN               ; $D843 _RETURN
TERSE_COLON_D845:
        rst     $08                             ; $D845 colon entry
        dw      XT_LITbyte              ; $D846 _LITbyte
        db      $0F                  ; $D848 inline byte
        dw      XT_LIT                  ; $D849 _LIT
        dw      $00F8                ; $D84B inline word
        dw      $2B2E                ; $D84D execution token $2B2E
        dw      XT_RETURN               ; $D84F _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D851:
        rst    $08                          ; $D851 colon entry
        dw     XT_1                         ; $D852 execution token
        dw     XT_LIT                       ; $D854 execution token
        dw     $FD6D                        ; $D856 inline word
        dw     $2BEF                        ; $D858 execution token
        dw     XT_LIT                       ; $D85A execution token
        dw     $F6C2                        ; $D85C inline word
        dw     XT_BZERO                     ; $D85E execution token
        dw     ROUND_TERSE_D80F             ; $D860 execution token
ROUND_TERSE_D851_BR1:
        dw     $D845                        ; $D862 execution token
        dw     XT_LITbyte                   ; $D864 execution token
        db     $03                          ; $D866 inline byte
        dw     $2BA8                        ; $D867 execution token
        dw     XT_LITbyte                   ; $D869 execution token
        db     $00                          ; $D86B inline byte
        dw     XT_LITbyte                   ; $D86C execution token
        db     $00                          ; $D86E inline byte
        dw     $2B2E                        ; $D86F execution token
        dw     XT_LITbyte                   ; $D871 execution token
        db     $02                          ; $D873 inline byte
        dw     $2BA8                        ; $D874 execution token
        dw     $D82B                        ; $D876 execution token
        dw     XT_LITbyte                   ; $D878 execution token
        db     $03                          ; $D87A inline byte
        dw     XT_gt                        ; $D87B execution token
        dw     XT_0BRANCH                   ; $D87D execution token
        dw     ROUND_TERSE_D851_BR1         ; $D87F branch target
        dw     $2B8C                        ; $D881 execution token
        dw     XT_RETURN                    ; $D883 execution token
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D885:
        rst    $08                          ; $D885 colon entry
        dw     XT_1                         ; $D886 execution token
        dw     XT_LIT                       ; $D888 execution token
        dw     $FD3D                        ; $D88A inline word
        dw     $2BEF                        ; $D88C execution token
        dw     XT_LIT                       ; $D88E execution token
        dw     $F6C1                        ; $D890 inline word
        dw     XT_BZERO                     ; $D892 execution token
        dw     XT_LITbyte                   ; $D894 execution token
        db     $00                          ; $D896 inline byte
        dw     XT_LITbyte                   ; $D897 execution token
        db     $00                          ; $D899 inline byte
        dw     $2B2E                        ; $D89A execution token
        dw     XT_LITbyte                   ; $D89C execution token
        db     $02                          ; $D89E inline byte
        dw     $2BA8                        ; $D89F execution token
        dw     ROUND_TERSE_D80F             ; $D8A1 execution token
ROUND_TERSE_D885_BR1:
        dw     $D845                        ; $D8A3 execution token
        dw     XT_LITbyte                   ; $D8A5 execution token
        db     $03                          ; $D8A7 inline byte
        dw     $2BA8                        ; $D8A8 execution token
        dw     XT_LITbyte                   ; $D8AA execution token
        db     $00                          ; $D8AC inline byte
        dw     XT_LITbyte                   ; $D8AD execution token
        db     $00                          ; $D8AF inline byte
        dw     $2B2E                        ; $D8B0 execution token
        dw     XT_LITbyte                   ; $D8B2 execution token
        db     $02                          ; $D8B4 inline byte
        dw     $2BA8                        ; $D8B5 execution token
        dw     $D838                        ; $D8B7 execution token
        dw     XT_LITbyte                   ; $D8B9 execution token
        db     $03                          ; $D8BB inline byte
        dw     XT_gt                        ; $D8BC execution token
        dw     XT_0BRANCH                   ; $D8BE execution token
        dw     ROUND_TERSE_D885_BR1         ; $D8C0 branch target
        dw     $2B8C                        ; $D8C2 execution token
        dw     XT_RETURN                    ; $D8C4 execution token
TERSE_COLON_D8C6:
        rst     $08                             ; $D8C6 colon entry
        dw      $D851                ; $D8C7 execution token $D851
        dw      $D885                ; $D8C9 execution token $D885
        dw      XT_RETURN               ; $D8CB _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D8CD:
        rst    $08                          ; $D8CD colon entry
        dw     XT_0                         ; $D8CE execution token
        dw     XT_LIT                       ; $D8D0 execution token
        dw     $FD6D                        ; $D8D2 inline word
        dw     $2BEF                        ; $D8D4 execution token
        dw     XT_LITbyte                   ; $D8D6 execution token
        db     $0A                          ; $D8D8 inline byte
        dw     XT_LIT                       ; $D8D9 execution token
        dw     $00FF                        ; $D8DB inline word
        dw     $2B2E                        ; $D8DD execution token
        dw     XT_LITbyte                   ; $D8DF execution token
        db     $48                          ; $D8E1 inline byte
        dw     $2AF2                        ; $D8E2 execution token
        dw     XT_LIT                       ; $D8E4 execution token
        dw     $0088                        ; $D8E6 inline word
        dw     XT_LITbyte                   ; $D8E8 execution token
        db     $50                          ; $D8EA inline byte
        dw     XT_LIT                       ; $D8EB execution token
        dw     $0064                        ; $D8ED inline word
        dw     $2B71                        ; $D8EF execution token
        dw     XT_LITbyte                   ; $D8F1 execution token
        db     $03                          ; $D8F3 inline byte
        dw     $2BA8                        ; $D8F4 execution token
        dw     XT_LITbyte                   ; $D8F6 execution token
        db     $00                          ; $D8F8 inline byte
        dw     XT_LITbyte                   ; $D8F9 execution token
        db     $00                          ; $D8FB inline byte
        dw     $2B2E                        ; $D8FC execution token
        dw     XT_LITbyte                   ; $D8FE execution token
        db     $02                          ; $D900 inline byte
        dw     $2BA8                        ; $D901 execution token
        dw     XT_LITbyte                   ; $D903 execution token
        db     $0A                          ; $D905 inline byte
        dw     XT_LIT                       ; $D906 execution token
        dw     $00FF                        ; $D908 inline word
        dw     $2B2E                        ; $D90A execution token
        dw     XT_LITbyte                   ; $D90C execution token
        db     $03                          ; $D90E inline byte
        dw     $2BA8                        ; $D90F execution token
        dw     XT_LITbyte                   ; $D911 execution token
        db     $00                          ; $D913 inline byte
        dw     XT_LITbyte                   ; $D914 execution token
        db     $00                          ; $D916 inline byte
        dw     $2B2E                        ; $D917 execution token
        dw     XT_LITbyte                   ; $D919 execution token
        db     $02                          ; $D91B inline byte
        dw     $2BA8                        ; $D91C execution token
        dw     XT_LITbyte                   ; $D91E execution token
        db     $0A                          ; $D920 inline byte
        dw     XT_LIT                       ; $D921 execution token
        dw     $00FF                        ; $D923 inline word
        dw     $2B2E                        ; $D925 execution token
        dw     XT_LITbyte                   ; $D927 execution token
        db     $03                          ; $D929 inline byte
        dw     $2BA8                        ; $D92A execution token
        dw     XT_LITbyte                   ; $D92C execution token
        db     $00                          ; $D92E inline byte
        dw     XT_LITbyte                   ; $D92F execution token
        db     $00                          ; $D931 inline byte
        dw     $2B2E                        ; $D932 execution token
        dw     XT_LITbyte                   ; $D934 execution token
        db     $02                          ; $D936 inline byte
        dw     $2BA8                        ; $D937 execution token
        dw     XT_LITbyte                   ; $D939 execution token
        db     $20                          ; $D93B inline byte
        dw     $2AF2                        ; $D93C execution token
        dw     XT_LITbyte                   ; $D93E execution token
        db     $0A                          ; $D940 inline byte
        dw     XT_LIT                       ; $D941 execution token
        dw     $00FF                        ; $D943 inline word
        dw     $2B2E                        ; $D945 execution token
        dw     XT_LITbyte                   ; $D947 execution token
        db     $09                          ; $D949 inline byte
        dw     $2BA8                        ; $D94A execution token
        dw     XT_LITbyte                   ; $D94C execution token
        db     $00                          ; $D94E inline byte
        dw     XT_LITbyte                   ; $D94F execution token
        db     $00                          ; $D951 inline byte
        dw     $2B2E                        ; $D952 execution token
        dw     XT_LITbyte                   ; $D954 execution token
        db     $06                          ; $D956 inline byte
        dw     $2BA8                        ; $D957 execution token
        dw     XT_LITbyte                   ; $D959 execution token
        db     $0A                          ; $D95B inline byte
        dw     XT_LIT                       ; $D95C execution token
        dw     $00FF                        ; $D95E inline word
        dw     $2B2E                        ; $D960 execution token
        dw     XT_LITbyte                   ; $D962 execution token
        db     $09                          ; $D964 inline byte
        dw     $2BA8                        ; $D965 execution token
        dw     $2B8C                        ; $D967 execution token
        dw     XT_RETURN                    ; $D969 execution token
; Recovered reachable question-round TERSE word.
ROUND_TERSE_D96B:
        rst    $08                          ; $D96B colon entry
        dw     XT_0                         ; $D96C execution token
        dw     XT_LIT                       ; $D96E execution token
        dw     $FD3D                        ; $D970 inline word
        dw     $2BEF                        ; $D972 execution token
        dw     XT_LITbyte                   ; $D974 execution token
        db     $00                          ; $D976 inline byte
        dw     XT_LITbyte                   ; $D977 execution token
        db     $00                          ; $D979 inline byte
        dw     $2B2E                        ; $D97A execution token
        dw     XT_LITbyte                   ; $D97C execution token
        db     $04                          ; $D97E inline byte
        dw     $2BA8                        ; $D97F execution token
        dw     XT_LITbyte                   ; $D981 execution token
        db     $0A                          ; $D983 inline byte
        dw     XT_LIT                       ; $D984 execution token
        dw     $00FF                        ; $D986 inline word
        dw     $2B2E                        ; $D988 execution token
        dw     XT_LITbyte                   ; $D98A execution token
        db     $48                          ; $D98C inline byte
        dw     $2AF2                        ; $D98D execution token
        dw     XT_LIT                       ; $D98F execution token
        dw     $0088                        ; $D991 inline word
        dw     XT_LITbyte                   ; $D993 execution token
        db     $50                          ; $D995 inline byte
        dw     XT_LIT                       ; $D996 execution token
        dw     $0064                        ; $D998 inline word
        dw     $2B71                        ; $D99A execution token
        dw     XT_LITbyte                   ; $D99C execution token
        db     $03                          ; $D99E inline byte
        dw     $2BA8                        ; $D99F execution token
        dw     XT_LITbyte                   ; $D9A1 execution token
        db     $00                          ; $D9A3 inline byte
        dw     XT_LITbyte                   ; $D9A4 execution token
        db     $00                          ; $D9A6 inline byte
        dw     $2B2E                        ; $D9A7 execution token
        dw     XT_LITbyte                   ; $D9A9 execution token
        db     $02                          ; $D9AB inline byte
        dw     $2BA8                        ; $D9AC execution token
        dw     XT_LITbyte                   ; $D9AE execution token
        db     $0A                          ; $D9B0 inline byte
        dw     XT_LIT                       ; $D9B1 execution token
        dw     $00FF                        ; $D9B3 inline word
        dw     $2B2E                        ; $D9B5 execution token
        dw     XT_LITbyte                   ; $D9B7 execution token
        db     $03                          ; $D9B9 inline byte
        dw     $2BA8                        ; $D9BA execution token
        dw     XT_LITbyte                   ; $D9BC execution token
        db     $00                          ; $D9BE inline byte
        dw     XT_LITbyte                   ; $D9BF execution token
        db     $00                          ; $D9C1 inline byte
        dw     $2B2E                        ; $D9C2 execution token
        dw     XT_LITbyte                   ; $D9C4 execution token
        db     $02                          ; $D9C6 inline byte
        dw     $2BA8                        ; $D9C7 execution token
        dw     XT_LITbyte                   ; $D9C9 execution token
        db     $0A                          ; $D9CB inline byte
        dw     XT_LIT                       ; $D9CC execution token
        dw     $00FF                        ; $D9CE inline word
        dw     $2B2E                        ; $D9D0 execution token
        dw     XT_LITbyte                   ; $D9D2 execution token
        db     $03                          ; $D9D4 inline byte
        dw     $2BA8                        ; $D9D5 execution token
        dw     XT_LITbyte                   ; $D9D7 execution token
        db     $00                          ; $D9D9 inline byte
        dw     XT_LITbyte                   ; $D9DA execution token
        db     $00                          ; $D9DC inline byte
        dw     $2B2E                        ; $D9DD execution token
        dw     XT_LITbyte                   ; $D9DF execution token
        db     $02                          ; $D9E1 inline byte
        dw     $2BA8                        ; $D9E2 execution token
        dw     XT_LITbyte                   ; $D9E4 execution token
        db     $20                          ; $D9E6 inline byte
        dw     $2AF2                        ; $D9E7 execution token
        dw     XT_LITbyte                   ; $D9E9 execution token
        db     $0A                          ; $D9EB inline byte
        dw     XT_LIT                       ; $D9EC execution token
        dw     $00FF                        ; $D9EE inline word
        dw     $2B2E                        ; $D9F0 execution token
        dw     XT_LITbyte                   ; $D9F2 execution token
        db     $09                          ; $D9F4 inline byte
        dw     $2BA8                        ; $D9F5 execution token
        dw     XT_LITbyte                   ; $D9F7 execution token
        db     $00                          ; $D9F9 inline byte
        dw     XT_LITbyte                   ; $D9FA execution token
        db     $00                          ; $D9FC inline byte
        dw     $2B2E                        ; $D9FD execution token
        dw     XT_LITbyte                   ; $D9FF execution token
        db     $06                          ; $DA01 inline byte
        dw     $2BA8                        ; $DA02 execution token
        dw     XT_LITbyte                   ; $DA04 execution token
        db     $0A                          ; $DA06 inline byte
        dw     XT_LIT                       ; $DA07 execution token
        dw     $00FF                        ; $DA09 inline word
        dw     $2B2E                        ; $DA0B execution token
        dw     XT_LITbyte                   ; $DA0D execution token
        db     $09                          ; $DA0F inline byte
        dw     $2BA8                        ; $DA10 execution token
        dw     $2B8C                        ; $DA12 execution token
        dw     XT_RETURN                    ; $DA14 execution token
TERSE_COLON_DA16:
        rst     $08                             ; $DA16 colon entry
        dw      $D8CD                ; $DA17 execution token $D8CD
        dw      $D96B                ; $DA19 execution token $D96B
        dw      XT_RETURN               ; $DA1B _RETURN
        db     $E1,$D1,$C3,$FB,$01          ; $DA1D original data
; Recovered reachable question-round TERSE word.
ROUND_TERSE_DA22:
        rst    $08                          ; $DA22 colon entry
        dw     XT_ROT                       ; $DA23 execution token
        dw     XT_2DUP                      ; $DA25 execution token
        dw     XT_Uless                     ; $DA27 execution token
        dw     XT_0BRANCH                   ; $DA29 execution token
        dw     ROUND_TERSE_DA22_BR1         ; $DA2B branch target
        dw     XT_2DROP                     ; $DA2D execution token
        dw     XT_2DROP                     ; $DA2F execution token
        dw     XT_1                         ; $DA31 execution token
        dw     XT_BRANCH                    ; $DA33 execution token
        dw     ROUND_TERSE_DA22_BR4         ; $DA35 branch target
ROUND_TERSE_DA22_BR1:
        dw     $DA1D                        ; $DA37 execution token
        dw     XT_0BRANCH                   ; $DA39 execution token
        dw     ROUND_TERSE_DA22_BR2         ; $DA3B branch target
        dw     XT_2DROP                     ; $DA3D execution token
        dw     XT_0                         ; $DA3F execution token
        dw     XT_BRANCH                    ; $DA41 execution token
        dw     ROUND_TERSE_DA22_BR4         ; $DA43 branch target
ROUND_TERSE_DA22_BR2:
        dw     $DA1D                        ; $DA45 execution token
        dw     XT_0BRANCH                   ; $DA47 execution token
        dw     ROUND_TERSE_DA22_BR3         ; $DA49 branch target
        dw     XT_1                         ; $DA4B execution token
        dw     XT_BRANCH                    ; $DA4D execution token
        dw     ROUND_TERSE_DA22_BR4         ; $DA4F branch target
ROUND_TERSE_DA22_BR3:
        dw     XT_0                         ; $DA51 execution token
ROUND_TERSE_DA22_BR4:
        dw     XT_RETURN                    ; $DA53 execution token
TERSE_COLON_DA55:
        rst     $08                             ; $DA55 colon entry
        dw      XT_0                    ; $DA56 _0
        dw      XT_LITbyte              ; $DA58 _LITbyte
        db      $0A                  ; $DA5A inline byte
        dw      XT_DO                   ; $DA5B _DO
        dw      XT_2DUP                 ; $DA5D _2DUP
        dw      XT_I                    ; $DA5F _I
        dw      TERSE_COLON_D781     ; $DA61 TERSE_COLON_D781
        dw      $DA22                ; $DA63 execution token $DA22
        dw      XT_NOT                  ; $DA65 _NOT
        dw      XT_I                    ; $DA67 _I
        dw      XT_zeroequal            ; $DA69 _zeroequal
        dw      XT_OR                   ; $DA6B _OR
        dw      XT_0BRANCH              ; $DA6D _0BRANCH
        dw      LDAC9                ; $DA6F branch target
        dw      XT_I                    ; $DA71 _I
        dw      XT_LITbyte              ; $DA73 _LITbyte
        db      $09                  ; $DA75 inline byte
        dw      XT_not_equal            ; $DA76 _not_equal
        dw      XT_0BRANCH              ; $DA78 _0BRANCH
        dw      LDA9F                ; $DA7A branch target
        dw      XT_I                    ; $DA7C _I
        dw      XT_1plus                ; $DA7E _1plus
        dw      XT_LITbyte              ; $DA80 _LITbyte
        db      $09                  ; $DA82 inline byte
        dw      XT_DO                   ; $DA83 _DO
        dw      XT_I                    ; $DA85 _I
        dw      TERSE_COLON_D781     ; $DA87 TERSE_COLON_D781
        dw      XT_I                    ; $DA89 _I
        dw      XT_1plus                ; $DA8B _1plus
        dw      TERSE_COLON_D790     ; $DA8D TERSE_COLON_D790
        dw      XT_I                    ; $DA8F _I
        dw      TERSE_COLON_D752     ; $DA91 TERSE_COLON_D752
        dw      XT_I                    ; $DA93 _I
        dw      XT_1plus                ; $DA95 _1plus
        dw      TERSE_COLON_D740     ; $DA97 TERSE_COLON_D740
        dw      XT_LIT                  ; $DA99 _LIT
        dw      $FFFF                ; $DA9B inline word
        dw      XT_plusLOOP             ; $DA9D _plusLOOP
LDA9F:
        dw      XT_I                    ; $DA9F _I
        dw      XT_1plus                ; $DAA1 _1plus
        dw      XT_DUP                  ; $DAA3 _DUP
        dw      XT_LIT                  ; $DAA5 _LIT
        dw      $F6D7                ; $DAA7 inline word
        dw      XT_SBbang               ; $DAA9 _SBbang
        dw      TERSE_COLON_D72A     ; $DAAB TERSE_COLON_D72A
        dw      XT_LITbyte              ; $DAAD _LITbyte
        db      $03                  ; $DAAF inline byte
        dw      XT_0                    ; $DAB0 _0
        dw      XT_DO                   ; $DAB2 _DO
        dw      XT_LITbyte              ; $DAB4 _LITbyte
        db      $20                  ; $DAB6 inline byte
        dw      XT_OVER                 ; $DAB7 _OVER
        dw      XT_SBbang               ; $DAB9 _SBbang
        dw      XT_1plus                ; $DABB _1plus
        dw      XT_LOOP                 ; $DABD _LOOP
        dw      XT_DROP                 ; $DABF _DROP
        dw      XT_I                    ; $DAC1 _I
        dw      XT_1plus                ; $DAC3 _1plus
        dw      TERSE_COLON_D790     ; $DAC5 TERSE_COLON_D790
        dw      XT_LEAVE                ; $DAC7 _LEAVE
LDAC9:
        dw      XT_LIT                  ; $DAC9 _LIT
        dw      $FFFF                ; $DACB inline word
        dw      XT_plusLOOP             ; $DACD _plusLOOP
        dw      XT_DROP                 ; $DACF _DROP
        dw      XT_RETURN               ; $DAD1 _RETURN
TERSE_COLON_DAD3:
        rst     $08                             ; $DAD3 colon entry
        dw      XT_LITbyte              ; $DAD4 _LITbyte
        db      $11                  ; $DAD6 inline byte
        dw      XT_INP                  ; $DAD7 _INP
        dw      XT_LIT                  ; $DAD9 _LIT
        dw      $F6D6                ; $DADB inline word
        dw      XT_Bat                  ; $DADD _Bat
        dw      XT_LIT                  ; $DADF _LIT
        dw      $F6D7                ; $DAE1 inline word
        dw      XT_Bat                  ; $DAE3 _Bat
        dw      XT_equal                ; $DAE5 _equal
        dw      XT_0BRANCH              ; $DAE7 _0BRANCH
        dw      LDAED                ; $DAE9 branch target
        dw      $2CB9                ; $DAEB execution token $2CB9
LDAED:
        dw      XT_COM                  ; $DAED _COM
        dw      XT_LITbyte              ; $DAEF _LITbyte
        db      $07                  ; $DAF1 inline byte
        dw      XT_AND                  ; $DAF2 _AND
        dw      XT_RETURN               ; $DAF4 _RETURN
; Recovered reachable question-round TERSE word.
ROUND_TERSE_DAF6:
        rst    $08                          ; $DAF6 colon entry
        dw     XT_0                         ; $DAF7 execution token
        dw     XT_LIT                       ; $DAF9 execution token
        dw     $E146                        ; $DAFB inline word
        dw     $1A80                        ; $DAFD execution token
        dw     XT_LIT                       ; $DAFF execution token
        dw     $E13D                        ; $DB01 inline word
        dw     XT_Bat                       ; $DB03 execution token
        dw     XT_XOR                       ; $DB05 execution token
        dw     XT_0BRANCH                   ; $DB07 execution token
        dw     ROUND_TERSE_DAF6_BR1         ; $DB09 branch target
        dw     XT_LIT                       ; $DB0B execution token
        dw     $38AE                        ; $DB0D inline word
        dw     XT_BRANCH                    ; $DB0F execution token
        dw     ROUND_TERSE_DAF6_BR2         ; $DB11 branch target
ROUND_TERSE_DAF6_BR1:
        dw     XT_LIT                       ; $DB13 execution token
        dw     $3937                        ; $DB15 inline word
ROUND_TERSE_DAF6_BR2:
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $DB17 execution token
        dw     XT_RETURN                    ; $DB19 execution token
; Recovered reachable question-round TERSE word.
GAME_OVER_HIGH_SCORE_TASK:
        rst    $08                          ; $DB1B colon entry
        dw     XT_ENTER_ACTION_TASK         ; $DB1C execution token
        dw     $1F21                        ; $DB1E execution token
        dw     XT_1                         ; $DB20 execution token
        dw     XT_SET_TASK_BYTE_0C          ; $DB22 execution token
        dw     XT_LIT                       ; $DB24 execution token
        dw     $F6D6                        ; $DB26 inline word
        dw     XT_BZERO                     ; $DB28 execution token
        dw     XT_LIT                       ; $DB2A execution token
        dw     $F6D5                        ; $DB2C inline word
        dw     XT_BZERO                     ; $DB2E execution token
        dw     XT_LIT                       ; $DB30 execution token
        dw     $F6C8                        ; $DB32 inline word
        dw     XT_BONE                      ; $DB34 execution token
        dw     XT_1                         ; $DB36 execution token
        dw     XT_LIT                       ; $DB38 execution token
        dw     $E146                        ; $DB3A inline word
        dw     $1A80                        ; $DB3C execution token
        dw     XT_LIT                       ; $DB3E execution token
        dw     $E13D                        ; $DB40 inline word
        dw     XT_Bat                       ; $DB42 execution token
        dw     XT_XOR                       ; $DB44 execution token
        dw     XT_0BRANCH                   ; $DB46 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR1 ; $DB48 branch target
        dw     $D7B2                        ; $DB4A execution token
        dw     XT_BRANCH                    ; $DB4C execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR2 ; $DB4E branch target
GAME_OVER_HIGH_SCORE_TASK_BR1:
        dw     $D7A1                        ; $DB50 execution token
GAME_OVER_HIGH_SCORE_TASK_BR2:
        dw     XT_LITbyte                   ; $DB52 execution token
        db     $0A                          ; $DB54 inline byte
        dw     $D781                        ; $DB55 execution token
        dw     ROUND_TERSE_DA22             ; $DB57 execution token
        dw     XT_LIT                       ; $DB59 execution token
        dw     $E1FF                        ; $DB5B inline word
        dw     XT_Bat                       ; $DB5D execution token
        dw     XT_OR                        ; $DB5F execution token
        dw     XT_0BRANCH                   ; $DB61 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR28 ; $DB63 branch target
        dw     XT_LIT                       ; $DB65 execution token
        dw     $E1FF                        ; $DB67 inline word
        dw     XT_Bat                       ; $DB69 execution token
        dw     XT_NOT                       ; $DB6B execution token
        dw     XT_0BRANCH                   ; $DB6D execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR5 ; $DB6F branch target
        dw     XT_0                         ; $DB71 execution token
        dw     XT_LIT                       ; $DB73 execution token
        dw     $E146                        ; $DB75 inline word
        dw     $1A80                        ; $DB77 execution token
        dw     XT_LIT                       ; $DB79 execution token
        dw     $E13D                        ; $DB7B inline word
        dw     XT_Bat                       ; $DB7D execution token
        dw     XT_XOR                       ; $DB7F execution token
        dw     XT_0BRANCH                   ; $DB81 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR3 ; $DB83 branch target
        dw     $D7A1                        ; $DB85 execution token
        dw     $DA55                        ; $DB87 execution token
        dw     XT_LIT                       ; $DB89 execution token
        dw     $F6D7                        ; $DB8B inline word
        dw     XT_Bat                       ; $DB8D execution token
        dw     XT_LIT                       ; $DB8F execution token
        dw     $F6D6                        ; $DB91 inline word
        dw     XT_SBbang                    ; $DB93 execution token
        dw     XT_LIT                       ; $DB95 execution token
        dw     $7015                        ; $DB97 inline word
        dw     XT_BRANCH                    ; $DB99 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR4 ; $DB9B branch target
GAME_OVER_HIGH_SCORE_TASK_BR3:
        dw     $D7B2                        ; $DB9D execution token
        dw     $DA55                        ; $DB9F execution token
        dw     XT_LIT                       ; $DBA1 execution token
        dw     $F6D7                        ; $DBA3 inline word
        dw     XT_Bat                       ; $DBA5 execution token
        dw     XT_LIT                       ; $DBA7 execution token
        dw     $F6D5                        ; $DBA9 inline word
        dw     XT_SBbang                    ; $DBAB execution token
        dw     XT_LIT                       ; $DBAD execution token
        dw     $0715                        ; $DBAF inline word
GAME_OVER_HIGH_SCORE_TASK_BR4:
        dw     $1F4B                        ; $DBB1 execution token
GAME_OVER_HIGH_SCORE_TASK_BR5:
        dw     XT_MARK_CURRENT_OBJECT_FOR_UPDATE ; $DBB3 execution token
        dw     $1E9B                        ; $DBB5 execution token
        dw     $2D2B                        ; $DBB7 execution token
        dw     $1F69                        ; $DBB9 execution token
        dw     XT_LITbyte                   ; $DBBB execution token
        db     $02                          ; $DBBD inline byte
        dw     XT_LIT                       ; $DBBE execution token
        dw     $FDA9                        ; $DBC0 inline word
        dw     XT_SBbang                    ; $DBC2 execution token
        dw     XT_LIT                       ; $DBC4 execution token
        dw     $F6DA                        ; $DBC6 inline word
        dw     XT_BONE                      ; $DBC8 execution token
        dw     XT_0                         ; $DBCA execution token
        dw     XT_LITbyte                   ; $DBCC execution token
        db     $62                          ; $DBCE inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $DBCF execution token
        dw     $3CDE                        ; $DBD1 execution token
        dw     XT_LIT                       ; $DBD3 execution token
        dw     $E1FF                        ; $DBD5 inline word
        dw     XT_Bat                       ; $DBD7 execution token
        dw     XT_0BRANCH                   ; $DBD9 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR6 ; $DBDB branch target
        dw     XT_LIT                       ; $DBDD execution token
        dw     $B961                        ; $DBDF inline word
        dw     XT_APPLY_AND_DRAW_OBJECT     ; $DBE1 execution token
        dw     XT_LITbyte                   ; $DBE3 execution token
        db     $32                          ; $DBE5 inline byte
        dw     XT_LIT                       ; $DBE6 execution token
        dw     $FFD8                        ; $DBE8 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $DBEA execution token
        dw     XT_LIT                       ; $DBEC execution token
        dw     $92DB                        ; $DBEE inline word
        dw     XT_APPLY_OBJECT_DESCRIPTOR   ; $DBF0 execution token
        dw     XT_SET_OBJECT_MODE_1         ; $DBF2 execution token
        dw     XT_DRAW_CURRENT_OBJECT       ; $DBF4 execution token
        dw     $1EF6                        ; $DBF6 execution token
        dw     XT_BRANCH                    ; $DBF8 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR7 ; $DBFA branch target
GAME_OVER_HIGH_SCORE_TASK_BR6:
        dw     ROUND_TERSE_DAF6             ; $DBFC execution token
        dw     $D66C                        ; $DBFE execution token
GAME_OVER_HIGH_SCORE_TASK_BR7:
        dw     XT_LIT                       ; $DC00 execution token
        dw     $FFE9                        ; $DC02 inline word
        dw     XT_LITbyte                   ; $DC04 execution token
        db     $47                          ; $DC06 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $DC07 execution token
        dw     XT_LITbyte                   ; $DC09 execution token
        db     $0F                          ; $DC0B inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $DC0C execution token
        dw     $1E9B                        ; $DC0E execution token
        dw     XT_1                         ; $DC10 execution token
        dw     $D781                        ; $DC12 execution token
        dw     ROUND_TERSE_D7CC             ; $DC14 execution token
        dw     $2083                        ; $DC16 execution token
        dw     XT_1                         ; $DC18 execution token
        dw     $D752                        ; $DC1A execution token
        dw     XT_LIT                       ; $DC1C execution token
        dw     $FFF4                        ; $DC1E inline word
        dw     XT_LITbyte                   ; $DC20 execution token
        db     $35                          ; $DC22 inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_PAIR ; $DC23 execution token
        dw     XT_LITbyte                   ; $DC25 execution token
        db     $0A                          ; $DC27 inline byte
        dw     $1E5C                        ; $DC28 execution token
        dw     $2083                        ; $DC2A execution token
        dw     XT_LITbyte                   ; $DC2C execution token
        db     $1A                          ; $DC2E inline byte
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $DC2F execution token
        dw     XT_LIT                       ; $DC31 execution token
        dw     $F6DA                        ; $DC33 inline word
        dw     XT_1plusBbang                ; $DC35 execution token
        dw     XT_LIT                       ; $DC37 execution token
        dw     $F6CB                        ; $DC39 inline word
        dw     XT_SET_CURRENT_OBJECT_WORD_1D ; $DC3B execution token
GAME_OVER_HIGH_SCORE_TASK_BR8:
        dw     $D7C3                        ; $DC3D execution token
        dw     XT_DUP                       ; $DC3F execution token
        dw     XT_LITbyte                   ; $DC41 execution token
        db     $0B                          ; $DC43 inline byte
        dw     XT_not_equal                 ; $DC44 execution token
        dw     XT_0BRANCH                   ; $DC46 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR11 ; $DC48 branch target
        dw     XT_LIT                       ; $DC4A execution token
        dw     $FF74                        ; $DC4C inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $DC4E execution token
        dw     $D7C3                        ; $DC50 execution token
        dw     XT_0                         ; $DC52 execution token
        dw     XT_LIT                       ; $DC54 execution token
        dw     $F6CB                        ; $DC56 inline word
        dw     XT_LITbyte                   ; $DC58 execution token
        db     $02                          ; $DC5A inline byte
        dw     $216D                        ; $DC5B execution token
        dw     $1F69                        ; $DC5D execution token
        dw     XT_LITbyte                   ; $DC5F execution token
        db     $05                          ; $DC61 inline byte
        dw     $D7EB                        ; $DC62 execution token
        dw     XT_0BRANCH                   ; $DC64 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR9 ; $DC66 branch target
        dw     XT_LITbyte                   ; $DC68 execution token
        db     $02                          ; $DC6A inline byte
GAME_OVER_HIGH_SCORE_TASK_BR9:
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $DC6B execution token
        dw     XT_LITbyte                   ; $DC6D execution token
        db     $02                          ; $DC6F inline byte
        dw     XT_LIT                       ; $DC70 execution token
        dw     $F6CB                        ; $DC72 inline word
        dw     XT_SBbang                    ; $DC74 execution token
        dw     XT_LIT                       ; $DC76 execution token
        dw     $F6CB                        ; $DC78 inline word
        dw     $2186                        ; $DC7A execution token
        dw     $2083                        ; $DC7C execution token
        dw     XT_LIT                       ; $DC7E execution token
        dw     $FF88                        ; $DC80 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $DC82 execution token
        dw     $D7C3                        ; $DC84 execution token
        dw     $D752                        ; $DC86 execution token
        dw     XT_LITbyte                   ; $DC88 execution token
        db     $08                          ; $DC8A inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $DC8B execution token
        dw     XT_LITbyte                   ; $DC8D execution token
        db     $04                          ; $DC8F inline byte
        dw     XT_LIT                       ; $DC90 execution token
        dw     $FDA9                        ; $DC92 inline word
        dw     XT_SBbang                    ; $DC94 execution token
        dw     $2083                        ; $DC96 execution token
        dw     XT_LITbyte                   ; $DC98 execution token
        db     $02                          ; $DC9A inline byte
        dw     XT_LIT                       ; $DC9B execution token
        dw     $FDA9                        ; $DC9D inline word
        dw     XT_SBbang                    ; $DC9F execution token
        dw     XT_LIT                       ; $DCA1 execution token
        dw     $FFBF                        ; $DCA3 inline word
        dw     XT_SET_CURRENT_OBJECT_VALUE_1 ; $DCA5 execution token
        dw     $D7C3                        ; $DCA7 execution token
        dw     $D781                        ; $DCA9 execution token
        dw     ROUND_TERSE_D7CC             ; $DCAB execution token
        dw     $1F72                        ; $DCAD execution token
        dw     XT_LITbyte                   ; $DCAF execution token
        db     $05                          ; $DCB1 inline byte
        dw     $D7EB                        ; $DCB2 execution token
        dw     XT_0BRANCH                   ; $DCB4 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR10 ; $DCB6 branch target
        dw     XT_LITbyte                   ; $DCB8 execution token
        db     $02                          ; $DCBA inline byte
GAME_OVER_HIGH_SCORE_TASK_BR10:
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $DCBB execution token
        dw     $2083                        ; $DCBD execution token
        dw     XT_LIT                       ; $DCBF execution token
        dw     $F6DA                        ; $DCC1 inline word
        dw     XT_1plusBbang                ; $DCC3 execution token
        dw     XT_GET_CURRENT_TASK          ; $DCC5 execution token
        dw     XT_GET_CURRENT_OBJECT_VALUE_2 ; $DCC7 execution token
        dw     XT_LITbyte                   ; $DCC9 execution token
        db     $0E                          ; $DCCB inline byte
        dw     XT_minussign                 ; $DCCC execution token
        dw     XT_SET_CURRENT_OBJECT_VALUE_2 ; $DCCE execution token
        dw     XT_BRANCH                    ; $DCD0 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR8 ; $DCD2 branch target
GAME_OVER_HIGH_SCORE_TASK_BR11:
        dw     XT_DROP                      ; $DCD4 execution token
        dw     $1F69                        ; $DCD6 execution token
        dw     XT_LIT                       ; $DCD8 execution token
        dw     $E1FF                        ; $DCDA inline word
        dw     XT_Bat                       ; $DCDC execution token
        dw     XT_NOT                       ; $DCDE execution token
        dw     XT_0BRANCH                   ; $DCE0 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR27 ; $DCE2 branch target
        dw     XT_SET_OBJECT_MODE_2         ; $DCE4 execution token
        dw     XT_1                         ; $DCE6 execution token
        dw     XT_LIT                       ; $DCE8 execution token
        dw     $E146                        ; $DCEA inline word
        dw     $1A80                        ; $DCEC execution token
        dw     XT_LIT                       ; $DCEE execution token
        dw     $E13D                        ; $DCF0 inline word
        dw     XT_Bat                       ; $DCF2 execution token
        dw     XT_XOR                       ; $DCF4 execution token
        dw     XT_0BRANCH                   ; $DCF6 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR12 ; $DCF8 branch target
        dw     XT_LIT                       ; $DCFA execution token
        dw     $F6D5                        ; $DCFC inline word
        dw     XT_BRANCH                    ; $DCFE execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR13 ; $DD00 branch target
GAME_OVER_HIGH_SCORE_TASK_BR12:
        dw     XT_LIT                       ; $DD02 execution token
        dw     $F6D6                        ; $DD04 inline word
GAME_OVER_HIGH_SCORE_TASK_BR13:
        dw     XT_Bat                       ; $DD06 execution token
        dw     XT_DUP                       ; $DD08 execution token
        dw     XT_LIT                       ; $DD0A execution token
        dw     $F6D7                        ; $DD0C inline word
        dw     XT_SBbang                    ; $DD0E execution token
        dw     XT_LITbyte                   ; $DD10 execution token
        db     $1E                          ; $DD12 inline byte
        dw     XT_LIT                       ; $DD13 execution token
        dw     $F6CA                        ; $DD15 inline word
        dw     XT_SBbang                    ; $DD17 execution token
        dw     XT_LIT                       ; $DD19 execution token
        dw     $D725                        ; $DD1B inline word
        dw     XT_START_COUNTED_ACTION_LIST ; $DD1D execution token
        dw     XT_DUP                       ; $DD1F execution token
        dw     XT_1                         ; $DD21 execution token
        dw     XT_equal                     ; $DD23 execution token
        dw     XT_0BRANCH                   ; $DD25 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR14 ; $DD27 branch target
        dw     XT_DROP                      ; $DD29 execution token
        dw     XT_LITbyte                   ; $DD2B execution token
        db     $35                          ; $DD2D inline byte
        dw     XT_LIT                       ; $DD2E execution token
        dw     $FFF4                        ; $DD30 inline word
        dw     XT_BRANCH                    ; $DD32 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR15 ; $DD34 branch target
GAME_OVER_HIGH_SCORE_TASK_BR14:
        dw     XT_LITbyte                   ; $DD36 execution token
        db     $36                          ; $DD38 inline byte
        dw     XT_SWAP                      ; $DD39 execution token
        dw     XT_LITbyte                   ; $DD3B execution token
        db     $0E                          ; $DD3D inline byte
        dw     XT_star                      ; $DD3E execution token
        dw     XT_minussign                 ; $DD40 execution token
        dw     XT_LIT                       ; $DD42 execution token
        dw     $FF88                        ; $DD44 inline word
GAME_OVER_HIGH_SCORE_TASK_BR15:
        dw     XT_LIT                       ; $DD46 execution token
        dw     $F6C4                        ; $DD48 inline word
        dw     XT_bang                      ; $DD4A execution token
        dw     XT_LIT                       ; $DD4C execution token
        dw     $F6C6                        ; $DD4E inline word
        dw     XT_bang                      ; $DD50 execution token
        dw     XT_LITbyte                   ; $DD52 execution token
        db     $61                          ; $DD54 inline byte
        dw     XT_LIT                       ; $DD55 execution token
        dw     $F6DA                        ; $DD57 inline word
        dw     XT_SBbang                    ; $DD59 execution token
        dw     XT_LITbyte                   ; $DD5B execution token
        db     $0D                          ; $DD5D inline byte
        dw     XT_SET_CURRENT_OBJECT_BYTE_18 ; $DD5E execution token
        dw     $D7C3                        ; $DD60 execution token
        dw     $D612                        ; $DD62 execution token
        dw     XT_LIT                       ; $DD64 execution token
        dw     $F6C8                        ; $DD66 inline word
        dw     XT_LIT                       ; $DD68 execution token
        dw     $F6C4                        ; $DD6A inline word
        dw     XT_at                        ; $DD6C execution token
        dw     XT_LIT                       ; $DD6E execution token
        dw     $F6C6                        ; $DD70 inline word
        dw     XT_at                        ; $DD72 execution token
        dw     $D628                        ; $DD74 execution token
        dw     XT_SET_OBJECT_MODE_2         ; $DD76 execution token
        dw     $2083                        ; $DD78 execution token
        dw     XT_LIT                       ; $DD7A execution token
        dw     $F6CB                        ; $DD7C inline word
        dw     XT_BZERO                     ; $DD7E execution token
        dw     XT_LITbyte                   ; $DD80 execution token
        db     $20                          ; $DD82 inline byte
        dw     XT_LIT                       ; $DD83 execution token
        dw     $F6CB                        ; $DD85 inline word
        dw     XT_1plus                     ; $DD87 execution token
        dw     XT_LITbyte                   ; $DD89 execution token
        db     $03                          ; $DD8B inline byte
        dw     $21A2                        ; $DD8C execution token
GAME_OVER_HIGH_SCORE_TASK_BR16:
        dw     $DAD3                        ; $DD8E execution token
        dw     XT_1                         ; $DD90 execution token
        dw     XT_OF                        ; $DD92 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR19 ; $DD94 branch target
        dw     $D7C3                        ; $DD96 execution token
        dw     XT_LIT                       ; $DD98 execution token
        dw     $007A                        ; $DD9A inline word
        dw     XT_less                      ; $DD9C execution token
        dw     XT_0BRANCH                   ; $DD9E execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR17 ; $DDA0 branch target
        dw     XT_LIT                       ; $DDA2 execution token
        dw     $F6DA                        ; $DDA4 inline word
        dw     XT_1plusBbang                ; $DDA6 execution token
        dw     XT_BRANCH                    ; $DDA8 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR18 ; $DDAA branch target
GAME_OVER_HIGH_SCORE_TASK_BR17:
        dw     XT_LITbyte                   ; $DDAC execution token
        db     $5D                          ; $DDAE inline byte
        dw     XT_LIT                       ; $DDAF execution token
        dw     $F6DA                        ; $DDB1 inline word
        dw     XT_SBbang                    ; $DDB3 execution token
GAME_OVER_HIGH_SCORE_TASK_BR18:
        dw     XT_BRANCH                    ; $DDB5 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR25 ; $DDB7 branch target
GAME_OVER_HIGH_SCORE_TASK_BR19:
        dw     XT_LITbyte                   ; $DDB9 execution token
        db     $04                          ; $DDBB inline byte
        dw     XT_OF                        ; $DDBC execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR22 ; $DDBE branch target
        dw     $D7C3                        ; $DDC0 execution token
        dw     XT_LITbyte                   ; $DDC2 execution token
        db     $5D                          ; $DDC4 inline byte
        dw     XT_gt                        ; $DDC5 execution token
        dw     XT_0BRANCH                   ; $DDC7 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR20 ; $DDC9 branch target
        dw     XT_LIT                       ; $DDCB execution token
        dw     $F6DA                        ; $DDCD inline word
        dw     XT_1minusBbang               ; $DDCF execution token
        dw     XT_BRANCH                    ; $DDD1 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR21 ; $DDD3 branch target
GAME_OVER_HIGH_SCORE_TASK_BR20:
        dw     XT_LIT                       ; $DDD5 execution token
        dw     $007A                        ; $DDD7 inline word
        dw     XT_LIT                       ; $DDD9 execution token
        dw     $F6DA                        ; $DDDB inline word
        dw     XT_SBbang                    ; $DDDD execution token
GAME_OVER_HIGH_SCORE_TASK_BR21:
        dw     XT_BRANCH                    ; $DDDF execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR25 ; $DDE1 branch target
GAME_OVER_HIGH_SCORE_TASK_BR22:
        dw     XT_LITbyte                   ; $DDE3 execution token
        db     $02                          ; $DDE5 inline byte
        dw     XT_OF                        ; $DDE6 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR24 ; $DDE8 branch target
        dw     $D8C6                        ; $DDEA execution token
        dw     XT_LITbyte                   ; $DDEC execution token
        db     $0A                          ; $DDEE inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $DDEF execution token
        dw     $1A2C                        ; $DDF1 execution token
        dw     $D7C3                        ; $DDF3 execution token
        dw     XT_LIT                       ; $DDF5 execution token
        dw     $F6CB                        ; $DDF7 inline word
        dw     XT_1plusBbang                ; $DDF9 execution token
        dw     XT_LIT                       ; $DDFB execution token
        dw     $F6CB                        ; $DDFD inline word
        dw     XT_DUP                       ; $DDFF execution token
        dw     XT_Bat                       ; $DE01 execution token
        dw     XT_plus                      ; $DE03 execution token
        dw     XT_SBbang                    ; $DE05 execution token
        dw     XT_LITbyte                   ; $DE07 execution token
        db     $14                          ; $DE09 inline byte
        dw     XT_LIT                       ; $DE0A execution token
        dw     $F6CA                        ; $DE0C inline word
        dw     XT_SBbang                    ; $DE0E execution token
        dw     XT_LIT                       ; $DE10 execution token
        dw     $F6CB                        ; $DE12 inline word
        dw     XT_Bat                       ; $DE14 execution token
        dw     XT_LITbyte                   ; $DE16 execution token
        db     $03                          ; $DE18 inline byte
        dw     XT_less                      ; $DE19 execution token
        dw     XT_0BRANCH                   ; $DE1B execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR23 ; $DE1D branch target
        dw     $D7C3                        ; $DE1F execution token
        dw     XT_LITbyte                   ; $DE21 execution token
        db     $61                          ; $DE23 inline byte
        dw     XT_DUP                       ; $DE24 execution token
        dw     XT_LIT                       ; $DE26 execution token
        dw     $F6DA                        ; $DE28 inline word
        dw     XT_bang                      ; $DE2A execution token
        dw     $D612                        ; $DE2C execution token
        dw     $0980                        ; $DE2E execution token
        dw     XT_1minus                    ; $DE30 execution token
        dw     XT_Bat                       ; $DE32 execution token
        dw     XT_LITbyte                   ; $DE34 execution token
        db     $04                          ; $DE36 inline byte
        dw     XT_plus                      ; $DE37 execution token
        dw     $D804                        ; $DE39 execution token
        dw     $2083                        ; $DE3B execution token
GAME_OVER_HIGH_SCORE_TASK_BR23:
        dw     $15E7                        ; $DE3D execution token
        dw     $DAD3                        ; $DE3F execution token
        dw     XT_LITbyte                   ; $DE41 execution token
        db     $02                          ; $DE43 inline byte
        dw     XT_not_equal                 ; $DE44 execution token
        dw     XT_0BRANCH                   ; $DE46 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR23 ; $DE48 branch target
        dw     XT_BRANCH                    ; $DE4A execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR25 ; $DE4C branch target
GAME_OVER_HIGH_SCORE_TASK_BR24:
        dw     XT_DROP                      ; $DE4E execution token
GAME_OVER_HIGH_SCORE_TASK_BR25:
        dw     $D7C3                        ; $DE50 execution token
        dw     XT_LIT                       ; $DE52 execution token
        dw     $F6C8                        ; $DE54 inline word
        dw     XT_1plus                     ; $DE56 execution token
        dw     XT_Bat                       ; $DE58 execution token
        dw     XT_not_equal                 ; $DE5A execution token
        dw     XT_0BRANCH                   ; $DE5C execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR26 ; $DE5E branch target
        dw     XT_LITbyte                   ; $DE60 execution token
        db     $0A                          ; $DE62 inline byte
        dw     XT_LIT                       ; $DE63 execution token
        dw     $F6CA                        ; $DE65 inline word
        dw     XT_SBbang                    ; $DE67 execution token
        dw     $2083                        ; $DE69 execution token
        dw     $D7C3                        ; $DE6B execution token
        dw     $D612                        ; $DE6D execution token
        dw     $2083                        ; $DE6F execution token
GAME_OVER_HIGH_SCORE_TASK_BR26:
        dw     XT_LITbyte                   ; $DE71 execution token
        db     $0A                          ; $DE73 inline byte
        dw     XT_SET_TASK_VECTOR_0D        ; $DE74 execution token
        dw     $1A2C                        ; $DE76 execution token
        dw     XT_LIT                       ; $DE78 execution token
        dw     $F6CB                        ; $DE7A inline word
        dw     XT_Bat                       ; $DE7C execution token
        dw     XT_LITbyte                   ; $DE7E execution token
        db     $03                          ; $DE80 inline byte
        dw     XT_gt_equal                  ; $DE81 execution token
        dw     XT_0BRANCH                   ; $DE83 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR16 ; $DE85 branch target
        dw     XT_LIT                       ; $DE87 execution token
        dw     $F6D7                        ; $DE89 inline word
        dw     XT_Bat                       ; $DE8B execution token
        dw     $D740                        ; $DE8D execution token
GAME_OVER_HIGH_SCORE_TASK_BR27:
        dw     $DA16                        ; $DE8F execution token
GAME_OVER_HIGH_SCORE_TASK_BR28:
        dw     XT_LIT                       ; $DE91 execution token
        dw     $E1FF                        ; $DE93 inline word
        dw     XT_Bat                       ; $DE95 execution token
        dw     XT_0BRANCH                   ; $DE97 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR29 ; $DE99 branch target
        dw     $DA16                        ; $DE9B execution token
        dw     XT_LIT                       ; $DE9D execution token
        dw     $F756                        ; $DE9F inline word
        dw     $1C1D                        ; $DEA1 execution token
        dw     XT_LIT                       ; $DEA3 execution token
        dw     $00FA                        ; $DEA5 inline word
        dw     XT_BRANCH                    ; $DEA7 execution token
        dw     GAME_OVER_HIGH_SCORE_TASK_BR30 ; $DEA9 branch target
GAME_OVER_HIGH_SCORE_TASK_BR29:
        dw     XT_LITbyte                   ; $DEAB execution token
        db     $15                          ; $DEAD inline byte
        dw     $1F4B                        ; $DEAE execution token
        dw     XT_LITbyte                   ; $DEB0 execution token
        db     $3C                          ; $DEB2 inline byte
GAME_OVER_HIGH_SCORE_TASK_BR30:
        dw     XT_SET_TASK_VECTOR_0D        ; $DEB3 execution token
        dw     $1A2C                        ; $DEB5 execution token
        dw     XT_WAIT_FOR_CHILD_ACTIONS    ; $DEB7 execution token
        dw     XT_CLEAR_TASK_ACTIVE_BIT     ; $DEB9 execution token
        dw     XT_RETURN                    ; $DEBB execution token
SERVICE_THREAD_WORD:
        rst     $08                             ; $DEBD colon entry
SERVICE_THREAD:
        dw      XT_LITbyte              ; $DEBE _LITbyte
        db      $20                  ; $DEC0 inline byte
        dw      XT_LIT                  ; $DEC1 _LIT
        dw      $00F3                ; $DEC3 inline word
        dw      XT_OUTP                 ; $DEC5 _OUTP
        dw      CFG1_SERVICE_APPLICATION_XT ; $DEC7 SERVICE_APPLICATION_WORD
        dw      XT_RETURN               ; $DEC9 _RETURN
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
