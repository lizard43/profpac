; Professor Pac-Man question ROM PPQ9
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ9_COMPLETE_FIGURE_A_ACTIONS               equ     $7307
PPQ9_COMPLETE_FIGURE_B_ACTIONS               equ     $7544
PPQ9_COMPLETE_FIGURE_C_ACTIONS               equ     $77BB
PPQ9_COMPLETE_FIGURE_D_ACTIONS               equ     $7A38
PPQ9_COMPLETE_FIGURE_E_ACTIONS               equ     $7DB1


QUESTION_BANK_HEADER:
        dw      QUESTION_ROOT_DIRECTORY                                         ; $4000 root-directory pointer
PPQ9_SHARED_SETUP_STATE_1:
        rst     $08                                                             ; $4002 colon entry
        dw      XT_LITbyte                                                      ; $4003 execution token
        db      $30                                                             ; $4005 inline byte
        dw      $2AF2                                                           ; $4006 execution token
        dw      $3FDF                                                           ; $4008 execution token
        dw      XT_LIT                                                          ; $400A execution token
        dw      $F5F6                                                           ; $400C inline word
        dw      XT_BZERO                                                        ; $400E execution token
        dw      XT_LIT                                                          ; $4010 execution token
        dw      $F5F7                                                           ; $4012 inline word
        dw      XT_BZERO                                                        ; $4014 execution token
        dw      XT_LITbyte                                                      ; $4016 execution token
        db      $14                                                             ; $4018 inline byte
        dw      XT_LIT                                                          ; $4019 execution token
        dw      $F5F8                                                           ; $401B inline word
        dw      XT_SBbang                                                       ; $401D execution token
        dw      XT_RETURN                                                       ; $401F execution token

PPQ9_SHARED_SETUP_STATE_2:
        rst     $08                                                             ; $4021 colon entry
        dw      XT_LITbyte                                                      ; $4022 execution token
        db      $30                                                             ; $4024 inline byte
        dw      $2AF2                                                           ; $4025 execution token
        dw      $3FDF                                                           ; $4027 execution token
        dw      XT_LIT                                                          ; $4029 execution token
        dw      $F5F9                                                           ; $402B inline word
        dw      XT_BZERO                                                        ; $402D execution token
        dw      XT_LIT                                                          ; $402F execution token
        dw      $F5FA                                                           ; $4031 inline word
        dw      XT_BZERO                                                        ; $4033 execution token
        dw      XT_LITbyte                                                      ; $4035 execution token
        db      $40                                                             ; $4037 inline byte
        dw      XT_LIT                                                          ; $4038 execution token
        dw      $F5FB                                                           ; $403A inline word
        dw      XT_SBbang                                                       ; $403C execution token
        dw      XT_RETURN                                                       ; $403E execution token

PPQ9_SHARED_SETUP_STATE_3:
        rst     $08                                                             ; $4040 colon entry
        dw      XT_LIT                                                          ; $4041 execution token
        dw      $F5FB                                                           ; $4043 inline word
        dw      XT_Bat                                                          ; $4045 execution token
        dw      XT_LITbyte                                                      ; $4047 execution token
        db      $03                                                             ; $4049 inline byte
        dw      XT_minussign                                                    ; $404A execution token
        dw      XT_LIT                                                          ; $404C execution token
        dw      $F5FB                                                           ; $404E inline word
        dw      XT_SBbang                                                       ; $4050 execution token
        dw      XT_LIT                                                          ; $4052 execution token
        dw      $F5FA                                                           ; $4054 inline word
        dw      XT_DUP                                                          ; $4056 execution token
        dw      XT_1plusBbang                                                   ; $4058 execution token
        dw      XT_Bat                                                          ; $405A execution token
        dw      XT_RETURN                                                       ; $405C execution token

PPQ9_SHARED_SETUP_STATE_4:
        rst     $08                                                             ; $405E colon entry
        dw      XT_LIT                                                          ; $405F execution token
        dw      $F5FB                                                           ; $4061 inline word
        dw      XT_Bat                                                          ; $4063 execution token
        dw      XT_LITbyte                                                      ; $4065 execution token
        db      $02                                                             ; $4067 inline byte
        dw      XT_plus                                                         ; $4068 execution token
        dw      XT_LIT                                                          ; $406A execution token
        dw      $F5FB                                                           ; $406C inline word
        dw      XT_SBbang                                                       ; $406E execution token
        dw      XT_LIT                                                          ; $4070 execution token
        dw      $F5F9                                                           ; $4072 inline word
        dw      XT_DUP                                                          ; $4074 execution token
        dw      XT_1plusBbang                                                   ; $4076 execution token
        dw      XT_Bat                                                          ; $4078 execution token
        dw      XT_RETURN                                                       ; $407A execution token

PPQ9_SHARED_SETUP_STATE_5:
        rst     $08                                                             ; $407C colon entry
        dw      XT_LIT                                                          ; $407D execution token
        dw      $F5FB                                                           ; $407F inline word
        dw      XT_Bat                                                          ; $4081 execution token
        dw      XT_LITbyte                                                      ; $4083 execution token
        db      $02                                                             ; $4085 inline byte
        dw      XT_plus                                                         ; $4086 execution token
        dw      XT_LIT                                                          ; $4088 execution token
        dw      $F5FB                                                           ; $408A inline word
        dw      XT_SBbang                                                       ; $408C execution token
        dw      XT_LIT                                                          ; $408E execution token
        dw      $F5FA                                                           ; $4090 inline word
        dw      XT_DUP                                                          ; $4092 execution token
        dw      XT_1plusBbang                                                   ; $4094 execution token
        dw      XT_Bat                                                          ; $4096 execution token
        dw      XT_RETURN                                                       ; $4098 execution token

PPQ9_SHARED_SETUP_STATE_6:
        rst     $08                                                             ; $409A colon entry
        dw      XT_LIT                                                          ; $409B execution token
        dw      $F5FB                                                           ; $409D inline word
        dw      XT_Bat                                                          ; $409F execution token
        dw      XT_LITbyte                                                      ; $40A1 execution token
        db      $03                                                             ; $40A3 inline byte
        dw      XT_minussign                                                    ; $40A4 execution token
        dw      XT_LIT                                                          ; $40A6 execution token
        dw      $F5FB                                                           ; $40A8 inline word
        dw      XT_SBbang                                                       ; $40AA execution token
        dw      XT_LIT                                                          ; $40AC execution token
        dw      $F5F9                                                           ; $40AE inline word
        dw      XT_DUP                                                          ; $40B0 execution token
        dw      XT_1plusBbang                                                   ; $40B2 execution token
        dw      XT_Bat                                                          ; $40B4 execution token
        dw      XT_RETURN                                                       ; $40B6 execution token

PPQ9_SHARED_SETUP_LOOP_1:
        rst     $08                                                             ; $40B8 colon entry
        dw      XT_0                                                            ; $40B9 execution token
        dw      XT_LIT                                                          ; $40BB execution token
        dw      $FD6D                                                           ; $40BD inline word
        dw      $2BEF                                                           ; $40BF execution token
        dw      PPQ9_SHARED_SETUP_STATE_2                                       ; $40C1 execution token
PPQ9_SHARED_SETUP_LOOP_1_R_1:
        dw      $8540                                                           ; $40C3 execution token
        dw      XT_LITbyte                                                      ; $40C5 execution token
        db      $02                                                             ; $40C7 inline byte
        dw      $2BA8                                                           ; $40C8 execution token
        dw      PPQ9_SHARED_SETUP_STATE_3                                       ; $40CA execution token
        dw      XT_LITbyte                                                      ; $40CC execution token
        db      $04                                                             ; $40CE inline byte
        dw      XT_gt                                                           ; $40CF execution token
        dw      XT_0BRANCH                                                      ; $40D1 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_1                                    ; $40D3 branch target
        dw      XT_LIT                                                          ; $40D5 execution token
        dw      $F5FA                                                           ; $40D7 inline word
        dw      XT_BZERO                                                        ; $40D9 execution token
        dw      $8540                                                           ; $40DB execution token
        dw      XT_LITbyte                                                      ; $40DD execution token
        db      $02                                                             ; $40DF inline byte
        dw      $2BA8                                                           ; $40E0 execution token
        dw      PPQ9_SHARED_SETUP_STATE_4                                       ; $40E2 execution token
        dw      XT_LITbyte                                                      ; $40E4 execution token
        db      $03                                                             ; $40E6 inline byte
        dw      XT_gt                                                           ; $40E7 execution token
        dw      XT_0BRANCH                                                      ; $40E9 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_1                                    ; $40EB branch target
        dw      $85C0                                                           ; $40ED execution token
PPQ9_SHARED_SETUP_LOOP_1_R_2:
        dw      $8540                                                           ; $40EF execution token
        dw      XT_LITbyte                                                      ; $40F1 execution token
        db      $02                                                             ; $40F3 inline byte
        dw      $2BA8                                                           ; $40F4 execution token
        dw      PPQ9_SHARED_SETUP_STATE_5                                       ; $40F6 execution token
        dw      XT_LITbyte                                                      ; $40F8 execution token
        db      $04                                                             ; $40FA inline byte
        dw      XT_gt                                                           ; $40FB execution token
        dw      XT_0BRANCH                                                      ; $40FD execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_2                                    ; $40FF branch target
        dw      XT_LIT                                                          ; $4101 execution token
        dw      $F5FA                                                           ; $4103 inline word
        dw      XT_BZERO                                                        ; $4105 execution token
        dw      $8540                                                           ; $4107 execution token
        dw      XT_LITbyte                                                      ; $4109 execution token
        db      $02                                                             ; $410B inline byte
        dw      $2BA8                                                           ; $410C execution token
        dw      PPQ9_SHARED_SETUP_STATE_6                                       ; $410E execution token
        dw      XT_LITbyte                                                      ; $4110 execution token
        db      $03                                                             ; $4112 inline byte
        dw      XT_gt                                                           ; $4113 execution token
        dw      XT_0BRANCH                                                      ; $4115 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_2                                    ; $4117 branch target
        dw      PPQ9_SHARED_SETUP_STATE_2                                       ; $4119 execution token
PPQ9_SHARED_SETUP_LOOP_1_R_3:
        dw      $8540                                                           ; $411B execution token
        dw      XT_LITbyte                                                      ; $411D execution token
        db      $02                                                             ; $411F inline byte
        dw      $2BA8                                                           ; $4120 execution token
        dw      PPQ9_SHARED_SETUP_STATE_3                                       ; $4122 execution token
        dw      XT_LITbyte                                                      ; $4124 execution token
        db      $04                                                             ; $4126 inline byte
        dw      XT_gt                                                           ; $4127 execution token
        dw      XT_0BRANCH                                                      ; $4129 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_3                                    ; $412B branch target
        dw      XT_LIT                                                          ; $412D execution token
        dw      $F5FA                                                           ; $412F inline word
        dw      XT_BZERO                                                        ; $4131 execution token
        dw      $8540                                                           ; $4133 execution token
        dw      XT_LITbyte                                                      ; $4135 execution token
        db      $02                                                             ; $4137 inline byte
        dw      $2BA8                                                           ; $4138 execution token
        dw      PPQ9_SHARED_SETUP_STATE_4                                       ; $413A execution token
        dw      XT_LITbyte                                                      ; $413C execution token
        db      $03                                                             ; $413E inline byte
        dw      XT_gt                                                           ; $413F execution token
        dw      XT_0BRANCH                                                      ; $4141 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_1_R_3                                    ; $4143 branch target
        dw      $2B8C                                                           ; $4145 execution token
        dw      XT_RETURN                                                       ; $4147 execution token

PPQ9_SHARED_SETUP_STATE_7:
        rst     $08                                                             ; $4149 colon entry
        dw      XT_LITbyte                                                      ; $414A execution token
        db      $30                                                             ; $414C inline byte
        dw      $2AF2                                                           ; $414D execution token
        dw      $3FDF                                                           ; $414F execution token
        dw      XT_LIT                                                          ; $4151 execution token
        dw      $F5F6                                                           ; $4153 inline word
        dw      XT_BZERO                                                        ; $4155 execution token
        dw      XT_LIT                                                          ; $4157 execution token
        dw      $F5F7                                                           ; $4159 inline word
        dw      XT_BZERO                                                        ; $415B execution token
        dw      XT_LITbyte                                                      ; $415D execution token
        db      $40                                                             ; $415F inline byte
        dw      XT_LIT                                                          ; $4160 execution token
        dw      $F5F8                                                           ; $4162 inline word
        dw      XT_SBbang                                                       ; $4164 execution token
        dw      XT_RETURN                                                       ; $4166 execution token

PPQ9_SHARED_PRESENT_STATE_1:
        rst     $08                                                             ; $4168 colon entry
        dw      XT_LIT                                                          ; $4169 execution token
        dw      $F5F8                                                           ; $416B inline word
        dw      XT_Bat                                                          ; $416D execution token
        dw      XT_LITbyte                                                      ; $416F execution token
        db      $03                                                             ; $4171 inline byte
        dw      XT_minussign                                                    ; $4172 execution token
        dw      XT_LIT                                                          ; $4174 execution token
        dw      $F5F8                                                           ; $4176 inline word
        dw      XT_SBbang                                                       ; $4178 execution token
        dw      XT_LIT                                                          ; $417A execution token
        dw      $F5F7                                                           ; $417C inline word
        dw      XT_DUP                                                          ; $417E execution token
        dw      XT_1plusBbang                                                   ; $4180 execution token
        dw      XT_Bat                                                          ; $4182 execution token
        dw      XT_RETURN                                                       ; $4184 execution token

PPQ9_SHARED_PRESENT_STATE_2:
        rst     $08                                                             ; $4186 colon entry
        dw      XT_LIT                                                          ; $4187 execution token
        dw      $F5F8                                                           ; $4189 inline word
        dw      XT_Bat                                                          ; $418B execution token
        dw      XT_LITbyte                                                      ; $418D execution token
        db      $02                                                             ; $418F inline byte
        dw      XT_plus                                                         ; $4190 execution token
        dw      XT_LIT                                                          ; $4192 execution token
        dw      $F5F8                                                           ; $4194 inline word
        dw      XT_SBbang                                                       ; $4196 execution token
        dw      XT_LIT                                                          ; $4198 execution token
        dw      $F5F6                                                           ; $419A inline word
        dw      XT_DUP                                                          ; $419C execution token
        dw      XT_1plusBbang                                                   ; $419E execution token
        dw      XT_Bat                                                          ; $41A0 execution token
        dw      XT_RETURN                                                       ; $41A2 execution token

PPQ9_SHARED_SETUP_LOOP_2:
        rst     $08                                                             ; $41A4 colon entry
        dw      XT_0                                                            ; $41A5 execution token
        dw      XT_LIT                                                          ; $41A7 execution token
        dw      $FD3D                                                           ; $41A9 inline word
        dw      $2BEF                                                           ; $41AB execution token
        dw      XT_LITbyte                                                      ; $41AD execution token
        db      $00                                                             ; $41AF inline byte
        dw      XT_LITbyte                                                      ; $41B0 execution token
        db      $00                                                             ; $41B2 inline byte
        dw      $2B2E                                                           ; $41B3 execution token
        dw      XT_LITbyte                                                      ; $41B5 execution token
        db      $03                                                             ; $41B7 inline byte
        dw      $2BA8                                                           ; $41B8 execution token
        dw      PPQ9_SHARED_SETUP_STATE_7                                       ; $41BA execution token
PPQ9_SHARED_SETUP_LOOP_2_R_1:
        dw      $85DF                                                           ; $41BC execution token
        dw      XT_LITbyte                                                      ; $41BE execution token
        db      $02                                                             ; $41C0 inline byte
        dw      $2BA8                                                           ; $41C1 execution token
        dw      PPQ9_SHARED_PRESENT_STATE_1                                     ; $41C3 execution token
        dw      XT_LITbyte                                                      ; $41C5 execution token
        db      $04                                                             ; $41C7 inline byte
        dw      XT_gt                                                           ; $41C8 execution token
        dw      XT_0BRANCH                                                      ; $41CA execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_1                                    ; $41CC branch target
        dw      XT_LIT                                                          ; $41CE execution token
        dw      $F5F7                                                           ; $41D0 inline word
        dw      XT_BZERO                                                        ; $41D2 execution token
        dw      $85DF                                                           ; $41D4 execution token
        dw      XT_LITbyte                                                      ; $41D6 execution token
        db      $02                                                             ; $41D8 inline byte
        dw      $2BA8                                                           ; $41D9 execution token
        dw      PPQ9_SHARED_PRESENT_STATE_2                                     ; $41DB execution token
        dw      XT_LITbyte                                                      ; $41DD execution token
        db      $03                                                             ; $41DF inline byte
        dw      XT_gt                                                           ; $41E0 execution token
        dw      XT_0BRANCH                                                      ; $41E2 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_1                                    ; $41E4 branch target
        dw      PPQ9_SHARED_SETUP_STATE_1                                       ; $41E6 execution token
PPQ9_SHARED_SETUP_LOOP_2_R_2:
        dw      $85DF                                                           ; $41E8 execution token
        dw      XT_LITbyte                                                      ; $41EA execution token
        db      $02                                                             ; $41EC inline byte
        dw      $2BA8                                                           ; $41ED execution token
        dw      $85EA                                                           ; $41EF execution token
        dw      XT_LITbyte                                                      ; $41F1 execution token
        db      $04                                                             ; $41F3 inline byte
        dw      XT_gt                                                           ; $41F4 execution token
        dw      XT_0BRANCH                                                      ; $41F6 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_2                                    ; $41F8 branch target
        dw      XT_LIT                                                          ; $41FA execution token
        dw      $F5F7                                                           ; $41FC inline word
        dw      XT_BZERO                                                        ; $41FE execution token
        dw      $85DF                                                           ; $4200 execution token
        dw      XT_LITbyte                                                      ; $4202 execution token
        db      $02                                                             ; $4204 inline byte
        dw      $2BA8                                                           ; $4205 execution token
        dw      $8608                                                           ; $4207 execution token
        dw      XT_LITbyte                                                      ; $4209 execution token
        db      $03                                                             ; $420B inline byte
        dw      XT_gt                                                           ; $420C execution token
        dw      XT_0BRANCH                                                      ; $420E execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_2                                    ; $4210 branch target
        dw      PPQ9_SHARED_SETUP_STATE_7                                       ; $4212 execution token
PPQ9_SHARED_SETUP_LOOP_2_R_3:
        dw      $85DF                                                           ; $4214 execution token
        dw      XT_LITbyte                                                      ; $4216 execution token
        db      $02                                                             ; $4218 inline byte
        dw      $2BA8                                                           ; $4219 execution token
        dw      PPQ9_SHARED_PRESENT_STATE_1                                     ; $421B execution token
        dw      XT_LITbyte                                                      ; $421D execution token
        db      $04                                                             ; $421F inline byte
        dw      XT_gt                                                           ; $4220 execution token
        dw      XT_0BRANCH                                                      ; $4222 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_3                                    ; $4224 branch target
        dw      XT_LIT                                                          ; $4226 execution token
        dw      $F5F7                                                           ; $4228 inline word
        dw      XT_BZERO                                                        ; $422A execution token
        dw      $85DF                                                           ; $422C execution token
        dw      XT_LITbyte                                                      ; $422E execution token
        db      $02                                                             ; $4230 inline byte
        dw      $2BA8                                                           ; $4231 execution token
        dw      PPQ9_SHARED_PRESENT_STATE_2                                     ; $4233 execution token
        dw      XT_LITbyte                                                      ; $4235 execution token
        db      $03                                                             ; $4237 inline byte
        dw      XT_gt                                                           ; $4238 execution token
        dw      XT_0BRANCH                                                      ; $423A execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2_R_3                                    ; $423C branch target
        dw      $2B8C                                                           ; $423E execution token
        dw      XT_RETURN                                                       ; $4240 execution token
PPQ9_SHARED_SETUP_THREAD:
        rst     $08                                                             ; $4242 colon entry
        dw      PPQ9_SHARED_SETUP_LOOP_1                                        ; $4243 execution token
        dw      PPQ9_SHARED_SETUP_LOOP_2                                        ; $4245 execution token
        dw      XT_RETURN                                                       ; $4247 execution token

        db      $08,$07,$07,$18,$AF,$A8,$00,$00,$04                             ; $4249 preserved bytes
        db      $00,$00,$00,$00,$80,$00,$09,$00,$00,$00,$00,$00,$00,$02,$00,$00 ; $4252
        db      $00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4262
        db      $00,$00,$40,$00,$22,$90,$00,$80,$00,$00,$11,$28,$50,$00,$00,$C0 ; $4272
        db      $00,$00,$58,$80,$00,$00,$00,$0E,$2F,$8A,$80,$00,$0C,$00,$00,$0E ; $4282
        db      $8A,$8A,$00,$00,$00,$00,$2A,$C8,$3A,$00,$00,$00,$03,$A0,$A8,$00 ; $4292
        db      $00,$00,$00,$02,$A4,$A8,$02,$A0,$20,$00,$03,$84,$28,$02,$00,$00 ; $42A2
        db      $00,$00,$20,$2A,$00,$00,$00,$00,$00,$A0,$AA,$0C,$00,$00,$0C,$00 ; $42B2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $42C2
        db      $00,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $42D2
        db      $00,$08,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00 ; $42E2
        db      $00,$00,$00,$01,$00,$00,$00,$0C,$00,$00,$00,$00,$80,$00,$0F,$0C ; $42F2
        db      $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$00,$00,$0C ; $4302
        db      $00,$00,$00,$00,$00,$00,$33,$00,$00,$00,$C0,$00,$33,$F0,$C0,$80 ; $4312
        db      $00,$00,$33,$FC,$F0,$00,$00,$C0,$00,$00,$FC,$83,$C0,$00,$00,$0E ; $4322
        db      $2F,$FA,$83,$C0,$0C,$00,$00,$0F,$CA,$BA,$00,$00,$00,$00,$3F,$C8 ; $4332
        db      $FA,$00,$00,$00,$02,$F0,$FC,$FC,$00,$00,$00,$03,$FC,$FC,$FE,$A0 ; $4342
        db      $2C,$00,$02,$CC,$3C,$F2,$00,$00,$00,$00,$3C,$2A,$00,$00,$00,$00 ; $4352
        db      $00,$FC,$AA,$0C,$00,$00,$0C,$00,$3C,$00,$00,$00,$00,$00,$00,$00 ; $4362
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$03,$00,$00 ; $4372
        db      $C0,$00,$00,$00,$00,$00,$00,$00,$00,$08,$03,$00,$00,$00,$00,$00 ; $4382
        db      $00,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$03,$00,$00,$06,$0A ; $4392
        db      $07,$1A,$AF,$B6,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00 ; $43A2
        db      $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$40,$03,$C0,$04,$28 ; $43B2
        db      $00,$20,$10,$0B,$80,$04,$80,$00,$08,$04,$00,$00,$01,$A0,$80,$02 ; $43C2
        db      $04,$02,$40,$54,$0A,$00,$00,$5C,$02,$40,$08,$20,$00,$05,$FF,$02 ; $43D2
        db      $80,$64,$88,$00,$17,$FC,$12,$47,$55,$80,$00,$9F,$C2,$76,$4C,$35 ; $43E2
        db      $00,$00,$3F,$05,$FE,$4C,$F4,$03,$00,$0C,$17,$C0,$63,$C0,$00,$00 ; $43F2
        db      $C0,$F7,$08,$00,$13,$00,$00,$00,$3C,$00,$00,$00,$15,$40,$28,$00 ; $4402
        db      $44,$00,$2A,$A2,$00,$50,$34,$00,$2B,$00,$00,$00,$00,$00,$00,$0B ; $4412
        db      $14,$00,$00,$00,$3C,$8C,$C3,$D5,$40,$00,$00,$3C,$1C,$70,$00,$00 ; $4422
        db      $00,$00,$01,$20,$F0,$10,$00,$00,$00,$80,$F7,$5C,$04,$03,$00,$08 ; $4432
        db      $04,$3F,$F0,$00,$00,$00,$20,$14,$0D,$41,$00,$2A,$00,$80,$10,$01 ; $4442
        db      $60,$40,$AA,$00,$00,$00,$00,$20,$40,$08,$00,$00,$00,$00,$C0,$00 ; $4452
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00 ; $4462
        db      $00,$C0,$03,$C0,$0C,$28,$00,$20,$30,$CB,$80,$0C,$80,$00,$08,$0C ; $4472
        db      $00,$00,$33,$A0,$80,$02,$0C,$02,$C0,$FC,$0A,$00,$00,$AC,$32,$C0 ; $4482
        db      $08,$20,$00,$0A,$FF,$32,$80,$A8,$88,$00,$2B,$FC,$3E,$CF,$EA,$80 ; $4492
        db      $00,$AF,$C2,$BE,$CC,$3A,$00,$00,$3F,$0A,$FE,$CC,$F8,$03,$00,$0C ; $44A2
        db      $3B,$C0,$E3,$C0,$00,$00,$C0,$FB,$0C,$00,$33,$00,$00,$00,$3C,$00 ; $44B2
        db      $00,$0C,$FF,$C0,$28,$00,$CC,$00,$2A,$AE,$C0,$F0,$3C,$00,$3B,$00 ; $44C2
        db      $00,$00,$00,$C0,$00,$0B,$38,$00,$00,$0F,$3C,$8C,$C3,$EB,$F0,$00 ; $44D2
        db      $C0,$3C,$3C,$F0,$30,$00,$00,$00,$03,$20,$F0,$33,$00,$00,$00,$80 ; $44E2
        db      $FB,$AC,$0C,$C3,$00,$08,$0C,$3F,$F0,$00,$00,$00,$20,$3C,$0F,$C3 ; $44F2
        db      $00,$3F,$00,$80,$30,$03,$E0,$C0,$FF,$00,$00,$00,$00,$20,$C0,$0C ; $4502
        db      $00,$08,$08,$07,$19,$AF,$AF,$00,$02,$A0,$5F,$40,$01,$43,$F0,$00 ; $4512
        db      $81,$1F,$C7,$D1,$41,$70,$00,$00,$05,$17,$FD,$00,$00,$02,$10,$00 ; $4522
        db      $DF,$D0,$08,$00,$07,$D0,$03,$97,$90,$40,$08,$0D,$33,$00,$3B,$00 ; $4532
        db      $00,$20,$0C,$4A,$00,$14,$00,$BE,$00,$3F,$FE,$00,$9A,$02,$CF,$C0 ; $4542
        db      $0E,$BF,$20,$97,$00,$FF,$F0,$00,$33,$28,$14,$08,$B5,$C0,$0C,$1E ; $4552
        db      $A4,$00,$1A,$B7,$C4,$00,$08,$00,$00,$18,$B7,$C4,$00,$00,$00,$00 ; $4562
        db      $5A,$B7,$D0,$0D,$89,$40,$00,$00,$A7,$40,$01,$62,$70,$00,$00,$2A ; $4572
        db      $00,$3F,$5A,$40,$42,$54,$00,$00,$FD,$58,$00,$40,$45,$CC,$00,$3F ; $4582
        db      $40,$0A,$61,$6B,$D3,$00,$07,$00,$08,$A0,$23,$53,$00,$00,$00,$A2 ; $4592
        db      $80,$2D,$4F,$00,$00,$80,$07,$B0,$0C,$03,$00,$00,$0F,$1A,$FC,$10 ; $45A2
        db      $FC,$00,$08,$0C,$FF,$FF,$00,$00,$00,$00,$03,$C5,$D3,$C4,$00,$00 ; $45B2
        db      $00,$10,$F1,$50,$C1,$00,$00,$03,$F0,$AF,$83,$02,$82,$A0,$00,$C3 ; $45C2
        db      $2F,$CB,$E2,$83,$E0,$00,$00,$0A,$2B,$FE,$00,$00,$02,$20,$0C,$EF ; $45D2
        db      $E0,$08,$00,$0B,$E0,$03,$AB,$A0,$C0,$08,$0E,$33,$00,$3B,$00,$00 ; $45E2
        db      $20,$0C,$8A,$00,$28,$00,$BE,$00,$3F,$FE,$03,$EF,$02,$CF,$C0,$0E ; $45F2
        db      $BF,$30,$FF,$00,$FF,$F0,$00,$33,$3C,$3C,$0C,$BA,$C0,$0C,$2E,$BC ; $4602
        db      $00,$3E,$BB,$C8,$00,$08,$00,$00,$3C,$BB,$C8,$00,$00,$00,$00,$FF ; $4612
        db      $BB,$E0,$0E,$8F,$C0,$00,$00,$AB,$80,$02,$A3,$F0,$00,$00,$2A,$00 ; $4622
        db      $3F,$AB,$C0,$C3,$FC,$00,$00,$FE,$A8,$00,$C0,$CF,$FF,$00,$3F,$80 ; $4632
        db      $0F,$F3,$EB,$EF,$30,$0B,$00,$08,$F0,$23,$AF,$0C,$00,$00,$A2,$80 ; $4642
        db      $2E,$BF,$00,$00,$80,$0B,$B0,$0F,$FF,$00,$00,$0F,$2A,$FC,$30,$FC ; $4652
        db      $00,$08,$0C,$FF,$FF,$00,$00,$00,$00,$03,$CA,$E3,$CC,$00,$00,$00 ; $4662
        db      $30,$F2,$A0,$C3,$00,$00,$08,$0A,$08,$1A,$AF,$D0,$00,$00,$03,$FF ; $4672
        db      $03,$C0,$00,$0C,$00,$00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C ; $4682
        db      $D0,$0F,$30,$0C,$00,$00,$00,$5F,$F4,$15,$00,$00,$00,$00,$01,$73 ; $4692
        db      $FC,$3D,$C0,$10,$00,$00,$00,$3C,$33,$3F,$00,$54,$00,$00,$C0,$F0 ; $46A2
        db      $00,$00,$00,$FF,$00,$01,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03 ; $46B2
        db      $00,$30,$00,$15,$00,$5F,$F0,$0C,$00,$00,$03,$01,$40,$17,$C0,$00 ; $46C2
        db      $00,$00,$00,$00,$00,$1F,$00,$00,$00,$00,$00,$01,$00,$1C,$40,$0C ; $46D2
        db      $00,$00,$00,$15,$00,$1C,$03,$3C,$00,$00,$00,$FD,$00,$30,$00,$C0 ; $46E2
        db      $00,$00,$00,$00,$C0,$01,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00 ; $46F2
        db      $00,$00,$00,$CF,$00,$04,$F0,$00,$00,$00,$00,$0C,$00,$05,$57,$00 ; $4702
        db      $00,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4712
        db      $C0,$30,$0F,$14,$00,$00,$01,$10,$C0,$C0,$3F,$54,$00,$00,$03,$F3 ; $4722
        db      $F0,$C3,$0D,$10,$00,$00,$03,$3F,$3C,$CC,$05,$00,$00,$00,$00,$35 ; $4732
        db      $40,$15,$04,$00,$00,$00,$00,$03,$C0,$0D,$C0,$00,$00,$00,$03,$FF ; $4742
        db      $03,$C0,$00,$0C,$00,$00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C ; $4752
        db      $E0,$0F,$30,$0C,$00,$00,$00,$AF,$F8,$2A,$00,$00,$00,$00,$02,$B3 ; $4762
        db      $FC,$3E,$C0,$20,$00,$00,$00,$3C,$33,$3F,$00,$A8,$00,$00,$C0,$F0 ; $4772
        db      $00,$00,$00,$FF,$00,$02,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03 ; $4782
        db      $00,$30,$00,$2A,$00,$AF,$F0,$0C,$00,$00,$03,$02,$80,$2B,$C0,$00 ; $4792
        db      $00,$00,$00,$00,$00,$2F,$00,$00,$00,$00,$00,$02,$00,$2C,$80,$0C ; $47A2
        db      $00,$00,$00,$2A,$00,$2C,$03,$3C,$00,$00,$00,$FE,$00,$30,$00,$C0 ; $47B2
        db      $00,$00,$00,$00,$C0,$02,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00 ; $47C2
        db      $00,$00,$00,$CF,$00,$08,$F0,$00,$00,$00,$00,$0C,$00,$0A,$AB,$00 ; $47D2
        db      $00,$00,$00,$00,$00,$0A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $47E2
        db      $C0,$30,$0F,$28,$00,$00,$02,$20,$C0,$C0,$3F,$A8,$00,$00,$03,$F3 ; $47F2
        db      $F0,$C3,$0E,$20,$00,$00,$03,$3F,$3C,$CC,$0A,$00,$00,$00,$00,$3A ; $4802
        db      $80,$2A,$08,$00,$00,$00,$00,$03,$C0,$0E,$C0,$00,$00,$04,$00,$81 ; $4812
        db      $10,$49,$42,$12,$A0,$43,$14,$13,$45,$12,$78,$46,$00,$22,$48,$CF ; $4822
        db      $12,$01,$10,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E ; $4832
        db      $2B,$12,$01,$06,$A8,$2B,$12,$01,$14,$12,$01,$26,$12,$01,$28,$71 ; $4842
        db      $2B,$12,$01,$16,$09,$01,$66,$00,$2E,$2B,$12,$01,$38,$F2,$2A,$12 ; $4852
        db      $01,$03,$12,$01,$07,$12,$01,$05,$09,$01,$FF,$FF,$12,$01,$10,$12 ; $4862
        db      $01,$18,$09,$01,$F9,$FF,$BB,$2B,$30,$01,$12,$01,$10,$12,$01,$03 ; $4872
        db      $09,$01,$FE,$FF,$12,$01,$20,$09,$01,$80,$00,$09,$01,$E4,$FF,$BB ; $4882
        db      $2B,$30,$01,$12,$01,$10,$12,$01,$03,$12,$01,$04,$2A,$01,$12,$01 ; $4892
        db      $0F,$09,$01,$F2,$FF,$BB,$2B,$12,$01,$07,$01,$2B,$12,$01,$28,$A8 ; $48A2
        db      $2B,$8C,$2B,$FD,$00,$CF,$12,$01,$10,$09,$01,$6D,$FD,$EF,$2B,$12 ; $48B2
        db      $01,$1F,$09,$01,$FF,$00,$2E,$2B,$09,$01,$68,$00,$01,$2B,$12,$01 ; $48C2
        db      $20,$F2,$2A,$09,$01,$88,$00,$12,$01,$50,$09,$01,$64,$00,$71,$2B ; $48D2
        db      $12,$01,$20,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04 ; $48E2
        db      $A8,$2B,$12,$01,$1F,$09,$01,$FF,$00,$2E,$2B,$12,$01,$08,$A8,$2B ; $48F2
        db      $12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$8C,$2B,$FD ; $4902
        db      $00,$CF,$31,$48,$B7,$48,$FD,$00,$CF,$99,$15,$34,$8B,$A8,$1E,$13 ; $4912
        db      $49,$09,$01,$1F,$48,$B4,$1C,$12,$01,$3C,$DF,$1B,$E9,$19,$F3,$1D ; $4922
        db      $12,$01,$0C,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$1A,$49 ; $4932
COMPLETE_FIGURE_C_CORRECT_STATE_1:
        rst     $08                                                             ; $4942 colon entry
        dw      XT_LIT                                                          ; $4943 execution token
        dw      $F5FB                                                           ; $4945 inline word
        dw      XT_Bat                                                          ; $4947 execution token
        dw      XT_LITbyte                                                      ; $4949 execution token
        db      $03                                                             ; $494B inline byte
        dw      XT_minussign                                                    ; $494C execution token
        dw      XT_LIT                                                          ; $494E execution token
        dw      $F5FB                                                           ; $4950 inline word
        dw      XT_SBbang                                                       ; $4952 execution token
        dw      XT_LIT                                                          ; $4954 execution token
        dw      $F5FA                                                           ; $4956 inline word
        dw      XT_DUP                                                          ; $4958 execution token
        dw      XT_1plusBbang                                                   ; $495A execution token
        dw      XT_Bat                                                          ; $495C execution token
        dw      XT_RETURN                                                       ; $495E execution token

COMPLETE_FIGURE_C_CORRECT_STATE_2:
        rst     $08                                                             ; $4960 colon entry
        dw      XT_LIT                                                          ; $4961 execution token
        dw      $F5FB                                                           ; $4963 inline word
        dw      XT_Bat                                                          ; $4965 execution token
        dw      XT_LITbyte                                                      ; $4967 execution token
        db      $02                                                             ; $4969 inline byte
        dw      XT_plus                                                         ; $496A execution token
        dw      XT_LIT                                                          ; $496C execution token
        dw      $F5FB                                                           ; $496E inline word
        dw      XT_SBbang                                                       ; $4970 execution token
        dw      XT_LIT                                                          ; $4972 execution token
        dw      $F5F9                                                           ; $4974 inline word
        dw      XT_DUP                                                          ; $4976 execution token
        dw      XT_1plusBbang                                                   ; $4978 execution token
        dw      XT_Bat                                                          ; $497A execution token
        dw      XT_RETURN                                                       ; $497C execution token

COMPLETE_FIGURE_C_CORRECT_STATE_3:
        rst     $08                                                             ; $497E colon entry
        dw      XT_LITbyte                                                      ; $497F execution token
        db      $30                                                             ; $4981 inline byte
        dw      $2AF2                                                           ; $4982 execution token
        dw      $3FDF                                                           ; $4984 execution token
        dw      XT_LIT                                                          ; $4986 execution token
        dw      $F5F9                                                           ; $4988 inline word
        dw      XT_BZERO                                                        ; $498A execution token
        dw      XT_LIT                                                          ; $498C execution token
        dw      $F5FA                                                           ; $498E inline word
        dw      XT_BZERO                                                        ; $4990 execution token
        dw      XT_LIT                                                          ; $4992 execution token
        dw      $0068                                                           ; $4994 inline word
        dw      XT_LIT                                                          ; $4996 execution token
        dw      $F5FB                                                           ; $4998 inline word
        dw      XT_SBbang                                                       ; $499A execution token
        dw      XT_RETURN                                                       ; $499C execution token

COMPLETE_FIGURE_C_CORRECT_LOOP_1:
        rst     $08                                                             ; $499E colon entry
        dw      XT_0                                                            ; $499F execution token
        dw      XT_LIT                                                          ; $49A1 execution token
        dw      $FD6D                                                           ; $49A3 inline word
        dw      $2BEF                                                           ; $49A5 execution token
        dw      COMPLETE_FIGURE_C_CORRECT_STATE_3                               ; $49A7 execution token
COMPLETE_FIGURE_C_CORRECT_LOOP_1_R:
        dw      $8540                                                           ; $49A9 execution token
        dw      XT_LITbyte                                                      ; $49AB execution token
        db      $02                                                             ; $49AD inline byte
        dw      $2BA8                                                           ; $49AE execution token
        dw      COMPLETE_FIGURE_C_CORRECT_STATE_1                               ; $49B0 execution token
        dw      XT_LITbyte                                                      ; $49B2 execution token
        db      $04                                                             ; $49B4 inline byte
        dw      XT_gt                                                           ; $49B5 execution token
        dw      XT_0BRANCH                                                      ; $49B7 execution token
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_1_R                              ; $49B9 branch target
        dw      XT_LIT                                                          ; $49BB execution token
        dw      $F5FA                                                           ; $49BD inline word
        dw      XT_BZERO                                                        ; $49BF execution token
        dw      $8540                                                           ; $49C1 execution token
        dw      XT_LITbyte                                                      ; $49C3 execution token
        db      $02                                                             ; $49C5 inline byte
        dw      $2BA8                                                           ; $49C6 execution token
        dw      COMPLETE_FIGURE_C_CORRECT_STATE_2                               ; $49C8 execution token
        dw      XT_LITbyte                                                      ; $49CA execution token
        db      $05                                                             ; $49CC inline byte
        dw      XT_gt                                                           ; $49CD execution token
        dw      XT_0BRANCH                                                      ; $49CF execution token
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_1_R                              ; $49D1 branch target
        dw      $2B8C                                                           ; $49D3 execution token
        dw      XT_RETURN                                                       ; $49D5 execution token

COMPLETE_FIGURE_C_CORRECT_STATE_4:
        rst     $08                                                             ; $49D7 colon entry
        dw      XT_LITbyte                                                      ; $49D8 execution token
        db      $30                                                             ; $49DA inline byte
        dw      $2AF2                                                           ; $49DB execution token
        dw      $3FDF                                                           ; $49DD execution token
        dw      XT_LIT                                                          ; $49DF execution token
        dw      $F5F6                                                           ; $49E1 inline word
        dw      XT_BZERO                                                        ; $49E3 execution token
        dw      XT_LIT                                                          ; $49E5 execution token
        dw      $F5F7                                                           ; $49E7 inline word
        dw      XT_BZERO                                                        ; $49E9 execution token
        dw      XT_LITbyte                                                      ; $49EB execution token
        db      $50                                                             ; $49ED inline byte
        dw      XT_LIT                                                          ; $49EE execution token
        dw      $F5F8                                                           ; $49F0 inline word
        dw      XT_SBbang                                                       ; $49F2 execution token
        dw      XT_RETURN                                                       ; $49F4 execution token

COMPLETE_FIGURE_C_CORRECT_LOOP_2:
        rst     $08                                                             ; $49F6 colon entry
        dw      XT_0                                                            ; $49F7 execution token
        dw      XT_LIT                                                          ; $49F9 execution token
        dw      $FD3D                                                           ; $49FB inline word
        dw      $2BEF                                                           ; $49FD execution token
        dw      XT_LITbyte                                                      ; $49FF execution token
        db      $00                                                             ; $4A01 inline byte
        dw      XT_LITbyte                                                      ; $4A02 execution token
        db      $00                                                             ; $4A04 inline byte
        dw      $2B2E                                                           ; $4A05 execution token
        dw      XT_LITbyte                                                      ; $4A07 execution token
        db      $04                                                             ; $4A09 inline byte
        dw      $2BA8                                                           ; $4A0A execution token
        dw      COMPLETE_FIGURE_C_CORRECT_STATE_4                               ; $4A0C execution token
COMPLETE_FIGURE_C_CORRECT_LOOP_2_R:
        dw      $85DF                                                           ; $4A0E execution token
        dw      XT_LITbyte                                                      ; $4A10 execution token
        db      $02                                                             ; $4A12 inline byte
        dw      $2BA8                                                           ; $4A13 execution token
        dw      PPQ9_SHARED_PRESENT_STATE_1                                     ; $4A15 execution token
        dw      XT_LITbyte                                                      ; $4A17 execution token
        db      $04                                                             ; $4A19 inline byte
        dw      XT_gt                                                           ; $4A1A execution token
        dw      XT_0BRANCH                                                      ; $4A1C execution token
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_2_R                              ; $4A1E branch target
        dw      XT_LIT                                                          ; $4A20 execution token
        dw      $F5F7                                                           ; $4A22 inline word
        dw      XT_BZERO                                                        ; $4A24 execution token
        dw      $85DF                                                           ; $4A26 execution token
        dw      XT_LITbyte                                                      ; $4A28 execution token
        db      $02                                                             ; $4A2A inline byte
        dw      $2BA8                                                           ; $4A2B execution token
        dw      PPQ9_SHARED_PRESENT_STATE_2                                     ; $4A2D execution token
        dw      XT_LITbyte                                                      ; $4A2F execution token
        db      $05                                                             ; $4A31 inline byte
        dw      XT_gt                                                           ; $4A32 execution token
        dw      XT_0BRANCH                                                      ; $4A34 execution token
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_2_R                              ; $4A36 branch target
        dw      $2B8C                                                           ; $4A38 execution token
        dw      XT_RETURN                                                       ; $4A3A execution token

COMPLETE_FIGURE_C_CORRECT_THREAD:
        rst     $08                                                             ; $4A3C colon entry
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_1                                ; $4A3D execution token
        dw      COMPLETE_FIGURE_C_CORRECT_LOOP_2                                ; $4A3F execution token
        dw      XT_RETURN                                                       ; $4A41 execution token

COMPLETE_FIGURE_C_DIST_LOOP_1:
        rst     $08                                                             ; $4A43 colon entry
        dw      XT_0                                                            ; $4A44 execution token
        dw      XT_LIT                                                          ; $4A46 execution token
        dw      $FD6D                                                           ; $4A48 inline word
        dw      $2BEF                                                           ; $4A4A execution token
        dw      $3FEA                                                           ; $4A4C execution token
        dw      XT_LITbyte                                                      ; $4A4E execution token
        db      $10                                                             ; $4A50 inline byte
        dw      $2BA8                                                           ; $4A51 execution token
        dw      $85C0                                                           ; $4A53 execution token
COMPLETE_FIGURE_C_DIST_LOOP_1_R:
        dw      $8540                                                           ; $4A55 execution token
        dw      XT_LITbyte                                                      ; $4A57 execution token
        db      $02                                                             ; $4A59 inline byte
        dw      $2BA8                                                           ; $4A5A execution token
        dw      $854B                                                           ; $4A5C execution token
        dw      XT_LITbyte                                                      ; $4A5E execution token
        db      $04                                                             ; $4A60 inline byte
        dw      XT_gt                                                           ; $4A61 execution token
        dw      XT_0BRANCH                                                      ; $4A63 execution token
        dw      COMPLETE_FIGURE_C_DIST_LOOP_1_R                                 ; $4A65 branch target
        dw      XT_LIT                                                          ; $4A67 execution token
        dw      $F5FA                                                           ; $4A69 inline word
        dw      XT_BZERO                                                        ; $4A6B execution token
        dw      $8540                                                           ; $4A6D execution token
        dw      XT_LITbyte                                                      ; $4A6F execution token
        db      $02                                                             ; $4A71 inline byte
        dw      $2BA8                                                           ; $4A72 execution token
        dw      $8569                                                           ; $4A74 execution token
        dw      XT_LITbyte                                                      ; $4A76 execution token
        db      $0B                                                             ; $4A78 inline byte
        dw      XT_gt                                                           ; $4A79 execution token
        dw      XT_0BRANCH                                                      ; $4A7B execution token
        dw      COMPLETE_FIGURE_C_DIST_LOOP_1_R                                 ; $4A7D branch target
        dw      $2B8C                                                           ; $4A7F execution token
        dw      XT_RETURN                                                       ; $4A81 execution token

COMPLETE_FIGURE_C_DIST_STATE:
        rst     $08                                                             ; $4A83 colon entry
        dw      XT_LITbyte                                                      ; $4A84 execution token
        db      $30                                                             ; $4A86 inline byte
        dw      $2AF2                                                           ; $4A87 execution token
        dw      $3FDF                                                           ; $4A89 execution token
        dw      XT_LIT                                                          ; $4A8B execution token
        dw      $F5F6                                                           ; $4A8D inline word
        dw      XT_BZERO                                                        ; $4A8F execution token
        dw      XT_LIT                                                          ; $4A91 execution token
        dw      $F5F7                                                           ; $4A93 inline word
        dw      XT_BZERO                                                        ; $4A95 execution token
        dw      XT_LITbyte                                                      ; $4A97 execution token
        db      $10                                                             ; $4A99 inline byte
        dw      XT_LIT                                                          ; $4A9A execution token
        dw      $F5F8                                                           ; $4A9C inline word
        dw      XT_SBbang                                                       ; $4A9E execution token
        dw      XT_RETURN                                                       ; $4AA0 execution token
COMPLETE_FIGURE_C_DIST_LOOP_2:
        rst     $08                                                             ; $4AA2 colon entry
        dw      XT_0                                                            ; $4AA3 execution token
        dw      XT_LIT                                                          ; $4AA5 execution token
        dw      $FD3D                                                           ; $4AA7 inline word
        dw      $2BEF                                                           ; $4AA9 execution token
        dw      $3FEA                                                           ; $4AAB execution token
        dw      XT_LITbyte                                                      ; $4AAD execution token
        db      $13                                                             ; $4AAF inline byte
        dw      $2BA8                                                           ; $4AB0 execution token
        dw      COMPLETE_FIGURE_C_DIST_STATE                                    ; $4AB2 execution token
COMPLETE_FIGURE_C_DIST_LOOP_2_R:
        dw      $85DF                                                           ; $4AB4 execution token
        dw      XT_LITbyte                                                      ; $4AB6 execution token
        db      $02                                                             ; $4AB8 inline byte
        dw      $2BA8                                                           ; $4AB9 execution token
        dw      $85EA                                                           ; $4ABB execution token
        dw      XT_LITbyte                                                      ; $4ABD execution token
        db      $04                                                             ; $4ABF inline byte
        dw      XT_gt                                                           ; $4AC0 execution token
        dw      XT_0BRANCH                                                      ; $4AC2 execution token
        dw      COMPLETE_FIGURE_C_DIST_LOOP_2_R                                 ; $4AC4 branch target
        dw      XT_LIT                                                          ; $4AC6 execution token
        dw      $F5F7                                                           ; $4AC8 inline word
        dw      XT_BZERO                                                        ; $4ACA execution token
        dw      $85DF                                                           ; $4ACC execution token
        dw      XT_LITbyte                                                      ; $4ACE execution token
        db      $02                                                             ; $4AD0 inline byte
        dw      $2BA8                                                           ; $4AD1 execution token
        dw      $8608                                                           ; $4AD3 execution token
        dw      XT_LITbyte                                                      ; $4AD5 execution token
        db      $0B                                                             ; $4AD7 inline byte
        dw      XT_gt                                                           ; $4AD8 execution token
        dw      XT_0BRANCH                                                      ; $4ADA execution token
        dw      COMPLETE_FIGURE_C_DIST_LOOP_2_R                                 ; $4ADC branch target
        dw      $2B8C                                                           ; $4ADE execution token
        dw      XT_RETURN                                                       ; $4AE0 execution token
COMPLETE_FIGURE_C_DIST_THREAD:
        rst     $08                                                             ; $4AE2 colon entry
        dw      COMPLETE_FIGURE_C_DIST_LOOP_1                                   ; $4AE3 execution token
        dw      COMPLETE_FIGURE_C_DIST_LOOP_2                                   ; $4AE5 execution token
        dw      XT_RETURN                                                       ; $4AE7 execution token

COMPLETE_FIGURE_D_DIST_THREAD_1:
        rst     $08                                                             ; $4AE9 colon entry
        dw      XT_LITbyte                                                      ; $4AEA execution token
        db      $1F                                                             ; $4AEC inline byte
        dw      XT_LIT                                                          ; $4AED execution token
        dw      $00FF                                                           ; $4AEF inline word
        dw      $2B2E                                                           ; $4AF1 execution token
        dw      XT_RETURN                                                       ; $4AF3 execution token

COMPLETE_FIGURE_D_DIST_THREAD_2:
        rst     $08                                                             ; $4AF5 colon entry
        dw      XT_LITbyte                                                      ; $4AF6 execution token
        db      $05                                                             ; $4AF8 inline byte
        dw      XT_LIT                                                          ; $4AF9 execution token
        dw      $FD6D                                                           ; $4AFB inline word
        dw      $2BEF                                                           ; $4AFD execution token
        dw      $3EAD                                                           ; $4AFF execution token
        dw      XT_LITbyte                                                      ; $4B01 execution token
        db      $17                                                             ; $4B03 inline byte
        dw      $2BA8                                                           ; $4B04 execution token
        dw      $3E73                                                           ; $4B06 execution token
        dw      $3FEA                                                           ; $4B08 execution token
        dw      XT_1                                                            ; $4B0A execution token
        dw      $2BA8                                                           ; $4B0C execution token
        dw      $3EAD                                                           ; $4B0E execution token
        dw      XT_LITbyte                                                      ; $4B10 execution token
        db      $15                                                             ; $4B12 inline byte
        dw      $2BA8                                                           ; $4B13 execution token
        dw      $3E8B                                                           ; $4B15 execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_1                                 ; $4B17 execution token
        dw      XT_LITbyte                                                      ; $4B19 execution token
        db      $10                                                             ; $4B1B inline byte
        dw      $2BA8                                                           ; $4B1C execution token
        dw      $3FEA                                                           ; $4B1E execution token
        dw      XT_LITbyte                                                      ; $4B20 execution token
        db      $03                                                             ; $4B22 inline byte
        dw      $2BA8                                                           ; $4B23 execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_1                                 ; $4B25 execution token
        dw      XT_LITbyte                                                      ; $4B27 execution token
        db      $10                                                             ; $4B29 inline byte
        dw      $2BA8                                                           ; $4B2A execution token
        dw      $2B8C                                                           ; $4B2C execution token
        dw      XT_RETURN                                                       ; $4B2E execution token

COMPLETE_FIGURE_D_DIST_THREAD_3:
        rst     $08                                                             ; $4B30 colon entry
        dw      XT_LITbyte                                                      ; $4B31 execution token
        db      $05                                                             ; $4B33 inline byte
        dw      XT_LIT                                                          ; $4B34 execution token
        dw      $FD3D                                                           ; $4B36 inline word
        dw      $2BEF                                                           ; $4B38 execution token
        dw      XT_LITbyte                                                      ; $4B3A execution token
        db      $00                                                             ; $4B3C inline byte
        dw      XT_LITbyte                                                      ; $4B3D execution token
        db      $00                                                             ; $4B3F inline byte
        dw      $2B2E                                                           ; $4B40 execution token
        dw      XT_LITbyte                                                      ; $4B42 execution token
        db      $03                                                             ; $4B44 inline byte
        dw      $2BA8                                                           ; $4B45 execution token
        dw      $3EAD                                                           ; $4B47 execution token
        dw      XT_LITbyte                                                      ; $4B49 execution token
        db      $17                                                             ; $4B4B inline byte
        dw      $2BA8                                                           ; $4B4C execution token
        dw      $3E73                                                           ; $4B4E execution token
        dw      $3FEA                                                           ; $4B50 execution token
        dw      XT_1                                                            ; $4B52 execution token
        dw      $2BA8                                                           ; $4B54 execution token
        dw      $3EAD                                                           ; $4B56 execution token
        dw      XT_LITbyte                                                      ; $4B58 execution token
        db      $15                                                             ; $4B5A inline byte
        dw      $2BA8                                                           ; $4B5B execution token
        dw      $3E8B                                                           ; $4B5D execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_1                                 ; $4B5F execution token
        dw      XT_LITbyte                                                      ; $4B61 execution token
        db      $10                                                             ; $4B63 inline byte
        dw      $2BA8                                                           ; $4B64 execution token
        dw      $3FEA                                                           ; $4B66 execution token
        dw      XT_LITbyte                                                      ; $4B68 execution token
        db      $03                                                             ; $4B6A inline byte
        dw      $2BA8                                                           ; $4B6B execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_1                                 ; $4B6D execution token
        dw      XT_LITbyte                                                      ; $4B6F execution token
        db      $10                                                             ; $4B71 inline byte
        dw      $2BA8                                                           ; $4B72 execution token
        dw      $2B8C                                                           ; $4B74 execution token
        dw      XT_RETURN                                                       ; $4B76 execution token

COMPLETE_FIGURE_D_DIST_THREAD_4:
        rst     $08                                                             ; $4B78 colon entry
        dw      COMPLETE_FIGURE_D_DIST_THREAD_2                                 ; $4B79 execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_3                                 ; $4B7B execution token
        dw      XT_RETURN                                                       ; $4B7D execution token

        db      $CF,$12,$01                                                     ; $4B7F preserved bytes
        db      $1F,$09,$01,$FF,$00,$2E,$2B,$FD,$00,$CF,$12,$01,$05,$09,$01,$6D ; $4B82
        db      $FD,$EF,$2B,$8B,$3E,$7F,$4B,$12,$01,$10,$A8,$2B,$EA,$3F,$12,$01 ; $4B92
        db      $03,$A8,$2B,$7F,$4B,$12,$01,$10,$A8,$2B,$8C,$2B,$FD,$00,$CF,$12 ; $4BA2
        db      $01,$05,$09,$01,$3D,$FD,$EF,$2B,$8B,$3E,$7F,$4B,$12,$01,$10,$A8 ; $4BB2
        db      $2B,$EA,$3F,$12,$01,$03,$A8,$2B,$7F,$4B,$12,$01,$10,$A8,$2B,$8C ; $4BC2
        db      $2B,$FD,$00,$CF,$8B,$4B,$B0,$4B,$FD,$00                         ; $4BD2 preserved bytes

COMPLETE_FIGURE_B_ANSWER_THREAD_1:
        rst     $08                                                             ; $4BDC colon entry
        dw      XT_LIT                                                          ; $4BDD execution token
        dw      $F5FE                                                           ; $4BDF inline word
        dw      XT_Bat                                                          ; $4BE1 execution token
        dw      XT_BARRAY                                                       ; $4BE3 execution token
        dw      $8427                                                           ; $4BE5 inline word
        dw      XT_Bat                                                          ; $4BE7 execution token
        dw      $2B44                                                           ; $4BE9 execution token
        dw      XT_LIT                                                          ; $4BEB execution token
        dw      $F5FE                                                           ; $4BED inline word
        dw      XT_Bat                                                          ; $4BEF execution token
        dw      XT_BARRAY                                                       ; $4BF1 execution token
        dw      $8430                                                           ; $4BF3 inline word
        dw      XT_Bat                                                          ; $4BF5 execution token
        dw      $2B53                                                           ; $4BF7 execution token
        dw      XT_RETURN                                                       ; $4BF9 execution token

COMPLETE_FIGURE_B_CORRECT_LOOP_1:
        rst     $08                                                             ; $4BFB colon entry
        dw      XT_0                                                            ; $4BFC execution token
        dw      XT_LIT                                                          ; $4BFE execution token
        dw      $FD6D                                                           ; $4C00 inline word
        dw      $2BEF                                                           ; $4C02 execution token
        dw      XT_LITbyte                                                      ; $4C04 execution token
        db      $30                                                             ; $4C06 inline byte
        dw      $2AF2                                                           ; $4C07 execution token
        dw      XT_LITbyte                                                      ; $4C09 execution token
        db      $00                                                             ; $4C0B inline byte
        dw      XT_LIT                                                          ; $4C0C execution token
        dw      $00B8                                                           ; $4C0E inline word
        dw      $2B2E                                                           ; $4C10 execution token
COMPLETE_FIGURE_B_CORRECT_LOOP_1_R:
        dw      XT_LITbyte                                                      ; $4C12 execution token
        db      $00                                                             ; $4C14 inline byte
        dw      XT_LIT                                                          ; $4C15 execution token
        dw      $00B8                                                           ; $4C17 inline word
        dw      $2B2E                                                           ; $4C19 execution token
        dw      COMPLETE_FIGURE_B_ANSWER_THREAD_1                               ; $4C1B execution token
        dw      XT_LITbyte                                                      ; $4C1D execution token
        db      $02                                                             ; $4C1F inline byte
        dw      $2BA8                                                           ; $4C20 execution token
        dw      XT_LIT                                                          ; $4C22 execution token
        dw      $F5FE                                                           ; $4C24 inline word
        dw      XT_DUP                                                          ; $4C26 execution token
        dw      XT_1plusBbang                                                   ; $4C28 execution token
        dw      XT_Bat                                                          ; $4C2A execution token
        dw      XT_LITbyte                                                      ; $4C2C execution token
        db      $08                                                             ; $4C2E inline byte
        dw      XT_gt                                                           ; $4C2F execution token
        dw      XT_0BRANCH                                                      ; $4C31 execution token
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_1_R                              ; $4C33 branch target
        dw      XT_LIT                                                          ; $4C35 execution token
        dw      $F5FE                                                           ; $4C37 inline word
        dw      XT_BZERO                                                        ; $4C39 execution token
        dw      $3FEA                                                           ; $4C3B execution token
        dw      XT_LITbyte                                                      ; $4C3D execution token
        db      $04                                                             ; $4C3F inline byte
        dw      $2BA8                                                           ; $4C40 execution token
        dw      XT_LIT                                                          ; $4C42 execution token
        dw      $F2FF                                                           ; $4C44 inline word
        dw      XT_DUP                                                          ; $4C46 execution token
        dw      XT_1plusBbang                                                   ; $4C48 execution token
        dw      XT_Bat                                                          ; $4C4A execution token
        dw      XT_LITbyte                                                      ; $4C4C execution token
        db      $03                                                             ; $4C4E inline byte
        dw      XT_gt                                                           ; $4C4F execution token
        dw      XT_0BRANCH                                                      ; $4C51 execution token
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_1_R                              ; $4C53 branch target
        dw      XT_LIT                                                          ; $4C55 execution token
        dw      $F2FF                                                           ; $4C57 inline word
        dw      XT_BZERO                                                        ; $4C59 execution token
        dw      $2B8C                                                           ; $4C5B execution token
        dw      XT_RETURN                                                       ; $4C5D execution token

COMPLETE_FIGURE_B_ANSWER_THREAD_2:
        rst     $08                                                             ; $4C5F colon entry
        dw      XT_LIT                                                          ; $4C60 execution token
        dw      $F2FD                                                           ; $4C62 inline word
        dw      XT_Bat                                                          ; $4C64 execution token
        dw      XT_BARRAY                                                       ; $4C66 execution token
        dw      $8427                                                           ; $4C68 inline word
        dw      XT_Bat                                                          ; $4C6A execution token
        dw      $2B44                                                           ; $4C6C execution token
        dw      XT_LIT                                                          ; $4C6E execution token
        dw      $F2FD                                                           ; $4C70 inline word
        dw      XT_Bat                                                          ; $4C72 execution token
        dw      XT_BARRAY                                                       ; $4C74 execution token
        dw      $8430                                                           ; $4C76 inline word
        dw      XT_Bat                                                          ; $4C78 execution token
        dw      $2B53                                                           ; $4C7A execution token
        dw      XT_RETURN                                                       ; $4C7C execution token

COMPLETE_FIGURE_B_CORRECT_LOOP_2:
        rst     $08                                                             ; $4C7E colon entry
        dw      XT_0                                                            ; $4C7F execution token
        dw      XT_LIT                                                          ; $4C81 execution token
        dw      $FD3D                                                           ; $4C83 inline word
        dw      $2BEF                                                           ; $4C85 execution token
        dw      XT_LITbyte                                                      ; $4C87 execution token
        db      $00                                                             ; $4C89 inline byte
        dw      XT_LITbyte                                                      ; $4C8A execution token
        db      $00                                                             ; $4C8C inline byte
        dw      $2B2E                                                           ; $4C8D execution token
        dw      XT_LITbyte                                                      ; $4C8F execution token
        db      $03                                                             ; $4C91 inline byte
        dw      $2BA8                                                           ; $4C92 execution token
        dw      XT_LITbyte                                                      ; $4C94 execution token
        db      $30                                                             ; $4C96 inline byte
        dw      $2AF2                                                           ; $4C97 execution token
        dw      XT_LITbyte                                                      ; $4C99 execution token
        db      $00                                                             ; $4C9B inline byte
        dw      XT_LIT                                                          ; $4C9C execution token
        dw      $00B8                                                           ; $4C9E inline word
        dw      $2B2E                                                           ; $4CA0 execution token
COMPLETE_FIGURE_B_CORRECT_LOOP_2_R:
        dw      XT_LITbyte                                                      ; $4CA2 execution token
        db      $00                                                             ; $4CA4 inline byte
        dw      XT_LIT                                                          ; $4CA5 execution token
        dw      $00B8                                                           ; $4CA7 inline word
        dw      $2B2E                                                           ; $4CA9 execution token
        dw      COMPLETE_FIGURE_B_ANSWER_THREAD_2                               ; $4CAB execution token
        dw      XT_LITbyte                                                      ; $4CAD execution token
        db      $02                                                             ; $4CAF inline byte
        dw      $2BA8                                                           ; $4CB0 execution token
        dw      XT_LIT                                                          ; $4CB2 execution token
        dw      $F2FD                                                           ; $4CB4 inline word
        dw      XT_DUP                                                          ; $4CB6 execution token
        dw      XT_1plusBbang                                                   ; $4CB8 execution token
        dw      XT_Bat                                                          ; $4CBA execution token
        dw      XT_LITbyte                                                      ; $4CBC execution token
        db      $08                                                             ; $4CBE inline byte
        dw      XT_gt                                                           ; $4CBF execution token
        dw      XT_0BRANCH                                                      ; $4CC1 execution token
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_2_R                              ; $4CC3 branch target
        dw      XT_LIT                                                          ; $4CC5 execution token
        dw      $F2FD                                                           ; $4CC7 inline word
        dw      XT_BZERO                                                        ; $4CC9 execution token
        dw      $3FEA                                                           ; $4CCB execution token
        dw      XT_LITbyte                                                      ; $4CCD execution token
        db      $04                                                             ; $4CCF inline byte
        dw      $2BA8                                                           ; $4CD0 execution token
        dw      XT_LIT                                                          ; $4CD2 execution token
        dw      $F2FE                                                           ; $4CD4 inline word
        dw      XT_DUP                                                          ; $4CD6 execution token
        dw      XT_1plusBbang                                                   ; $4CD8 execution token
        dw      XT_Bat                                                          ; $4CDA execution token
        dw      XT_LITbyte                                                      ; $4CDC execution token
        db      $03                                                             ; $4CDE inline byte
        dw      XT_gt                                                           ; $4CDF execution token
        dw      XT_0BRANCH                                                      ; $4CE1 execution token
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_2_R                              ; $4CE3 branch target
        dw      XT_LIT                                                          ; $4CE5 execution token
        dw      $F2FE                                                           ; $4CE7 inline word
        dw      XT_BZERO                                                        ; $4CE9 execution token
        dw      $2B8C                                                           ; $4CEB execution token
        dw      XT_RETURN                                                       ; $4CED execution token

COMPLETE_FIGURE_B_CORRECT_THREAD:
        rst     $08                                                             ; $4CEF colon entry
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_1                                ; $4CF0 execution token
        dw      COMPLETE_FIGURE_B_CORRECT_LOOP_2                                ; $4CF2 execution token
        dw      XT_RETURN                                                       ; $4CF4 execution token

COMPLETE_FIGURE_B_DIST_LOOP_1:
        rst     $08                                                             ; $4CF6 colon entry
        dw      XT_0                                                            ; $4CF7 execution token
        dw      XT_LIT                                                          ; $4CF9 execution token
        dw      $FD6D                                                           ; $4CFB inline word
        dw      $2BEF                                                           ; $4CFD execution token
        dw      $3EAD                                                           ; $4CFF execution token
        dw      XT_LITbyte                                                      ; $4D01 execution token
        db      $18                                                             ; $4D03 inline byte
        dw      $2BA8                                                           ; $4D04 execution token
        dw      $3E73                                                           ; $4D06 execution token
        dw      $3FEA                                                           ; $4D08 execution token
        dw      XT_LITbyte                                                      ; $4D0A execution token
        db      $05                                                             ; $4D0C inline byte
        dw      $2BA8                                                           ; $4D0D execution token
        dw      XT_LITbyte                                                      ; $4D0F execution token
        db      $30                                                             ; $4D11 inline byte
        dw      $2AF2                                                           ; $4D12 execution token
        dw      XT_LITbyte                                                      ; $4D14 execution token
        db      $00                                                             ; $4D16 inline byte
        dw      XT_LIT                                                          ; $4D17 execution token
        dw      $00B8                                                           ; $4D19 inline word
        dw      $2B2E                                                           ; $4D1B execution token
COMPLETE_FIGURE_B_DIST_LOOP_1_R:
        dw      XT_LITbyte                                                      ; $4D1D execution token
        db      $00                                                             ; $4D1F inline byte
        dw      XT_LIT                                                          ; $4D20 execution token
        dw      $00B8                                                           ; $4D22 inline word
        dw      $2B2E                                                           ; $4D24 execution token
        dw      COMPLETE_FIGURE_B_ANSWER_THREAD_1                               ; $4D26 execution token
        dw      XT_LITbyte                                                      ; $4D28 execution token
        db      $02                                                             ; $4D2A inline byte
        dw      $2BA8                                                           ; $4D2B execution token
        dw      XT_LIT                                                          ; $4D2D execution token
        dw      $F5FE                                                           ; $4D2F inline word
        dw      XT_DUP                                                          ; $4D31 execution token
        dw      XT_1plusBbang                                                   ; $4D33 execution token
        dw      XT_Bat                                                          ; $4D35 execution token
        dw      XT_LITbyte                                                      ; $4D37 execution token
        db      $08                                                             ; $4D39 inline byte
        dw      XT_gt                                                           ; $4D3A execution token
        dw      XT_0BRANCH                                                      ; $4D3C execution token
        dw      COMPLETE_FIGURE_B_DIST_LOOP_1_R                                 ; $4D3E branch target
        dw      XT_LIT                                                          ; $4D40 execution token
        dw      $F5FE                                                           ; $4D42 inline word
        dw      XT_BZERO                                                        ; $4D44 execution token
        dw      $3FEA                                                           ; $4D46 execution token
        dw      XT_LITbyte                                                      ; $4D48 execution token
        db      $03                                                             ; $4D4A inline byte
        dw      $2BA8                                                           ; $4D4B execution token
        dw      XT_LIT                                                          ; $4D4D execution token
        dw      $F2FF                                                           ; $4D4F inline word
        dw      XT_DUP                                                          ; $4D51 execution token
        dw      XT_1plusBbang                                                   ; $4D53 execution token
        dw      XT_Bat                                                          ; $4D55 execution token
        dw      XT_LITbyte                                                      ; $4D57 execution token
        db      $02                                                             ; $4D59 inline byte
        dw      XT_gt                                                           ; $4D5A execution token
        dw      XT_0BRANCH                                                      ; $4D5C execution token
        dw      COMPLETE_FIGURE_B_DIST_LOOP_1_R                                 ; $4D5E branch target
        dw      XT_LIT                                                          ; $4D60 execution token
        dw      $F2FF                                                           ; $4D62 inline word
        dw      XT_BZERO                                                        ; $4D64 execution token
        dw      $2B8C                                                           ; $4D66 execution token
        dw      XT_RETURN                                                       ; $4D68 execution token

COMPLETE_FIGURE_B_DIST_LOOP_2:
        rst     $08                                                             ; $4D6A colon entry
        dw      XT_0                                                            ; $4D6B execution token
        dw      XT_LIT                                                          ; $4D6D execution token
        dw      $FD3D                                                           ; $4D6F inline word
        dw      $2BEF                                                           ; $4D71 execution token
        dw      $3EAD                                                           ; $4D73 execution token
        dw      XT_LITbyte                                                      ; $4D75 execution token
        db      $18                                                             ; $4D77 inline byte
        dw      $2BA8                                                           ; $4D78 execution token
        dw      $3E73                                                           ; $4D7A execution token
        dw      $3FEA                                                           ; $4D7C execution token
        dw      XT_LITbyte                                                      ; $4D7E execution token
        db      $05                                                             ; $4D80 inline byte
        dw      $2BA8                                                           ; $4D81 execution token
        dw      XT_LITbyte                                                      ; $4D83 execution token
        db      $30                                                             ; $4D85 inline byte
        dw      $2AF2                                                           ; $4D86 execution token
        dw      XT_LITbyte                                                      ; $4D88 execution token
        db      $00                                                             ; $4D8A inline byte
        dw      XT_LIT                                                          ; $4D8B execution token
        dw      $00B8                                                           ; $4D8D inline word
        dw      $2B2E                                                           ; $4D8F execution token
COMPLETE_FIGURE_B_DIST_LOOP_2_R:
        dw      XT_LITbyte                                                      ; $4D91 execution token
        db      $00                                                             ; $4D93 inline byte
        dw      XT_LIT                                                          ; $4D94 execution token
        dw      $00B8                                                           ; $4D96 inline word
        dw      $2B2E                                                           ; $4D98 execution token
        dw      COMPLETE_FIGURE_B_ANSWER_THREAD_2                               ; $4D9A execution token
        dw      XT_LITbyte                                                      ; $4D9C execution token
        db      $02                                                             ; $4D9E inline byte
        dw      $2BA8                                                           ; $4D9F execution token
        dw      XT_LIT                                                          ; $4DA1 execution token
        dw      $F2FD                                                           ; $4DA3 inline word
        dw      XT_DUP                                                          ; $4DA5 execution token
        dw      XT_1plusBbang                                                   ; $4DA7 execution token
        dw      XT_Bat                                                          ; $4DA9 execution token
        dw      XT_LITbyte                                                      ; $4DAB execution token
        db      $08                                                             ; $4DAD inline byte
        dw      XT_gt                                                           ; $4DAE execution token
        dw      XT_0BRANCH                                                      ; $4DB0 execution token
        dw      COMPLETE_FIGURE_B_DIST_LOOP_2_R                                 ; $4DB2 branch target
        dw      XT_LIT                                                          ; $4DB4 execution token
        dw      $F2FD                                                           ; $4DB6 inline word
        dw      XT_BZERO                                                        ; $4DB8 execution token
        dw      $3FEA                                                           ; $4DBA execution token
        dw      XT_LITbyte                                                      ; $4DBC execution token
        db      $03                                                             ; $4DBE inline byte
        dw      $2BA8                                                           ; $4DBF execution token
        dw      XT_LIT                                                          ; $4DC1 execution token
        dw      $F2FE                                                           ; $4DC3 inline word
        dw      XT_DUP                                                          ; $4DC5 execution token
        dw      XT_1plusBbang                                                   ; $4DC7 execution token
        dw      XT_Bat                                                          ; $4DC9 execution token
        dw      XT_LITbyte                                                      ; $4DCB execution token
        db      $02                                                             ; $4DCD inline byte
        dw      XT_gt                                                           ; $4DCE execution token
        dw      XT_0BRANCH                                                      ; $4DD0 execution token
        dw      COMPLETE_FIGURE_B_DIST_LOOP_2_R                                 ; $4DD2 branch target
        dw      XT_LIT                                                          ; $4DD4 execution token
        dw      $F2FE                                                           ; $4DD6 inline word
        dw      XT_BZERO                                                        ; $4DD8 execution token
        dw      $2B8C                                                           ; $4DDA execution token
        dw      XT_RETURN                                                       ; $4DDC execution token

COMPLETE_FIGURE_B_DIST_THREAD:
        rst     $08                                                             ; $4DDE colon entry
        dw      COMPLETE_FIGURE_B_DIST_LOOP_1                                   ; $4DDF execution token
        dw      COMPLETE_FIGURE_B_DIST_LOOP_2                                   ; $4DE1 execution token
        dw      XT_RETURN                                                       ; $4DE3 execution token

        db      $0C,$0C,$07,$19,$00,$00,$55,$54,$40,$00,$00,$00,$01             ; $4DE5 preserved bytes
        db      $55,$54,$50,$00,$00,$00,$05,$FF,$D4,$54,$00,$00,$00,$17,$AA,$D4 ; $4DF2
        db      $55,$00,$00,$00,$5E,$AA,$D4,$5D,$40,$00,$01,$7A,$AA,$D4,$5F,$50 ; $4E02
        db      $00,$05,$EA,$AA,$D4,$5E,$D4,$00,$17,$AA,$AA,$D4,$5E,$B5,$00,$5E ; $4E12
        db      $AB,$FF,$D4,$5E,$AD,$40,$5E,$AB,$55,$54,$5E,$AD,$40,$5E,$AB,$55 ; $4E22
        db      $54,$5E,$AD,$40,$5E,$AB,$50,$00,$5E,$AD,$40,$5E,$AB,$51,$55,$5E ; $4E32
        db      $AD,$40,$5E,$AB,$51,$55,$5E,$AD,$40,$5E,$AB,$51,$7F,$FE,$AD,$40 ; $4E42
        db      $5E,$AB,$51,$7A,$AA,$AD,$40,$5E,$AB,$51,$7A,$AA,$AD,$40,$17,$AB ; $4E52
        db      $51,$7A,$AA,$B5,$00,$05,$EB,$51,$7A,$AA,$D4,$00,$01,$7B,$51,$7A ; $4E62
        db      $AB,$50,$00,$00,$5F,$51,$7A,$AD,$40,$00,$00,$17,$51,$7A,$B5,$00 ; $4E72
        db      $00,$00,$05,$51,$7F,$D4,$00,$00,$00,$01,$51,$55,$50,$00,$00,$00 ; $4E82
        db      $00,$51,$55,$40,$00,$00,$0E,$0C,$08,$19,$00,$00,$55,$54,$00,$10 ; $4E92
        db      $00,$00,$00,$01,$55,$54,$00,$14,$00,$00,$00,$05,$FF,$D4,$00,$15 ; $4EA2
        db      $00,$00,$00,$17,$AA,$D4,$00,$15,$40,$00,$00,$5E,$AA,$D4,$00,$17 ; $4EB2
        db      $50,$00,$01,$7A,$AA,$D4,$00,$17,$D4,$00,$05,$EA,$AA,$D4,$00,$17 ; $4EC2
        db      $B5,$00,$17,$AA,$AA,$D4,$00,$17,$AD,$40,$5E,$AB,$FF,$D4,$00,$17 ; $4ED2
        db      $AB,$50,$5E,$AB,$55,$54,$00,$17,$AB,$50,$5E,$AB,$55,$54,$00,$17 ; $4EE2
        db      $AB,$50,$5E,$AB,$50,$00,$00,$17,$AB,$50,$5E,$AB,$50,$00,$55,$57 ; $4EF2
        db      $AB,$50,$5E,$AB,$50,$00,$55,$57,$AB,$50,$5E,$AB,$50,$00,$5F,$FF ; $4F02
        db      $AB,$50,$5E,$AB,$50,$00,$5E,$AA,$AB,$50,$5E,$AB,$50,$00,$5E,$AA ; $4F12
        db      $AB,$50,$17,$AB,$50,$00,$5E,$AA,$AD,$40,$05,$EB,$50,$00,$5E,$AA ; $4F22
        db      $B5,$00,$01,$7B,$50,$00,$5E,$AA,$D4,$00,$00,$5F,$50,$00,$5E,$AB ; $4F32
        db      $50,$00,$00,$17,$50,$00,$5E,$AD,$40,$00,$00,$05,$50,$00,$5F,$F5 ; $4F42
        db      $00,$00,$00,$01,$50,$00,$55,$54,$00,$00,$00,$00,$50,$00,$55,$50 ; $4F52
        db      $00,$00,$0C,$0C,$07,$19,$00,$00,$55,$55,$40,$00,$00,$00,$01,$55 ; $4F62
        db      $55,$50,$00,$00,$00,$05,$FF,$FF,$D4,$00,$00,$00,$17,$AA,$AA,$B5 ; $4F72
        db      $00,$00,$00,$5E,$AA,$AA,$AD,$40,$00,$01,$7A,$AA,$AA,$AB,$50,$00 ; $4F82
        db      $05,$EA,$AA,$AA,$AA,$D4,$00,$17,$FF,$FF,$FF,$EA,$B5,$00,$55,$55 ; $4F92
        db      $55,$55,$EA,$AD,$40,$55,$55,$55,$55,$EA,$AD,$40,$00,$00,$00,$05 ; $4FA2
        db      $EA,$AD,$40,$55,$55,$55,$45,$EA,$AD,$40,$55,$55,$55,$45,$FF,$FD ; $4FB2
        db      $40,$5F,$FF,$FD,$45,$55,$55,$40,$5E,$AA,$AD,$45,$55,$55,$40,$5E ; $4FC2
        db      $AA,$AD,$40,$00,$00,$00,$5E,$AA,$AD,$55,$55,$55,$40,$17,$AA,$AD ; $4FD2
        db      $55,$55,$55,$00,$05,$EA,$AF,$FF,$FF,$D4,$00,$01,$7A,$AA,$AA,$AB ; $4FE2
        db      $50,$00,$00,$5E,$AA,$AA,$AD,$40,$00,$00,$17,$AA,$AA,$B5,$00,$00 ; $4FF2
        db      $00,$05,$FF,$FF,$D4,$00,$00,$00,$01,$55,$55,$50,$00,$00,$00,$00 ; $5002
        db      $55,$55,$40,$00,$00,$0C,$0C,$07,$19,$00,$00,$55,$54,$40,$00,$00 ; $5012
        db      $00,$01,$55,$54,$50,$00,$00,$00,$05,$FF,$D4,$54,$00,$00,$00,$17 ; $5022
        db      $AA,$D4,$55,$00,$00,$00,$5E,$AA,$D4,$5D,$40,$00,$01,$7A,$AA,$D4 ; $5032
        db      $5F,$50,$00,$05,$EA,$AA,$D4,$5E,$D4,$00,$17,$AA,$AA,$D4,$5E,$B5 ; $5042
        db      $00,$5E,$AA,$AA,$D4,$5E,$AD,$40,$5E,$AB,$FF,$D4,$5E,$AD,$40,$5E ; $5052
        db      $AB,$55,$54,$5E,$AD,$40,$5E,$AB,$55,$54,$5E,$AD,$40,$5E,$AB,$50 ; $5062
        db      $00,$5E,$AD,$40,$5E,$AB,$51,$55,$5E,$AD,$40,$5E,$AB,$51,$55,$5E ; $5072
        db      $AD,$40,$5E,$AB,$51,$7F,$FE,$AD,$40,$5E,$AB,$51,$7A,$AA,$AD,$40 ; $5082
        db      $17,$AB,$51,$7A,$AA,$B5,$00,$05,$EB,$51,$7A,$AA,$D4,$00,$01,$7B ; $5092
        db      $51,$7A,$AB,$50,$00,$00,$5F,$51,$7A,$AD,$40,$00,$00,$17,$51,$7A ; $50A2
        db      $B5,$00,$00,$00,$05,$51,$7F,$D4,$00,$00,$00,$01,$51,$55,$50,$00 ; $50B2
        db      $00,$00,$00,$51,$55,$40,$00,$00,$0E,$0C,$08,$19,$00,$00,$55,$54 ; $50C2
        db      $00,$10,$00,$00,$00,$01,$55,$54,$00,$14,$00,$00,$00,$05,$FF,$D4 ; $50D2
        db      $00,$15,$00,$00,$00,$17,$AA,$D4,$00,$15,$40,$00,$00,$5E,$AA,$D4 ; $50E2
        db      $00,$17,$50,$00,$01,$7A,$AA,$D4,$00,$17,$D4,$00,$05,$EA,$AA,$D4 ; $50F2
        db      $00,$17,$B5,$00,$17,$AA,$AA,$D4,$00,$17,$AD,$40,$5E,$AA,$AA,$D4 ; $5102
        db      $00,$17,$AB,$50,$5E,$AB,$FF,$D4,$00,$17,$AB,$50,$5E,$AB,$55,$54 ; $5112
        db      $00,$17,$AB,$50,$5E,$AB,$55,$54,$00,$17,$AB,$50,$5E,$AB,$50,$00 ; $5122
        db      $00,$17,$AB,$50,$5E,$AB,$50,$00,$55,$57,$AB,$50,$5E,$AB,$50,$00 ; $5132
        db      $55,$57,$AB,$50,$5E,$AB,$50,$00,$5F,$FF,$AB,$50,$5E,$AB,$50,$00 ; $5142
        db      $5E,$AA,$AB,$50,$17,$AB,$50,$00,$5E,$AA,$AD,$40,$05,$EB,$50,$00 ; $5152
        db      $5E,$AA,$B5,$00,$01,$7B,$50,$00,$5E,$AA,$D4,$00,$00,$5F,$50,$00 ; $5162
        db      $5E,$AB,$50,$00,$00,$17,$50,$00,$5E,$AD,$40,$00,$00,$05,$50,$00 ; $5172
        db      $5F,$F5,$00,$00,$00,$01,$50,$00,$55,$54,$00,$00,$00,$00,$50,$00 ; $5182
        db      $55,$50,$00,$00,$0C,$0C,$07,$19,$00,$00,$55,$54,$40,$00,$00,$00 ; $5192
        db      $01,$55,$54,$50,$00,$00,$00,$05,$FF,$D4,$54,$00,$00,$00,$17,$AA ; $51A2
        db      $D4,$55,$00,$00,$00,$5E,$AA,$D4,$5D,$40,$00,$01,$7A,$AA,$D4,$5F ; $51B2
        db      $50,$00,$05,$EA,$AA,$D4,$5E,$D4,$00,$17,$AA,$AA,$D4,$5E,$B5,$00 ; $51C2
        db      $5E,$AA,$AA,$D4,$5E,$AD,$40,$5E,$AA,$AA,$D4,$5E,$AD,$40,$5E,$AA ; $51D2
        db      $AA,$D4,$5E,$AD,$40,$5E,$AB,$FF,$D4,$5E,$AD,$40,$5E,$AB,$55,$54 ; $51E2
        db      $5E,$AD,$40,$5E,$AB,$55,$54,$5E,$AD,$40,$5E,$AB,$50,$00,$5E,$AD ; $51F2
        db      $40,$5E,$AB,$51,$55,$5E,$AD,$40,$5E,$AB,$51,$55,$5E,$AD,$40,$17 ; $5202
        db      $AB,$51,$7F,$FE,$B5,$00,$05,$EB,$51,$7A,$AA,$D4,$00,$01,$7B,$51 ; $5212
        db      $7A,$AB,$50,$00,$00,$5F,$51,$7A,$AD,$40,$00,$00,$17,$51,$7A,$B5 ; $5222
        db      $00,$00,$00,$05,$51,$7F,$D4,$00,$00,$00,$01,$51,$55,$50,$00,$00 ; $5232
        db      $00,$00,$51,$55,$40,$00,$00,$0E,$0C,$08,$19,$00,$00,$55,$54,$00 ; $5242
        db      $10,$00,$00,$00,$01,$55,$54,$00,$14,$00,$00,$00,$05,$FF,$D4,$00 ; $5252
        db      $15,$00,$00,$00,$17,$AA,$D4,$00,$15,$40,$00,$00,$5E,$AA,$D4,$00 ; $5262
        db      $17,$50,$00,$01,$7A,$AA,$D4,$00,$17,$D4,$00,$05,$EA,$AA,$D4,$00 ; $5272
        db      $17,$B5,$00,$17,$AA,$AA,$D4,$00,$17,$AD,$40,$5E,$AA,$AA,$D4,$00 ; $5282
        db      $17,$AB,$50,$5E,$AA,$AA,$D4,$00,$17,$AB,$50,$5E,$AA,$AA,$D4,$00 ; $5292
        db      $17,$AB,$50,$5E,$AB,$FF,$D4,$00,$17,$AB,$50,$5E,$AB,$55,$54,$00 ; $52A2
        db      $17,$AB,$50,$5E,$AB,$55,$54,$00,$17,$AB,$50,$5E,$AB,$50,$00,$00 ; $52B2
        db      $17,$AB,$50,$5E,$AB,$50,$00,$55,$57,$AB,$50,$5E,$AB,$50,$00,$55 ; $52C2
        db      $57,$AB,$50,$17,$AB,$50,$00,$5F,$FF,$AD,$40,$05,$EB,$50,$00,$5E ; $52D2
        db      $AA,$B5,$00,$01,$7B,$50,$00,$5E,$AA,$D4,$00,$00,$5F,$50,$00,$5E ; $52E2
        db      $AB,$50,$00,$00,$17,$50,$00,$5E,$AD,$40,$00,$00,$05,$50,$00,$5F ; $52F2
        db      $F5,$00,$00,$00,$01,$50,$00,$55,$54,$00,$00,$00,$00,$50,$00,$55 ; $5302
        db      $50,$00,$00,$09,$0A,$04,$19,$00,$00,$55,$54,$00,$01,$55,$54,$00 ; $5312
        db      $05,$FF,$D4,$00,$17,$AA,$D4,$00,$5E,$AA,$D4,$01,$7A,$AA,$D4,$05 ; $5322
        db      $EA,$AA,$D4,$17,$AA,$AA,$D4,$5E,$AB,$FF,$D4,$5E,$AB,$55,$54,$5E ; $5332
        db      $AB,$55,$54,$5E,$AB,$50,$00,$5E,$AB,$50,$00,$5E,$AB,$50,$00,$5E ; $5342
        db      $AB,$50,$00,$5E,$AB,$50,$00,$5E,$AB,$50,$00,$17,$AB,$50,$00,$05 ; $5352
        db      $EB,$50,$00,$01,$7B,$50,$00,$00,$5F,$50,$00,$00,$17,$50,$00,$00 ; $5362
        db      $05,$50,$00,$00,$01,$50,$00,$00,$00,$50,$00,$0A,$05,$07,$0F,$55 ; $5372
        db      $55,$54,$00,$00,$00,$00,$55,$55,$54,$00,$00,$00,$00,$5F,$FF,$D4 ; $5382
        db      $00,$00,$00,$00,$5E,$AA,$D4,$00,$00,$00,$00,$5E,$AA,$D4,$00,$00 ; $5392
        db      $00,$00,$5E,$AA,$D5,$55,$55,$55,$40,$5E,$AA,$D5,$55,$55,$55,$40 ; $53A2
        db      $17,$AA,$FF,$FF,$FF,$F5,$00,$05,$EA,$AA,$AA,$AA,$D4,$00,$01,$7A ; $53B2
        db      $AA,$AA,$AB,$50,$00,$00,$5E,$AA,$AA,$AD,$40,$00,$00,$17,$AA,$AA ; $53C2
        db      $B5,$00,$00,$00,$05,$FF,$FF,$D4,$00,$00,$00,$01,$55,$55,$50,$00 ; $53D2
        db      $00,$00,$00,$55,$55,$40,$00,$00,$05,$0C,$04,$19,$00,$10,$00,$00 ; $53E2
        db      $00,$14,$00,$00,$00,$15,$00,$00,$00,$15,$40,$00,$00,$17,$50,$00 ; $53F2
        db      $00,$17,$D4,$00,$00,$17,$B5,$00,$00,$17,$AD,$40,$00,$17,$AB,$50 ; $5402
        db      $00,$17,$AB,$50,$00,$17,$AB,$50,$00,$17,$AB,$50,$55,$57,$AB,$50 ; $5412
        db      $55,$57,$AB,$50,$5F,$FF,$AB,$50,$5E,$AA,$AB,$50,$5E,$AA,$AB,$50 ; $5422
        db      $5E,$AA,$AD,$40,$5E,$AA,$B5,$00,$5E,$AA,$D4,$00,$5E,$AB,$50,$00 ; $5432
        db      $5E,$AD,$40,$00,$5F,$F5,$00,$00,$55,$54,$00,$00,$55,$50,$00,$00 ; $5442
        db      $0B,$05,$07,$0E,$01,$55,$55,$55,$00,$00,$00,$01,$55,$55,$55,$00 ; $5452
        db      $00,$00,$01,$7F,$FF,$F5,$00,$00,$00,$01,$7A,$AA,$B5,$00,$00,$00 ; $5462
        db      $01,$7A,$AA,$B5,$00,$00,$00,$01,$7A,$AA,$B5,$55,$55,$55,$00,$5E ; $5472
        db      $AA,$B5,$55,$55,$54,$00,$17,$AA,$BF,$FF,$FF,$50,$00,$05,$EA,$AA ; $5482
        db      $AA,$AD,$40,$00,$01,$7A,$AA,$AA,$B5,$00,$00,$00,$5E,$AA,$AA,$D4 ; $5492
        db      $00,$00,$00,$17,$FF,$FF,$50,$00,$00,$00,$05,$55,$55,$40,$00,$00 ; $54A2
        db      $00,$01,$55,$55,$00,$00,$08,$0B,$04,$19,$00,$00,$55,$50,$00,$01 ; $54B2
        db      $55,$50,$00,$05,$FF,$50,$00,$17,$AB,$50,$00,$5E,$AB,$50,$01,$7A ; $54C2
        db      $AB,$50,$05,$EA,$AB,$50,$17,$AA,$AB,$50,$5E,$AA,$AB,$50,$5E,$AA ; $54D2
        db      $AB,$50,$5E,$AF,$FF,$50,$5E,$AD,$55,$50,$5E,$AD,$55,$50,$5E,$AD ; $54E2
        db      $40,$00,$5E,$AD,$40,$00,$5E,$AD,$40,$00,$5E,$AD,$40,$00,$17,$AD ; $54F2
        db      $40,$00,$05,$ED,$40,$00,$01,$7D,$40,$00,$00,$5D,$40,$00,$00,$15 ; $5502
        db      $40,$00,$00,$05,$40,$00,$00,$01,$40,$00,$00,$00,$40,$00,$0C,$08 ; $5512
        db      $07,$0E,$00,$00,$55,$55,$40,$00,$00,$00,$01,$55,$55,$50,$00,$00 ; $5522
        db      $00,$05,$FF,$FF,$D4,$00,$00,$00,$17,$AA,$AA,$B5,$00,$00,$00,$5E ; $5532
        db      $AA,$AA,$AD,$40,$00,$01,$7A,$AA,$AA,$AB,$50,$00,$05,$FF,$FF,$FE ; $5542
        db      $AA,$D4,$00,$15,$55,$55,$5E,$AA,$B5,$00,$55,$55,$55,$5E,$AA,$AD ; $5552
        db      $40,$00,$00,$00,$5E,$AA,$AD,$40,$00,$00,$00,$5E,$AA,$AD,$40,$00 ; $5562
        db      $00,$00,$5F,$FF,$FD,$40,$00,$00,$00,$55,$55,$55,$40,$00,$00,$00 ; $5572
        db      $55,$55,$55,$40,$04,$00,$89,$00,$03,$EA,$53,$00,$03,$52,$54,$C0 ; $5582
        db      $03,$EA,$53,$C0,$03,$52,$54,$00,$00,$89,$55,$02,$00,$81,$03,$E5 ; $5592
        db      $4D,$05,$98,$4E,$00,$A0,$55,$02,$00,$81,$03,$17,$50,$05,$CA,$50 ; $55A2
        db      $00,$AC,$55,$02,$00,$81,$03,$96,$51,$05,$49,$52,$00,$B8,$55,$0C ; $55B2
        db      $0C,$07,$19,$00,$03,$FF,$FC,$F0,$00,$00,$00,$0E,$AA,$B3,$AC,$00 ; $55C2
        db      $00,$00,$3A,$AA,$CE,$AB,$00,$00,$00,$EA,$AB,$3A,$AA,$C0,$00,$03 ; $55D2
        db      $AA,$AC,$EA,$AA,$B0,$00,$0E,$AA,$B3,$AA,$55,$AC,$00,$3A,$AA,$CE ; $55E2
        db      $A9,$7D,$6B,$00,$EA,$AB,$3A,$A9,$FF,$6A,$C0,$EA,$AC,$EA,$A9,$FF ; $55F2
        db      $6A,$C0,$EA,$B3,$AA,$A9,$7D,$6A,$C0,$EA,$B3,$AA,$AA,$55,$AA,$C0 ; $5602
        db      $EA,$B3,$AA,$AA,$AA,$AA,$C0,$EA,$B3,$FF,$FF,$FF,$FF,$C0,$EA,$B0 ; $5612
        db      $00,$00,$00,$00,$00,$EA,$B3,$FF,$FF,$FF,$FF,$C0,$EA,$B3,$AA,$AA ; $5622
        db      $AA,$AA,$C0,$EA,$B3,$A9,$56,$AA,$AA,$C0,$EA,$B3,$A5,$F5,$AA,$AA ; $5632
        db      $C0,$3A,$B3,$A7,$FD,$AA,$AB,$00,$0E,$B3,$A7,$FD,$AA,$AC,$00,$03 ; $5642
        db      $B3,$A5,$F5,$AA,$B0,$00,$00,$F3,$A9,$56,$AA,$C0,$00,$00,$33,$AA ; $5652
        db      $AA,$AB,$00,$00,$00,$03,$AA,$AA,$AC,$00,$00,$00,$03,$FF,$FF,$F0 ; $5662
        db      $00,$00,$0C,$0C,$07,$19,$00,$03,$FF,$FF,$F0,$00,$00,$00,$0E,$AA ; $5672
        db      $AA,$AC,$00,$00,$00,$3A,$AA,$AA,$AB,$00,$00,$00,$EA,$AA,$AA,$AA ; $5682
        db      $C0,$00,$03,$AA,$AA,$AA,$AA,$B0,$00,$0F,$FF,$FF,$FF,$AA,$AC,$00 ; $5692
        db      $00,$00,$00,$00,$EA,$AB,$00,$FF,$FF,$FC,$FF,$3A,$AA,$C0,$EA,$AA ; $56A2
        db      $AC,$EA,$CE,$AA,$C0,$EA,$AA,$AC,$EA,$B3,$AA,$C0,$EA,$55,$AC,$EA ; $56B2
        db      $AC,$EA,$C0,$E9,$7D,$6C,$EA,$AB,$3A,$C0,$E9,$FF,$6C,$EA,$AA,$CE ; $56C2
        db      $C0,$E9,$FF,$6C,$EA,$AA,$B3,$C0,$E9,$7D,$6C,$EA,$AA,$AC,$C0,$EA ; $56D2
        db      $55,$AC,$E9,$56,$AB,$00,$EA,$AA,$AC,$E5,$F5,$AA,$C0,$EA,$AA,$AC ; $56E2
        db      $E7,$FD,$AA,$C0,$3A,$AA,$AC,$E7,$FD,$AB,$00,$0E,$AA,$AC,$E5,$F5 ; $56F2
        db      $AC,$00,$03,$AA,$AC,$E9,$56,$B0,$00,$00,$EA,$AC,$EA,$AA,$C0,$00 ; $5702
        db      $00,$3A,$AC,$EA,$AB,$00,$00,$00,$0E,$AC,$EA,$AC,$00,$00,$00,$03 ; $5712
        db      $FC,$FF,$F0,$00,$00,$0C,$0C,$07,$19,$00,$03,$FF,$FF,$F0,$00,$00 ; $5722
        db      $00,$0E,$AA,$AA,$AC,$00,$00,$00,$3A,$AA,$95,$6B,$00,$00,$00,$3A ; $5732
        db      $AA,$5F,$5A,$C0,$00,$03,$CE,$AA,$7F,$DA,$B0,$00,$0E,$B3,$AA,$7F ; $5742
        db      $DA,$AC,$00,$3A,$AC,$EA,$5F,$5A,$AB,$00,$EA,$AB,$3A,$95,$6A,$AA ; $5752
        db      $C0,$EA,$AA,$CE,$AA,$AA,$AA,$C0,$EA,$AA,$B3,$AA,$AA,$AA,$C0,$EA ; $5762
        db      $AA,$AC,$EA,$AA,$AA,$C0,$EA,$AA,$AB,$3A,$AA,$AA,$C0,$EA,$BF,$FF ; $5772
        db      $CF,$FF,$FF,$C0,$EA,$B0,$00,$00,$00,$00,$00,$EA,$B3,$FF,$FF,$FF ; $5782
        db      $FF,$C0,$EA,$B3,$AA,$AA,$AA,$AA,$C0,$EA,$B3,$A9,$56,$AA,$AA,$C0 ; $5792
        db      $EA,$B3,$A5,$F5,$AA,$AA,$C0,$3A,$B3,$A7,$FD,$AA,$AB,$00,$0E,$B3 ; $57A2
        db      $A7,$FD,$AA,$AC,$00,$03,$B3,$A5,$F5,$AA,$B0,$00,$00,$F3,$A9,$56 ; $57B2
        db      $AA,$C0,$00,$00,$33,$AA,$AA,$AB,$00,$00,$00,$03,$AA,$AA,$AC,$00 ; $57C2
        db      $00,$00,$03,$FF,$FF,$F0,$00,$00,$0C,$0C,$07,$19,$00,$03,$FF,$FF ; $57D2
        db      $F0,$00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$3A,$AA,$AA,$AB,$00 ; $57E2
        db      $00,$00,$EA,$AA,$AA,$AA,$C0,$00,$03,$AA,$AA,$AA,$AA,$C0,$00,$0F ; $57F2
        db      $FF,$FF,$EA,$AB,$3C,$00,$00,$00,$00,$EA,$AC,$EB,$00,$FF,$FF,$FC ; $5802
        db      $EA,$B3,$AA,$C0,$EA,$AA,$AC,$EA,$CE,$AA,$C0,$EA,$AA,$AC,$EB,$3A ; $5812
        db      $AA,$C0,$EA,$55,$AC,$EC,$EA,$AA,$C0,$E9,$7D,$6C,$F3,$AA,$AA,$C0 ; $5822
        db      $E9,$FF,$6C,$CE,$A5,$5A,$C0,$E9,$FF,$6C,$3A,$97,$D6,$C0,$E9,$7D ; $5832
        db      $6C,$EA,$9F,$F6,$C0,$EA,$55,$AC,$EA,$9F,$F6,$C0,$EA,$AA,$AC,$EA ; $5842
        db      $97,$D6,$C0,$EA,$AA,$AC,$EA,$A5,$5A,$C0,$3A,$AA,$AC,$EA,$AA,$AB ; $5852
        db      $00,$0E,$AA,$AC,$EA,$AA,$AC,$00,$03,$AA,$AC,$EA,$AA,$B0,$00,$00 ; $5862
        db      $EA,$AC,$EA,$AA,$C0,$00,$00,$3A,$AC,$EA,$AB,$00,$00,$00,$0E,$AC ; $5872
        db      $EA,$AC,$00,$00,$00,$03,$FC,$FF,$F0,$00,$00,$0C,$0C,$07,$19,$00 ; $5882
        db      $03,$FF,$FF,$F0,$00,$00,$00,$0E,$AA,$AA,$B0,$00,$00,$00,$3A,$55 ; $5892
        db      $AA,$B3,$00,$00,$00,$E9,$7D,$6A,$B3,$C0,$00,$03,$A9,$FF,$6A,$B3 ; $58A2
        db      $B0,$00,$0E,$A9,$FF,$6A,$B3,$AC,$00,$3A,$A9,$7D,$6A,$B3,$AB,$00 ; $58B2
        db      $EA,$AA,$55,$AA,$B3,$AA,$C0,$EA,$AA,$AA,$AA,$B3,$AA,$C0,$FF,$FF ; $58C2
        db      $FF,$FF,$F3,$AA,$C0,$00,$00,$00,$00,$03,$AA,$C0,$FF,$FF,$FF,$FF ; $58D2
        db      $F3,$AA,$C0,$EA,$AA,$AA,$AA,$B3,$AA,$C0,$EA,$A9,$56,$AA,$B3,$AA ; $58E2
        db      $C0,$EA,$A5,$F5,$AA,$B3,$AA,$C0,$EA,$A7,$FD,$AA,$CE,$AA,$C0,$EA ; $58F2
        db      $A7,$FD,$AB,$3A,$AA,$C0,$EA,$A5,$F5,$AC,$EA,$AA,$C0,$3A,$A9,$56 ; $5902
        db      $B3,$AA,$AB,$00,$0E,$AA,$AA,$CE,$AA,$AC,$00,$03,$AA,$AB,$3A,$AA ; $5912
        db      $B0,$00,$00,$EA,$AC,$EA,$AA,$C0,$00,$00,$3A,$B3,$AA,$AB,$00,$00 ; $5922
        db      $00,$0E,$CE,$AA,$AC,$00,$00,$00,$03,$3F,$FF,$F0,$00,$00,$0C,$0C ; $5932
        db      $07,$19,$00,$03,$FF,$F3,$F0,$00,$00,$00,$0E,$AA,$B3,$AC,$00,$00 ; $5942
        db      $00,$3A,$AA,$B3,$AB,$00,$00,$00,$EA,$AA,$B3,$AA,$C0,$00,$03,$AA ; $5952
        db      $AA,$B3,$AA,$B0,$00,$0E,$AA,$AA,$B3,$AA,$AC,$00,$3A,$A9,$56,$B3 ; $5962
        db      $AA,$AB,$00,$EA,$A5,$F5,$B3,$A5,$5A,$C0,$3A,$A7,$FD,$B3,$97,$D6 ; $5972
        db      $C0,$CE,$A7,$FD,$B3,$9F,$F6,$C0,$F3,$A5,$F5,$B3,$9F,$F6,$C0,$EC ; $5982
        db      $E9,$56,$B3,$97,$D6,$C0,$EB,$3A,$AA,$B3,$A5,$5A,$C0,$EA,$CE,$AA ; $5992
        db      $B3,$AA,$AA,$C0,$EA,$B3,$AA,$B3,$AA,$AA,$C0,$EA,$AC,$EA,$B3,$AA ; $59A2
        db      $AA,$C0,$EA,$AB,$3A,$B3,$AA,$AA,$C0,$EA,$AA,$CF,$F3,$FF,$FF,$C0 ; $59B2
        db      $3A,$AA,$B0,$00,$00,$00,$00,$0E,$AA,$AF,$FF,$FF,$FC,$00,$03,$AA ; $59C2
        db      $AA,$AA,$AA,$B0,$00,$00,$EA,$AA,$AA,$AA,$C0,$00,$00,$3A,$AA,$AA ; $59D2
        db      $AB,$00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$03,$FF,$FF,$F0,$00 ; $59E2
        db      $00,$05,$09,$04,$17,$00,$03,$FF,$FC,$00,$0E,$AA,$B0,$00,$3A,$AA ; $59F2
        db      $C0,$00,$EA,$AB,$00,$03,$AA,$AC,$00,$0E,$AA,$B0,$00,$3A,$AA,$C0 ; $5A02
        db      $00,$EA,$AB,$00,$00,$EA,$AC,$00,$00,$EA,$B0,$00,$00,$EA,$B0,$00 ; $5A12
        db      $00,$EA,$B0,$00,$00,$EA,$B0,$00,$00,$EA,$B0,$00,$00,$EA,$B0,$00 ; $5A22
        db      $00,$EA,$B0,$00,$00,$EA,$B0,$00,$00,$EA,$B0,$00,$00,$3A,$B0,$00 ; $5A32
        db      $00,$0E,$B0,$00,$00,$03,$B0,$00,$00,$00,$F0,$00,$00,$00,$30,$00 ; $5A42
        db      $00,$09,$09,$06,$0F,$C0,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00 ; $5A52
        db      $00,$EC,$00,$00,$00,$00,$00,$EB,$00,$00,$00,$00,$00,$EA,$C0,$00 ; $5A62
        db      $00,$00,$00,$EA,$B0,$00,$00,$00,$00,$EA,$AC,$00,$00,$00,$00,$EA ; $5A72
        db      $AB,$00,$00,$00,$00,$3A,$AA,$C0,$00,$00,$00,$0E,$AA,$BF,$FF,$FF ; $5A82
        db      $FC,$03,$AA,$AA,$AA,$AA,$B0,$00,$EA,$AA,$AA,$AA,$C0,$00,$3A,$AA ; $5A92
        db      $AA,$AB,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$03,$FF,$FF,$F0,$00,$00 ; $5AA2
        db      $0C,$05,$0D,$00,$00,$3C,$00,$00,$00,$00,$EB,$00,$00,$00,$03,$AA ; $5AB2
        db      $C0,$00,$00,$0E,$AA,$B0,$00,$00,$3A,$AA,$AC,$00,$00,$EA,$95,$6B ; $5AC2
        db      $00,$03,$AA,$5F,$5A,$C0,$0E,$AA,$7F,$DA,$B0,$3A,$AA,$7F,$DA,$B0 ; $5AD2
        db      $EA,$AA,$5F,$5A,$B0,$EA,$AA,$95,$6A,$B0,$EA,$AA,$AA,$AA,$B0,$FF ; $5AE2
        db      $FF,$FF,$FF,$F0,$00,$00,$05,$0B,$FF,$FF,$FF,$FF,$F0,$EA,$AA,$AA ; $5AF2
        db      $AA,$B0,$EA,$55,$AA,$AA,$B0,$E9,$7D,$6A,$AA,$B0,$E9,$FF,$6A,$AA ; $5B02
        db      $C0,$E9,$FF,$6A,$AB,$00,$E9,$7D,$6A,$AC,$00,$EA,$55,$AA,$B0,$00 ; $5B12
        db      $EA,$AA,$AA,$C0,$00,$EA,$AA,$AB,$00,$00,$FF,$FF,$FC,$00,$00,$11 ; $5B22
        db      $0C,$09,$19,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF ; $5B32
        db      $FF,$FF,$FF,$FF,$F8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA ; $5B42
        db      $AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8 ; $5B52
        db      $BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BF,$FF,$FF,$FF,$FA,$AA,$AA ; $5B62
        db      $AA,$B8,$AA,$AA,$AA,$AA,$BA,$55,$AA,$AA,$B8,$00,$00,$00,$00,$B9 ; $5B72
        db      $7D,$6A,$AA,$B8,$AA,$AA,$AA,$A8,$B9,$FF,$6A,$AA,$B8,$BF,$FF,$FF ; $5B82
        db      $F8,$B9,$FF,$6A,$AA,$B8,$BA,$AA,$AA,$B8,$B9,$7D,$6A,$AA,$B8,$BA ; $5B92
        db      $A9,$56,$B8,$BA,$55,$AA,$AA,$B8,$BA,$A5,$F5,$B8,$BA,$AA,$AA,$AA ; $5BA2
        db      $B8,$BA,$A7,$FD,$B8,$BF,$FF,$FF,$FF,$F8,$BA,$A7,$FD,$B8,$AA,$AA ; $5BB2
        db      $AA,$AA,$A8,$BA,$A5,$F5,$B8,$00,$00,$00,$00,$00,$BA,$A9,$56,$BA ; $5BC2
        db      $AA,$AA,$AA,$AA,$A8,$BA,$AA,$AA,$BF,$FF,$FF,$FF,$FF,$F8,$BA,$AA ; $5BD2
        db      $AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8 ; $5BE2
        db      $BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA ; $5BF2
        db      $AA,$B8,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$AA,$AA ; $5C02
        db      $AA,$AA,$AA,$A8,$0C,$11,$07,$23,$AA,$AA,$AA,$AA,$2A,$AA,$80,$BF ; $5C12
        db      $FF,$FF,$FE,$2F,$FF,$80,$BA,$AA,$AA,$AE,$2E,$AB,$80,$BA,$AA,$AA ; $5C22
        db      $AE,$2E,$AB,$80,$BA,$AA,$AA,$AE,$2E,$AB,$80,$BA,$AA,$AA,$AE,$2E ; $5C32
        db      $AB,$80,$BA,$AA,$55,$AE,$2E,$AB,$80,$BA,$A9,$7D,$6E,$2E,$AB,$80 ; $5C42
        db      $BA,$A9,$FF,$6E,$2E,$AB,$80,$BA,$A9,$FF,$6E,$2E,$AB,$80,$BA,$A9 ; $5C52
        db      $7D,$6E,$2E,$AB,$80,$BA,$AA,$55,$AE,$2E,$AB,$80,$BA,$AA,$AA,$AE ; $5C62
        db      $2E,$AB,$80,$BA,$AF,$FF,$FE,$2E,$AB,$80,$BA,$AE,$AA,$AA,$2E,$AB ; $5C72
        db      $80,$BA,$AE,$00,$00,$2E,$AB,$80,$BA,$AE,$2A,$AA,$AE,$AB,$80,$BA ; $5C82
        db      $AE,$2F,$FF,$FE,$AB,$80,$BA,$AE,$2E,$AA,$AA,$AB,$80,$BA,$AE,$2E ; $5C92
        db      $95,$6A,$AB,$80,$BA,$AE,$2E,$5F,$5A,$AB,$80,$BA,$AE,$2E,$7F,$DA ; $5CA2
        db      $AB,$80,$BA,$AE,$2E,$7F,$DA,$AB,$80,$BA,$AE,$2E,$5F,$5A,$AB,$80 ; $5CB2
        db      $BA,$AE,$2E,$95,$6A,$AB,$80,$BA,$AE,$2E,$AA,$AA,$AB,$80,$BA,$AE ; $5CC2
        db      $2E,$AA,$AA,$AB,$80,$BA,$AE,$2E,$AA,$AA,$AB,$80,$BA,$AE,$2E,$AA ; $5CD2
        db      $AA,$AB,$80,$BA,$AE,$2E,$AA,$AA,$AB,$80,$11,$0C,$09,$19,$AA,$AA ; $5CE2
        db      $AA,$AA,$AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8 ; $5CF2
        db      $BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA ; $5D02
        db      $AA,$B8,$BF,$FF,$FF,$FE,$AA,$AA,$AA,$AA,$B8,$AA,$AA,$AA,$AE,$AA ; $5D12
        db      $AA,$AA,$AA,$B8,$00,$00,$00,$2E,$AA,$AA,$AA,$AA,$B8,$AA,$AA,$AA ; $5D22
        db      $2E,$AA,$AA,$AA,$AA,$B8,$BF,$FF,$FE,$2E,$95,$6A,$AA,$AA,$B8,$BA ; $5D32
        db      $AA,$AE,$2E,$5F,$5A,$AA,$AA,$B8,$BA,$55,$AE,$2E,$7F,$DA,$AA,$AA ; $5D42
        db      $B8,$B9,$7D,$6E,$2E,$7F,$DA,$AA,$AA,$B8,$B9,$FF,$6E,$2E,$5F,$5A ; $5D52
        db      $AA,$AA,$B8,$B9,$FF,$6E,$2E,$95,$6A,$AA,$AA,$B8,$B9,$7D,$6E,$2E ; $5D62
        db      $AA,$AA,$AA,$AA,$B8,$BA,$55,$AE,$2F,$FF,$FF,$FF,$FF,$F8,$BA,$AA ; $5D72
        db      $AE,$2A,$AA,$AA,$AA,$AA,$A8,$BA,$AA,$AE,$00,$00,$00,$00,$00,$00 ; $5D82
        db      $BA,$AA,$AE,$AA,$AA,$AA,$AA,$AA,$A8,$BA,$AA,$AF,$FF,$FF,$FF,$FF ; $5D92
        db      $FF,$F8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA ; $5DA2
        db      $AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BF,$FF,$FF ; $5DB2
        db      $FF,$FF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8,$0C ; $5DC2
        db      $11,$07,$23,$AA,$AA,$AA,$AA,$A2,$AA,$80,$BF,$FF,$FF,$FF,$E2,$FF ; $5DD2
        db      $80,$BA,$AA,$AA,$AA,$E2,$EB,$80,$BA,$AA,$A5,$5A,$E2,$EB,$80,$BA ; $5DE2
        db      $AA,$97,$D6,$E2,$EB,$80,$BA,$AA,$9F,$F6,$E2,$EB,$80,$BA,$AA,$9F ; $5DF2
        db      $F6,$E2,$EB,$80,$BA,$AA,$97,$D6,$E2,$EB,$80,$BA,$AA,$A5,$5A,$E2 ; $5E02
        db      $EB,$80,$BA,$AA,$AA,$AA,$E2,$EB,$80,$BA,$BF,$FF,$FF,$E2,$EB,$80 ; $5E12
        db      $BA,$BA,$AA,$AA,$A2,$EB,$80,$BA,$B8,$00,$00,$02,$EB,$80,$BA,$B8 ; $5E22
        db      $AA,$AA,$AA,$EB,$80,$BA,$B8,$BF,$FF,$FF,$EB,$80,$BA,$B8,$BA,$AA ; $5E32
        db      $AA,$AB,$80,$BA,$B8,$BA,$55,$AA,$AB,$80,$BA,$B8,$B9,$7D,$6A,$AB ; $5E42
        db      $80,$BA,$B8,$B9,$FF,$6A,$AB,$80,$BA,$B8,$B9,$FF,$6A,$AB,$80,$BA ; $5E52
        db      $B8,$B9,$7D,$6A,$AB,$80,$BA,$B8,$BA,$55,$AA,$AB,$80,$BA,$B8,$BA ; $5E62
        db      $AA,$AA,$AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80,$BA,$B8,$BA,$AA,$AA ; $5E72
        db      $AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80 ; $5E82
        db      $BA,$B8,$BA,$AA,$AA,$AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80,$BA,$B8 ; $5E92
        db      $BA,$AA,$AA,$AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80,$BA,$B8,$BA,$AA ; $5EA2
        db      $AA,$AB,$80,$BA,$B8,$BA,$AA,$AA,$AB,$80,$BF,$F8,$BF,$FF,$FF,$FF ; $5EB2
        db      $80,$AA,$A8,$AA,$AA,$AA,$AA,$80,$10,$07,$09,$10,$AA,$AA,$AA,$AA ; $5EC2
        db      $AA,$AA,$AA,$AA,$A8,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$BA,$AA ; $5ED2
        db      $AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8 ; $5EE2
        db      $BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA ; $5EF2
        db      $AA,$B8,$BF,$FF,$FF,$FF,$FA,$AA,$AA,$AA,$B8,$AA,$AA,$AA,$AA,$BA ; $5F02
        db      $55,$AA,$AA,$B8,$00,$00,$00,$00,$B9,$7D,$6A,$AA,$B8,$00,$00,$00 ; $5F12
        db      $00,$B9,$FF,$6A,$AA,$B8,$00,$00,$00,$00,$B9,$FF,$6A,$AA,$B8,$00 ; $5F22
        db      $00,$00,$00,$B9,$7D,$6A,$AA,$B8,$00,$00,$00,$00,$BA,$55,$AA,$AA ; $5F32
        db      $B8,$00,$00,$00,$00,$BA,$AA,$AA,$AA,$B8,$00,$00,$00,$00,$BF,$FF ; $5F42
        db      $FF,$FF,$F8,$00,$00,$00,$00,$AA,$AA,$AA,$AA,$A8,$0E,$08,$09,$10 ; $5F52
        db      $AA,$AA,$AA,$A8,$00,$00,$00,$00,$00,$BF,$FF,$FF,$F8,$00,$00,$00 ; $5F62
        db      $00,$00,$BA,$AA,$AA,$B8,$00,$00,$00,$00,$00,$BA,$A9,$56,$B8,$00 ; $5F72
        db      $00,$00,$00,$00,$BA,$A5,$F5,$B8,$00,$00,$00,$00,$00,$BA,$A7,$FD ; $5F82
        db      $B8,$00,$00,$00,$00,$00,$BA,$A7,$FD,$B8,$00,$00,$00,$00,$00,$BA ; $5F92
        db      $A5,$F5,$B8,$00,$00,$00,$00,$00,$BA,$A9,$56,$BA,$AA,$AA,$AA,$AA ; $5FA2
        db      $A8,$BA,$AA,$AA,$BF,$FF,$FF,$FF,$FF,$F8,$BA,$AA,$AA,$AA,$AA,$AA ; $5FB2
        db      $AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA ; $5FC2
        db      $AA,$AA,$AA,$AA,$B8,$BA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$B8,$BF,$FF ; $5FD2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$F8,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A8 ; $5FE2
        db      $07,$0E,$04,$23,$AA,$AA,$AA,$AA,$BF,$FF,$FF,$FE,$BA,$AA,$AA,$AE ; $5FF2
        db      $BA,$AA,$AA,$AE,$BA,$AA,$AA,$AE,$BA,$AA,$AA,$AE,$BA,$AA,$55,$AE ; $6002
        db      $BA,$A9,$7D,$6E,$BA,$A9,$FF,$6E,$BA,$A9,$FF,$6E,$BA,$A9,$7D,$6E ; $6012
        db      $BA,$AA,$55,$AE,$BA,$AA,$AA,$AE,$BA,$AF,$FF,$FE,$BA,$AE,$AA,$AA ; $6022
        db      $BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00 ; $6032
        db      $BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00 ; $6042
        db      $BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00 ; $6052
        db      $BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00,$BA,$AE,$00,$00 ; $6062
        db      $BA,$AE,$00,$00,$BA,$AE,$00,$00,$BF,$FE,$00,$00,$AA,$AA,$00,$00 ; $6072
        db      $0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$0D,$5C,$00 ; $6082
        db      $00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00 ; $6092
        db      $00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$03 ; $60A2
        db      $AA,$AA,$B0,$00,$00,$00,$0F,$FF,$AF,$FC,$00,$00,$00,$00,$03,$AC ; $60B2
        db      $00,$00,$00,$00,$FF,$F3,$AC,$FF,$C0,$00,$FF,$EA,$B3,$AC,$EA,$FF ; $60C2
        db      $C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5 ; $60D2
        db      $EA,$B3,$AC,$EA,$D5,$C0,$FF,$EA,$B3,$FC,$EA,$FF,$C0,$00,$EA,$B0 ; $60E2
        db      $00,$EA,$C0,$00,$00,$3A,$BF,$FF,$EB,$00,$00,$00,$0E,$AA,$AA,$AC ; $60F2
        db      $00,$00,$00,$03,$AA,$AA,$B0,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00 ; $6102
        db      $00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00 ; $6112
        db      $0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0F,$FC ; $6122
        db      $00,$00,$00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00 ; $6132
        db      $0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C ; $6142
        db      $00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AB,$00,$00 ; $6152
        db      $00,$00,$03,$AA,$AB,$30,$00,$00,$00,$0E,$AA,$AB,$3C,$00,$00,$00 ; $6162
        db      $3A,$AA,$AB,$3B,$00,$00,$00,$EA,$FF,$FF,$3A,$C0,$00,$FF,$EA,$C0 ; $6172
        db      $00,$3A,$FF,$C0,$D5,$EA,$CF,$FF,$FA,$D5,$C0,$D5,$EA,$CE,$AA,$AA ; $6182
        db      $D5,$C0,$D5,$EA,$CE,$AA,$AA,$D5,$C0,$FF,$EA,$CF,$FF,$FA,$FF,$C0 ; $6192
        db      $00,$EA,$C0,$00,$3A,$C0,$00,$00,$3A,$FF,$FF,$3B,$00,$00,$00,$0E ; $61A2
        db      $AA,$AB,$3C,$00,$00,$00,$03,$AA,$AB,$30,$00,$00,$00,$00,$EA,$AB ; $61B2
        db      $00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0D,$5C,$00,$00 ; $61C2
        db      $00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00 ; $61D2
        db      $00,$0F,$FC,$00,$00,$00,$0E,$0F,$08,$1C,$00,$00,$00,$FF,$C0,$00 ; $61E2
        db      $00,$00,$00,$00,$00,$D5,$C0,$00,$00,$00,$30,$00,$00,$D5,$C0,$00 ; $61F2
        db      $00,$00,$00,$00,$00,$D5,$C0,$00,$00,$00,$03,$00,$03,$FF,$F0,$00 ; $6202
        db      $03,$00,$00,$00,$0E,$AA,$AC,$00,$30,$00,$C0,$C0,$3A,$AA,$AB,$00 ; $6212
        db      $00,$00,$0C,$00,$FF,$FA,$FF,$C3,$00,$FC,$00,$0C,$00,$3A,$C0,$00 ; $6222
        db      $0C,$00,$00,$33,$00,$3A,$C0,$30,$C0,$00,$00,$03,$00,$3A,$C0,$00 ; $6232
        db      $00,$00,$00,$00,$00,$3A,$C0,$00,$00,$00,$00,$0F,$FF,$3A,$CF,$FC ; $6242
        db      $00,$00,$0F,$FE,$AB,$3A,$CE,$AF,$FC,$00,$0D,$5E,$AB,$3F,$CE,$AD ; $6252
        db      $5C,$00,$0D,$5E,$AB,$00,$0E,$AD,$5C,$00,$0D,$5E,$AB,$00,$0E,$AD ; $6262
        db      $5C,$00,$0F,$FE,$AB,$00,$0E,$AF,$FC,$00,$00,$0E,$AB,$00,$0E,$AC ; $6272
        db      $00,$00,$00,$03,$AB,$FF,$FE,$B0,$00,$00,$00,$00,$EA,$AA,$AA,$C0 ; $6282
        db      $00,$00,$00,$00,$3A,$AA,$AB,$00,$00,$00,$00,$00,$0E,$AA,$AC,$00 ; $6292
        db      $00,$00,$00,$00,$03,$FF,$F0,$00,$00,$00,$00,$00,$00,$D5,$C0,$00 ; $62A2
        db      $00,$00,$00,$00,$00,$D5,$C0,$00,$00,$00,$00,$00,$00,$D5,$C0,$00 ; $62B2
        db      $00,$00,$00,$00,$00,$FF,$C0,$00,$00,$00,$0C,$0C,$07,$19,$00,$00 ; $62C2
        db      $0F,$FC,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C ; $62D2
        db      $00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$3F,$FF,$00,$00 ; $62E2
        db      $00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$03,$FF,$AF,$F0,$00,$00,$00 ; $62F2
        db      $00,$03,$AC,$00,$00,$00,$00,$3F,$F3,$AC,$FF,$00,$00,$00,$EA,$B3 ; $6302
        db      $AC,$EA,$C0,$00,$FF,$EA,$B3,$AC,$EA,$FF,$C0,$D5,$EA,$B3,$AC,$EA ; $6312
        db      $D5,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0 ; $6322
        db      $FF,$EA,$B3,$AC,$EA,$FF,$C0,$00,$EA,$B3,$FC,$EA,$C0,$00,$00,$3A ; $6332
        db      $B0,$00,$EB,$00,$00,$00,$0E,$BF,$FF,$EC,$00,$00,$00,$03,$AA,$AA ; $6342
        db      $B0,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$00,$3F,$FF,$00,$00 ; $6352
        db      $00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00 ; $6362
        db      $00,$0D,$5C,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$0D,$0F,$08 ; $6372
        db      $1C,$00,$00,$03,$FF,$00,$00,$00,$00,$00,$00,$03,$57,$00,$00,$00 ; $6382
        db      $00,$00,$00,$03,$57,$00,$00,$00,$00,$00,$00,$03,$57,$00,$00,$00 ; $6392
        db      $00,$00,$00,$0F,$FF,$C0,$00,$00,$00,$00,$00,$3A,$AA,$B0,$00,$00 ; $63A2
        db      $00,$C3,$00,$FF,$EB,$FC,$0C,$CC,$C0,$00,$30,$00,$EB,$00,$C0,$00 ; $63B2
        db      $00,$03,$03,$00,$EB,$00,$03,$00,$00,$30,$30,$30,$EB,$0C,$30,$30 ; $63C2
        db      $00,$00,$00,$00,$EB,$00,$00,$00,$00,$00,$0F,$FC,$EB,$3F,$C0,$00 ; $63D2
        db      $00,$00,$3A,$AC,$EB,$3A,$B0,$00,$00,$3F,$FA,$AC,$EB,$3A,$BF,$F0 ; $63E2
        db      $00,$35,$7A,$AC,$EB,$3A,$B5,$70,$00,$35,$7A,$AC,$FF,$3A,$B5,$70 ; $63F2
        db      $00,$35,$7A,$AC,$00,$3A,$B5,$70,$00,$3F,$FA,$AC,$00,$3A,$BF,$F0 ; $6402
        db      $00,$00,$3A,$AC,$00,$3A,$B0,$00,$00,$00,$0E,$AC,$00,$3A,$C0,$00 ; $6412
        db      $00,$00,$03,$AF,$FF,$FB,$00,$00,$00,$00,$00,$EA,$AA,$AC,$00,$00 ; $6422
        db      $00,$00,$00,$3A,$AA,$B0,$00,$00,$00,$00,$00,$0F,$FF,$C0,$00,$00 ; $6432
        db      $00,$00,$00,$03,$57,$00,$00,$00,$00,$00,$00,$03,$57,$00,$00,$00 ; $6442
        db      $00,$00,$00,$03,$57,$00,$00,$00,$00,$00,$00,$03,$FF,$00,$00,$00 ; $6452
        db      $00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$0D,$5C ; $6462
        db      $00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00 ; $6472
        db      $00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00,$00 ; $6482
        db      $03,$FF,$AF,$F0,$00,$00,$00,$00,$03,$AC,$00,$00,$00,$00,$3F,$F3 ; $6492
        db      $AC,$FF,$00,$00,$00,$EA,$B3,$AC,$EA,$C0,$00,$FF,$EA,$B3,$AC,$EA ; $64A2
        db      $FF,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0 ; $64B2
        db      $D5,$EA,$B3,$AC,$EA,$D5,$C0,$FF,$EA,$B3,$AC,$EA,$FF,$C0,$00,$EA ; $64C2
        db      $B3,$FC,$EA,$C0,$00,$00,$3A,$B0,$00,$EB,$00,$00,$00,$0E,$BF,$FF ; $64D2
        db      $EC,$00,$00,$00,$03,$AA,$AA,$B0,$00,$00,$00,$00,$EA,$AA,$C0,$00 ; $64E2
        db      $00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0E,$AC,$00,$00,$00,$00 ; $64F2
        db      $00,$0E,$AC,$00,$00,$00,$00,$00,$0E,$AC,$00,$00,$00,$00,$00,$0F ; $6502
        db      $FC,$00,$00,$00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00 ; $6512
        db      $00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D ; $6522
        db      $5C,$00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AA,$C0 ; $6532
        db      $00,$00,$00,$03,$AA,$AA,$C0,$00,$00,$00,$0E,$AA,$AA,$CC,$00,$00 ; $6542
        db      $00,$3A,$AA,$AA,$CF,$00,$00,$00,$EB,$FF,$FF,$CE,$C0,$00,$FF,$EB ; $6552
        db      $00,$00,$0E,$FF,$C0,$EA,$EB,$3F,$FF,$FE,$D5,$C0,$EA,$EB,$3A,$AA ; $6562
        db      $AA,$D5,$C0,$EA,$EB,$3A,$AA,$AA,$D5,$C0,$FF,$EB,$3F,$FF,$FE,$FF ; $6572
        db      $C0,$00,$EB,$00,$00,$0E,$C0,$00,$00,$3B,$FF,$FF,$CF,$00,$00,$00 ; $6582
        db      $0E,$AA,$AA,$CC,$00,$00,$00,$03,$AA,$AA,$C0,$00,$00,$00,$00,$EA ; $6592
        db      $AA,$C0,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0D,$5C,$00 ; $65A2
        db      $00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00 ; $65B2
        db      $00,$00,$0F,$FC,$00,$00,$00,$0C,$0F,$07,$1C,$00,$00,$0F,$FC,$00 ; $65C2
        db      $00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00 ; $65D2
        db      $00,$00,$0D,$5C,$00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00 ; $65E2
        db      $EA,$AA,$C0,$0C,$00,$03,$03,$FF,$AF,$F0,$C0,$00,$00,$30,$03,$AC ; $65F2
        db      $0C,$3C,$00,$03,$C3,$03,$AC,$33,$00,$00,$00,$0C,$C3,$AC,$30,$00 ; $6602
        db      $00,$00,$00,$C3,$AC,$C0,$00,$00,$00,$3F,$F3,$AC,$FF,$00,$00,$00 ; $6612
        db      $EA,$B3,$AC,$EA,$C0,$00,$FF,$EA,$B3,$AC,$EA,$FF,$C0,$D5,$EA,$B3 ; $6622
        db      $AC,$EA,$D5,$C0,$D5,$EA,$B3,$FC,$EA,$D5,$C0,$D5,$EA,$B0,$00,$EA ; $6632
        db      $D5,$C0,$FF,$EA,$B0,$00,$EA,$FF,$C0,$00,$EA,$B0,$00,$EA,$C0,$00 ; $6642
        db      $00,$3A,$B0,$00,$EB,$00,$00,$00,$0E,$BF,$FF,$EC,$00,$00,$00,$03 ; $6652
        db      $AA,$AA,$B0,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$00,$3F,$FF ; $6662
        db      $00,$00,$00,$00,$00,$0E,$AC,$00,$00,$00,$00,$00,$0E,$AC,$00,$00 ; $6672
        db      $00,$00,$00,$0E,$AC,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$05 ; $6682
        db      $0E,$04,$0F,$00,$FF,$C0,$00,$00,$D5,$C0,$00,$00,$D5,$C0,$00,$00 ; $6692
        db      $D5,$C0,$00,$03,$FF,$F0,$00,$0E,$AA,$AC,$00,$3A,$AA,$AB,$00,$FF ; $66A2
        db      $FA,$FF,$C0,$00,$3A,$C0,$00,$00,$3A,$C0,$00,$00,$3A,$C0,$00,$00 ; $66B2
        db      $3A,$C0,$00,$00,$3A,$C0,$00,$00,$3A,$C0,$00,$00,$3F,$C0,$00,$00 ; $66C2
        db      $05,$04,$0D,$00,$03,$00,$00,$00,$03,$C0,$00,$00,$03,$B0,$00,$00 ; $66D2
        db      $03,$AC,$00,$00,$03,$AF,$FC,$FF,$FF,$AD,$5C,$EA,$AA,$AD,$5C,$EA ; $66E2
        db      $AA,$AD,$5C,$FF,$FF,$AF,$FC,$00,$03,$AC,$00,$00,$03,$B0,$00,$00 ; $66F2
        db      $03,$C0,$00,$00,$03,$00,$00,$09,$07,$07,$10,$00,$FF,$F0,$00,$FF ; $6702
        db      $C0,$00,$FF,$EA,$B0,$00,$EA,$FF,$C0,$D5,$EA,$B0,$00,$EA,$D5,$C0 ; $6712
        db      $D5,$EA,$B0,$00,$EA,$D5,$C0,$D5,$EA,$B0,$00,$EA,$D5,$C0,$FF,$EA ; $6722
        db      $B0,$00,$EA,$FF,$C0,$00,$EA,$B0,$00,$EA,$C0,$00,$00,$3A,$BF,$FF ; $6732
        db      $EB,$00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$03,$AA,$AA,$B0,$00 ; $6742
        db      $00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00 ; $6752
        db      $00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D ; $6762
        db      $5C,$00,$00,$00,$00,$00,$0F,$FC,$00,$00,$00,$08,$09,$04,$19,$00 ; $6772
        db      $00,$0F,$FC,$00,$00,$0D,$5C,$00,$00,$0D,$5C,$00,$00,$0D,$5C,$00 ; $6782
        db      $00,$3F,$FF,$00,$00,$EA,$AB,$00,$03,$AA,$AB,$00,$0E,$AA,$AB,$00 ; $6792
        db      $3A,$AA,$AB,$00,$EA,$FF,$FF,$FF,$EA,$C0,$00,$D5,$EA,$C0,$00,$D5 ; $67A2
        db      $EA,$C0,$00,$D5,$EA,$C0,$00,$FF,$EA,$C0,$00,$00,$EA,$C0,$00,$00 ; $67B2
        db      $3A,$FF,$FF,$00,$0E,$AA,$AB,$00,$03,$AA,$AB,$00,$00,$EA,$AB,$00 ; $67C2
        db      $00,$3F,$FF,$00,$00,$0D,$5C,$00,$00,$0D,$5C,$00,$00,$0D,$5C,$00 ; $67D2
        db      $00,$0F,$FC,$04,$00,$89,$00,$03,$91,$66,$00,$03,$D1,$66,$C0,$03 ; $67E2
        db      $91,$66,$C0,$03,$D1,$66,$00,$00,$E8,$67,$02,$00,$81,$04,$82,$60 ; $67F2
        db      $04,$E8,$61,$00,$FF,$67,$02,$00,$81,$04,$CC,$62,$04,$7F,$63,$00 ; $6802
        db      $0B,$68,$02,$00,$81,$04,$63,$64,$04,$C9,$65,$00,$17,$68,$0C,$0C ; $6812
        db      $07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FF,$F0,$F0,$00,$00 ; $6822
        db      $00,$0F,$FF,$C3,$FC,$00,$00,$00,$3F,$FF,$0F,$FF,$00,$00,$00,$FF ; $6832
        db      $FC,$3F,$7F,$C0,$00,$03,$FF,$F0,$FD,$5F,$F0,$00,$0F,$FF,$C3,$F5 ; $6842
        db      $57,$FC,$00,$0F,$FF,$0F,$D5,$55,$FC,$00,$3F,$FC,$3F,$FF,$FF,$FF ; $6852
        db      $00,$3F,$F0,$FF,$FF,$FF,$FF,$00,$FF,$C0,$00,$00,$00,$FF,$C0,$FF ; $6862
        db      $FF,$FF,$FF,$C3,$FF,$C0,$FF,$FF,$FF,$FF,$0F,$FF,$C0,$FF,$55,$57 ; $6872
        db      $FC,$3F,$FF,$C0,$FF,$D5,$5F,$F0,$FD,$FF,$C0,$3F,$F5,$7F,$C3,$F5 ; $6882
        db      $FF,$00,$3F,$FD,$FF,$0F,$D5,$FF,$00,$0F,$FF,$FC,$3F,$55,$FC,$00 ; $6892
        db      $0F,$FF,$F0,$FD,$55,$FC,$00,$03,$FF,$C3,$F5,$55,$F0,$00,$00,$FF ; $68A2
        db      $0F,$FF,$FF,$C0,$00,$00,$3C,$3F,$FF,$FF,$00,$00,$00,$00,$FF,$FF ; $68B2
        db      $FC,$00,$00,$00,$03,$FF,$FF,$C0,$00,$00,$00,$00,$3F,$FC,$00,$00 ; $68C2
        db      $00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FF,$FF ; $68D2
        db      $C0,$00,$00,$00,$0F,$FF,$FF,$FC,$00,$00,$00,$3F,$FF,$FF,$FF,$00 ; $68E2
        db      $00,$00,$FF,$FD,$FF,$FF,$C0,$00,$03,$FF,$F5,$F3,$FF,$F0,$00,$03 ; $68F2
        db      $FF,$D5,$F0,$FF,$FC,$00,$30,$FF,$55,$F0,$3F,$FC,$00,$3C,$3F,$D5 ; $6902
        db      $F3,$0F,$FF,$00,$FF,$0F,$F5,$F3,$C3,$FF,$00,$FF,$C3,$FD,$F3,$F0 ; $6912
        db      $FF,$C0,$FF,$F0,$FF,$F3,$FC,$3F,$C0,$FF,$FC,$3F,$F3,$FF,$0F,$C0 ; $6922
        db      $FF,$FF,$0F,$F3,$DF,$C3,$C0,$FF,$DF,$C3,$F3,$D7,$F0,$C0,$3F,$D7 ; $6932
        db      $F0,$F3,$D5,$FC,$00,$3F,$D5,$FC,$33,$D5,$7F,$00,$0F,$D5,$7F,$03 ; $6942
        db      $D5,$FF,$00,$0F,$D5,$5F,$C3,$D7,$FC,$00,$03,$D5,$57,$F3,$DF,$F0 ; $6952
        db      $00,$00,$FF,$FF,$FF,$FF,$C0,$00,$00,$3F,$FF,$FF,$FF,$00,$00,$00 ; $6962
        db      $0F,$FF,$FF,$FC,$00,$00,$00,$00,$FF,$FF,$C0,$00,$00,$00,$00,$0F ; $6972
        db      $FC,$00,$00,$00,$10,$0B,$08,$18,$00,$00,$0F,$FC,$00,$03,$C0,$00 ; $6982
        db      $00,$00,$FF,$F0,$00,$0F,$F0,$00,$00,$0F,$FF,$C0,$00,$3F,$FC,$00 ; $6992
        db      $00,$3F,$FF,$00,$00,$FD,$FF,$00,$00,$FF,$FC,$00,$03,$F5,$7F,$C0 ; $69A2
        db      $03,$FF,$F0,$00,$0F,$D5,$5F,$F0,$0F,$FF,$C0,$00,$3F,$55,$57,$F0 ; $69B2
        db      $0F,$FF,$00,$00,$FF,$FF,$FF,$FC,$3F,$FC,$00,$03,$FF,$FF,$FF,$FC ; $69C2
        db      $3F,$F0,$00,$00,$00,$00,$03,$FF,$FF,$C0,$00,$00,$00,$00,$0F,$FF ; $69D2
        db      $FF,$FF,$FF,$FF,$C0,$00,$3F,$FF,$FF,$FF,$FF,$FF,$00,$00,$FF,$FF ; $69E2
        db      $FF,$55,$57,$FC,$00,$03,$F7,$FF,$FF,$D5,$5F,$F0,$00,$0F,$D7,$FC ; $69F2
        db      $3F,$F5,$7F,$C0,$00,$3F,$57,$FC,$3F,$FD,$FF,$00,$00,$FD,$57,$F0 ; $6A02
        db      $0F,$FF,$FC,$00,$03,$F5,$57,$F0,$0F,$FF,$F0,$00,$0F,$D5,$57,$C0 ; $6A12
        db      $03,$FF,$C0,$00,$3F,$FF,$FF,$00,$00,$FF,$00,$00,$FF,$FF,$FC,$00 ; $6A22
        db      $00,$3C,$00,$03,$FF,$FF,$F0,$00,$00,$00,$00,$0F,$FF,$FF,$00,$00 ; $6A32
        db      $00,$00,$00,$00,$FF,$F0,$00,$00,$0C,$10,$06,$20,$00,$00,$3F,$F0 ; $6A42
        db      $00,$00,$00,$03,$FF,$FF,$00,$00,$00,$3F,$FF,$FF,$F0,$00,$00,$FF ; $6A52
        db      $FF,$FF,$FC,$00,$03,$FF,$F7,$FF,$FF,$00,$0F,$FF,$D7,$CF,$FF,$C0 ; $6A62
        db      $0F,$FF,$57,$C3,$FF,$F0,$03,$FD,$57,$C0,$FF,$F0,$00,$FF,$57,$C0 ; $6A72
        db      $3F,$FC,$00,$3F,$D7,$C0,$0F,$FC,$00,$0F,$F7,$C0,$03,$FF,$00,$03 ; $6A82
        db      $FF,$C0,$00,$FF,$00,$00,$FF,$C0,$00,$3F,$00,$00,$3F,$C0,$00,$0F ; $6A92
        db      $30,$00,$0F,$C0,$00,$03,$3C,$00,$03,$C3,$00,$00,$FF,$00,$00,$C3 ; $6AA2
        db      $C0,$00,$FF,$C0,$00,$03,$F0,$00,$FF,$F0,$00,$03,$FC,$00,$FF,$FC ; $6AB2
        db      $00,$03,$FF,$00,$FF,$FF,$00,$03,$DF,$C0,$FF,$DF,$C0,$03,$D7,$F0 ; $6AC2
        db      $3F,$D7,$F0,$03,$D5,$FC,$3F,$D5,$FC,$03,$D5,$7F,$0F,$D5,$7F,$03 ; $6AD2
        db      $D5,$FF,$0F,$D5,$5F,$C3,$D7,$FC,$03,$D5,$57,$F3,$DF,$F0,$00,$FF ; $6AE2
        db      $FF,$FF,$FF,$C0,$00,$3F,$FF,$FF,$FF,$00,$00,$0F,$FF,$FF,$FC,$00 ; $6AF2
        db      $00,$00,$FF,$FF,$C0,$00,$00,$00,$0F,$FC,$00,$00,$0C,$0C,$07,$19 ; $6B02
        db      $00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FF,$F0,$F0,$00,$00,$00,$0F ; $6B12
        db      $FF,$C3,$FC,$00,$00,$00,$3F,$FF,$0F,$FF,$00,$00,$00,$FF,$FC,$3F ; $6B22
        db      $7F,$C0,$00,$03,$FF,$F0,$FD,$5F,$F0,$00,$0F,$FF,$C3,$F5,$57,$FC ; $6B32
        db      $00,$0F,$FF,$0F,$D5,$55,$FC,$00,$3F,$FC,$3F,$FF,$FF,$FF,$00,$3F ; $6B42
        db      $F0,$FF,$FF,$FF,$FF,$00,$FF,$C0,$00,$00,$00,$FF,$C0,$FF,$FF,$FF ; $6B52
        db      $FF,$C3,$FF,$C0,$FF,$FF,$FF,$FF,$0F,$DF,$C0,$FF,$55,$57,$FC,$3F ; $6B62
        db      $5F,$C0,$FF,$D5,$5F,$F0,$FD,$5F,$C0,$3F,$F5,$7F,$C3,$F5,$5F,$00 ; $6B72
        db      $3F,$FD,$FF,$0F,$D5,$5F,$00,$0F,$FF,$FC,$3F,$FF,$FC,$00,$0F,$FF ; $6B82
        db      $F0,$FD,$FF,$FC,$00,$03,$FF,$C3,$F5,$FF,$F0,$00,$00,$FF,$0F,$D5 ; $6B92
        db      $FF,$C0,$00,$00,$3C,$3F,$55,$FF,$00,$00,$00,$00,$FD,$55,$FC,$00 ; $6BA2
        db      $00,$00,$03,$FF,$FF,$C0,$00,$00,$00,$00,$3F,$FC,$00,$00,$00,$0C ; $6BB2
        db      $0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FF,$FF,$C0,$00 ; $6BC2
        db      $00,$00,$0F,$FF,$FF,$FC,$00,$00,$00,$3F,$FF,$FF,$FF,$00,$00,$00 ; $6BD2
        db      $FF,$FD,$FF,$FF,$C0,$00,$03,$FF,$F5,$F3,$FF,$F0,$00,$03,$FF,$D5 ; $6BE2
        db      $F0,$FF,$FC,$00,$30,$FF,$55,$F0,$3F,$FC,$00,$3C,$3F,$D5,$F3,$0F ; $6BF2
        db      $FF,$00,$FF,$0F,$F5,$F3,$C3,$FF,$00,$FF,$C3,$FD,$F3,$F0,$FF,$C0 ; $6C02
        db      $F7,$F0,$FF,$F3,$FC,$3F,$C0,$F5,$FC,$3F,$F3,$FF,$0F,$C0,$F5,$7F ; $6C12
        db      $0F,$F3,$DF,$C3,$C0,$F5,$5F,$C3,$F3,$D7,$F0,$C0,$35,$57,$F0,$F3 ; $6C22
        db      $D5,$FC,$00,$3F,$FF,$FC,$33,$D5,$7F,$00,$0F,$FF,$7F,$03,$D5,$FF ; $6C32
        db      $00,$0F,$FF,$5F,$C3,$D7,$FC,$00,$03,$FF,$57,$F3,$DF,$F0,$00,$00 ; $6C42
        db      $FF,$55,$FF,$FF,$C0,$00,$00,$3F,$55,$7F,$FF,$00,$00,$00,$0F,$FF ; $6C52
        db      $FF,$FC,$00,$00,$00,$00,$FF,$FF,$C0,$00,$00,$00,$00,$0F,$FC,$00 ; $6C62
        db      $00,$00,$10,$0B,$08,$18,$00,$00,$0F,$FC,$00,$03,$C0,$00,$00,$00 ; $6C72
        db      $FF,$F0,$00,$0F,$F0,$00,$00,$0F,$FF,$C0,$00,$3F,$FC,$00,$00,$3F ; $6C82
        db      $FF,$00,$00,$FD,$FF,$00,$00,$FF,$FC,$00,$03,$F5,$7F,$C0,$03,$FF ; $6C92
        db      $F0,$00,$0F,$D5,$5F,$F0,$0F,$FF,$C0,$00,$3F,$55,$57,$F0,$0F,$FF ; $6CA2
        db      $00,$00,$FF,$FF,$FF,$FC,$3F,$FC,$00,$03,$FF,$FF,$FF,$FC,$3F,$F0 ; $6CB2
        db      $00,$00,$00,$00,$03,$FF,$FF,$C0,$00,$00,$00,$00,$0F,$FF,$FF,$FF ; $6CC2
        db      $FF,$FF,$C0,$00,$3F,$7F,$FF,$FF,$FF,$FF,$00,$00,$FD,$7F,$FF,$55 ; $6CD2
        db      $57,$FC,$00,$03,$F5,$7F,$FF,$D5,$5F,$F0,$00,$0F,$D5,$7C,$3F,$F5 ; $6CE2
        db      $7F,$C0,$00,$3F,$55,$7C,$3F,$FD,$FF,$00,$00,$FF,$FF,$F0,$0F,$FF ; $6CF2
        db      $FC,$00,$03,$F7,$FF,$F0,$0F,$FF,$F0,$00,$0F,$D7,$FF,$C0,$03,$FF ; $6D02
        db      $C0,$00,$3F,$57,$FF,$00,$00,$FF,$00,$00,$FD,$57,$FC,$00,$00,$3C ; $6D12
        db      $00,$03,$F5,$57,$F0,$00,$00,$00,$00,$0F,$FF,$FF,$00,$00,$00,$00 ; $6D22
        db      $00,$00,$FF,$F0,$00,$00,$0C,$10,$06,$20,$00,$00,$3F,$F0,$00,$00 ; $6D32
        db      $00,$03,$FF,$FF,$00,$00,$00,$3F,$FF,$FF,$F0,$00,$00,$FF,$FF,$FF ; $6D42
        db      $FC,$00,$03,$FF,$F7,$FF,$FF,$00,$0F,$FF,$D7,$CF,$FF,$C0,$0F,$FF ; $6D52
        db      $57,$C3,$FF,$F0,$03,$FD,$57,$C0,$FF,$F0,$00,$FF,$57,$C0,$3F,$FC ; $6D62
        db      $00,$3F,$D7,$C0,$0F,$FC,$00,$0F,$F7,$C0,$03,$FF,$00,$03,$FF,$C0 ; $6D72
        db      $00,$FF,$00,$00,$FF,$C0,$00,$3F,$00,$00,$3F,$C0,$00,$0F,$30,$00 ; $6D82
        db      $0F,$C0,$00,$03,$3C,$00,$03,$C3,$00,$00,$FF,$00,$00,$C3,$C0,$00 ; $6D92
        db      $FF,$C0,$00,$03,$F0,$00,$F7,$F0,$00,$03,$FC,$00,$F5,$FC,$00,$03 ; $6DA2
        db      $FF,$00,$F5,$7F,$00,$03,$DF,$C0,$F5,$5F,$C0,$03,$D7,$F0,$35,$57 ; $6DB2
        db      $F0,$03,$D5,$FC,$3F,$FF,$FC,$03,$D5,$7F,$0F,$FF,$7F,$03,$D5,$FF ; $6DC2
        db      $0F,$FF,$5F,$C3,$D7,$FC,$03,$FF,$57,$F3,$DF,$F0,$00,$FF,$55,$FF ; $6DD2
        db      $FF,$C0,$00,$3F,$55,$7F,$FF,$00,$00,$0F,$FF,$FF,$FC,$00,$00,$00 ; $6DE2
        db      $FF,$FF,$C0,$00,$00,$00,$0F,$FC,$00,$00,$09,$02,$05,$16,$00,$00 ; $6DF2
        db      $0F,$FC,$00,$00,$00,$FF,$F0,$00,$00,$0F,$FF,$C0,$00,$00,$3F,$FF ; $6E02
        db      $00,$00,$00,$FF,$FC,$00,$00,$03,$FF,$F0,$00,$00,$0F,$FF,$C0,$00 ; $6E12
        db      $00,$0F,$FF,$00,$00,$00,$3F,$FC,$00,$00,$00,$3F,$F0,$00,$00,$00 ; $6E22
        db      $FF,$C0,$00,$00,$00,$FF,$FF,$FF,$FF,$C0,$FF,$FF,$FF,$FF,$00,$FF ; $6E32
        db      $55,$57,$FC,$00,$FF,$D5,$5F,$F0,$00,$3F,$F5,$7F,$C0,$00,$3F,$FD ; $6E42
        db      $FF,$00,$00,$0F,$FF,$FC,$00,$00,$0F,$FF,$F0,$00,$00,$03,$FF,$C0 ; $6E52
        db      $00,$00,$00,$FF,$00,$00,$00,$00,$3C,$00,$00,$00,$02,$06,$06,$11 ; $6E62
        db      $00,$00,$03,$00,$00,$00,$00,$00,$03,$C0,$00,$00,$C0,$00,$03,$F0 ; $6E72
        db      $00,$00,$F0,$00,$03,$FC,$00,$00,$FC,$00,$03,$FF,$00,$00,$FF,$00 ; $6E82
        db      $03,$FF,$C0,$00,$FF,$C0,$03,$DF,$F0,$00,$3F,$F0,$03,$D7,$FC,$00 ; $6E92
        db      $3F,$FC,$03,$D5,$FF,$00,$0F,$FF,$03,$D5,$7F,$C0,$0F,$FF,$C3,$D5 ; $6EA2
        db      $FF,$F0,$03,$FF,$F3,$D7,$FF,$F0,$00,$FF,$FF,$DF,$FF,$C0,$00,$3F ; $6EB2
        db      $FF,$FF,$FF,$00,$00,$0F,$FF,$FF,$FC,$00,$00,$00,$FF,$FF,$C0,$00 ; $6EC2
        db      $00,$00,$0F,$FC,$00,$00,$13,$09,$06,$11,$00,$03,$FF,$00,$00,$00 ; $6ED2
        db      $00,$3F,$FF,$F0,$00,$00,$03,$FF,$FF,$FF,$00,$00,$0F,$FF,$FF,$FF ; $6EE2
        db      $C0,$00,$3F,$FF,$7F,$FF,$F0,$00,$FF,$FD,$7C,$FF,$FC,$00,$FF,$F5 ; $6EF2
        db      $7C,$3F,$FF,$00,$3F,$D5,$7C,$0F,$FF,$00,$0F,$F5,$7C,$03,$FF,$C0 ; $6F02
        db      $03,$FD,$7C,$00,$FF,$C0,$00,$FF,$7C,$00,$3F,$F0,$00,$3F,$FC,$00 ; $6F12
        db      $0F,$F0,$00,$0F,$FC,$00,$03,$F0,$00,$03,$FC,$00,$00,$F0,$00,$00 ; $6F22
        db      $FC,$00,$00,$30,$00,$00,$3C,$00,$00,$00,$00,$00,$0C,$00,$00,$00 ; $6F32
        db      $0C,$0D,$05,$18,$00,$00,$3C,$00,$00,$00,$00,$FF,$00,$00,$00,$03 ; $6F42
        db      $FF,$C0,$00,$00,$0F,$DF,$F0,$00,$00,$3F,$57,$FC,$00,$00,$FD,$55 ; $6F52
        db      $FF,$00,$03,$F5,$55,$7F,$00,$0F,$FF,$FF,$FF,$C0,$3F,$FF,$FF,$FF ; $6F62
        db      $C0,$00,$00,$00,$3F,$F0,$00,$00,$00,$FF,$F0,$00,$00,$03,$FF,$F0 ; $6F72
        db      $00,$00,$0F,$FF,$F0,$00,$00,$3F,$7F,$F0,$00,$00,$FD,$7F,$C0,$00 ; $6F82
        db      $03,$F5,$7F,$C0,$00,$0F,$D5,$7F,$00,$00,$3F,$55,$7F,$00,$00,$FD ; $6F92
        db      $55,$7C,$00,$03,$FF,$FF,$F0,$00,$0F,$FF,$FF,$C0,$00,$3F,$FF,$FF ; $6FA2
        db      $00,$00,$FF,$FF,$F0,$00,$00,$0F,$FF,$00,$00,$00,$0A,$0C,$06,$12 ; $6FB2
        db      $30,$00,$00,$00,$00,$00,$3C,$00,$00,$03,$00,$00,$FF,$00,$00,$03 ; $6FC2
        db      $C0,$00,$FF,$C0,$00,$03,$F0,$00,$FF,$F0,$00,$03,$FC,$00,$FF,$FC ; $6FD2
        db      $00,$03,$FF,$00,$FF,$FF,$00,$03,$DF,$C0,$FF,$DF,$C0,$03,$D7,$F0 ; $6FE2
        db      $3F,$D7,$F0,$03,$D5,$FC,$3F,$D5,$FC,$03,$D5,$7F,$0F,$D5,$7F,$03 ; $6FF2
        db      $D5,$FF,$0F,$D5,$5F,$C3,$D7,$FC,$03,$D5,$57,$F3,$DF,$F0,$00,$FF ; $7002
        db      $FF,$FF,$FF,$C0,$00,$3F,$FF,$FF,$FF,$00,$00,$0F,$FF,$FF,$FC,$00 ; $7012
        db      $00,$00,$FF,$FF,$C0,$00,$00,$00,$0F,$FC,$00,$00,$04,$00,$89,$00 ; $7022
        db      $04,$FC,$6D,$00,$04,$D8,$6E,$C0,$04,$FC,$6D,$C0,$04,$D8,$6E,$00 ; $7032
        db      $00,$31,$70,$02,$00,$81,$03,$20,$68,$04,$86,$69,$00,$48,$70,$02 ; $7042
        db      $00,$81,$04,$0E,$6B,$05,$74,$6C,$00,$54,$70,$00,$00,$90,$0A,$00 ; $7052
        db      $FD,$FF,$40,$06,$00,$00,$24,$15,$00,$E6,$FF,$70,$02,$08,$FD,$00 ; $7062
        db      $00,$F0,$1A,$00,$0B,$00,$80,$03,$70,$01,$00,$00,$C0,$00,$00,$1D ; $7072
        db      $00,$00,$00,$C0,$03,$00,$00,$94,$E7,$FF,$0D,$00,$B8,$FC,$C0,$01 ; $7082
        db      $00,$00,$88,$DA,$FF,$08,$00,$40,$FC,$C0,$00,$00,$00,$42,$FD,$FF ; $7092
        db      $BF,$FF,$D0,$FF,$18,$FC,$00,$00,$00,$90,$AA,$FF,$BA,$FF,$80,$02 ; $70A2
        db      $00,$00,$FA,$9F,$00,$16,$00,$A0,$04,$B0,$00,$00,$00,$87,$AE,$FF ; $70B2
        db      $0F,$00,$68,$FB,$C8,$00,$00,$00,$00,$90,$AA,$FF,$0A,$00,$80,$03 ; $70C2
        db      $00,$00,$FC,$A6,$00,$0E,$00,$A8,$04,$70,$00,$00,$00,$74,$7B,$FF ; $70D2
        db      $D9,$FF,$88,$FB,$A8,$FE,$00,$00,$10,$2C,$00,$EE,$FF,$50,$04,$38 ; $70E2
        db      $FE,$00,$00,$00,$90,$AA,$FF,$E2,$FF,$C0,$03,$00,$00,$E2,$2C,$00 ; $70F2
        db      $27,$00,$74,$03,$20,$03,$00,$00,$42,$FC,$FF,$B0,$FF,$C4,$FF,$54 ; $7102
        db      $FB,$00,$00,$E0,$26,$00,$26,$00,$4C,$03,$4C,$03,$00,$C9,$70,$F4 ; $7112
        db      $70,$A9,$70,$1E,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65 ; $7122
        db      $20,$63,$6F,$6D,$70,$6C,$65,$74,$65,$64,$20,$66,$69,$67,$75,$72 ; $7132
        db      $65,$3F,$00,$00,$90,$1B,$00,$E1,$FF,$40,$02,$00,$00,$40,$00,$00 ; $7142
        db      $CC,$FF,$00,$00,$18,$FC,$00,$00,$9F,$F0,$FF,$0F,$00,$30,$FD,$B0 ; $7152
        db      $02,$01,$00,$00,$51,$F7,$FF,$EB,$FF,$70,$FE,$70,$FC,$00,$00,$00 ; $7162
        db      $90,$22,$00,$DF,$FF,$40,$02,$00,$00,$40,$00,$00,$CC,$FF,$00,$00 ; $7172
        db      $B8,$FB,$00,$00,$D8,$0E,$00,$15,$00,$58,$02,$88,$03,$01,$00,$00 ; $7182
        db      $31,$09,$00,$E6,$FF,$88,$01,$08,$FC,$00                         ; $7192 preserved bytes

COMPLETE_FIGURE_A_SETUP_ACTION:
        rst     $08                                                             ; $719C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $719D execution token
        dw      XT_LIT                                                          ; $719F execution token
        dw      $FFA6                                                           ; $71A1 inline word
        dw      XT_LITbyte                                                      ; $71A3 execution token
        db      $18                                                             ; $71A5 inline byte
        dw      XT_LIT                                                          ; $71A6 execution token
        dw      $7125                                                           ; $71A8 inline word
        dw      XT_LIT                                                          ; $71AA execution token
        dw      $711F                                                           ; $71AC inline word
        dw      XT_LIT                                                          ; $71AE execution token
        dw      $2D8C                                                           ; $71B0 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $71B2 execution token
        dw      XT_LIT                                                          ; $71B4 execution token
        dw      $FFF4                                                           ; $71B6 inline word
        dw      XT_LIT                                                          ; $71B8 execution token
        dw      $FFE1                                                           ; $71BA inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $71BC execution token
        dw      XT_LIT                                                          ; $71BE execution token
        dw      $5315                                                           ; $71C0 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $71C2 execution token
        dw      XT_LIT                                                          ; $71C4 execution token
        dw      $705D                                                           ; $71C6 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $71C8 execution token
        dw      XT_LIT                                                          ; $71CA execution token
        dw      $53EA                                                           ; $71CC inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $71CE execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $71D0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $71D2 execution token
        dw      PPQ9_SHARED_SETUP_THREAD                                        ; $71D4 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $71D6 execution token
        dw      XT_LIT                                                          ; $71D8 execution token
        dw      $5586                                                           ; $71DA inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $71DC execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $71DE execution token
        dw      $1EF6                                                           ; $71E0 execution token
        dw      XT_LIT                                                          ; $71E2 execution token
        dw      $53EA                                                           ; $71E4 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $71E6 execution token
        dw      XT_LIT                                                          ; $71E8 execution token
        dw      $FFFB                                                           ; $71EA inline word
        dw      XT_LIT                                                          ; $71EC execution token
        dw      $FFDF                                                           ; $71EE inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $71F0 execution token
        dw      $1E34                                                           ; $71F2 execution token
        dw      XT_LITbyte                                                      ; $71F4 execution token
        db      $0F                                                             ; $71F6 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $71F7 execution token
        dw      $1A2C                                                           ; $71F9 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $71FB execution token
        dw      XT_RETURN                                                       ; $71FD execution token

COMPLETE_FIGURE_A_CORRECT_ACTION:
        rst     $08                                                             ; $71FF colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7200 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7202 execution token
        dw      XT_LIT                                                          ; $7204 execution token
        dw      $FFD8                                                           ; $7206 inline word
        dw      XT_LITbyte                                                      ; $7208 execution token
        db      $05                                                             ; $720A inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $720B execution token
        dw      XT_LIT                                                          ; $720D execution token
        dw      $4DE5                                                           ; $720F inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7211 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7213 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7215 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7217 execution token
        dw      XT_LIT                                                          ; $7219 execution token
        dw      $559D                                                           ; $721B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $721D execution token
        dw      XT_LIT                                                          ; $721F execution token
        dw      $F6E7                                                           ; $7221 inline word
        dw      XT_BONE                                                         ; $7223 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7225 execution token
        dw      XT_LIT                                                          ; $7227 execution token
        dw      $4DE5                                                           ; $7229 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $722B execution token
        dw      XT_LIT                                                          ; $722D execution token
        dw      $FFF7                                                           ; $722F inline word
        dw      XT_LIT                                                          ; $7231 execution token
        dw      $FFDF                                                           ; $7233 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7235 execution token
        dw      $1E34                                                           ; $7237 execution token
        dw      XT_LITbyte                                                      ; $7239 execution token
        db      $40                                                             ; $723B inline byte
        dw      $1E5C                                                           ; $723C execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $723E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7240 execution token
        dw      XT_RETURN                                                       ; $7242 execution token

        db      $CF,$99,$15,$09,$01,$E7,$F6,$3A,$05,$14,$1F,$A8,$1E,$09         ; $7244 preserved bytes
        db      $01,$15,$53,$B4,$1C,$09,$01,$44,$71,$D4,$24,$37,$23,$09,$01,$7D ; $7252
        db      $53,$B4,$1C,$37,$23,$02,$23,$FD,$00,$CF,$99,$15,$D5,$4B,$14,$1F ; $7262
        db      $A8,$1E,$09,$01,$EA,$53,$B4,$1C,$09,$01,$70,$71,$D4,$24,$37,$23 ; $7272
        db      $09,$01,$52,$54,$B4,$1C,$37,$23,$02,$23,$FD,$00,$02,$44,$72,$6B ; $7282
        db      $72                                                             ; $7292 preserved bytes

COMPLETE_FIGURE_A_SECOND_ACTION:
        rst     $08                                                             ; $7293 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7294 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7296 execution token
        dw      XT_LIT                                                          ; $7298 execution token
        dw      $FFD8                                                           ; $729A inline word
        dw      XT_LITbyte                                                      ; $729C execution token
        db      $05                                                             ; $729E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $729F execution token
        dw      XT_LIT                                                          ; $72A1 execution token
        dw      $5017                                                           ; $72A3 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $72A5 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $72A7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $72A9 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $72AB execution token
        dw      XT_LITbyte                                                      ; $72AD execution token
        db      $1E                                                             ; $72AF inline byte
        dw      XT_LIT                                                          ; $72B0 execution token
        dw      $FFDF                                                           ; $72B2 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $72B4 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $72B6 execution token
        dw      XT_LITbyte                                                      ; $72B8 execution token
        db      $1E                                                             ; $72BA inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $72BB execution token
        dw      $1A2C                                                           ; $72BD execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $72BF execution token
        dw      XT_LIT                                                          ; $72C1 execution token
        dw      $728E                                                           ; $72C3 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $72C5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $72C7 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $72C9 execution token
        dw      XT_RETURN                                                       ; $72CB execution token

COMPLETE_FIGURE_A_REMAINING_ACTION:
        rst     $08                                                             ; $72CD colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $72CE execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $72D0 execution token
        dw      XT_LIT                                                          ; $72D2 execution token
        dw      $FFD8                                                           ; $72D4 inline word
        dw      XT_LITbyte                                                      ; $72D6 execution token
        db      $05                                                             ; $72D8 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $72D9 execution token
        dw      XT_LIT                                                          ; $72DB execution token
        dw      $5196                                                           ; $72DD inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $72DF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $72E1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $72E3 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $72E5 execution token
        dw      XT_LITbyte                                                      ; $72E7 execution token
        db      $1E                                                             ; $72E9 inline byte
        dw      XT_LIT                                                          ; $72EA execution token
        dw      $FFDF                                                           ; $72EC inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $72EE execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $72F0 execution token
        dw      XT_LITbyte                                                      ; $72F2 execution token
        db      $1E                                                             ; $72F4 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $72F5 execution token
        dw      $1A2C                                                           ; $72F7 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $72F9 execution token
        dw      XT_LIT                                                          ; $72FB execution token
        dw      $728E                                                           ; $72FD inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $72FF execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7301 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7303 execution token
        dw      XT_RETURN                                                       ; $7305 execution token

COMPLETE_FIGURE_A_ACTIONS:
        db      $04                                                             ; $7307 action count
        dw      COMPLETE_FIGURE_A_SETUP_ACTION                                  ; $7308 setup action
        dw      COMPLETE_FIGURE_A_CORRECT_ACTION                                ; $730A correct answer
        dw      COMPLETE_FIGURE_A_SECOND_ACTION                                 ; $730C second answer
        dw      COMPLETE_FIGURE_A_REMAINING_ACTION                              ; $730E remaining answer

; Rooted by tier slots 0, 3, 4, 7.
COMPLETE_FIGURE_A_T0_3_4_7_INIT:
        rst     $08                                                          ; $7310
        dw      XT_LIT                                                          ; $7311
        dw      PPQ9_COMPLETE_FIGURE_A_ACTIONS                                  ; $7313
        dw      XT_RETURN                                                       ; $7315
        db      $00,$00,$90,$50,$00,$F6,$FF,$40,$05                             ; $7317
        db      $00,$00,$8A,$CB,$FF,$0D,$00,$40,$FC,$F0,$00,$00,$00,$A0,$F5,$FF ; $7320
        db      $0B,$00,$50,$FD,$B0,$02,$00,$00,$CA,$04,$00,$10,$00,$E8,$00,$A8 ; $7330
        db      $03,$00,$00,$FD,$10,$00,$01,$00,$C0,$03,$40,$00,$00,$00,$3E,$03 ; $7340
        db      $00,$C5,$FF,$30,$00,$18,$FC,$00,$00,$00,$90,$AA,$FF,$0A,$00,$C0 ; $7350
        db      $03,$00,$00,$0C,$58,$00,$E6,$FF,$B0,$03,$E8,$FE,$00,$00,$70,$CA ; $7360
        db      $FF,$E9,$FF,$78,$FC,$88,$FE,$00,$00,$00,$5F,$00,$00,$00,$E8,$03 ; $7370
        db      $00,$00,$00,$00,$00,$90,$AA,$FF,$E2,$FF,$C0,$03,$00,$00,$EE,$4F ; $7380
        db      $00,$25,$00,$80,$03,$A8,$01,$00,$00,$59,$E5,$FF,$D9,$FF,$C8,$FD ; $7390
        db      $D0,$FC,$00,$00,$03,$4D,$00,$FA,$FF,$E0,$03,$B8,$FF,$00,$00,$00 ; $73A0
        db      $90,$AA,$FF,$BA,$FF,$C0,$03,$00,$00,$E4,$53,$00,$44,$00,$00,$03 ; $73B0
        db      $78,$02,$00,$00,$55,$DF,$FF,$C5,$FF,$18,$FE,$A0,$FC,$00,$00,$F5 ; $73C0
        db      $4E,$00,$16,$00,$C0,$03,$08,$01,$00,$58,$73,$83,$73,$AE,$73,$1F ; $73D0
        db      $77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20,$63,$6F,$6D ; $73E0
        db      $70,$6C,$65,$74,$65,$64,$20,$66,$69,$67,$75,$72,$65,$3F,$20     ; $73F0 preserved bytes

COMPLETE_FIGURE_B_SETUP_ACTION:
        rst     $08                                                             ; $73FF colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7400 execution token
        dw      XT_LIT                                                          ; $7402 execution token
        dw      $FFA6                                                           ; $7404 inline word
        dw      XT_LITbyte                                                      ; $7406 execution token
        db      $18                                                             ; $7408 inline byte
        dw      XT_LIT                                                          ; $7409 execution token
        dw      $73DF                                                           ; $740B inline word
        dw      XT_LIT                                                          ; $740D execution token
        dw      $73D9                                                           ; $740F inline word
        dw      XT_LIT                                                          ; $7411 execution token
        dw      $2D8C                                                           ; $7413 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7415 execution token
        dw      XT_LITbyte                                                      ; $7417 execution token
        db      $32                                                             ; $7419 inline byte
        dw      XT_LIT                                                          ; $741A execution token
        dw      $FFD8                                                           ; $741C inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $741E execution token
        dw      XT_LIT                                                          ; $7420 execution token
        dw      $6F42                                                           ; $7422 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7424 execution token
        dw      XT_LIT                                                          ; $7426 execution token
        dw      $7317                                                           ; $7428 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $742A execution token
        dw      XT_LIT                                                          ; $742C execution token
        dw      $6DFC                                                           ; $742E inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7430 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7432 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7434 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7436 execution token
        dw      $866C                                                           ; $7438 execution token
        dw      XT_LIT                                                          ; $743A execution token
        dw      $F6E7                                                           ; $743C inline word
        dw      XT_BONE                                                         ; $743E execution token
        dw      XT_LIT                                                          ; $7440 execution token
        dw      $702E                                                           ; $7442 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7444 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7446 execution token
        dw      $1EF6                                                           ; $7448 execution token
        dw      XT_LITbyte                                                      ; $744A execution token
        db      $28                                                             ; $744C inline byte
        dw      XT_LIT                                                          ; $744D execution token
        dw      $FFE4                                                           ; $744F inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7451 execution token
        dw      XT_LIT                                                          ; $7453 execution token
        dw      $6DFC                                                           ; $7455 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7457 execution token
        dw      $1E34                                                           ; $7459 execution token
        dw      XT_LITbyte                                                      ; $745B execution token
        db      $14                                                             ; $745D inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $745E execution token
        dw      $1A2C                                                           ; $7460 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7462 execution token
        dw      XT_RETURN                                                       ; $7464 execution token

COMPLETE_FIGURE_B_CORRECT_ACTION:
        rst     $08                                                             ; $7466 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7467 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7469 execution token
        dw      XT_LIT                                                          ; $746B execution token
        dw      $FFD8                                                           ; $746D inline word
        dw      XT_LITbyte                                                      ; $746F execution token
        db      $05                                                             ; $7471 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7472 execution token
        dw      XT_LIT                                                          ; $7474 execution token
        dw      $6820                                                           ; $7476 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7478 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $747A execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $747C execution token
        dw      COMPLETE_FIGURE_B_CORRECT_THREAD                                ; $747E execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7480 execution token
        dw      XT_LIT                                                          ; $7482 execution token
        dw      $F6E7                                                           ; $7484 inline word
        dw      XT_BONE                                                         ; $7486 execution token
        dw      XT_LIT                                                          ; $7488 execution token
        dw      $7045                                                           ; $748A inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $748C execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $748E execution token
        dw      XT_LITbyte                                                      ; $7490 execution token
        db      $2B                                                             ; $7492 inline byte
        dw      XT_LIT                                                          ; $7493 execution token
        dw      $FFDA                                                           ; $7495 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7497 execution token
        dw      XT_LIT                                                          ; $7499 execution token
        dw      $6820                                                           ; $749B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $749D execution token
        dw      $1E34                                                           ; $749F execution token
        dw      XT_LITbyte                                                      ; $74A1 execution token
        db      $40                                                             ; $74A3 inline byte
        dw      $1E5C                                                           ; $74A4 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $74A6 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $74A8 execution token
        dw      XT_RETURN                                                       ; $74AA execution token

COMPLETE_FIGURE_B_SECOND_ACTION:
        rst     $08                                                             ; $74AC colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $74AD execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $74AF execution token
        dw      XT_LIT                                                          ; $74B1 execution token
        dw      $FFD8                                                           ; $74B3 inline word
        dw      XT_LITbyte                                                      ; $74B5 execution token
        db      $05                                                             ; $74B7 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $74B8 execution token
        dw      XT_LIT                                                          ; $74BA execution token
        dw      $6B0E                                                           ; $74BC inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $74BE execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $74C0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $74C2 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $74C4 execution token
        dw      COMPLETE_FIGURE_B_DIST_THREAD                                   ; $74C6 execution token
        dw      XT_LITbyte                                                      ; $74C8 execution token
        db      $03                                                             ; $74CA inline byte
        dw      XT_LIT                                                          ; $74CB execution token
        dw      $FFDA                                                           ; $74CD inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $74CF execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $74D1 execution token
        dw      XT_LITbyte                                                      ; $74D3 execution token
        db      $28                                                             ; $74D5 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $74D6 execution token
        dw      $1A2C                                                           ; $74D8 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $74DA execution token
        dw      XT_LIT                                                          ; $74DC execution token
        dw      $7051                                                           ; $74DE inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $74E0 execution token
        dw      XT_LITbyte                                                      ; $74E2 execution token
        db      $1E                                                             ; $74E4 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $74E5 execution token
        dw      $19E9                                                           ; $74E7 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $74E9 execution token
        dw      XT_LIT                                                          ; $74EB execution token
        dw      $493F                                                           ; $74ED inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $74EF execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $74F1 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $74F3 execution token
        dw      XT_RETURN                                                       ; $74F5 execution token

COMPLETE_FIGURE_B_REMAINING_ACTION:
        rst     $08                                                             ; $74F7 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $74F8 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $74FA execution token
        dw      XT_LIT                                                          ; $74FC execution token
        dw      $FFD8                                                           ; $74FE inline word
        dw      XT_LITbyte                                                      ; $7500 execution token
        db      $05                                                             ; $7502 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7503 execution token
        dw      $1EE9                                                           ; $7505 execution token
        dw      XT_LIT                                                          ; $7507 execution token
        dw      $6820                                                           ; $7509 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $750B execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $750D execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $750F execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7511 execution token
        dw      COMPLETE_FIGURE_B_DIST_THREAD                                   ; $7513 execution token
        dw      XT_LITbyte                                                      ; $7515 execution token
        db      $03                                                             ; $7517 inline byte
        dw      XT_LIT                                                          ; $7518 execution token
        dw      $FFDA                                                           ; $751A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $751C execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $751E execution token
        dw      XT_LITbyte                                                      ; $7520 execution token
        db      $28                                                             ; $7522 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7523 execution token
        dw      $1A2C                                                           ; $7525 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7527 execution token
        dw      XT_LIT                                                          ; $7529 execution token
        dw      $7045                                                           ; $752B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $752D execution token
        dw      XT_LITbyte                                                      ; $752F execution token
        db      $1E                                                             ; $7531 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7532 execution token
        dw      $19E9                                                           ; $7534 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7536 execution token
        dw      XT_LIT                                                          ; $7538 execution token
        dw      $493F                                                           ; $753A inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $753C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $753E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7540 execution token
        dw      XT_RETURN                                                       ; $7542 execution token

COMPLETE_FIGURE_B_ACTIONS:
        db      $04                                                             ; $7544 action count
        dw      COMPLETE_FIGURE_B_SETUP_ACTION                                  ; $7545 setup action
        dw      COMPLETE_FIGURE_B_CORRECT_ACTION                                ; $7547 correct answer
        dw      COMPLETE_FIGURE_B_SECOND_ACTION                                 ; $7549 second answer
        dw      COMPLETE_FIGURE_B_REMAINING_ACTION                              ; $754B remaining answer

; Rooted by tier slots 0, 1, 2, 5, 6.
COMPLETE_FIGURE_B_T0_1_2_5_6_INIT:
        rst     $08                                                          ; $754D
        dw      XT_LIT                                                          ; $754E
        dw      PPQ9_COMPLETE_FIGURE_B_ACTIONS                                  ; $7550
        dw      XT_RETURN                                                       ; $7552
        db      $00,$00,$90,$3C,$00,$EE,$FF,$80,$08                             ; $7554
        db      $00,$00,$00,$0A,$00,$00,$00,$E8,$03,$00,$00,$00,$00,$E4,$0A,$00 ; $755D
        db      $08,$00,$00,$03,$78,$02,$00,$00,$C2,$01,$00,$10,$00,$30,$00,$E8 ; $756D
        db      $03,$00,$00,$92,$F1,$FF,$07,$00,$80,$FC,$A8,$01,$00,$00,$7E,$E9 ; $757D
        db      $FF,$FF,$FF,$18,$FC,$D0,$FF,$00,$00,$5E,$F8,$FF,$F7,$FF,$68,$FD ; $758D
        db      $20,$FD,$00,$00,$55,$FC,$FF,$F9,$FF,$18,$FE,$A0,$FC,$00,$00,$4A ; $759D
        db      $F9,$FF,$E4,$FF,$10,$FF,$38,$FC,$00,$00,$00,$90,$B0,$FF,$0A,$00 ; $75AD
        db      $40,$01,$00,$00,$0E,$6A,$00,$D9,$FF,$90,$02,$18,$FF,$00,$00,$00 ; $75BD
        db      $90,$B0,$FF,$E2,$FF,$80,$01,$00,$00,$FF,$70,$00,$01,$00,$BC,$02 ; $75CD
        db      $10,$00,$00,$00,$00,$90,$B0,$FF,$BA,$FF,$40,$01,$00,$00,$F1,$6A ; $75DD
        db      $00,$29,$00,$8C,$02,$F8,$00,$00,$00,$00,$90,$F7,$FF,$E3,$FF,$00 ; $75ED
        db      $09,$32,$00,$D1,$0E,$00,$1F,$00,$C0,$04,$B4,$0A,$00,$00,$F0,$1F ; $75FD
        db      $00,$0D,$00,$D4,$0A,$78,$04,$00,$00,$10,$23,$00,$F2,$FF,$D0,$0A ; $760D
        db      $88,$FB,$00,$00,$31,$0B,$00,$E4,$FF,$30,$04,$18,$F5,$00,$00,$4F ; $761D
        db      $F4,$FF,$E1,$FF,$D0,$FB,$18,$F5,$00,$00,$71,$DE,$FF,$F3,$FF,$18 ; $762D
        db      $F5,$D0,$FB,$00,$00,$8E,$DA,$FF,$0E,$00,$FC,$F4,$EC,$03,$00,$00 ; $763D
        db      $AF,$EC,$FF,$2D,$00,$40,$FB,$B0,$0A,$00,$00,$C9,$09,$00,$28,$00 ; $764D
        db      $8C,$02,$68,$0B,$00,$B6,$75,$CB,$75,$E0,$75,$1F,$77,$68,$69,$63 ; $765D
        db      $68,$20,$69,$73,$20,$74,$68,$65,$20,$63,$6F,$6D,$70,$6C,$65,$74 ; $766D
        db      $65,$64,$20,$66,$69,$67,$75,$72,$65,$3F,$20                     ; $767D preserved bytes

COMPLETE_FIGURE_C_SETUP_ACTION:
        rst     $08                                                             ; $7688 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7689 execution token
        dw      XT_LIT                                                          ; $768B execution token
        dw      $FFA6                                                           ; $768D inline word
        dw      XT_LITbyte                                                      ; $768F execution token
        db      $18                                                             ; $7691 inline byte
        dw      XT_LIT                                                          ; $7692 execution token
        dw      $7668                                                           ; $7694 inline word
        dw      XT_LIT                                                          ; $7696 execution token
        dw      $7662                                                           ; $7698 inline word
        dw      XT_LIT                                                          ; $769A execution token
        dw      $2D8C                                                           ; $769C inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $769E execution token
        dw      XT_LITbyte                                                      ; $76A0 execution token
        db      $17                                                             ; $76A2 inline byte
        dw      XT_LIT                                                          ; $76A3 execution token
        dw      $FFDF                                                           ; $76A5 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $76A7 execution token
        dw      XT_LIT                                                          ; $76A9 execution token
        dw      $6709                                                           ; $76AB inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $76AD execution token
        dw      XT_LIT                                                          ; $76AF execution token
        dw      $7554                                                           ; $76B1 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $76B3 execution token
        dw      XT_LIT                                                          ; $76B5 execution token
        dw      $6691                                                           ; $76B7 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $76B9 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $76BB execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $76BD execution token
        dw      XT_LIT                                                          ; $76BF execution token
        dw      $F6E7                                                           ; $76C1 inline word
        dw      XT_BONE                                                         ; $76C3 execution token
        dw      $866C                                                           ; $76C5 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $76C7 execution token
        dw      XT_LIT                                                          ; $76C9 execution token
        dw      $67E5                                                           ; $76CB inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $76CD execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $76CF execution token
        dw      $1EF6                                                           ; $76D1 execution token
        dw      XT_LIT                                                          ; $76D3 execution token
        dw      $6691                                                           ; $76D5 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $76D7 execution token
        dw      XT_LITbyte                                                      ; $76D9 execution token
        db      $19                                                             ; $76DB inline byte
        dw      XT_LIT                                                          ; $76DC execution token
        dw      $FFE1                                                           ; $76DE inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $76E0 execution token
        dw      $1E34                                                           ; $76E2 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $76E4 execution token
        dw      XT_RETURN                                                       ; $76E6 execution token

COMPLETE_FIGURE_C_CORRECT_ACTION:
        rst     $08                                                             ; $76E8 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $76E9 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $76EB execution token
        dw      XT_LIT                                                          ; $76ED execution token
        dw      $FFD8                                                           ; $76EF inline word
        dw      XT_LITbyte                                                      ; $76F1 execution token
        db      $0A                                                             ; $76F3 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $76F4 execution token
        dw      XT_LIT                                                          ; $76F6 execution token
        dw      $6082                                                           ; $76F8 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $76FA execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $76FC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $76FE execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7700 execution token
        dw      COMPLETE_FIGURE_C_CORRECT_THREAD                                ; $7702 execution token
        dw      XT_LITbyte                                                      ; $7704 execution token
        db      $04                                                             ; $7706 inline byte
        dw      XT_SET_TASK_BYTE_0C                                             ; $7707 execution token
        dw      XT_LIT                                                          ; $7709 execution token
        dw      $67FC                                                           ; $770B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $770D execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $770F execution token
        dw      XT_LIT                                                          ; $7711 execution token
        dw      $6082                                                           ; $7713 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7715 execution token
        dw      XT_LITbyte                                                      ; $7717 execution token
        db      $1A                                                             ; $7719 inline byte
        dw      XT_LIT                                                          ; $771A execution token
        dw      $FFE3                                                           ; $771C inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $771E execution token
        dw      $1E34                                                           ; $7720 execution token
        dw      XT_LITbyte                                                      ; $7722 execution token
        db      $40                                                             ; $7724 inline byte
        dw      $1E5C                                                           ; $7725 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7727 execution token
        dw      XT_LIT                                                          ; $7729 execution token
        dw      $2D8C                                                           ; $772B inline word
        dw      XT_CLEAR_PRESENTATION_TABLE                                     ; $772D execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $772F execution token
        dw      XT_RETURN                                                       ; $7731 execution token

COMPLETE_FIGURE_C_SECOND_ACTION:
        rst     $08                                                             ; $7733 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7734 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7736 execution token
        dw      XT_LIT                                                          ; $7738 execution token
        dw      $FFD8                                                           ; $773A inline word
        dw      XT_LITbyte                                                      ; $773C execution token
        db      $0A                                                             ; $773E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $773F execution token
        dw      XT_LIT                                                          ; $7741 execution token
        dw      $62CC                                                           ; $7743 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7745 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7747 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7749 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $774B execution token
        dw      XT_LIT                                                          ; $774D execution token
        dw      $6808                                                           ; $774F inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7751 execution token
        dw      XT_LIT                                                          ; $7753 execution token
        dw      $75F5                                                           ; $7755 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7757 execution token
        dw      XT_LITbyte                                                      ; $7759 execution token
        db      $1E                                                             ; $775B inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $775C execution token
        dw      $19E9                                                           ; $775E execution token
        dw      COMPLETE_FIGURE_C_DIST_THREAD                                   ; $7760 execution token
        dw      XT_LIT                                                          ; $7762 execution token
        dw      $62CC                                                           ; $7764 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7766 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7768 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $776A execution token
        dw      XT_LITbyte                                                      ; $776C execution token
        db      $1E                                                             ; $776E inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $776F execution token
        dw      $1A2C                                                           ; $7771 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7773 execution token
        dw      XT_RETURN                                                       ; $7775 execution token

COMPLETE_FIGURE_C_REMAINING_ACTION:
        rst     $08                                                             ; $7777 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7778 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $777A execution token
        dw      XT_LIT                                                          ; $777C execution token
        dw      $FFD8                                                           ; $777E inline word
        dw      XT_LITbyte                                                      ; $7780 execution token
        db      $0A                                                             ; $7782 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7783 execution token
        dw      XT_LIT                                                          ; $7785 execution token
        dw      $6463                                                           ; $7787 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7789 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $778B execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $778D execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $778F execution token
        dw      XT_LIT                                                          ; $7791 execution token
        dw      $6814                                                           ; $7793 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7795 execution token
        dw      XT_LIT                                                          ; $7797 execution token
        dw      $75F5                                                           ; $7799 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $779B execution token
        dw      XT_LITbyte                                                      ; $779D execution token
        db      $1E                                                             ; $779F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $77A0 execution token
        dw      $19E9                                                           ; $77A2 execution token
        dw      COMPLETE_FIGURE_C_DIST_THREAD                                   ; $77A4 execution token
        dw      XT_LIT                                                          ; $77A6 execution token
        dw      $6463                                                           ; $77A8 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $77AA execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $77AC execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $77AE execution token
        dw      XT_LITbyte                                                      ; $77B0 execution token
        db      $1E                                                             ; $77B2 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $77B3 execution token
        dw      $1A2C                                                           ; $77B5 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $77B7 execution token
        dw      XT_RETURN                                                       ; $77B9 execution token

COMPLETE_FIGURE_C_ACTIONS:
        db      $04                                                             ; $77BB action count
        dw      COMPLETE_FIGURE_C_SETUP_ACTION                                  ; $77BC setup action
        dw      COMPLETE_FIGURE_C_CORRECT_ACTION                                ; $77BE correct answer
        dw      COMPLETE_FIGURE_C_SECOND_ACTION                                 ; $77C0 second answer
        dw      COMPLETE_FIGURE_C_REMAINING_ACTION                              ; $77C2 remaining answer

; Rooted by tier slots 0, 1, 5, 6.
COMPLETE_FIGURE_C_T0_1_5_6_INIT:
        rst     $08                                                          ; $77C4
        dw      XT_LIT                                                          ; $77C5
        dw      PPQ9_COMPLETE_FIGURE_C_ACTIONS                                  ; $77C7
        dw      XT_RETURN                                                       ; $77C9
        db      $00,$00,$90,$57,$00,$ED,$FF,$40,$05                             ; $77CB
        db      $00,$00,$8B,$C1,$FF,$11,$00,$80,$F8,$10,$02,$00,$00,$7E,$ED,$FF ; $77D4
        db      $FF,$FF,$30,$F8,$A0,$FF,$00,$00,$6A,$EC,$FF,$F4,$FF,$70,$F9,$10 ; $77E4
        db      $FC,$00,$00,$4E,$F6,$FF,$E4,$FF,$70,$FD,$D0,$F8,$00,$00,$29,$09 ; $77F4
        db      $00,$F2,$FF,$20,$04,$80,$F9,$01,$00,$00,$00,$52,$00,$00,$00,$E0 ; $7804
        db      $03,$00,$00,$00,$00,$00,$90,$1D,$00,$CC,$FF,$00,$03,$1E,$00,$3C ; $7814
        db      $03,$00,$E0,$FF,$C0,$00,$40,$F8,$00,$00,$E2,$14,$00,$12,$00,$C0 ; $7824
        db      $05,$30,$05,$00,$00,$23,$0D,$00,$EC,$FF,$10,$05,$20,$FA,$00,$00 ; $7834
        db      $00,$90,$AA,$FF,$0A,$00,$80,$03,$00,$00,$00,$8E,$00,$00,$00,$D0 ; $7844
        db      $07,$00,$00,$00,$00,$62,$BB,$FF,$C0,$FF,$40,$FA,$D0,$FA,$00,$00 ; $7854
        db      $FF,$50,$00,$01,$00,$D0,$07,$20,$00,$00,$00,$00,$90,$B4,$FF,$E2 ; $7864
        db      $FF,$C0,$03,$00,$00,$F0,$56,$00,$24,$00,$30,$07,$F0,$02,$00,$00 ; $7874
        db      $4E,$EA,$FF,$C5,$FF,$70,$FD,$B0,$F8,$00,$00,$FF,$51,$00,$01,$00 ; $7884
        db      $D0,$07,$20,$00,$00,$00,$00,$90,$AA,$FF,$BA,$FF,$00,$03,$00,$00 ; $7894
        db      $EE,$61,$00,$2F,$00,$58,$06,$FC,$02,$00,$00,$58,$E5,$FF,$D7,$FF ; $78A4
        db      $1C,$FC,$28,$FA,$00,$00,$FA,$55,$00,$0D,$00,$F0,$06,$08,$01,$00 ; $78B4
        db      $43,$78,$6E,$78,$99,$78,$1F,$77,$68,$69,$63,$68,$20,$69,$73,$20 ; $78C4
        db      $74,$68,$65,$20,$63,$6F,$6D,$70,$6C,$65,$74,$65,$64,$20,$66,$69 ; $78D4
        db      $67,$75,$72,$65,$3F,$20,$04,$00,$89,$00,$03,$5E,$5F,$00,$03,$F2 ; $78E4
        db      $5F,$C0,$03,$5E,$5F,$C0,$03,$F2,$5F,$00,$00,$ED,$78             ; $78F4 preserved bytes

COMPLETE_FIGURE_D_SETUP_ACTION:
        rst     $08                                                             ; $7901 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7902 execution token
        dw      XT_LIT                                                          ; $7904 execution token
        dw      $FFA6                                                           ; $7906 inline word
        dw      XT_LITbyte                                                      ; $7908 execution token
        db      $18                                                             ; $790A inline byte
        dw      XT_LIT                                                          ; $790B execution token
        dw      $78CA                                                           ; $790D inline word
        dw      XT_LIT                                                          ; $790F execution token
        dw      $78C4                                                           ; $7911 inline word
        dw      XT_LIT                                                          ; $7913 execution token
        dw      $2D8C                                                           ; $7915 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7917 execution token
        dw      XT_LITbyte                                                      ; $7919 execution token
        db      $44                                                             ; $791B inline byte
        dw      XT_LIT                                                          ; $791C execution token
        dw      $FFD1                                                           ; $791E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7920 execution token
        dw      XT_LIT                                                          ; $7922 execution token
        dw      $5ECA                                                           ; $7924 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7926 execution token
        dw      XT_LIT                                                          ; $7928 execution token
        dw      $77CB                                                           ; $792A inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $792C execution token
        dw      XT_LIT                                                          ; $792E execution token
        dw      $5F5E                                                           ; $7930 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7932 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7934 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7936 execution token
        dw      PPQ9_SHARED_SETUP_THREAD                                        ; $7938 execution token
        dw      XT_LIT                                                          ; $793A execution token
        dw      $F6E7                                                           ; $793C inline word
        dw      XT_BONE                                                         ; $793E execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7940 execution token
        dw      XT_LIT                                                          ; $7942 execution token
        dw      $78EA                                                           ; $7944 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7946 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7948 execution token
        dw      $1EF6                                                           ; $794A execution token
        dw      XT_LIT                                                          ; $794C execution token
        dw      $5F5E                                                           ; $794E inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7950 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7952 execution token
        dw      XT_LITbyte                                                      ; $7954 execution token
        db      $42                                                             ; $7956 inline byte
        dw      XT_LIT                                                          ; $7957 execution token
        dw      $FFC7                                                           ; $7959 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $795B execution token
        dw      $1E34                                                           ; $795D execution token
        dw      XT_LITbyte                                                      ; $795F execution token
        db      $0F                                                             ; $7961 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7962 execution token
        dw      $1A2C                                                           ; $7964 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7966 execution token
        dw      XT_RETURN                                                       ; $7968 execution token

        db      $02,$00,$81,$04,$31,$5B,$04,$16,$5C,$00                         ; $796A preserved bytes
        db      $6D,$79                                                         ; $7974 preserved bytes

COMPLETE_FIGURE_D_CORRECT_ACTION:
        rst     $08                                                             ; $7976 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7977 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7979 execution token
        dw      XT_LIT                                                          ; $797B execution token
        dw      $FFD8                                                           ; $797D inline word
        dw      XT_LITbyte                                                      ; $797F execution token
        db      $05                                                             ; $7981 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7982 execution token
        dw      XT_LIT                                                          ; $7984 execution token
        dw      $5B31                                                           ; $7986 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7988 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $798A execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $798C execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $798E execution token
        dw      XT_LIT                                                          ; $7990 execution token
        dw      $796A                                                           ; $7992 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7994 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7996 execution token
        dw      XT_LITbyte                                                      ; $7998 execution token
        db      $45                                                             ; $799A inline byte
        dw      XT_LIT                                                          ; $799B execution token
        dw      $FFCC                                                           ; $799D inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $799F execution token
        dw      XT_LIT                                                          ; $79A1 execution token
        dw      $5B31                                                           ; $79A3 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $79A5 execution token
        dw      $1E34                                                           ; $79A7 execution token
        dw      XT_LITbyte                                                      ; $79A9 execution token
        db      $40                                                             ; $79AB inline byte
        dw      $1E5C                                                           ; $79AC execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $79AE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $79B0 execution token
        dw      XT_RETURN                                                       ; $79B2 execution token
        db      $02,$00,$81,$04,$EC,$5C,$04,$D1,$5D,$00,$B7,$79                 ; $79B4 preserved bytes

COMPLETE_FIGURE_D_SECOND_ACTION:
        rst     $08                                                             ; $79C0 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $79C1 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $79C3 execution token
        dw      XT_LIT                                                          ; $79C5 execution token
        dw      $FFD8                                                           ; $79C7 inline word
        dw      XT_LITbyte                                                      ; $79C9 execution token
        db      $05                                                             ; $79CB inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $79CC execution token
        dw      XT_LIT                                                          ; $79CE execution token
        dw      $5CEC                                                           ; $79D0 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $79D2 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $79D4 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $79D6 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $79D8 execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_4                                 ; $79DA execution token
        dw      XT_LIT                                                          ; $79DC execution token
        dw      $79B4                                                           ; $79DE inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $79E0 execution token
        dw      XT_LIT                                                          ; $79E2 execution token
        dw      $7818                                                           ; $79E4 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $79E6 execution token
        dw      XT_LITbyte                                                      ; $79E8 execution token
        db      $1E                                                             ; $79EA inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $79EB execution token
        dw      $19E9                                                           ; $79ED execution token
        dw      XT_LIT                                                          ; $79EF execution token
        dw      $5B31                                                           ; $79F1 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $79F3 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $79F5 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $79F7 execution token
        dw      XT_RETURN                                                       ; $79F9 execution token

COMPLETE_FIGURE_D_REMAINING_ACTION:
        rst     $08                                                             ; $79FB colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $79FC execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $79FE execution token
        dw      XT_LIT                                                          ; $7A00 execution token
        dw      $FFD8                                                           ; $7A02 inline word
        dw      XT_LITbyte                                                      ; $7A04 execution token
        db      $05                                                             ; $7A06 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7A07 execution token
        dw      XT_SET_OBJECT_MODE_1                                            ; $7A09 execution token
        dw      XT_LIT                                                          ; $7A0B execution token
        dw      $5B31                                                           ; $7A0D inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7A0F execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7A11 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7A13 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7A15 execution token
        dw      COMPLETE_FIGURE_D_DIST_THREAD_4                                 ; $7A17 execution token
        dw      XT_LIT                                                          ; $7A19 execution token
        dw      $796A                                                           ; $7A1B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7A1D execution token
        dw      XT_LIT                                                          ; $7A1F execution token
        dw      $7818                                                           ; $7A21 inline word
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7A23 execution token
        dw      XT_LITbyte                                                      ; $7A25 execution token
        db      $1E                                                             ; $7A27 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7A28 execution token
        dw      $19E9                                                           ; $7A2A execution token
        dw      XT_LIT                                                          ; $7A2C execution token
        dw      $5B31                                                           ; $7A2E inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7A30 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7A32 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7A34 execution token
        dw      XT_RETURN                                                       ; $7A36 execution token

COMPLETE_FIGURE_D_ACTIONS:
        db      $04                                                             ; $7A38 action count
        dw      COMPLETE_FIGURE_D_SETUP_ACTION                                  ; $7A39 setup action
        dw      COMPLETE_FIGURE_D_CORRECT_ACTION                                ; $7A3B correct answer
        dw      COMPLETE_FIGURE_D_SECOND_ACTION                                 ; $7A3D second answer
        dw      COMPLETE_FIGURE_D_REMAINING_ACTION                              ; $7A3F remaining answer

; Rooted by tier slots 0, 1, 2, 5, 6.
COMPLETE_FIGURE_D_T0_1_2_5_6_INIT:
        rst     $08                                                          ; $7A41
        dw      XT_LIT                                                          ; $7A42
        dw      PPQ9_COMPLETE_FIGURE_D_ACTIONS                                  ; $7A44
        dw      XT_RETURN                                                       ; $7A46
        db      $00,$00,$90,$3C,$00,$F1,$FF,$C0,$01                             ; $7A48
        db      $00,$00,$48,$F7,$FF,$D0,$FF,$40,$FF,$30,$FC,$00,$00,$00,$90,$4F ; $7A51
        db      $00,$E9,$FF,$00,$01,$00,$00,$56,$E6,$FF,$D5,$FF,$00,$FE,$A8,$FC ; $7A61
        db      $00,$00,$00,$90,$14,$00,$F2,$FF,$C0,$01,$00,$00,$2A,$21,$00,$CA ; $7A71
        db      $FF,$00,$02,$A8,$FC,$00,$00,$00,$90,$0B,$00,$C1,$FF,$40,$03,$00 ; $7A81
        db      $00,$50,$F9,$FF,$EF,$FF,$88,$FE,$78,$FC,$00,$00,$9C,$F6,$FF,$08 ; $7A91
        db      $00,$10,$FD,$68,$02,$00,$00,$59,$F4,$FF,$EB,$FF,$D0,$FD,$E0,$FC ; $7AA1
        db      $00,$00,$00,$90,$0D,$00,$BE,$FF,$00,$03,$00,$00,$33,$09,$00,$E5 ; $7AB1
        db      $FF,$38,$01,$50,$FC,$00,$00,$E5,$0E,$00,$0B,$00,$10,$03,$60,$02 ; $7AC1
        db      $00,$00,$1E,$0D,$00,$F0,$FF,$E0,$02,$68,$FD,$00,$00,$00,$90,$0D ; $7AD1
        db      $00,$BC,$FF,$00,$01,$00,$00,$3B,$02,$00,$EC,$FF,$78,$00,$20,$FC ; $7AE1
        db      $00,$00,$00,$90,$AA,$FF,$0A,$00,$40,$03,$00,$00,$06,$34,$00,$F8 ; $7AF1
        db      $FF,$DC,$03,$6C,$FF,$00,$00,$13,$36,$00,$E5,$FF,$7C,$03,$40,$FE ; $7B01
        db      $00,$00,$22,$25,$00,$D7,$FF,$9C,$02,$1C,$FD,$00,$00,$00,$90,$AA ; $7B11
        db      $FF,$E2,$FF,$C0,$02,$00,$00,$02,$3C,$00,$FE,$FF,$E8,$03,$D0,$FF ; $7B21
        db      $00,$00,$10,$54,$00,$DE,$FF,$9C,$03,$84,$FE,$00,$00,$00,$90,$AA ; $7B31
        db      $FF,$BA,$FF,$80,$02,$00,$00,$FA,$60,$00,$0E,$00,$DC,$03,$94,$00 ; $7B41
        db      $00,$00,$08,$30,$00,$F6,$FF,$D4,$03,$40,$FF,$00,$F2,$7A,$1D,$7B ; $7B51
        db      $3D,$7B,$1E,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20 ; $7B61
        db      $63,$6F,$6D,$70,$6C,$65,$74,$65,$64,$20,$66,$69,$67,$75,$72,$65 ; $7B71
        db      $20                                                             ; $7B81 preserved bytes

COMPLETE_FIGURE_E_SETUP_RENDER:
        rst     $08                                                             ; $7B82 colon entry
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE                               ; $7B83 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7B85 execution token
        dw      XT_RETURN                                                       ; $7B87 execution token

COMPLETE_FIGURE_E_SETUP_THREAD:
        rst     $08                                                             ; $7B89 colon entry
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7B8A execution token
        dw      $1E34                                                           ; $7B8C execution token
        dw      XT_RETURN                                                       ; $7B8E execution token

        db      $72                                                             ; $7B90 preserved bytes
        db      $7A,$48,$7A,$5D,$7A,$F6,$5A,$F3,$59,$B1,$5A                     ; $7B91 preserved bytes

COMPLETE_FIGURE_E_SETUP_ACTION:
        rst     $08                                                             ; $7B9C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7B9D execution token
        dw      XT_LIT                                                          ; $7B9F execution token
        dw      $FFA6                                                           ; $7BA1 inline word
        dw      XT_LITbyte                                                      ; $7BA3 execution token
        db      $18                                                             ; $7BA5 inline byte
        dw      XT_LIT                                                          ; $7BA6 execution token
        dw      $7B63                                                           ; $7BA8 inline word
        dw      XT_LIT                                                          ; $7BAA execution token
        dw      $7B5D                                                           ; $7BAC inline word
        dw      XT_LIT                                                          ; $7BAE execution token
        dw      $2D8C                                                           ; $7BB0 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7BB2 execution token
        dw      XT_LITbyte                                                      ; $7BB4 execution token
        db      $03                                                             ; $7BB6 inline byte
        dw      XT_0                                                            ; $7BB7 execution token
        dw      XT_DO                                                           ; $7BB9 execution token
        dw      XT_I                                                            ; $7BBB execution token
        dw      XT_ARRAY                                                        ; $7BBD execution token
        dw      $7B90                                                           ; $7BBF inline word
        dw      XT_at                                                           ; $7BC1 execution token
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7BC3 execution token
        dw      XT_I                                                            ; $7BC5 execution token
        dw      XT_ARRAY                                                        ; $7BC7 execution token
        dw      $7B96                                                           ; $7BC9 inline word
        dw      XT_at                                                           ; $7BCB execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7BCD execution token
        dw      XT_LOOP                                                         ; $7BCF execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7BD1 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7BD3 execution token
        dw      XT_LIT                                                          ; $7BD5 execution token
        dw      $F6E7                                                           ; $7BD7 inline word
        dw      XT_BONE                                                         ; $7BD9 execution token
        dw      XT_LIT                                                          ; $7BDB execution token
        dw      $F6E8                                                           ; $7BDD inline word
        dw      XT_BONE                                                         ; $7BDF execution token
        dw      PPQ9_SHARED_SETUP_THREAD                                        ; $7BE1 execution token
        dw      XT_0                                                            ; $7BE3 execution token
        dw      XT_ARRAY                                                        ; $7BE5 execution token
        dw      $7B90                                                           ; $7BE7 inline word
        dw      XT_at                                                           ; $7BE9 execution token
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7BEB execution token
        dw      XT_0                                                            ; $7BED execution token
        dw      XT_ARRAY                                                        ; $7BEF execution token
        dw      $7B96                                                           ; $7BF1 inline word
        dw      XT_at                                                           ; $7BF3 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7BF5 execution token
        dw      COMPLETE_FIGURE_E_SETUP_RENDER                                  ; $7BF7 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7BF9 execution token
        dw      XT_LITbyte                                                      ; $7BFB execution token
        db      $35                                                             ; $7BFD inline byte
        dw      XT_LIT                                                          ; $7BFE execution token
        dw      $FFBC                                                           ; $7C00 inline word
        dw      COMPLETE_FIGURE_E_SETUP_THREAD                                  ; $7C02 execution token
        dw      XT_1                                                            ; $7C04 execution token
        dw      XT_ARRAY                                                        ; $7C06 execution token
        dw      $7B90                                                           ; $7C08 inline word
        dw      XT_at                                                           ; $7C0A execution token
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7C0C execution token
        dw      XT_1                                                            ; $7C0E execution token
        dw      XT_ARRAY                                                        ; $7C10 execution token
        dw      $7B96                                                           ; $7C12 inline word
        dw      XT_at                                                           ; $7C14 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7C16 execution token
        dw      COMPLETE_FIGURE_E_SETUP_RENDER                                  ; $7C18 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7C1A execution token
        dw      XT_LITbyte                                                      ; $7C1C execution token
        db      $33                                                             ; $7C1E inline byte
        dw      XT_LIT                                                          ; $7C1F execution token
        dw      $FFC1                                                           ; $7C21 inline word
        dw      COMPLETE_FIGURE_E_SETUP_THREAD                                  ; $7C23 execution token
        dw      XT_LITbyte                                                      ; $7C25 execution token
        db      $02                                                             ; $7C27 inline byte
        dw      XT_ARRAY                                                        ; $7C28 execution token
        dw      $7B90                                                           ; $7C2A inline word
        dw      XT_at                                                           ; $7C2C execution token
        dw      XT_CONFIGURE_OBJECT_RENDER                                      ; $7C2E execution token
        dw      XT_LITbyte                                                      ; $7C30 execution token
        db      $02                                                             ; $7C32 inline byte
        dw      XT_ARRAY                                                        ; $7C33 execution token
        dw      $7B96                                                           ; $7C35 inline word
        dw      XT_at                                                           ; $7C37 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7C39 execution token
        dw      COMPLETE_FIGURE_E_SETUP_RENDER                                  ; $7C3B execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7C3D execution token
        dw      XT_LITbyte                                                      ; $7C3F execution token
        db      $35                                                             ; $7C41 inline byte
        dw      XT_LIT                                                          ; $7C42 execution token
        dw      $FFBE                                                           ; $7C44 inline word
        dw      COMPLETE_FIGURE_E_SETUP_THREAD                                  ; $7C46 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7C48 execution token
        dw      XT_RETURN                                                       ; $7C4A execution token

        db      $04,$00,$89,$00,$01                                             ; $7C4C preserved bytes
        db      $C1,$55,$00,$01,$74,$56,$C0,$01,$C1,$55,$C0,$01,$74,$56,$00,$00 ; $7C51
        db      $4F,$7C                                                         ; $7C61 preserved bytes

COMPLETE_FIGURE_E_CORRECT_ACTION:
        rst     $08                                                             ; $7C63 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7C64 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7C66 execution token
        dw      XT_LIT                                                          ; $7C68 execution token
        dw      $FFD8                                                           ; $7C6A inline word
        dw      XT_LITbyte                                                      ; $7C6C execution token
        db      $05                                                             ; $7C6E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7C6F execution token
        dw      XT_LIT                                                          ; $7C71 execution token
        dw      $55C1                                                           ; $7C73 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7C75 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7C77 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7C79 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7C7B execution token
        dw      XT_LIT                                                          ; $7C7D execution token
        dw      $7C4C                                                           ; $7C7F inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7C81 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7C83 execution token
        dw      XT_LITbyte                                                      ; $7C85 execution token
        db      $3A                                                             ; $7C87 inline byte
        dw      XT_LIT                                                          ; $7C88 execution token
        dw      $FFBE                                                           ; $7C8A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7C8C execution token
        dw      XT_LIT                                                          ; $7C8E execution token
        dw      $55C1                                                           ; $7C90 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7C92 execution token
        dw      $1E34                                                           ; $7C94 execution token
        dw      XT_LITbyte                                                      ; $7C96 execution token
        db      $40                                                             ; $7C98 inline byte
        dw      $1E5C                                                           ; $7C99 execution token
        dw      $1EDC                                                           ; $7C9B execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7C9D execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7C9F execution token
        dw      XT_RETURN                                                       ; $7CA1 execution token

        db      $CF,$99,$15,$09,$01,$F3,$59,$B4,$1C,$09,$01,$87,$7A,$D4         ; $7CA3 preserved bytes
        db      $24,$A8,$1E,$D5,$4B,$37,$23,$09,$01,$53,$5A,$B4,$1C,$34,$1E,$02 ; $7CB1
        db      $23,$FD,$00,$CF,$99,$15,$09,$01,$B1,$5A,$B4,$1C,$09,$01,$B2,$7A ; $7CC1
        db      $D4,$24,$A8,$1E,$37,$23,$02,$23,$FD,$00,$CF,$99,$15,$09,$01,$F6 ; $7CD1
        db      $5A,$B4,$1C,$09,$01,$DD,$7A,$D4,$24,$A8,$1E,$37,$23,$02,$23,$FD ; $7CE1
        db      $00,$03,$A3,$7C,$C4,$7C,$DB,$7C,$04,$00,$89,$00,$05,$27,$57,$00 ; $7CF1
        db      $05,$DA,$57,$C0,$05,$27,$57,$C0,$05,$DA,$57,$00,$00,$FC,$7C     ; $7D01 preserved bytes

COMPLETE_FIGURE_E_SECOND_ACTION:
        rst     $08                                                             ; $7D10 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D11 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7D13 execution token
        dw      XT_LIT                                                          ; $7D15 execution token
        dw      $FFD8                                                           ; $7D17 inline word
        dw      XT_LITbyte                                                      ; $7D19 execution token
        db      $05                                                             ; $7D1B inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7D1C execution token
        dw      XT_LIT                                                          ; $7D1E execution token
        dw      $5727                                                           ; $7D20 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7D22 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7D24 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D26 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7D28 execution token
        dw      XT_LIT                                                          ; $7D2A execution token
        dw      $7CF9                                                           ; $7D2C inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D2E execution token
        dw      XT_LITbyte                                                      ; $7D30 execution token
        db      $12                                                             ; $7D32 inline byte
        dw      XT_LIT                                                          ; $7D33 execution token
        dw      $FFBE                                                           ; $7D35 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D37 execution token
        dw      XT_LITbyte                                                      ; $7D39 execution token
        db      $29                                                             ; $7D3B inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D3C execution token
        dw      $19E9                                                           ; $7D3E execution token
        dw      XT_LITbyte                                                      ; $7D40 execution token
        db      $14                                                             ; $7D42 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D43 execution token
        dw      $1A2C                                                           ; $7D45 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7D47 execution token
        dw      XT_LIT                                                          ; $7D49 execution token
        dw      $7CF2                                                           ; $7D4B inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7D4D execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D4F execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7D51 execution token
        dw      XT_RETURN                                                       ; $7D53 execution token

        db      $04,$00,$89,$00,$05,$8D,$58,$00,$05,$40,$59,$C0                 ; $7D55 preserved bytes
        db      $05,$8D,$58,$C0,$05,$40,$59,$00,$00,$58,$7D                     ; $7D61 preserved bytes

COMPLETE_FIGURE_E_REMAINING_ACTION:
        rst     $08                                                             ; $7D6C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D6D execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7D6F execution token
        dw      XT_LIT                                                          ; $7D71 execution token
        dw      $FFD8                                                           ; $7D73 inline word
        dw      XT_LITbyte                                                      ; $7D75 execution token
        db      $05                                                             ; $7D77 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7D78 execution token
        dw      XT_LIT                                                          ; $7D7A execution token
        dw      $588D                                                           ; $7D7C inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7D7E execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7D80 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D82 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7D84 execution token
        dw      XT_LIT                                                          ; $7D86 execution token
        dw      $7D55                                                           ; $7D88 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D8A execution token
        dw      XT_LITbyte                                                      ; $7D8C execution token
        db      $12                                                             ; $7D8E inline byte
        dw      XT_LIT                                                          ; $7D8F execution token
        dw      $FFBE                                                           ; $7D91 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D93 execution token
        dw      XT_LITbyte                                                      ; $7D95 execution token
        db      $29                                                             ; $7D97 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D98 execution token
        dw      $19E9                                                           ; $7D9A execution token
        dw      XT_LITbyte                                                      ; $7D9C execution token
        db      $14                                                             ; $7D9E inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D9F execution token
        dw      $1A2C                                                           ; $7DA1 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7DA3 execution token
        dw      XT_LIT                                                          ; $7DA5 execution token
        dw      $7CF2                                                           ; $7DA7 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7DA9 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DAB execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7DAD execution token
        dw      XT_RETURN                                                       ; $7DAF execution token
COMPLETE_FIGURE_E_ACTIONS:
        db      $04                                                             ; $7DB1 action count
        dw      COMPLETE_FIGURE_E_SETUP_ACTION                                  ; $7DB2 setup action
        dw      COMPLETE_FIGURE_E_CORRECT_ACTION                                ; $7DB4 correct answer
        dw      COMPLETE_FIGURE_E_SECOND_ACTION                                 ; $7DB6 second answer
        dw      COMPLETE_FIGURE_E_REMAINING_ACTION                              ; $7DB8 remaining answer

; Rooted by tier slots 0, 1, 5, 6.
COMPLETE_FIGURE_E_T0_1_5_6_INIT:
        rst     $08                                                          ; $7DBA
        dw      XT_LIT                                                          ; $7DBB
        dw      PPQ9_COMPLETE_FIGURE_E_ACTIONS                                  ; $7DBD
        dw      XT_RETURN                                                       ; $7DBF

; Root tier slot 0.
QUESTION_TIER_0_BUCKET:
        db      $05                                                             ; $7DC1 initializer count
        dw      COMPLETE_FIGURE_D_T0_1_2_5_6_INIT                               ; $7DC2 entry 0
        dw      COMPLETE_FIGURE_E_T0_1_5_6_INIT                                 ; $7DC4 entry 1
        dw      COMPLETE_FIGURE_A_T0_3_4_7_INIT                                 ; $7DC6 entry 2
        dw      COMPLETE_FIGURE_C_T0_1_5_6_INIT                                 ; $7DC8 entry 3
        dw      COMPLETE_FIGURE_B_T0_1_2_5_6_INIT                               ; $7DCA entry 4

; Root tier slot 1.
QUESTION_TIER_1_BUCKET:
        db      $04                                                             ; $7DCC initializer count
        dw      COMPLETE_FIGURE_D_T0_1_2_5_6_INIT                               ; $7DCD entry 0
        dw      COMPLETE_FIGURE_E_T0_1_5_6_INIT                                 ; $7DCF entry 1
        dw      COMPLETE_FIGURE_C_T0_1_5_6_INIT                                 ; $7DD1 entry 2
        dw      COMPLETE_FIGURE_B_T0_1_2_5_6_INIT                               ; $7DD3 entry 3

; Root tier slot 2.
QUESTION_TIER_2_BUCKET:
        db      $02                                                             ; $7DD5 initializer count
        dw      COMPLETE_FIGURE_D_T0_1_2_5_6_INIT                               ; $7DD6 entry 0
        dw      COMPLETE_FIGURE_B_T0_1_2_5_6_INIT                               ; $7DD8 entry 1

; Root tier slot 3.
QUESTION_TIER_3_BUCKET:
        db      $01                                                             ; $7DDA initializer count
        dw      COMPLETE_FIGURE_A_T0_3_4_7_INIT                                 ; $7DDB entry 0

; Root tier slot 4.
QUESTION_TIER_4_BUCKET:
        db      $01                                                             ; $7DDD initializer count
        dw      COMPLETE_FIGURE_A_T0_3_4_7_INIT                                 ; $7DDE entry 0

; Root tier slot 5.
QUESTION_TIER_5_BUCKET:
        db      $04                                                             ; $7DE0 initializer count
        dw      COMPLETE_FIGURE_D_T0_1_2_5_6_INIT                               ; $7DE1 entry 0
        dw      COMPLETE_FIGURE_E_T0_1_5_6_INIT                                 ; $7DE3 entry 1
        dw      COMPLETE_FIGURE_C_T0_1_5_6_INIT                                 ; $7DE5 entry 2
        dw      COMPLETE_FIGURE_B_T0_1_2_5_6_INIT                               ; $7DE7 entry 3

; Root tier slot 6.
QUESTION_TIER_6_BUCKET:
        db      $04                                                             ; $7DE9 initializer count
        dw      COMPLETE_FIGURE_D_T0_1_2_5_6_INIT                               ; $7DEA entry 0
        dw      COMPLETE_FIGURE_E_T0_1_5_6_INIT                                 ; $7DEC entry 1
        dw      COMPLETE_FIGURE_C_T0_1_5_6_INIT                                 ; $7DEE entry 2
        dw      COMPLETE_FIGURE_B_T0_1_2_5_6_INIT                               ; $7DF0 entry 3

; Root tier slot 7.
QUESTION_TIER_7_BUCKET:
        db      $01                                                             ; $7DF2 initializer count
        dw      COMPLETE_FIGURE_A_T0_3_4_7_INIT                                 ; $7DF3 entry 0

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_TIER_0_BUCKET                                          ; $7DF5 tier 0
        dw      QUESTION_TIER_1_BUCKET                                          ; $7DF7 tier 1
        dw      QUESTION_TIER_2_BUCKET                                          ; $7DF9 tier 2
        dw      QUESTION_TIER_3_BUCKET                                          ; $7DFB tier 3
        dw      QUESTION_TIER_4_BUCKET                                          ; $7DFD tier 4
        dw      QUESTION_TIER_5_BUCKET                                          ; $7DFF tier 5
        dw      QUESTION_TIER_6_BUCKET                                          ; $7E01 tier 6
        dw      QUESTION_TIER_7_BUCKET                                          ; $7E03 tier 7
        db      $E2,$03,$0B,$7E,$C2,$1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15 ; $7E05
        db      $F3,$1D,$12,$01,$3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E,$30,$8C,$FD ; $7E15
        db      $00,$CF,$99,$15,$F2,$8B,$09,$01,$C9,$FF,$12,$01,$05,$41,$8C,$F7 ; $7E25
        db      $2C,$12,$01,$02,$08,$02,$EA,$03,$45,$7E,$E9,$1E,$E2,$03,$47,$7E ; $7E35
        db      $C2,$1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$12,$01 ; $7E45
        db      $3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E,$12,$01,$0F,$DF,$1B,$2C,$1A ; $7E55
        db      $30,$8C,$FD,$00,$04,$56,$7D,$A1,$7D,$EB,$7D,$26,$7E,$CF,$12,$01 ; $7E65
        db      $04,$32,$1B,$0B,$8B,$09,$01,$69,$7E,$FD,$00,$02,$9E,$6E,$72,$7E ; $7E75
        db      $02,$B7,$6E,$9D,$79,$03,$D5,$6E,$6A,$54,$72,$7E,$03,$F3,$6E,$7C ; $7E85
        db      $54,$29,$68,$03,$11,$6F,$93,$54,$9D,$79,$02,$2F,$6F,$29,$68,$02 ; $7E95
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
