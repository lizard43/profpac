; Professor Pac-Man question ROM PPQ5
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ5_VISUAL_ANALOGY_ACTION_LIST              equ     $5463
PPQ5_OPERATION_SEQUENCE_ACTION_LIST          equ     $6822
PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST       equ     $6E97
PPQ5_NUMBER_PROGRESSION_ACTION_LIST          equ     $7996
PPQ5_IMAGE_MIRROR_MATCH_ACTION_LIST          equ     $7E6B

QUESTION_BANK_HEADER:
        dw      QUESTION_ROOT_DIRECTORY ; $4000 root-directory pointer
PPQ5_TERSE_4002:
        rst     $08                                                             ; $4002 colon entry
        dw      XT_LITbyte                                                      ; $4003 execution token
        db      $0C                                                             ; $4005 inline byte
        dw      XT_LIT                                                          ; $4006 execution token
        dw      $8276                                                           ; $4008 inline word
        dw      $2B2E                                                           ; $400A execution token
        dw      XT_RETURN                                                       ; $400C execution token

PPQ5_TERSE_400E:
        rst     $08                                                             ; $400E colon entry
        dw      XT_LITbyte                                                      ; $400F execution token
        db      $0A                                                             ; $4011 inline byte
        dw      XT_LIT                                                          ; $4012 execution token
        dw      $00AA                                                           ; $4014 inline word
        dw      $2B2E                                                           ; $4016 execution token
        dw      XT_RETURN                                                       ; $4018 execution token

PPQ5_TERSE_401A:
        rst     $08                                                             ; $401A colon entry
        dw      XT_LITbyte                                                      ; $401B execution token
        db      $0F                                                             ; $401D inline byte
        dw      XT_LIT                                                          ; $401E execution token
        dw      $00FF                                                           ; $4020 inline word
        dw      $2B2E                                                           ; $4022 execution token
        dw      XT_RETURN                                                       ; $4024 execution token

PPQ5_TERSE_4026:
        rst     $08                                                             ; $4026 colon entry
        dw      XT_0                                                            ; $4027 execution token
        dw      XT_LIT                                                          ; $4029 execution token
        dw      $FD6D                                                           ; $402B inline word
        dw      $2BEF                                                           ; $402D execution token
        dw      XT_LIT                                                          ; $402F execution token
        dw      $F2FF                                                           ; $4031 inline word
        dw      XT_BZERO                                                        ; $4033 execution token
        dw      XT_LITbyte                                                      ; $4035 execution token
        db      $30                                                             ; $4037 inline byte
        dw      $2AF2                                                           ; $4038 execution token
        dw      XT_LITbyte                                                      ; $403A execution token
        db      $20                                                             ; $403C inline byte
        dw      XT_LITbyte                                                      ; $403D execution token
        db      $40                                                             ; $403F inline byte
        dw      XT_LITbyte                                                      ; $4040 execution token
        db      $40                                                             ; $4042 inline byte
        dw      $2B71                                                           ; $4043 execution token
        dw      PPQ5_TERSE_400E                                                 ; $4045 execution token
        dw      XT_LITbyte                                                      ; $4047 execution token
        db      $0B                                                             ; $4049 inline byte
        dw      $2BA8                                                           ; $404A execution token
        dw      XT_LITbyte                                                      ; $404C execution token
        db      $00                                                             ; $404E inline byte
        dw      XT_LITbyte                                                      ; $404F execution token
        db      $00                                                             ; $4051 inline byte
        dw      $2B2E                                                           ; $4052 execution token
        dw      XT_LITbyte                                                      ; $4054 execution token
        db      $02                                                             ; $4056 inline byte
        dw      $2BA8                                                           ; $4057 execution token
        dw      PPQ5_TERSE_400E                                                 ; $4059 execution token
        dw      XT_LITbyte                                                      ; $405B execution token
        db      $06                                                             ; $405D inline byte
        dw      $2BA8                                                           ; $405E execution token
        dw      XT_LITbyte                                                      ; $4060 execution token
        db      $00                                                             ; $4062 inline byte
        dw      XT_LITbyte                                                      ; $4063 execution token
        db      $00                                                             ; $4065 inline byte
        dw      $2B2E                                                           ; $4066 execution token
        dw      XT_LITbyte                                                      ; $4068 execution token
        db      $03                                                             ; $406A inline byte
        dw      $2BA8                                                           ; $406B execution token
        dw      XT_LIT                                                          ; $406D execution token
        dw      QUESTION_BANK_BASE                                              ; $406F inline word
        dw      XT_LITbyte                                                      ; $4071 execution token
        db      $60                                                             ; $4073 inline byte
        dw      XT_LIT                                                          ; $4074 execution token
        dw      QUESTION_BANK_BASE                                              ; $4076 inline word
        dw      $2B71                                                           ; $4078 execution token
        dw      PPQ5_TERSE_4002                                                 ; $407A execution token
        dw      XT_LITbyte                                                      ; $407C execution token
        db      $04                                                             ; $407E inline byte
        dw      $2BA8                                                           ; $407F execution token
        dw      XT_LITbyte                                                      ; $4081 execution token
        db      $20                                                             ; $4083 inline byte
        dw      $2AF2                                                           ; $4084 execution token
        dw      XT_LITbyte                                                      ; $4086 execution token
        db      $04                                                             ; $4088 inline byte
        dw      $2BA8                                                           ; $4089 execution token
        dw      XT_LITbyte                                                      ; $408B execution token
        db      $28                                                             ; $408D inline byte
        dw      $2AF2                                                           ; $408E execution token
        dw      XT_LIT                                                          ; $4090 execution token
        dw      QUESTION_BANK_BASE                                              ; $4092 inline word
        dw      XT_LITbyte                                                      ; $4094 execution token
        db      $40                                                             ; $4096 inline byte
        dw      XT_LITbyte                                                      ; $4097 execution token
        db      $20                                                             ; $4099 inline byte
        dw      $2B71                                                           ; $409A execution token
        dw      PPQ5_TERSE_4002                                                 ; $409C execution token
        dw      XT_LIT                                                          ; $409E execution token
        dw      $0081                                                           ; $40A0 inline word
        dw      $2B35                                                           ; $40A2 execution token
        dw      XT_LITbyte                                                      ; $40A4 execution token
        db      $0A                                                             ; $40A6 inline byte
        dw      $2BA8                                                           ; $40A7 execution token
        dw      XT_LITbyte                                                      ; $40A9 execution token
        db      $00                                                             ; $40AB inline byte
        dw      XT_LITbyte                                                      ; $40AC execution token
        db      $00                                                             ; $40AE inline byte
        dw      $2B2E                                                           ; $40AF execution token
        dw      XT_LITbyte                                                      ; $40B1 execution token
        db      $02                                                             ; $40B3 inline byte
        dw      $2BA8                                                           ; $40B4 execution token
        dw      XT_LITbyte                                                      ; $40B6 execution token
        db      $34                                                             ; $40B8 inline byte
        dw      XT_LIT                                                          ; $40B9 execution token
        dw      $00D4                                                           ; $40BB inline word
        dw      XT_LIT                                                          ; $40BD execution token
        dw      $006A                                                           ; $40BF inline word
        dw      $2B71                                                           ; $40C1 execution token
        dw      PPQ5_TERSE_4002                                                 ; $40C3 execution token
        dw      XT_LITbyte                                                      ; $40C5 execution token
        db      $10                                                             ; $40C7 inline byte
        dw      $2BA8                                                           ; $40C8 execution token
        dw      XT_LITbyte                                                      ; $40CA execution token
        db      $00                                                             ; $40CC inline byte
        dw      XT_LITbyte                                                      ; $40CD execution token
        db      $00                                                             ; $40CF inline byte
        dw      $2B2E                                                           ; $40D0 execution token
        dw      XT_LITbyte                                                      ; $40D2 execution token
        db      $0B                                                             ; $40D4 inline byte
        dw      $2BA8                                                           ; $40D5 execution token
        dw      XT_LIT                                                          ; $40D7 execution token
        dw      QUESTION_BANK_BASE                                              ; $40D9 inline word
        dw      XT_LITbyte                                                      ; $40DB execution token
        db      $60                                                             ; $40DD inline byte
        dw      XT_LIT                                                          ; $40DE execution token
        dw      QUESTION_BANK_BASE                                              ; $40E0 inline word
        dw      $2B71                                                           ; $40E2 execution token
        dw      PPQ5_TERSE_4002                                                 ; $40E4 execution token
        dw      XT_LITbyte                                                      ; $40E6 execution token
        db      $06                                                             ; $40E8 inline byte
        dw      $2BA8                                                           ; $40E9 execution token
        dw      XT_LITbyte                                                      ; $40EB execution token
        db      $00                                                             ; $40ED inline byte
        dw      XT_LITbyte                                                      ; $40EE execution token
        db      $00                                                             ; $40F0 inline byte
        dw      $2B2E                                                           ; $40F1 execution token
        dw      XT_LITbyte                                                      ; $40F3 execution token
        db      $08                                                             ; $40F5 inline byte
        dw      $2BA8                                                           ; $40F6 execution token
        dw      XT_LITbyte                                                      ; $40F8 execution token
        db      $4F                                                             ; $40FA inline byte
        dw      XT_LITbyte                                                      ; $40FB execution token
        db      $34                                                             ; $40FD inline byte
        dw      XT_LITbyte                                                      ; $40FE execution token
        db      $27                                                             ; $4100 inline byte
        dw      $2B71                                                           ; $4101 execution token
        dw      PPQ5_TERSE_4002                                                 ; $4103 execution token
        dw      XT_LITbyte                                                      ; $4105 execution token
        db      $14                                                             ; $4107 inline byte
        dw      $2BA8                                                           ; $4108 execution token
        dw      XT_LITbyte                                                      ; $410A execution token
        db      $00                                                             ; $410C inline byte
        dw      XT_LITbyte                                                      ; $410D execution token
        db      $00                                                             ; $410F inline byte
        dw      $2B2E                                                           ; $4110 execution token
        dw      XT_LITbyte                                                      ; $4112 execution token
        db      $04                                                             ; $4114 inline byte
        dw      $2BA8                                                           ; $4115 execution token
        dw      XT_LITbyte                                                      ; $4117 execution token
        db      $59                                                             ; $4119 inline byte
        dw      XT_LITbyte                                                      ; $411A execution token
        db      $3B                                                             ; $411C inline byte
        dw      XT_LITbyte                                                      ; $411D execution token
        db      $2C                                                             ; $411F inline byte
        dw      $2B71                                                           ; $4120 execution token
        dw      PPQ5_TERSE_401A                                                 ; $4122 execution token
        dw      XT_LITbyte                                                      ; $4124 execution token
        db      $08                                                             ; $4126 inline byte
        dw      $2BA8                                                           ; $4127 execution token
        dw      XT_LITbyte                                                      ; $4129 execution token
        db      $00                                                             ; $412B inline byte
        dw      XT_LITbyte                                                      ; $412C execution token
        db      $00                                                             ; $412E inline byte
        dw      $2B2E                                                           ; $412F execution token
        dw      XT_LITbyte                                                      ; $4131 execution token
        db      $04                                                             ; $4133 inline byte
        dw      $2BA8                                                           ; $4134 execution token
        dw      XT_LIT                                                          ; $4136 execution token
        dw      $009F                                                           ; $4138 inline word
        dw      XT_LITbyte                                                      ; $413A execution token
        db      $4F                                                             ; $413C inline byte
        dw      XT_LITbyte                                                      ; $413D execution token
        db      $34                                                             ; $413F inline byte
        dw      $2B71                                                           ; $4140 execution token
        dw      PPQ5_TERSE_401A                                                 ; $4142 execution token
        dw      XT_LITbyte                                                      ; $4144 execution token
        db      $18                                                             ; $4146 inline byte
        dw      $2BA8                                                           ; $4147 execution token
        dw      $2B8C                                                           ; $4149 execution token
        dw      XT_RETURN                                                       ; $414B execution token

PPQ5_TERSE_414D:
        rst     $08                                                             ; $414D colon entry
        dw      XT_0                                                            ; $414E execution token
        dw      XT_LIT                                                          ; $4150 execution token
        dw      $FD3D                                                           ; $4152 inline word
        dw      $2BEF                                                           ; $4154 execution token
        dw      XT_LITbyte                                                      ; $4156 execution token
        db      $00                                                             ; $4158 inline byte
        dw      XT_LITbyte                                                      ; $4159 execution token
        db      $00                                                             ; $415B inline byte
        dw      $2B2E                                                           ; $415C execution token
        dw      XT_LITbyte                                                      ; $415E execution token
        db      $04                                                             ; $4160 inline byte
        dw      $2BA8                                                           ; $4161 execution token
        dw      XT_LITbyte                                                      ; $4163 execution token
        db      $30                                                             ; $4165 inline byte
        dw      $2AF2                                                           ; $4166 execution token
        dw      XT_LITbyte                                                      ; $4168 execution token
        db      $20                                                             ; $416A inline byte
        dw      XT_LITbyte                                                      ; $416B execution token
        db      $20                                                             ; $416D inline byte
        dw      XT_LITbyte                                                      ; $416E execution token
        db      $40                                                             ; $4170 inline byte
        dw      $2B71                                                           ; $4171 execution token
        dw      PPQ5_TERSE_400E                                                 ; $4173 execution token
        dw      XT_LITbyte                                                      ; $4175 execution token
        db      $0B                                                             ; $4177 inline byte
        dw      $2BA8                                                           ; $4178 execution token
        dw      XT_LITbyte                                                      ; $417A execution token
        db      $00                                                             ; $417C inline byte
        dw      XT_LITbyte                                                      ; $417D execution token
        db      $00                                                             ; $417F inline byte
        dw      $2B2E                                                           ; $4180 execution token
        dw      XT_LITbyte                                                      ; $4182 execution token
        db      $02                                                             ; $4184 inline byte
        dw      $2BA8                                                           ; $4185 execution token
        dw      PPQ5_TERSE_400E                                                 ; $4187 execution token
        dw      XT_LITbyte                                                      ; $4189 execution token
        db      $06                                                             ; $418B inline byte
        dw      $2BA8                                                           ; $418C execution token
        dw      XT_LITbyte                                                      ; $418E execution token
        db      $00                                                             ; $4190 inline byte
        dw      XT_LITbyte                                                      ; $4191 execution token
        db      $00                                                             ; $4193 inline byte
        dw      $2B2E                                                           ; $4194 execution token
        dw      XT_LITbyte                                                      ; $4196 execution token
        db      $03                                                             ; $4198 inline byte
        dw      $2BA8                                                           ; $4199 execution token
        dw      XT_LIT                                                          ; $419B execution token
        dw      QUESTION_BANK_BASE                                              ; $419D inline word
        dw      XT_LITbyte                                                      ; $419F execution token
        db      $60                                                             ; $41A1 inline byte
        dw      XT_LIT                                                          ; $41A2 execution token
        dw      QUESTION_BANK_BASE                                              ; $41A4 inline word
        dw      $2B71                                                           ; $41A6 execution token
        dw      PPQ5_TERSE_4002                                                 ; $41A8 execution token
        dw      XT_LITbyte                                                      ; $41AA execution token
        db      $04                                                             ; $41AC inline byte
        dw      $2BA8                                                           ; $41AD execution token
        dw      XT_LITbyte                                                      ; $41AF execution token
        db      $20                                                             ; $41B1 inline byte
        dw      $2AF2                                                           ; $41B2 execution token
        dw      XT_LITbyte                                                      ; $41B4 execution token
        db      $04                                                             ; $41B6 inline byte
        dw      $2BA8                                                           ; $41B7 execution token
        dw      XT_LITbyte                                                      ; $41B9 execution token
        db      $28                                                             ; $41BB inline byte
        dw      $2AF2                                                           ; $41BC execution token
        dw      XT_LIT                                                          ; $41BE execution token
        dw      QUESTION_BANK_BASE                                              ; $41C0 inline word
        dw      XT_LITbyte                                                      ; $41C2 execution token
        db      $40                                                             ; $41C4 inline byte
        dw      XT_LITbyte                                                      ; $41C5 execution token
        db      $20                                                             ; $41C7 inline byte
        dw      $2B71                                                           ; $41C8 execution token
        dw      PPQ5_TERSE_4002                                                 ; $41CA execution token
        dw      XT_LIT                                                          ; $41CC execution token
        dw      $0081                                                           ; $41CE inline word
        dw      $2B35                                                           ; $41D0 execution token
        dw      XT_LITbyte                                                      ; $41D2 execution token
        db      $0A                                                             ; $41D4 inline byte
        dw      $2BA8                                                           ; $41D5 execution token
        dw      XT_LITbyte                                                      ; $41D7 execution token
        db      $00                                                             ; $41D9 inline byte
        dw      XT_LITbyte                                                      ; $41DA execution token
        db      $00                                                             ; $41DC inline byte
        dw      $2B2E                                                           ; $41DD execution token
        dw      XT_LITbyte                                                      ; $41DF execution token
        db      $02                                                             ; $41E1 inline byte
        dw      $2BA8                                                           ; $41E2 execution token
        dw      XT_LITbyte                                                      ; $41E4 execution token
        db      $34                                                             ; $41E6 inline byte
        dw      XT_LIT                                                          ; $41E7 execution token
        dw      $00D4                                                           ; $41E9 inline word
        dw      XT_LIT                                                          ; $41EB execution token
        dw      $006A                                                           ; $41ED inline word
        dw      $2B71                                                           ; $41EF execution token
        dw      PPQ5_TERSE_4002                                                 ; $41F1 execution token
        dw      XT_LITbyte                                                      ; $41F3 execution token
        db      $10                                                             ; $41F5 inline byte
        dw      $2BA8                                                           ; $41F6 execution token
        dw      XT_LITbyte                                                      ; $41F8 execution token
        db      $00                                                             ; $41FA inline byte
        dw      XT_LITbyte                                                      ; $41FB execution token
        db      $00                                                             ; $41FD inline byte
        dw      $2B2E                                                           ; $41FE execution token
        dw      XT_LITbyte                                                      ; $4200 execution token
        db      $0B                                                             ; $4202 inline byte
        dw      $2BA8                                                           ; $4203 execution token
        dw      XT_LIT                                                          ; $4205 execution token
        dw      QUESTION_BANK_BASE                                              ; $4207 inline word
        dw      XT_LITbyte                                                      ; $4209 execution token
        db      $60                                                             ; $420B inline byte
        dw      XT_LIT                                                          ; $420C execution token
        dw      QUESTION_BANK_BASE                                              ; $420E inline word
        dw      $2B71                                                           ; $4210 execution token
        dw      PPQ5_TERSE_4002                                                 ; $4212 execution token
        dw      XT_LITbyte                                                      ; $4214 execution token
        db      $06                                                             ; $4216 inline byte
        dw      $2BA8                                                           ; $4217 execution token
        dw      XT_LITbyte                                                      ; $4219 execution token
        db      $00                                                             ; $421B inline byte
        dw      XT_LITbyte                                                      ; $421C execution token
        db      $00                                                             ; $421E inline byte
        dw      $2B2E                                                           ; $421F execution token
        dw      XT_LITbyte                                                      ; $4221 execution token
        db      $08                                                             ; $4223 inline byte
        dw      $2BA8                                                           ; $4224 execution token
        dw      XT_LITbyte                                                      ; $4226 execution token
        db      $4F                                                             ; $4228 inline byte
        dw      XT_LITbyte                                                      ; $4229 execution token
        db      $34                                                             ; $422B inline byte
        dw      XT_LITbyte                                                      ; $422C execution token
        db      $27                                                             ; $422E inline byte
        dw      $2B71                                                           ; $422F execution token
        dw      PPQ5_TERSE_4002                                                 ; $4231 execution token
        dw      XT_LITbyte                                                      ; $4233 execution token
        db      $09                                                             ; $4235 inline byte
        dw      $2BA8                                                           ; $4236 execution token
        dw      XT_LITbyte                                                      ; $4238 execution token
        db      $00                                                             ; $423A inline byte
        dw      XT_LITbyte                                                      ; $423B execution token
        db      $00                                                             ; $423D inline byte
        dw      $2B2E                                                           ; $423E execution token
        dw      XT_LITbyte                                                      ; $4240 execution token
        db      $02                                                             ; $4242 inline byte
        dw      $2BA8                                                           ; $4243 execution token
        dw      PPQ5_TERSE_4002                                                 ; $4245 execution token
        dw      XT_LITbyte                                                      ; $4247 execution token
        db      $0A                                                             ; $4249 inline byte
        dw      $2BA8                                                           ; $424A execution token
        dw      XT_LITbyte                                                      ; $424C execution token
        db      $00                                                             ; $424E inline byte
        dw      XT_LITbyte                                                      ; $424F execution token
        db      $00                                                             ; $4251 inline byte
        dw      $2B2E                                                           ; $4252 execution token
        dw      XT_LITbyte                                                      ; $4254 execution token
        db      $04                                                             ; $4256 inline byte
        dw      $2BA8                                                           ; $4257 execution token
        dw      XT_LITbyte                                                      ; $4259 execution token
        db      $59                                                             ; $425B inline byte
        dw      XT_LITbyte                                                      ; $425C execution token
        db      $3B                                                             ; $425E inline byte
        dw      XT_LITbyte                                                      ; $425F execution token
        db      $2C                                                             ; $4261 inline byte
        dw      $2B71                                                           ; $4262 execution token
        dw      PPQ5_TERSE_401A                                                 ; $4264 execution token
        dw      XT_LITbyte                                                      ; $4266 execution token
        db      $08                                                             ; $4268 inline byte
        dw      $2BA8                                                           ; $4269 execution token
        dw      XT_LITbyte                                                      ; $426B execution token
        db      $00                                                             ; $426D inline byte
        dw      XT_LITbyte                                                      ; $426E execution token
        db      $00                                                             ; $4270 inline byte
        dw      $2B2E                                                           ; $4271 execution token
        dw      XT_LITbyte                                                      ; $4273 execution token
        db      $04                                                             ; $4275 inline byte
        dw      $2BA8                                                           ; $4276 execution token
        dw      XT_LIT                                                          ; $4278 execution token
        dw      $009F                                                           ; $427A inline word
        dw      XT_LITbyte                                                      ; $427C execution token
        db      $4F                                                             ; $427E inline byte
        dw      XT_LITbyte                                                      ; $427F execution token
        db      $34                                                             ; $4281 inline byte
        dw      $2B71                                                           ; $4282 execution token
        dw      PPQ5_TERSE_401A                                                 ; $4284 execution token
        dw      XT_LITbyte                                                      ; $4286 execution token
        db      $18                                                             ; $4288 inline byte
        dw      $2BA8                                                           ; $4289 execution token
        dw      XT_LIT                                                          ; $428B execution token
        dw      $F2FF                                                           ; $428D inline word
        dw      XT_BONE                                                         ; $428F execution token
        dw      $2B8C                                                           ; $4291 execution token
        dw      XT_RETURN                                                       ; $4293 execution token

PPQ5_TERSE_4295:
        rst     $08                                                             ; $4295 colon entry
        dw      PPQ5_TERSE_4026                                                 ; $4296 execution token
        dw      PPQ5_TERSE_414D                                                 ; $4298 execution token
        dw      XT_RETURN                                                       ; $429A execution token

        db      $0F,$00,$09,$00,$04,$0E                                         ; $429C preserved bytes
        db      $0F,$0A,$00,$03,$0E,$00,$00,$00,$0A,$0E,$05,$06,$0F,$0B,$00,$0F ; $42A2
        db      $00,$00,$0C,$00,$08,$0E,$05,$06,$00,$00,$0A,$0F,$04,$00,$07,$00 ; $42B2
        db      $07,$0E,$05,$06,$0F,$0B,$00,$0E,$05,$06,$0F,$0A,$00,$00,$00,$0E ; $42C2
        db      $00,$01,$0F,$0F,$00,$00,$07,$07,$07,$0F,$0B,$00,$0F,$00,$00,$0C ; $42D2
        db      $00,$08,$0F,$0B,$00,$0E,$05,$06,$07,$00,$07,$05,$05,$05,$03,$03 ; $42E2
        db      $03,$07,$07,$07,$00,$00,$09,$00,$04,$0E,$0F,$0A,$00,$00,$0A,$00 ; $42F2
        db      $00,$04,$0E,$0F,$0A,$00,$09,$00,$07,$00,$04,$0E,$0F,$0A,$00,$0C ; $4302
        db      $00,$00,$00,$09,$00,$0F,$0D,$00,$E4,$42,$11,$43,$D2,$42,$C9,$42 ; $4312
        db      $F6,$42,$C0,$42,$DB,$42,$AE,$42,$8C,$2D,$CF,$12,$01,$10,$09,$01 ; $4322
        db      $6D,$FD,$EF,$2B,$EC,$3E,$12,$01,$1D,$A8,$2B,$EA,$3F,$30,$01,$A8 ; $4332
        db      $2B,$8C,$2B,$FD,$00,$CF,$12,$01,$10,$09,$01,$3D,$FD,$EF,$2B,$12 ; $4342
        db      $01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$EC,$3E,$12,$01 ; $4352
        db      $1B,$A8,$2B,$EA,$3F,$30,$01,$A8,$2B,$8C,$2B,$FD,$00,$CF,$2C,$43 ; $4362
        db      $47,$43,$FD,$00,$CF,$99,$15,$12,$01,$04,$09,$01,$FE,$F2,$32,$05 ; $4372
        db      $09,$01,$FD,$F2,$3F,$05,$6F,$43,$09,$01,$FD,$F2,$53,$01,$25,$01 ; $4382
        db      $1A,$43,$4C,$01,$6B,$2D,$12,$01,$03,$DF,$1B,$2C,$1A,$09,$01,$FD ; $4392
        db      $F2,$36,$01,$49,$05,$53,$01,$12,$01,$08,$1C,$02,$EA,$03,$8A,$43 ; $43A2
        db      $09,$01,$FE,$F2,$36,$01,$44,$05,$53,$01,$DE,$01,$EA,$03,$82,$43 ; $43B2
        db      $12,$01,$20,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$76,$43 ; $43C2
        db      $08,$07,$07,$18,$AF,$A8,$00,$00,$04,$00,$00,$00,$00,$80,$00,$09 ; $43D2
        db      $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$02,$00,$00 ; $43E2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$22,$90,$00 ; $43F2
        db      $80,$00,$00,$11,$28,$50,$00,$00,$C0,$00,$00,$58,$80,$00,$00,$00 ; $4402
        db      $0E,$2F,$8A,$80,$00,$0C,$00,$00,$0E,$8A,$8A,$00,$00,$00,$00,$2A ; $4412
        db      $C8,$3A,$00,$00,$00,$03,$A0,$A8,$00,$00,$00,$00,$02,$A4,$A8,$02 ; $4422
        db      $A0,$20,$00,$03,$84,$28,$02,$00,$00,$00,$00,$20,$2A,$00,$00,$00 ; $4432
        db      $00,$00,$A0,$AA,$0C,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$00,$00 ; $4442
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$00 ; $4452
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$01,$00,$00,$00,$00 ; $4462
        db      $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00 ; $4472
        db      $0C,$00,$00,$00,$00,$80,$00,$0F,$0C,$00,$00,$00,$00,$00,$03,$00 ; $4482
        db      $00,$00,$00,$00,$00,$03,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$33 ; $4492
        db      $00,$00,$00,$C0,$00,$33,$F0,$C0,$80,$00,$00,$33,$FC,$F0,$00,$00 ; $44A2
        db      $C0,$00,$00,$FC,$83,$C0,$00,$00,$0E,$2F,$FA,$83,$C0,$0C,$00,$00 ; $44B2
        db      $0F,$CA,$BA,$00,$00,$00,$00,$3F,$C8,$FA,$00,$00,$00,$02,$F0,$FC ; $44C2
        db      $FC,$00,$00,$00,$03,$FC,$FC,$FE,$A0,$2C,$00,$02,$CC,$3C,$F2,$00 ; $44D2
        db      $00,$00,$00,$3C,$2A,$00,$00,$00,$00,$00,$FC,$AA,$0C,$00,$00,$0C ; $44E2
        db      $00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $44F2
        db      $00,$00,$0C,$00,$00,$00,$03,$00,$00,$C0,$00,$00,$00,$00,$00,$00 ; $4502
        db      $00,$00,$08,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00 ; $4512
        db      $00,$00,$00,$00,$03,$00,$00,$06,$0A,$07,$1A,$AF,$B6,$00,$00,$00 ; $4522
        db      $00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4532
        db      $01,$00,$00,$00,$40,$03,$C0,$04,$28,$00,$20,$10,$0B,$80,$04,$80 ; $4542
        db      $00,$08,$04,$00,$00,$01,$A0,$80,$02,$04,$02,$40,$54,$0A,$00,$00 ; $4552
        db      $5C,$02,$40,$08,$20,$00,$05,$FF,$02,$80,$64,$88,$00,$17,$FC,$12 ; $4562
        db      $47,$55,$80,$00,$9F,$C2,$76,$4C,$35,$00,$00,$3F,$05,$FE,$4C,$F4 ; $4572
        db      $03,$00,$0C,$17,$C0,$63,$C0,$00,$00,$C0,$F7,$08,$00,$13,$00,$00 ; $4582
        db      $00,$3C,$00,$00,$00,$15,$40,$28,$00,$44,$00,$2A,$A2,$00,$50,$34 ; $4592
        db      $00,$2B,$00,$00,$00,$00,$00,$00,$0B,$14,$00,$00,$00,$3C,$8C,$C3 ; $45A2
        db      $D5,$40,$00,$00,$3C,$1C,$70,$00,$00,$00,$00,$01,$20,$F0,$10,$00 ; $45B2
        db      $00,$00,$80,$F7,$5C,$04,$03,$00,$08,$04,$3F,$F0,$00,$00,$00,$20 ; $45C2
        db      $14,$0D,$41,$00,$2A,$00,$80,$10,$01,$60,$40,$AA,$00,$00,$00,$00 ; $45D2
        db      $20,$40,$08,$00,$00,$00,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00 ; $45E2
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$C0,$03,$C0,$0C,$28,$00 ; $45F2
        db      $20,$30,$CB,$80,$0C,$80,$00,$08,$0C,$00,$00,$33,$A0,$80,$02,$0C ; $4602
        db      $02,$C0,$FC,$0A,$00,$00,$AC,$32,$C0,$08,$20,$00,$0A,$FF,$32,$80 ; $4612
        db      $A8,$88,$00,$2B,$FC,$3E,$CF,$EA,$80,$00,$AF,$C2,$BE,$CC,$3A,$00 ; $4622
        db      $00,$3F,$0A,$FE,$CC,$F8,$03,$00,$0C,$3B,$C0,$E3,$C0,$00,$00,$C0 ; $4632
        db      $FB,$0C,$00,$33,$00,$00,$00,$3C,$00,$00,$0C,$FF,$C0,$28,$00,$CC ; $4642
        db      $00,$2A,$AE,$C0,$F0,$3C,$00,$3B,$00,$00,$00,$00,$C0,$00,$0B,$38 ; $4652
        db      $00,$00,$0F,$3C,$8C,$C3,$EB,$F0,$00,$C0,$3C,$3C,$F0,$30,$00,$00 ; $4662
        db      $00,$03,$20,$F0,$33,$00,$00,$00,$80,$FB,$AC,$0C,$C3,$00,$08,$0C ; $4672
        db      $3F,$F0,$00,$00,$00,$20,$3C,$0F,$C3,$00,$3F,$00,$80,$30,$03,$E0 ; $4682
        db      $C0,$FF,$00,$00,$00,$00,$20,$C0,$0C,$00,$08,$08,$07,$19,$AF,$AF ; $4692
        db      $00,$02,$A0,$5F,$40,$01,$43,$F0,$00,$81,$1F,$C7,$D1,$41,$70,$00 ; $46A2
        db      $00,$05,$17,$FD,$00,$00,$02,$10,$00,$DF,$D0,$08,$00,$07,$D0,$03 ; $46B2
        db      $97,$90,$40,$08,$0D,$33,$00,$3B,$00,$00,$20,$0C,$4A,$00,$14,$00 ; $46C2
        db      $BE,$00,$3F,$FE,$00,$9A,$02,$CF,$C0,$0E,$BF,$20,$97,$00,$FF,$F0 ; $46D2
        db      $00,$33,$28,$14,$08,$B5,$C0,$0C,$1E,$A4,$00,$1A,$B7,$C4,$00,$08 ; $46E2
        db      $00,$00,$18,$B7,$C4,$00,$00,$00,$00,$5A,$B7,$D0,$0D,$89,$40,$00 ; $46F2
        db      $00,$A7,$40,$01,$62,$70,$00,$00,$2A,$00,$3F,$5A,$40,$42,$54,$00 ; $4702
        db      $00,$FD,$58,$00,$40,$45,$CC,$00,$3F,$40,$0A,$61,$6B,$D3,$00,$07 ; $4712
        db      $00,$08,$A0,$23,$53,$00,$00,$00,$A2,$80,$2D,$4F,$00,$00,$80,$07 ; $4722
        db      $B0,$0C,$03,$00,$00,$0F,$1A,$FC,$10,$FC,$00,$08,$0C,$FF,$FF,$00 ; $4732
        db      $00,$00,$00,$03,$C5,$D3,$C4,$00,$00,$00,$10,$F1,$50,$C1,$00,$00 ; $4742
        db      $03,$F0,$AF,$83,$02,$82,$A0,$00,$C3,$2F,$CB,$E2,$83,$E0,$00,$00 ; $4752
        db      $0A,$2B,$FE,$00,$00,$02,$20,$0C,$EF,$E0,$08,$00,$0B,$E0,$03,$AB ; $4762
        db      $A0,$C0,$08,$0E,$33,$00,$3B,$00,$00,$20,$0C,$8A,$00,$28,$00,$BE ; $4772
        db      $00,$3F,$FE,$03,$EF,$02,$CF,$C0,$0E,$BF,$30,$FF,$00,$FF,$F0,$00 ; $4782
        db      $33,$3C,$3C,$0C,$BA,$C0,$0C,$2E,$BC,$00,$3E,$BB,$C8,$00,$08,$00 ; $4792
        db      $00,$3C,$BB,$C8,$00,$00,$00,$00,$FF,$BB,$E0,$0E,$8F,$C0,$00,$00 ; $47A2
        db      $AB,$80,$02,$A3,$F0,$00,$00,$2A,$00,$3F,$AB,$C0,$C3,$FC,$00,$00 ; $47B2
        db      $FE,$A8,$00,$C0,$CF,$FF,$00,$3F,$80,$0F,$F3,$EB,$EF,$30,$0B,$00 ; $47C2
        db      $08,$F0,$23,$AF,$0C,$00,$00,$A2,$80,$2E,$BF,$00,$00,$80,$0B,$B0 ; $47D2
        db      $0F,$FF,$00,$00,$0F,$2A,$FC,$30,$FC,$00,$08,$0C,$FF,$FF,$00,$00 ; $47E2
        db      $00,$00,$03,$CA,$E3,$CC,$00,$00,$00,$30,$F2,$A0,$C3,$00,$00,$08 ; $47F2
        db      $0A,$08,$1A,$AF,$D0,$00,$00,$03,$FF,$03,$C0,$00,$0C,$00,$00,$0F ; $4802
        db      $00,$03,$03,$00,$FF,$00,$00,$00,$0C,$D0,$0F,$30,$0C,$00,$00,$00 ; $4812
        db      $5F,$F4,$15,$00,$00,$00,$00,$01,$73,$FC,$3D,$C0,$10,$00,$00,$00 ; $4822
        db      $3C,$33,$3F,$00,$54,$00,$00,$C0,$F0,$00,$00,$00,$FF,$00,$01,$F0 ; $4832
        db      $00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00,$30,$00,$15,$00,$5F,$F0 ; $4842
        db      $0C,$00,$00,$03,$01,$40,$17,$C0,$00,$00,$00,$00,$00,$00,$1F,$00 ; $4852
        db      $00,$00,$00,$00,$01,$00,$1C,$40,$0C,$00,$00,$00,$15,$00,$1C,$03 ; $4862
        db      $3C,$00,$00,$00,$FD,$00,$30,$00,$C0,$00,$00,$00,$00,$C0,$01,$00 ; $4872
        db      $00,$00,$00,$00,$0F,$00,$00,$30,$00,$00,$00,$00,$CF,$00,$04,$F0 ; $4882
        db      $00,$00,$00,$00,$0C,$00,$05,$57,$00,$00,$00,$00,$00,$00,$05,$40 ; $4892
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$30,$0F,$14,$00,$00,$01 ; $48A2
        db      $10,$C0,$C0,$3F,$54,$00,$00,$03,$F3,$F0,$C3,$0D,$10,$00,$00,$03 ; $48B2
        db      $3F,$3C,$CC,$05,$00,$00,$00,$00,$35,$40,$15,$04,$00,$00,$00,$00 ; $48C2
        db      $03,$C0,$0D,$C0,$00,$00,$00,$03,$FF,$03,$C0,$00,$0C,$00,$00,$0F ; $48D2
        db      $00,$03,$03,$00,$FF,$00,$00,$00,$0C,$E0,$0F,$30,$0C,$00,$00,$00 ; $48E2
        db      $AF,$F8,$2A,$00,$00,$00,$00,$02,$B3,$FC,$3E,$C0,$20,$00,$00,$00 ; $48F2
        db      $3C,$33,$3F,$00,$A8,$00,$00,$C0,$F0,$00,$00,$00,$FF,$00,$02,$F0 ; $4902
        db      $00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00,$30,$00,$2A,$00,$AF,$F0 ; $4912
        db      $0C,$00,$00,$03,$02,$80,$2B,$C0,$00,$00,$00,$00,$00,$00,$2F,$00 ; $4922
        db      $00,$00,$00,$00,$02,$00,$2C,$80,$0C,$00,$00,$00,$2A,$00,$2C,$03 ; $4932
        db      $3C,$00,$00,$00,$FE,$00,$30,$00,$C0,$00,$00,$00,$00,$C0,$02,$00 ; $4942
        db      $00,$00,$00,$00,$0F,$00,$00,$30,$00,$00,$00,$00,$CF,$00,$08,$F0 ; $4952
        db      $00,$00,$00,$00,$0C,$00,$0A,$AB,$00,$00,$00,$00,$00,$00,$0A,$80 ; $4962
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$30,$0F,$28,$00,$00,$02 ; $4972
        db      $20,$C0,$C0,$3F,$A8,$00,$00,$03,$F3,$F0,$C3,$0E,$20,$00,$00,$03 ; $4982
        db      $3F,$3C,$CC,$0A,$00,$00,$00,$00,$3A,$80,$2A,$08,$00,$00,$00,$00 ; $4992
        db      $03,$C0,$0E,$C0,$00,$00,$04,$00,$81,$10,$D2,$43,$12,$29,$45,$14 ; $49A2
        db      $9C,$46,$12,$01,$48,$00,$AB,$49,$CF,$12,$01,$10,$09,$01,$3D,$FD ; $49B2
        db      $EF,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$06,$A8,$2B,$12 ; $49C2
        db      $01,$14,$12,$01,$26,$12,$01,$28,$71,$2B,$12,$01,$16,$09,$01,$66 ; $49D2
        db      $00,$2E,$2B,$12,$01,$38,$F2,$2A,$12,$01,$03,$12,$01,$07,$12,$01 ; $49E2
        db      $05,$09,$01,$FF,$FF,$12,$01,$10,$12,$01,$18,$09,$01,$F9,$FF,$BB ; $49F2
        db      $2B,$30,$01,$12,$01,$10,$12,$01,$03,$09,$01,$FE,$FF,$12,$01,$20 ; $4A02
        db      $09,$01,$80,$00,$09,$01,$E4,$FF,$BB,$2B,$30,$01,$12,$01,$10,$12 ; $4A12
        db      $01,$03,$12,$01,$04,$2A,$01,$12,$01,$0F,$09,$01,$F2,$FF,$BB,$2B ; $4A22
        db      $12,$01,$07,$01,$2B,$12,$01,$28,$A8,$2B,$8C,$2B,$FD,$00,$CF,$12 ; $4A32
        db      $01,$10,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$1F,$09,$01,$FF,$00,$2E ; $4A42
        db      $2B,$09,$01,$68,$00,$01,$2B,$12,$01,$20,$F2,$2A,$09,$01,$88,$00 ; $4A52
        db      $12,$01,$50,$09,$01,$64,$00,$71,$2B,$12,$01,$20,$A8,$2B,$12,$01 ; $4A62
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$04,$A8,$2B,$12,$01,$1F,$09,$01 ; $4A72
        db      $FF,$00,$2E,$2B,$12,$01,$08,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E ; $4A82
        db      $2B,$12,$01,$04,$A8,$2B,$8C,$2B,$FD,$00,$CF,$BA,$49,$40,$4A,$FD ; $4A92
        db      $00,$CF,$99,$15,$34,$8B,$A8,$1E,$9C,$4A,$09,$01,$A8,$49,$B4,$1C ; $4AA2
        db      $12,$01,$3C,$DF,$1B,$E9,$19,$F3,$1D,$12,$01,$0C,$DF,$1B,$2C,$1A ; $4AB2
        db      $02,$23,$54,$22,$FD,$00,$01,$A3,$4A,$11,$11,$09,$23,$FF,$FF,$FF ; $4AC2
        db      $FF,$FF,$FF,$FF,$FF,$FC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$CF ; $4AD2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30,$00,$00,$00 ; $4AE2
        db      $CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$40,$00,$01,$31,$55 ; $4AF2
        db      $55,$54,$CC,$CC,$45,$55,$51,$31,$55,$55,$54,$CC,$CC,$44,$00,$11 ; $4B02
        db      $31,$55,$55,$54,$CC,$CC,$44,$55,$11,$31,$55,$55,$54,$CC,$CC,$44 ; $4B12
        db      $41,$11,$31,$55,$55,$54,$CC,$CC,$44,$41,$11,$31,$55,$55,$54,$CC ; $4B22
        db      $CC,$44,$55,$11,$31,$55,$55,$54,$CC,$CC,$44,$00,$11,$31,$55,$55 ; $4B32
        db      $54,$CC,$CC,$45,$55,$51,$31,$55,$55,$54,$CC,$CC,$40,$00,$01,$31 ; $4B42
        db      $55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$00,$00 ; $4B52
        db      $00,$30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC ; $4B62
        db      $00,$00,$00,$30,$00,$00,$00,$CC,$CC,$55,$55,$55,$31,$55,$55,$54 ; $4B72
        db      $CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55 ; $4B82
        db      $55,$54,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$55,$55,$55 ; $4B92
        db      $31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$55 ; $4BA2
        db      $55,$55,$31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC ; $4BB2
        db      $CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55,$55 ; $4BC2
        db      $54,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31 ; $4BD2
        db      $55,$55,$54,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CF,$FF,$FF ; $4BE2
        db      $FF,$FF,$FF,$FF,$FF,$CC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$FF ; $4BF2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$11,$11,$09,$23,$FF,$FF,$FF,$FF ; $4C02
        db      $FF,$FF,$FF,$FF,$FC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$CF,$FF ; $4C12
        db      $FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC ; $4C22
        db      $CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$40,$00,$01,$31,$00,$00 ; $4C32
        db      $04,$CC,$CC,$45,$55,$51,$31,$15,$55,$44,$CC,$CC,$44,$00,$11,$31 ; $4C42
        db      $10,$00,$44,$CC,$CC,$44,$55,$11,$31,$11,$54,$44,$CC,$CC,$44,$41 ; $4C52
        db      $11,$31,$11,$04,$44,$CC,$CC,$44,$41,$11,$31,$11,$04,$44,$CC,$CC ; $4C62
        db      $44,$55,$11,$31,$11,$54,$44,$CC,$CC,$44,$00,$11,$31,$10,$00,$44 ; $4C72
        db      $CC,$CC,$45,$55,$51,$31,$15,$55,$44,$CC,$CC,$40,$00,$01,$31,$00 ; $4C82
        db      $00,$04,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$00,$00,$00 ; $4C92
        db      $30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00 ; $4CA2
        db      $00,$00,$30,$00,$00,$00,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC ; $4CB2
        db      $CC,$40,$00,$01,$31,$55,$55,$54,$CC,$CC,$45,$55,$51,$31,$55,$55 ; $4CC2
        db      $54,$CC,$CC,$44,$00,$11,$31,$55,$55,$54,$CC,$CC,$44,$55,$11,$31 ; $4CD2
        db      $55,$55,$54,$CC,$CC,$44,$41,$11,$31,$55,$55,$54,$CC,$CC,$44,$41 ; $4CE2
        db      $11,$31,$55,$55,$54,$CC,$CC,$44,$55,$11,$31,$55,$55,$54,$CC,$CC ; $4CF2
        db      $44,$00,$11,$31,$55,$55,$54,$CC,$CC,$45,$55,$51,$31,$55,$55,$54 ; $4D02
        db      $CC,$CC,$40,$00,$01,$31,$55,$55,$54,$CC,$CC,$55,$55,$55,$31,$55 ; $4D12
        db      $55,$54,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF ; $4D22
        db      $FF,$FF,$FF,$FF,$CC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$FF,$FF ; $4D32
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FC,$11,$11,$09,$23,$FF,$FF,$FF,$FF,$FF ; $4D42
        db      $FF,$FF,$FF,$FC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$CF,$FF,$FF ; $4D52
        db      $FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC ; $4D62
        db      $00,$00,$00,$31,$55,$55,$54,$CC,$CC,$00,$00,$00,$31,$00,$00,$04 ; $4D72
        db      $CC,$CC,$00,$00,$00,$31,$15,$55,$44,$CC,$CC,$00,$00,$00,$31,$10 ; $4D82
        db      $00,$44,$CC,$CC,$00,$00,$00,$31,$11,$54,$44,$CC,$CC,$00,$00,$00 ; $4D92
        db      $31,$11,$04,$44,$CC,$CC,$00,$00,$00,$31,$11,$04,$44,$CC,$CC,$00 ; $4DA2
        db      $00,$00,$31,$11,$54,$44,$CC,$CC,$00,$00,$00,$31,$10,$00,$44,$CC ; $4DB2
        db      $CC,$00,$00,$00,$31,$15,$55,$44,$CC,$CC,$00,$00,$00,$31,$00,$00 ; $4DC2
        db      $04,$CC,$CC,$00,$00,$00,$31,$55,$55,$54,$CC,$CC,$00,$00,$00,$30 ; $4DD2
        db      $00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00 ; $4DE2
        db      $00,$30,$00,$00,$00,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC ; $4DF2
        db      $40,$00,$01,$31,$00,$00,$04,$CC,$CC,$45,$55,$51,$31,$15,$55,$44 ; $4E02
        db      $CC,$CC,$44,$00,$11,$31,$10,$00,$44,$CC,$CC,$44,$55,$11,$31,$11 ; $4E12
        db      $54,$44,$CC,$CC,$44,$41,$11,$31,$11,$04,$44,$CC,$CC,$44,$41,$11 ; $4E22
        db      $31,$11,$04,$44,$CC,$CC,$44,$55,$11,$31,$11,$54,$44,$CC,$CC,$44 ; $4E32
        db      $00,$11,$31,$10,$00,$44,$CC,$CC,$45,$55,$51,$31,$15,$55,$44,$CC ; $4E42
        db      $CC,$40,$00,$01,$31,$00,$00,$04,$CC,$CC,$55,$55,$55,$31,$55,$55 ; $4E52
        db      $54,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF ; $4E62
        db      $FF,$FF,$FF,$CC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$FF,$FF,$FF ; $4E72
        db      $FF,$FF,$FF,$FF,$FF,$FC,$11,$11,$09,$23,$FF,$FF,$FF,$FF,$FF,$FF ; $4E82
        db      $FF,$FF,$FC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$CF,$FF,$FF,$FF ; $4E92
        db      $FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00 ; $4EA2
        db      $00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC ; $4EB2
        db      $CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00,$00 ; $4EC2
        db      $00,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30 ; $4ED2
        db      $00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00 ; $4EE2
        db      $00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC ; $4EF2
        db      $00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00,$00,$00 ; $4F02
        db      $CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$00,$00,$00,$30,$00 ; $4F12
        db      $00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00 ; $4F22
        db      $30,$00,$00,$00,$CC,$CC,$00,$00,$00,$31,$55,$55,$54,$CC,$CC,$00 ; $4F32
        db      $00,$00,$31,$00,$00,$04,$CC,$CC,$00,$00,$00,$31,$15,$55,$44,$CC ; $4F42
        db      $CC,$00,$00,$00,$31,$10,$00,$44,$CC,$CC,$00,$00,$00,$31,$11,$54 ; $4F52
        db      $44,$CC,$CC,$00,$00,$00,$31,$11,$04,$44,$CC,$CC,$00,$00,$00,$31 ; $4F62
        db      $11,$04,$44,$CC,$CC,$00,$00,$00,$31,$11,$54,$44,$CC,$CC,$00,$00 ; $4F72
        db      $00,$31,$10,$00,$44,$CC,$CC,$00,$00,$00,$31,$15,$55,$44,$CC,$CC ; $4F82
        db      $00,$00,$00,$31,$00,$00,$04,$CC,$CC,$00,$00,$00,$31,$55,$55,$54 ; $4F92
        db      $CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF ; $4FA2
        db      $FF,$FF,$CC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$FF,$FF,$FF,$FF ; $4FB2
        db      $FF,$FF,$FF,$FF,$FC,$11,$11,$09,$23,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $4FC2
        db      $FF,$FC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$CF,$FF,$FF,$FF,$FF ; $4FD2
        db      $FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CC,$55,$55 ; $4FE2
        db      $55,$31,$55,$55,$54,$CC,$CC,$40,$00,$01,$31,$00,$00,$04,$CC,$CC ; $4FF2
        db      $45,$55,$51,$31,$15,$55,$44,$CC,$CC,$44,$00,$11,$31,$10,$00,$44 ; $5002
        db      $CC,$CC,$44,$55,$11,$31,$11,$54,$44,$CC,$CC,$44,$41,$11,$31,$11 ; $5012
        db      $04,$44,$CC,$CC,$44,$41,$11,$31,$11,$04,$44,$CC,$CC,$44,$55,$11 ; $5022
        db      $31,$11,$54,$44,$CC,$CC,$44,$00,$11,$31,$10,$00,$44,$CC,$CC,$45 ; $5032
        db      $55,$51,$31,$15,$55,$44,$CC,$CC,$40,$00,$01,$31,$00,$00,$04,$CC ; $5042
        db      $CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$00,$00,$00,$30,$00,$00 ; $5052
        db      $00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CC,$CC,$00,$00,$00,$30 ; $5062
        db      $00,$00,$00,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC,$CC,$40,$00 ; $5072
        db      $01,$31,$00,$00,$04,$CC,$CC,$45,$55,$51,$31,$15,$55,$44,$CC,$CC ; $5082
        db      $44,$00,$11,$31,$10,$00,$44,$CC,$CC,$44,$55,$11,$31,$11,$54,$44 ; $5092
        db      $CC,$CC,$44,$41,$11,$31,$11,$04,$44,$CC,$CC,$44,$41,$11,$31,$11 ; $50A2
        db      $04,$44,$CC,$CC,$44,$55,$11,$31,$11,$54,$44,$CC,$CC,$44,$00,$11 ; $50B2
        db      $31,$10,$00,$44,$CC,$CC,$45,$55,$51,$31,$15,$55,$44,$CC,$CC,$40 ; $50C2
        db      $00,$01,$31,$00,$00,$04,$CC,$CC,$55,$55,$55,$31,$55,$55,$54,$CC ; $50D2
        db      $CC,$00,$00,$00,$30,$00,$00,$00,$CC,$CF,$FF,$FF,$FF,$FF,$FF,$FF ; $50E2
        db      $FF,$CC,$C0,$00,$00,$00,$00,$00,$00,$00,$0C,$FF,$FF,$FF,$FF,$FF ; $50F2
        db      $FF,$FF,$FF,$FC,$11,$08,$09,$1A,$00,$00,$00,$0A,$A8,$00,$00,$00 ; $5102
        db      $00,$00,$00,$00,$2A,$AA,$00,$00,$00,$00,$00,$00,$00,$A0,$02,$80 ; $5112
        db      $00,$00,$00,$00,$00,$02,$80,$00,$A0,$00,$00,$00,$00,$00,$02,$80 ; $5122
        db      $00,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00,$00,$00,$00,$00 ; $5132
        db      $00,$00,$00,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$A0,$00,$00,$00 ; $5142
        db      $00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$0A,$00,$00 ; $5152
        db      $00,$00,$00,$00,$00,$00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$A0 ; $5162
        db      $00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00 ; $5172
        db      $02,$80,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00 ; $5182
        db      $00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5192
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$80,$00 ; $51A2
        db      $00,$00,$00,$00,$00,$00,$02,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $51B2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $51C2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $51D2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$AA,$AA,$AA,$AA,$AA,$AA ; $51E2
        db      $AA,$A8,$00,$00,$90,$6E,$00,$0F,$00,$00,$01,$00,$00,$68,$9C,$FF ; $51F2
        db      $C4,$FF,$20,$FB,$C0,$FC,$00,$00,$00,$90,$6E,$00,$E2,$FF,$00,$01 ; $5202
        db      $00,$00,$78,$9C,$FF,$F1,$FF,$44,$FA,$DC,$FE,$00,$00,$00,$90,$6E ; $5212
        db      $00,$B5,$FF,$C0,$01,$00,$00,$8A,$9C,$FF,$1E,$00,$54,$FA,$68,$01 ; $5222
        db      $00,$49,$4D,$49,$4D,$CB,$4A,$88,$4E,$49,$4D,$CB,$4A,$88,$4E,$88 ; $5232
        db      $4E,$CB,$4A,$88,$4E,$0A,$4C,$0A,$4C,$0A,$4C,$0A,$4C,$49,$4D,$CB ; $5242
        db      $4A,$88,$4E,$49,$4D,$CB,$4A,$CB,$4A,$49,$4D,$CB,$4A,$CB,$4A,$88 ; $5252
        db      $4E,$0A,$4C,$CB,$4A,$49,$4D,$CB,$4A,$0A,$4C,$49,$4D,$88,$4E,$C7 ; $5262
        db      $4F,$49,$4D,$88,$4E,$88,$4E,$88,$4E,$C0,$00,$00,$C0,$C0,$00,$00 ; $5272
        db      $00,$40,$00,$C0,$00,$00,$C0,$00,$00,$C0,$00,$C0,$C0,$40,$C0,$C0 ; $5282
        db      $00,$00,$00,$80,$80,$00,$C0,$C0,$00,$C0,$40,$C0,$C0,$C0,$42,$FF ; $5292
        db      $42,$AE,$42,$08,$43,$ED,$42,$C9,$42,$F4,$51,$09,$52,$1E,$52     ; $52A2 preserved bytes

PPQ5_TERSE_52B1:
        rst     $08                                                             ; $52B1 colon entry
        dw      XT_LITbyte                                                      ; $52B2 execution token
        db      $17                                                             ; $52B4 inline byte
        dw      XT_plus                                                         ; $52B5 execution token
        dw      XT_Bat                                                          ; $52B7 execution token
        dw      XT_RETURN                                                       ; $52B9 execution token

PPQ5_TERSE_52BB:
        rst     $08                                                             ; $52BB colon entry
        dw      XT_GET_CURRENT_TASK                                             ; $52BC execution token
        dw      PPQ5_TERSE_52B1                                                 ; $52BE execution token
        dw      XT_0                                                            ; $52C0 execution token
        dw      $1F03                                                           ; $52C2 execution token
        dw      XT_LITbyte                                                      ; $52C4 execution token
        db      $08                                                             ; $52C6 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $52C7 execution token
        dw      $207E                                                           ; $52C9 execution token
        dw      $1F03                                                           ; $52CB execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $52CD execution token
        dw      XT_RETURN                                                       ; $52CF execution token

        db      $01                                                             ; $52D1 preserved bytes
        db      $20,$06,$69,$73,$20,$74,$6F,$20,$03,$61,$73,$20                 ; $52D2 preserved bytes

VISUAL_ANALOGY_SETUP:
        rst     $08                                                             ; $52DE colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $52DF execution token
        dw      XT_0                                                            ; $52E1 execution token
        dw      XT_0                                                            ; $52E3 execution token
        dw      XT_LIT                                                          ; $52E5 execution token
        dw      $52D1                                                           ; $52E7 inline word
        dw      XT_LIT                                                          ; $52E9 execution token
        dw      $52AB                                                           ; $52EB inline word
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $52ED execution token
        dw      XT_ARRAY                                                        ; $52EF execution token
        dw      $529F                                                           ; $52F1 inline word
        dw      XT_at                                                           ; $52F3 execution token
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $52F5 execution token
        dw      $1EDC                                                           ; $52F7 execution token
        dw      XT_LIT                                                          ; $52F9 execution token
        dw      $FF88                                                           ; $52FB inline word
        dw      XT_LITbyte                                                      ; $52FD execution token
        db      $05                                                             ; $52FF inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5300 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5302 execution token
        dw      XT_BARRAY                                                       ; $5304 execution token
        dw      $527B                                                           ; $5306 inline word
        dw      XT_at                                                           ; $5308 execution token
        dw      $1F03                                                           ; $530A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $530C execution token
        dw      XT_ARRAY                                                        ; $530E execution token
        dw      $5233                                                           ; $5310 inline word
        dw      XT_at                                                           ; $5312 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5314 execution token
        dw      XT_LIT                                                          ; $5316 execution token
        dw      $52D3                                                           ; $5318 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $531A execution token
        dw      XT_LIT                                                          ; $531C execution token
        dw      $FFA1                                                           ; $531E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5320 execution token
        dw      PPQ5_TERSE_52BB                                                 ; $5322 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5324 execution token
        dw      XT_BARRAY                                                       ; $5326 execution token
        dw      $5281                                                           ; $5328 inline word
        dw      XT_at                                                           ; $532A execution token
        dw      $1F03                                                           ; $532C execution token
        dw      XT_LIT                                                          ; $532E execution token
        dw      $FFDB                                                           ; $5330 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5332 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5334 execution token
        dw      XT_ARRAY                                                        ; $5336 execution token
        dw      $523F                                                           ; $5338 inline word
        dw      XT_at                                                           ; $533A execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $533C execution token
        dw      XT_LIT                                                          ; $533E execution token
        dw      $52DA                                                           ; $5340 inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $5342 execution token
        dw      XT_LIT                                                          ; $5344 execution token
        dw      $FF88                                                           ; $5346 inline word
        dw      XT_LIT                                                          ; $5348 execution token
        dw      $FFD3                                                           ; $534A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $534C execution token
        dw      PPQ5_TERSE_52BB                                                 ; $534E execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5350 execution token
        dw      XT_BARRAY                                                       ; $5352 execution token
        dw      $5287                                                           ; $5354 inline word
        dw      XT_at                                                           ; $5356 execution token
        dw      $1F03                                                           ; $5358 execution token
        dw      XT_LIT                                                          ; $535A execution token
        dw      $FFAF                                                           ; $535C inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $535E execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5360 execution token
        dw      XT_ARRAY                                                        ; $5362 execution token
        dw      $524B                                                           ; $5364 inline word
        dw      XT_at                                                           ; $5366 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5368 execution token
        dw      XT_LIT                                                          ; $536A execution token
        dw      $52D3                                                           ; $536C inline word
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $536E execution token
        dw      XT_LIT                                                          ; $5370 execution token
        dw      $FFC9                                                           ; $5372 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $5374 execution token
        dw      PPQ5_TERSE_52BB                                                 ; $5376 execution token
        dw      XT_LITbyte                                                      ; $5378 execution token
        db      $09                                                             ; $537A inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $537B execution token
        dw      XT_0                                                            ; $537D execution token
        dw      $1F03                                                           ; $537F execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $5381 execution token
        dw      XT_LIT                                                          ; $5383 execution token
        dw      $5106                                                           ; $5385 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5387 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5389 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $538B execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $538D execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $538F execution token
        dw      XT_RETURN                                                       ; $5391 execution token

VISUAL_ANALOGY_CORRECT:
        rst     $08                                                             ; $5393 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5394 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $5396 execution token
        dw      XT_LIT                                                          ; $5398 execution token
        dw      $FFD0                                                           ; $539A inline word
        dw      XT_LITbyte                                                      ; $539C execution token
        db      $07                                                             ; $539E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $539F execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $53A1 execution token
        dw      XT_DUP                                                          ; $53A3 execution token
        dw      XT_BARRAY                                                       ; $53A5 execution token
        dw      $528D                                                           ; $53A7 inline word
        dw      XT_at                                                           ; $53A9 execution token
        dw      $1F03                                                           ; $53AB execution token
        dw      XT_ARRAY                                                        ; $53AD execution token
        dw      $5257                                                           ; $53AF inline word
        dw      XT_at                                                           ; $53B1 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $53B3 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $53B5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $53B7 execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $53B9 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $53BB execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $53BD execution token
        dw      XT_LIT                                                          ; $53BF execution token
        dw      $43CF                                                           ; $53C1 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $53C3 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $53C5 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $53C7 execution token
        dw      XT_RETURN                                                       ; $53C9 execution token

VISUAL_ANALOGY_WRONG_1:
        rst     $08                                                             ; $53CB colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $53CC execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $53CE execution token
        dw      XT_LIT                                                          ; $53D0 execution token
        dw      $FFD0                                                           ; $53D2 inline word
        dw      XT_LITbyte                                                      ; $53D4 execution token
        db      $07                                                             ; $53D6 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $53D7 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $53D9 execution token
        dw      XT_DUP                                                          ; $53DB execution token
        dw      XT_BARRAY                                                       ; $53DD execution token
        dw      $5293                                                           ; $53DF inline word
        dw      XT_at                                                           ; $53E1 execution token
        dw      $1F03                                                           ; $53E3 execution token
        dw      XT_ARRAY                                                        ; $53E5 execution token
        dw      $5263                                                           ; $53E7 inline word
        dw      XT_at                                                           ; $53E9 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $53EB execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $53ED execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $53EF execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $53F1 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $53F3 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $53F5 execution token
        dw      $1DE0                                                           ; $53F7 execution token
        dw      XT_LITbyte                                                      ; $53F9 execution token
        db      $0F                                                             ; $53FB inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $53FC execution token
        dw      $1A2C                                                           ; $53FE execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $5400 execution token
        dw      XT_LITbyte                                                      ; $5402 execution token
        db      $06                                                             ; $5404 inline byte
        dw      XT_LIT                                                          ; $5405 execution token
        dw      $FFD5                                                           ; $5407 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5409 execution token
        dw      XT_LIT                                                          ; $540B execution token
        dw      $4AC8                                                           ; $540D inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $540F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $5411 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $5413 execution token
        dw      XT_RETURN                                                       ; $5415 execution token

VISUAL_ANALOGY_WRONG_2:
        rst     $08                                                             ; $5417 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $5418 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $541A execution token
        dw      XT_LIT                                                          ; $541C execution token
        dw      $FFD0                                                           ; $541E inline word
        dw      XT_LITbyte                                                      ; $5420 execution token
        db      $07                                                             ; $5422 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $5423 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $5425 execution token
        dw      XT_DUP                                                          ; $5427 execution token
        dw      XT_BARRAY                                                       ; $5429 execution token
        dw      $5299                                                           ; $542B inline word
        dw      XT_at                                                           ; $542D execution token
        dw      $1F03                                                           ; $542F execution token
        dw      XT_ARRAY                                                        ; $5431 execution token
        dw      $526F                                                           ; $5433 inline word
        dw      XT_at                                                           ; $5435 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $5437 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $5439 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $543B execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $543D execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $543F execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $5441 execution token
        dw      $1DE0                                                           ; $5443 execution token
        dw      XT_LITbyte                                                      ; $5445 execution token
        db      $0F                                                             ; $5447 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $5448 execution token
        dw      $1A2C                                                           ; $544A execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $544C execution token
        dw      XT_LITbyte                                                      ; $544E execution token
        db      $09                                                             ; $5450 inline byte
        dw      XT_LIT                                                          ; $5451 execution token
        dw      $FFD3                                                           ; $5453 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $5455 execution token
        dw      XT_LIT                                                          ; $5457 execution token
        dw      $4AC8                                                           ; $5459 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $545B execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $545D execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $545F execution token
        dw      XT_RETURN                                                       ; $5461 execution token

VISUAL_ANALOGY_ACTIONS:
        db      $04                                                             ; $5463 action count
        dw      VISUAL_ANALOGY_SETUP                                            ; $5464 setup
        dw      VISUAL_ANALOGY_CORRECT                                          ; $5466 correct
        dw      VISUAL_ANALOGY_WRONG_1                                          ; $5468 wrong 1
        dw      VISUAL_ANALOGY_WRONG_2                                          ; $546A wrong 2

; Rooted by tier slot 2.
QUESTION_INITIALIZER_546C:
        rst     $08                                                          ; $546C
        dw      XT_LITbyte                                                      ; $546D
        db      $02                                                              ; $546F
        dw      XT_RANDOM_BELOW                                                 ; $5470
        dw      XT_LIT                                                          ; $5472
        dw      QUESTION_VARIANT_ADDR                                           ; $5474
        dw      XT_SBbang                                                       ; $5476
        dw      XT_LIT                                                          ; $5478
        dw      PPQ5_VISUAL_ANALOGY_ACTION_LIST                                 ; $547A
        dw      XT_RETURN                                                       ; $547C

; Rooted by tier slot 3.
QUESTION_INITIALIZER_547E:
        rst     $08                                                          ; $547E
        dw      XT_LITbyte                                                      ; $547F
        db      $02                                                              ; $5481
        dw      XT_RANDOM_BELOW                                                 ; $5482
        dw      XT_LITbyte                                                      ; $5484
        db      $02                                                              ; $5486
        dw      XT_plus                                                         ; $5487
        dw      XT_LIT                                                          ; $5489
        dw      QUESTION_VARIANT_ADDR                                           ; $548B
        dw      XT_SBbang                                                       ; $548D
        dw      XT_LIT                                                          ; $548F
        dw      PPQ5_VISUAL_ANALOGY_ACTION_LIST                                 ; $5491
        dw      XT_RETURN                                                       ; $5493

; Rooted by tier slot 4.
QUESTION_INITIALIZER_5495:
        rst     $08                                                          ; $5495
        dw      XT_LITbyte                                                      ; $5496
        db      $02                                                              ; $5498
        dw      XT_RANDOM_BELOW                                                 ; $5499
        dw      XT_LITbyte                                                      ; $549B
        db      $04                                                              ; $549D
        dw      XT_plus                                                         ; $549E
        dw      XT_LIT                                                          ; $54A0
        dw      QUESTION_VARIANT_ADDR                                           ; $54A2
        dw      XT_SBbang                                                       ; $54A4
        dw      XT_LIT                                                          ; $54A6
        dw      PPQ5_VISUAL_ANALOGY_ACTION_LIST                                 ; $54A8
        dw      XT_RETURN                                                       ; $54AA
        db      $0A,$10,$06,$21,$1A,$20,$30,$15,$55                             ; $54AC
        db      $55,$55,$55,$00,$45,$55,$55,$55,$54,$40,$51,$55,$55,$55,$51,$40 ; $54B5
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $54C5
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $54D5
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $54E5
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $54F5
        db      $05,$40,$54,$00,$00,$00,$05,$40,$50,$00,$00,$00,$01,$40,$00,$00 ; $5505
        db      $00,$00,$00,$00,$50,$00,$00,$00,$01,$40,$54,$00,$00,$00,$05,$40 ; $5515
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5525
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5535
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5545
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5555
        db      $05,$40,$51,$55,$55,$55,$51,$40,$45,$55,$55,$55,$54,$40,$15,$55 ; $5565
        db      $55,$55,$55,$00,$F8,$0F,$01,$1F,$1A,$20,$30,$04,$14,$54,$54,$54 ; $5575
        db      $54,$54,$54,$54,$54,$54,$54,$54,$54,$14,$00,$14,$54,$54,$54,$54 ; $5585
        db      $54,$54,$54,$54,$54,$54,$54,$54,$14,$04,$0A,$10,$06,$21,$1A,$20 ; $5595
        db      $30,$15,$55,$55,$55,$55,$00,$05,$55,$55,$55,$54,$40,$01,$55,$55 ; $55A5
        db      $55,$51,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00 ; $55B5
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05 ; $55C5
        db      $40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00 ; $55D5
        db      $00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00 ; $55E5
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$01,$55,$55,$55,$51 ; $55F5
        db      $40,$05,$55,$55,$55,$54,$00,$51,$55,$55,$55,$50,$00,$54,$00,$00 ; $5605
        db      $00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54 ; $5615
        db      $00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00 ; $5625
        db      $00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00 ; $5635
        db      $00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54 ; $5645
        db      $00,$00,$00,$00,$00,$51,$55,$55,$55,$50,$00,$45,$55,$55,$55,$54 ; $5655
        db      $00,$15,$55,$55,$55,$55,$00,$09,$10,$05,$21,$1A,$20,$30,$55,$55 ; $5665
        db      $55,$55,$54,$15,$55,$55,$55,$51,$05,$55,$55,$55,$45,$00,$00,$00 ; $5675
        db      $00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $5685
        db      $15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15 ; $5695
        db      $00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00 ; $56A5
        db      $00,$00,$00,$15,$00,$00,$00,$00,$15,$05,$55,$55,$55,$45,$15,$55 ; $56B5
        db      $55,$55,$50,$05,$55,$55,$55,$45,$00,$00,$00,$00,$15,$00,$00,$00 ; $56C5
        db      $00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $56D5
        db      $15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15 ; $56E5
        db      $00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00 ; $56F5
        db      $00,$00,$00,$15,$05,$55,$55,$55,$45,$15,$55,$55,$55,$51,$55,$55 ; $5705
        db      $55,$55,$54,$0A,$0F,$06,$1F,$1A,$20,$30,$40,$00,$00,$00,$00,$40 ; $5715
        db      $50,$00,$00,$00,$01,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5725
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5735
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5745
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5755
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$51,$55 ; $5765
        db      $55,$55,$51,$40,$05,$55,$55,$55,$54,$00,$01,$55,$55,$55,$51,$40 ; $5775
        db      $00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00 ; $5785
        db      $05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00 ; $5795
        db      $00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40 ; $57A5
        db      $00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00 ; $57B5
        db      $05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$01,$40,$00,$00 ; $57C5
        db      $00,$00,$00,$40,$0A,$10,$06,$21,$1A,$20,$30,$15,$55,$55,$55,$55 ; $57D5
        db      $00,$45,$55,$55,$55,$54,$00,$51,$55,$55,$55,$50,$00,$54,$00,$00 ; $57E5
        db      $00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54 ; $57F5
        db      $00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00 ; $5805
        db      $00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00 ; $5815
        db      $00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54 ; $5825
        db      $00,$00,$00,$00,$00,$51,$55,$55,$55,$50,$00,$05,$55,$55,$55,$54 ; $5835
        db      $00,$01,$55,$55,$55,$51,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00 ; $5845
        db      $00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00 ; $5855
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05 ; $5865
        db      $40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00 ; $5875
        db      $00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$01 ; $5885
        db      $55,$55,$55,$51,$40,$05,$55,$55,$55,$54,$40,$15,$55,$55,$55,$55 ; $5895
        db      $00,$0A,$10,$06,$21,$1A,$20,$30,$15,$55,$55,$55,$55,$00,$45,$55 ; $58A5
        db      $55,$55,$54,$00,$51,$55,$55,$55,$50,$00,$54,$00,$00,$00,$00,$00 ; $58B5
        db      $54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00 ; $58C5
        db      $00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00 ; $58D5
        db      $00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00 ; $58E5
        db      $54,$00,$00,$00,$00,$00,$54,$00,$00,$00,$00,$00,$54,$00,$00,$00 ; $58F5
        db      $00,$00,$51,$55,$55,$55,$50,$00,$05,$55,$55,$55,$54,$00,$51,$55 ; $5905
        db      $55,$55,$51,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5915
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5925
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5935
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5945
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$51,$55,$55,$55 ; $5955
        db      $51,$40,$45,$55,$55,$55,$54,$40,$15,$55,$55,$55,$55,$00,$09,$10 ; $5965
        db      $05,$20,$1A,$20,$30,$55,$55,$55,$55,$54,$15,$55,$55,$55,$51,$05 ; $5975
        db      $55,$55,$55,$45,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00 ; $5985
        db      $00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00 ; $5995
        db      $00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $59A5
        db      $15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15 ; $59B5
        db      $00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00 ; $59C5
        db      $00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00 ; $59D5
        db      $00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00 ; $59E5
        db      $00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $59F5
        db      $15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$15,$00,$00,$00,$00,$05 ; $5A05
        db      $00,$00,$00,$00,$01,$0A,$10,$06,$21,$1A,$20,$30,$15,$55,$55,$55 ; $5A15
        db      $55,$00,$45,$55,$55,$55,$54,$40,$51,$55,$55,$55,$51,$40,$54,$00 ; $5A25
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5A35
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5A45
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5A55
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5A65
        db      $54,$00,$00,$00,$05,$40,$51,$55,$55,$55,$51,$40,$05,$55,$55,$55 ; $5A75
        db      $54,$00,$51,$55,$55,$55,$51,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5A85
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5A95
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5AA5
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5AB5
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5AC5
        db      $51,$55,$55,$55,$51,$40,$45,$55,$55,$55,$54,$40,$15,$55,$55,$55 ; $5AD5
        db      $55,$00,$0A,$10,$06,$21,$1A,$20,$30,$15,$55,$55,$55,$55,$00,$45 ; $5AE5
        db      $55,$55,$55,$54,$40,$51,$55,$55,$55,$51,$40,$54,$00,$00,$00,$05 ; $5AF5
        db      $40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00 ; $5B05
        db      $00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54 ; $5B15
        db      $00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05 ; $5B25
        db      $40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00 ; $5B35
        db      $00,$05,$40,$51,$55,$55,$55,$51,$40,$05,$55,$55,$55,$54,$00,$01 ; $5B45
        db      $55,$55,$55,$51,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05 ; $5B55
        db      $40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00 ; $5B65
        db      $00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00 ; $5B75
        db      $00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05 ; $5B85
        db      $40,$00,$00,$00,$00,$05,$40,$00,$00,$00,$00,$05,$40,$01,$55,$55 ; $5B95
        db      $55,$51,$40,$05,$55,$55,$55,$54,$40,$15,$55,$55,$55,$55,$00,$09 ; $5BA5
        db      $10,$05,$21,$1A,$20,$30,$55,$55,$55,$55,$54,$15,$55,$55,$55,$50 ; $5BB5
        db      $05,$55,$55,$55,$40,$00,$00,$00,$00,$00,$00,$00,$54,$00,$00,$00 ; $5BC5
        db      $00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00 ; $5BD5
        db      $54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54 ; $5BE5
        db      $00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00 ; $5BF5
        db      $00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00 ; $5C05
        db      $00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00 ; $5C15
        db      $00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00 ; $5C25
        db      $54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54 ; $5C35
        db      $00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00,$00,$00,$00,$54,$00 ; $5C45
        db      $00,$00,$00,$54,$00,$00,$00,$00,$10,$00,$00,$0A,$10,$06,$20,$1A ; $5C55
        db      $20,$30,$15,$55,$55,$55,$55,$00,$45,$55,$55,$55,$54,$40,$51,$55 ; $5C65
        db      $55,$55,$51,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5C75
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00 ; $5C85
        db      $05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00 ; $5C95
        db      $00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40 ; $5CA5
        db      $54,$00,$00,$00,$05,$40,$54,$00,$00,$00,$05,$40,$51,$55,$55,$55 ; $5CB5
        db      $51,$40,$05,$55,$55,$55,$54,$00,$51,$55,$55,$55,$50,$00,$54,$00 ; $5CC5
        db      $00,$00,$00,$00,$54,$54,$00,$00,$00,$00,$54,$55,$00,$00,$00,$00 ; $5CD5
        db      $54,$15,$40,$00,$00,$00,$54,$05,$50,$00,$00,$00,$54,$01,$54,$00 ; $5CE5
        db      $00,$00,$54,$00,$55,$00,$00,$00,$54,$00,$15,$40,$00,$00,$54,$00 ; $5CF5
        db      $05,$50,$00,$00,$54,$00,$01,$54,$00,$00,$54,$00,$00,$55,$00,$00 ; $5D05
        db      $54,$00,$00,$15,$40,$00,$50,$00,$00,$05,$50,$00,$40,$00,$00,$01 ; $5D15
        db      $54,$00,$CF,$12,$01,$0A,$F2,$2A,$12,$01,$2E,$12,$01,$5E,$12,$01 ; $5D25
        db      $2E,$71,$2B,$12,$01,$0F,$09,$01,$F8,$00,$2E,$2B,$FD,$00,$CF,$09 ; $5D35
        db      $01,$80,$00,$12,$01,$40,$12,$01,$60,$71,$2B,$12,$01,$30,$F2,$2A ; $5D45
        db      $30,$01,$12,$01,$02,$12,$01,$03,$09,$01,$FC,$FF,$2A,$01,$09,$01 ; $5D55
        db      $FF,$00,$09,$01,$F9,$FF,$BB,$2B,$FD,$00,$CF,$09,$01,$FC,$F2,$36 ; $5D65
        db      $01,$49,$05,$53,$01,$FD,$00,$CF,$09,$01,$FB,$F2,$36,$01,$49,$05 ; $5D75
        db      $53,$01,$FD,$00,$CF,$12,$01,$0F,$09,$01,$F8,$00,$2E,$2B,$FD,$00 ; $5D85
        db      $CF,$2A,$01,$09,$01,$6D,$FD,$EF,$2B,$12,$01,$00,$12,$01,$00,$2E ; $5D95
        db      $2B,$12,$01,$03,$A8,$2B,$12,$01,$0A,$F2,$2A,$12,$01,$2E,$12,$01 ; $5DA5
        db      $5E,$12,$01,$2E,$71,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00 ; $5DB5
        db      $12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8 ; $5DC5
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D ; $5DD5
        db      $12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02 ; $5DE5
        db      $A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E ; $5DF5
        db      $2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$04,$A8,$2B,$12,$01,$00 ; $5E05
        db      $12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8 ; $5E15
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D ; $5E25
        db      $12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02 ; $5E35
        db      $A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E ; $5E45
        db      $2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00 ; $5E55
        db      $12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8 ; $5E65
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$06,$A8,$2B,$8C,$2B ; $5E75
        db      $FD,$00,$CF,$2A,$01,$09,$01,$3D,$FD,$EF,$2B,$12,$01,$0A,$F2,$2A ; $5E85
        db      $12,$01,$2E,$12,$01,$5E,$12,$01,$2E,$71,$2B,$89,$5D,$12,$01,$03 ; $5E95
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89 ; $5EA5
        db      $5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01 ; $5EB5
        db      $02,$A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00 ; $5EC5
        db      $2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01 ; $5ED5
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$04 ; $5EE5
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89 ; $5EF5
        db      $5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01 ; $5F05
        db      $02,$A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00 ; $5F15
        db      $2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03,$A8,$2B,$12,$01 ; $5F25
        db      $00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89,$5D,$12,$01,$03 ; $5F35
        db      $A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$89 ; $5F45
        db      $5D,$12,$01,$03,$A8,$2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01 ; $5F55
        db      $06,$A8,$2B,$8C,$2B,$FD,$00,$CF,$95,$5D,$87,$5E,$FD,$00,$CF,$2A ; $5F65
        db      $01,$09,$01,$6D,$FD,$EF,$2B,$09,$01,$FC,$F2,$3F,$05,$27,$5D,$12 ; $5F75
        db      $01,$03,$A8,$2B,$EA,$3F,$12,$01,$02,$A8,$2B,$6F,$5D,$12,$01,$0A ; $5F85
        db      $1C,$02,$EA,$03,$82,$5F,$8C,$2B,$FD,$00,$CF,$2A,$01,$09,$01,$3D ; $5F95
        db      $FD,$EF,$2B,$09,$01,$FB,$F2,$3F,$05,$12,$01,$00,$12,$01,$00,$2E ; $5FA5
        db      $2B,$12,$01,$03,$A8,$2B,$27,$5D,$12,$01,$03,$A8,$2B,$EA,$3F,$12 ; $5FB5
        db      $01,$02,$A8,$2B,$7C,$5D,$12,$01,$0A,$1C,$02,$EA,$03,$BB,$5F,$8C ; $5FC5
        db      $2B,$FD,$00,$CF,$73,$5F,$9F,$5F,$FD,$00,$0F,$0E,$04,$0F,$1A,$20 ; $5FD5
        db      $30,$00,$05,$50,$00,$00,$05,$50,$00,$00,$05,$50,$00,$00,$05,$50 ; $5FE5
        db      $00,$00,$05,$50,$00,$00,$05,$50,$00,$55,$55,$55,$55,$55,$55,$55 ; $5FF5
        db      $55,$55,$55,$55,$55,$00,$05,$50,$00,$00,$05,$50,$00,$00,$05,$50 ; $6005
        db      $00,$00,$05,$50,$00,$00,$05,$50,$00,$00,$05,$50,$00,$0F,$08,$04 ; $6015
        db      $03,$1A,$20,$30,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55 ; $6025
        db      $0F,$0E,$04,$0F,$1A,$20,$30,$00,$01,$40,$00,$00,$05,$50,$00,$00 ; $6035
        db      $05,$50,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55 ; $6045
        db      $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00 ; $6055
        db      $00,$00,$00,$00,$01,$40,$00,$00,$05,$50,$00,$00,$05,$50,$00,$00 ; $6065
        db      $01,$40,$00,$10,$0C,$05,$0D,$1A,$20,$30,$55,$00,$00,$15,$40,$15 ; $6075
        db      $40,$00,$55,$00,$05,$50,$01,$54,$00,$01,$54,$05,$50,$00,$00,$55 ; $6085
        db      $15,$40,$00,$00,$15,$55,$00,$00,$00,$05,$54,$00,$00,$00,$15,$55 ; $6095
        db      $00,$00,$00,$55,$15,$40,$00,$01,$54,$05,$50,$00,$05,$50,$01,$54 ; $60A5
        db      $00,$15,$40,$00,$55,$00,$55,$00,$00,$15,$40                     ; $60B5 preserved bytes

PPQ5_TERSE_60C0:
        rst     $08                                                             ; $60C0 colon entry
        dw      XT_0                                                            ; $60C1 execution token
        dw      XT_LIT                                                          ; $60C3 execution token
        dw      $FD3D                                                           ; $60C5 inline word
        dw      $2BEF                                                           ; $60C7 execution token
        dw      XT_LITbyte                                                      ; $60C9 execution token
        db      $30                                                             ; $60CB inline byte
        dw      $2AF2                                                           ; $60CC execution token
        dw      XT_LITbyte                                                      ; $60CE execution token
        db      $4E                                                             ; $60D0 inline byte
        dw      XT_LIT                                                          ; $60D1 execution token
        dw      $009F                                                           ; $60D3 inline word
        dw      XT_LITbyte                                                      ; $60D5 execution token
        db      $4E                                                             ; $60D7 inline byte
        dw      $2B71                                                           ; $60D8 execution token
        dw      XT_LITbyte                                                      ; $60DA execution token
        db      $0F                                                             ; $60DC inline byte
        dw      XT_LIT                                                          ; $60DD execution token
        dw      $00AA                                                           ; $60DF inline word
        dw      $2B2E                                                           ; $60E1 execution token
        dw      XT_LIT                                                          ; $60E3 execution token
        dw      $0088                                                           ; $60E5 inline word
        dw      $2B35                                                           ; $60E7 execution token
        dw      XT_LITbyte                                                      ; $60E9 execution token
        db      $40                                                             ; $60EB inline byte
        dw      $2BA8                                                           ; $60EC execution token
        dw      XT_LITbyte                                                      ; $60EE execution token
        db      $00                                                             ; $60F0 inline byte
        dw      $2B35                                                           ; $60F1 execution token
        dw      $2B8C                                                           ; $60F3 execution token
        dw      XT_RETURN                                                       ; $60F5 execution token

PPQ5_TERSE_60F7:
        rst     $08                                                             ; $60F7 colon entry
        dw      XT_0                                                            ; $60F8 execution token
        dw      XT_LIT                                                          ; $60FA execution token
        dw      $FD6D                                                           ; $60FC inline word
        dw      $2BEF                                                           ; $60FE execution token
        dw      XT_LITbyte                                                      ; $6100 execution token
        db      $30                                                             ; $6102 inline byte
        dw      $2AF2                                                           ; $6103 execution token
        dw      XT_LIT                                                          ; $6105 execution token
        dw      QUESTION_BANK_BASE                                              ; $6107 inline word
        dw      XT_LITbyte                                                      ; $6109 execution token
        db      $40                                                             ; $610B inline byte
        dw      XT_LITbyte                                                      ; $610C execution token
        db      $20                                                             ; $610E inline byte
        dw      $2B71                                                           ; $610F execution token
        dw      XT_LITbyte                                                      ; $6111 execution token
        db      $0F                                                             ; $6113 inline byte
        dw      XT_LIT                                                          ; $6114 execution token
        dw      $00AA                                                           ; $6116 inline word
        dw      $2B2E                                                           ; $6118 execution token
        dw      XT_LIT                                                          ; $611A execution token
        dw      $0088                                                           ; $611C inline word
        dw      $2B35                                                           ; $611E execution token
        dw      XT_LITbyte                                                      ; $6120 execution token
        db      $40                                                             ; $6122 inline byte
        dw      $2BA8                                                           ; $6123 execution token
        dw      XT_LITbyte                                                      ; $6125 execution token
        db      $00                                                             ; $6127 inline byte
        dw      $2B35                                                           ; $6128 execution token
        dw      $2B8C                                                           ; $612A execution token
        dw      XT_RETURN                                                       ; $612C execution token

PPQ5_TERSE_612E:
        rst     $08                                                             ; $612E colon entry
        dw      PPQ5_TERSE_60F7                                                 ; $612F execution token
        dw      PPQ5_TERSE_60C0                                                 ; $6131 execution token
        dw      XT_RETURN                                                       ; $6133 execution token
        db      $20,$20,$0E,$3F,$00,$00,$00,$3F,$F0,$00,$00,$00,$00,$00,$00,$00 ; $6135
        db      $00,$00,$00,$00,$00,$FF,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6145
        db      $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $6155
        db      $00,$FF,$FF,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF ; $6165
        db      $FF,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$C0 ; $6175
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00 ; $6185
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00 ; $6195
        db      $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00 ; $61A5
        db      $00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00 ; $61B5
        db      $00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $61C5
        db      $00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF ; $61D5
        db      $FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$FF,$FF,$F0 ; $61E5
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$FF,$03,$C0,$00,$00 ; $61F5
        db      $00,$00,$00,$00,$00,$00,$00,$00,$03,$FF,$F0,$00,$00,$00,$00,$00 ; $6205
        db      $00,$00,$00,$00,$00,$00,$03,$FF,$FF,$40,$00,$00,$00,$00,$00,$00 ; $6215
        db      $00,$00,$00,$00,$0F,$FF,$FF,$C0,$00,$00,$FF,$00,$00,$00,$00,$00 ; $6225
        db      $00,$00,$0F,$FF,$FF,$C0,$00,$03,$FF,$0F,$00,$00,$00,$00,$00,$00 ; $6235
        db      $3F,$FF,$FF,$C0,$CF,$0F,$FF,$CF,$FC,$00,$00,$00,$00,$00,$FF,$FF ; $6245
        db      $FF,$C3,$FF,$CF,$FF,$CF,$FF,$F0,$00,$00,$00,$00,$FF,$FF,$FF,$C3 ; $6255
        db      $FF,$C3,$FF,$CF,$FF,$FC,$00,$00,$00,$03,$FF,$FF,$FF,$C3,$FF,$F3 ; $6265
        db      $FF,$CF,$FF,$FF,$00,$00,$00,$03,$FF,$FF,$FF,$C3,$FF,$F3,$FF,$3F ; $6275
        db      $FF,$FF,$C0,$00,$00,$0F,$FF,$FF,$FF,$C3,$FF,$F3,$FF,$3F,$F0,$FF ; $6285
        db      $FC,$00,$00,$0F,$FF,$FF,$FF,$01,$FF,$F4,$FF,$3F,$0F,$FF,$FF,$00 ; $6295
        db      $00,$0F,$FF,$F0,$00,$FF,$FF,$F0,$FF,$3F,$3F,$FF,$FD,$C0,$00,$3F ; $62A5
        db      $FF,$FF,$F3,$FC,$FF,$FC,$FF,$0C,$3F,$FF,$FF,$C0,$00,$3F,$FF,$FF ; $62B5
        db      $FC,$FF,$3F,$F0,$7C,$00,$FF,$FF,$FF,$C0,$00,$FF,$FF,$FF,$FF,$3F ; $62C5
        db      $CF,$00,$00,$00,$FF,$FF,$F7,$C0,$00,$FF,$FF,$FF,$FF,$0F,$F0,$3F ; $62D5
        db      $FF,$FF,$FF,$FF,$FF,$C0,$03,$FF,$FF,$FF,$FF,$CF,$C0,$C0,$0F,$FF ; $62E5
        db      $FF,$FF,$FF,$C0,$0F,$FF,$FF,$FF,$FF,$F3,$C0,$EA,$A3,$FF,$F7,$FF ; $62F5
        db      $FF,$00,$3F,$FF,$FF,$FF,$FF,$F3,$C0,$EA,$A3,$FF,$F5,$FF,$F0,$3C ; $6305
        db      $FC,$FF,$FF,$FF,$FF,$FC,$F0,$EA,$A3,$FF,$FD,$FF,$C0,$FF,$FC,$FF ; $6315
        db      $FF,$FF,$FF,$FF,$F0,$EA,$A3,$FF,$F7,$FC,$03,$FF,$FC,$FF,$FF,$FF ; $6325
        db      $FF,$FF,$F0,$EA,$8F,$FF,$FF,$00,$3D,$FF,$FC,$FF,$FF,$FF,$FF,$FF ; $6335
        db      $C0,$3F,$FF,$FF,$F0,$0F,$FF,$FF,$FC,$3F,$FF,$FF,$FF,$FF,$CC,$00 ; $6345
        db      $00,$00,$03,$FF,$FF,$7F,$FC,$3F,$FF,$FF,$FF,$FF,$C3,$03,$FF,$FF ; $6355
        db      $FF,$FF,$7F,$7F,$FF,$0F,$FF,$FF,$FF,$FF,$0C,$A8,$0F,$FF,$FF,$FF ; $6365
        db      $FF,$7C,$FF,$C3,$FF,$FF,$FF,$FF,$0F,$AA,$8F,$FF,$FF,$FF,$FF,$70 ; $6375
        db      $FF,$00,$FF,$FF,$FF,$F0,$0E,$AA,$8F,$D7,$FF,$FF,$FD,$C0,$FC,$33 ; $6385
        db      $FF,$FF,$FF,$0D,$0F,$AA,$8F,$D7,$FF,$FF,$FD,$00,$FF,$FF,$FF,$FF ; $6395
        db      $C3,$07,$43,$E8,$3F,$F7,$FF,$FF,$F0,$00,$FF,$FF,$FF,$C3,$1D,$FC ; $63A5
        db      $00,$0F,$FF,$F7,$FF,$F0,$03,$00,$FF,$CF,$FF,$FF,$FD,$3C,$FF,$F0 ; $63B5
        db      $00,$00,$00,$00,$FF,$00,$FF,$F3,$FF,$FF,$FF,$F3,$00,$0F,$FF,$FF ; $63C5
        db      $FF,$FF,$FF,$00,$F0,$F3,$FF,$FF,$FF,$C3,$AA,$A3,$FF,$FF,$FF,$FF ; $63D5
        db      $FF,$00,$FF,$C3,$FF,$FF,$FF,$F3,$AA,$A8,$FF,$FF,$FF,$F7,$FC,$00 ; $63E5
        db      $FF,$F3,$FF,$FF,$FF,$F3,$AA,$A8,$FF,$FF,$FF,$F7,$FC,$00,$FF,$F3 ; $63F5
        db      $FF,$FF,$FF,$F3,$AA,$83,$FD,$7F,$FF,$F7,$F0,$00,$FF,$F3,$FF,$FF ; $6405
        db      $FF,$F0,$FF,$FF,$FD,$FF,$FF,$F3,$C0,$00,$3F,$F3,$FF,$FF,$FF,$FC ; $6415
        db      $00,$00,$00,$00,$00,$00,$00,$00,$0F,$FC,$FF,$FF,$FF,$FF,$C3,$FF ; $6425
        db      $FF,$FF,$FF,$FF,$00,$00,$0F,$FC,$3F,$FF,$FF,$FF,$CC,$03,$F5,$CF ; $6435
        db      $FF,$DF,$C0,$00,$0F,$FF,$3F,$FF,$FF,$FF,$0E,$A8,$FD,$FF,$FF,$DF ; $6445
        db      $C0,$00,$03,$F0,$0F,$FF,$FF,$FF,$CE,$A8,$F7,$FF,$FF,$7F,$00,$00 ; $6455
        db      $00,$FD,$C3,$FF,$FF,$FF,$CE,$A3,$F7,$7F,$FF,$5C,$00,$00,$00,$FD ; $6465
        db      $F0,$FF,$FF,$FF,$F3,$FF,$FF,$7F,$FF,$C0,$00,$00,$00,$3F,$C0,$3F ; $6475
        db      $FF,$FF,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$FF,$FF ; $6485
        db      $FF,$CF,$FF,$03,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$FF,$C3 ; $6495
        db      $FF,$CC,$00,$00,$00,$00,$0D,$00,$00,$0F,$0F,$0D,$0D,$06,$06,$00 ; $64A5
        db      $00,$01,$01,$10,$20,$30,$00,$00,$00,$00,$0D,$06,$06,$0F,$03,$07 ; $64B5
        db      $00,$0F,$00,$04,$04,$04,$08,$08,$08,$00,$00,$00,$00,$0E,$07,$08 ; $64C5
        db      $00,$06,$00,$0A,$0F,$0D,$00,$00,$00,$0A,$00,$00,$00,$0B,$0F,$0D ; $64D5
        db      $00,$0F,$07,$00,$0F,$0F,$0F,$00,$00,$90,$88,$FF,$AB,$FF,$00,$00 ; $64E5
        db      $00,$00,$00,$90,$EC,$FF,$AB,$FF,$00,$00,$00,$00,$00,$90,$50,$00 ; $64F5
        db      $AB,$FF,$00,$00,$00,$EC,$64,$F6,$64,$00,$65,$D9,$57,$B4,$64,$B4 ; $6505
        db      $64,$1A,$5A,$B4,$64,$B4,$64,$79,$55,$6C,$56,$B4,$64,$18,$57,$9F ; $6515
        db      $55,$B4,$64,$18,$57,$1A,$5A,$B4,$64,$A6,$58,$A6,$58,$B4,$64,$79 ; $6525
        db      $55,$AC,$54,$1A,$5A,$79,$55,$1A,$5A,$B4,$64,$10,$65,$16,$65,$1C ; $6535
        db      $65,$22,$65,$28,$65,$2E,$65,$34,$65,$3A,$65,$01,$20,$25,$66,$72 ; $6545
        db      $6F,$6D,$20,$6C,$65,$66,$74,$20,$74,$6F,$20,$72,$69,$67,$68,$74 ; $6555
        db      $20,$77,$68,$69,$63,$68,$20,$73,$65,$71,$75,$65,$6E,$63,$65,$20 ; $6565
        db      $6F,$66,$20,$2D,$6F,$70,$65,$72,$61,$74,$69,$6F,$6E,$73,$20,$77 ; $6575
        db      $6F,$75,$6C,$64,$20,$61,$72,$72,$69,$76,$65,$20,$61,$74,$20,$74 ; $6585
        db      $68,$65,$20,$67,$69,$76,$65,$6E,$20,$72,$65,$73,$75,$6C,$74,$20 ; $6595
        db      $3F,$DF,$5F,$22,$60,$78,$60,$35,$60,$DF,$5F,$22,$60,$35,$60,$DF ; $65A5
        db      $5F,$35,$60,$DF,$5F,$35,$60,$DF,$5F,$DF,$5F,$35,$60,$DF,$5F,$78 ; $65B5
        db      $60,$78,$60,$DF,$5F,$DF,$5F,$DF,$5F,$78,$60,$22,$60,$DF,$5F,$DF ; $65C5
        db      $5F,$78,$60,$78,$60,$22,$60,$78,$60,$AE,$65,$B4,$65,$BA,$65,$C0 ; $65D5
        db      $65,$C6,$65,$CC,$65,$D2,$65,$D8,$65,$D8,$65,$AE,$65,$C6,$65,$BA ; $65E5
        db      $65,$CC,$65,$C6,$65,$AE,$65,$D2,$65,$C6,$65,$D8,$65,$D2,$65,$B4 ; $65F5
        db      $65,$D8,$65,$C0,$65,$BA,$65,$C6,$65,$CF,$93,$2C,$12,$01,$14,$09 ; $6605
        db      $01,$C4,$FF,$54,$1D,$09,$01,$35,$61,$B4,$1C,$09,$01,$E8,$03,$6B ; $6615
        db      $1D,$12,$01,$04,$09,$01,$EA,$F6,$32,$05,$12,$01,$02,$40,$1F,$09 ; $6625
        db      $01,$E8,$03,$6B,$1D,$2A,$01,$71,$1C,$51,$1C,$E9,$19,$09,$01,$18 ; $6635
        db      $FC,$6B,$1D,$09,$01,$E7,$FF,$71,$1C,$51,$1C,$E9,$19,$09,$01,$EA ; $6645
        db      $F6,$36,$01,$44,$05,$53,$01,$DE,$01,$EA,$03,$34,$66,$37,$23,$FD ; $6655
        db      $00                                                             ; $6665 preserved bytes

OPERATION_SEQUENCE_SETUP:
        rst     $08                                                             ; $6666 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6667 execution token
        dw      XT_LITbyte                                                      ; $6669 execution token
        db      $08                                                             ; $666B inline byte
        dw      XT_RANDOM_BELOW                                                 ; $666C execution token
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $666E execution token
        dw      XT_LIT                                                          ; $6670 execution token
        dw      $64BC                                                           ; $6672 inline word
        dw      $2D7C                                                           ; $6674 execution token
        dw      XT_0                                                            ; $6676 execution token
        dw      XT_0                                                            ; $6678 execution token
        dw      XT_LIT                                                          ; $667A execution token
        dw      $6550                                                           ; $667C inline word
        dw      XT_LIT                                                          ; $667E execution token
        dw      $650A                                                           ; $6680 inline word
        dw      XT_LIT                                                          ; $6682 execution token
        dw      $64AB                                                           ; $6684 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $6686 execution token
        dw      XT_LITbyte                                                      ; $6688 execution token
        db      $0B                                                             ; $668A inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $668B execution token
        dw      XT_LIT                                                          ; $668D execution token
        dw      $FF88                                                           ; $668F inline word
        dw      XT_LIT                                                          ; $6691 execution token
        dw      $FFE8                                                           ; $6693 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6695 execution token
        dw      XT_LIT                                                          ; $6697 execution token
        dw      $6552                                                           ; $6699 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $669B execution token
        dw      XT_INITIALIZE_OBJECT_DRAW_STATE                                 ; $669D execution token
        dw      XT_LIT                                                          ; $669F execution token
        dw      $FF74                                                           ; $66A1 inline word
        dw      XT_LIT                                                          ; $66A3 execution token
        dw      $FFDA                                                           ; $66A5 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $66A7 execution token
        dw      XT_LIT                                                          ; $66A9 execution token
        dw      $6578                                                           ; $66AB inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $66AD execution token
        dw      XT_INITIALIZE_OBJECT_DRAW_STATE                                 ; $66AF execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $66B1 execution token
        dw      XT_LIT                                                          ; $66B3 execution token
        dw      $58A6                                                           ; $66B5 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $66B7 execution token
        dw      XT_LIT                                                          ; $66B9 execution token
        dw      $FF79                                                           ; $66BB inline word
        dw      XT_LITbyte                                                      ; $66BD execution token
        db      $0A                                                             ; $66BF inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $66C0 execution token
        dw      XT_LITbyte                                                      ; $66C2 execution token
        db      $04                                                             ; $66C4 inline byte
        dw      XT_LIT                                                          ; $66C5 execution token
        dw      $F5FE                                                           ; $66C7 inline word
        dw      XT_SBbang                                                       ; $66C9 execution token
L66CB:
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $66CB execution token
        dw      XT_GET_CURRENT_TASK                                             ; $66CD execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $66CF execution token
        dw      XT_LITbyte                                                      ; $66D1 execution token
        db      $32                                                             ; $66D3 inline byte
        dw      XT_plus                                                         ; $66D4 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $66D6 execution token
        dw      XT_LIT                                                          ; $66D8 execution token
        dw      $F5FE                                                           ; $66DA inline word
        dw      XT_DUP                                                          ; $66DC execution token
        dw      XT_1minusBbang                                                  ; $66DE execution token
        dw      XT_Bat                                                          ; $66E0 execution token
        dw      XT_zeroequal                                                    ; $66E2 execution token
        dw      XT_0BRANCH                                                      ; $66E4 execution token
        dw      L66CB                                                           ; $66E6 branch target
        dw      XT_LITbyte                                                      ; $66E8 execution token
        db      $36                                                             ; $66EA inline byte
        dw      XT_0                                                            ; $66EB execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $66ED execution token
        dw      XT_LIT                                                          ; $66EF execution token
        dw      $6022                                                           ; $66F1 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $66F3 execution token
        dw      XT_LITbyte                                                      ; $66F5 execution token
        db      $0A                                                             ; $66F7 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $66F8 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $66FA execution token
        dw      XT_LITbyte                                                      ; $66FC execution token
        db      $4C                                                             ; $66FE inline byte
        dw      XT_LITbyte                                                      ; $66FF execution token
        db      $0A                                                             ; $6701 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6702 execution token
        dw      XT_LITbyte                                                      ; $6704 execution token
        db      $03                                                             ; $6706 inline byte
        dw      XT_0                                                            ; $6707 execution token
        dw      XT_DO                                                           ; $6709 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $670B execution token
        dw      XT_ARRAY                                                        ; $670D execution token
        dw      $6540                                                           ; $670F inline word
        dw      XT_at                                                           ; $6711 execution token
        dw      XT_I                                                            ; $6713 execution token
        dw      XT_2splat                                                       ; $6715 execution token
        dw      XT_plus                                                         ; $6717 execution token
        dw      XT_at                                                           ; $6719 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $671B execution token
        dw      XT_GET_CURRENT_TASK                                             ; $671D execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $671F execution token
        dw      XT_LITbyte                                                      ; $6721 execution token
        db      $19                                                             ; $6723 inline byte
        dw      XT_plus                                                         ; $6724 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6726 execution token
        dw      XT_LOOP                                                         ; $6728 execution token
        dw      XT_LIT                                                          ; $672A execution token
        dw      $00B4                                                           ; $672C inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $672E execution token
        dw      $1A2C                                                           ; $6730 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6732 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6734 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6736 execution token
        dw      XT_RETURN                                                       ; $6738 execution token

OPERATION_SEQUENCE_CORRECT:
        rst     $08                                                             ; $673A colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $673B execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $673D execution token
        dw      XT_LITbyte                                                      ; $673F execution token
        db      $06                                                             ; $6741 inline byte
        dw      XT_LITbyte                                                      ; $6742 execution token
        db      $27                                                             ; $6744 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6745 execution token
        dw      XT_LITbyte                                                      ; $6747 execution token
        db      $03                                                             ; $6749 inline byte
        dw      XT_0                                                            ; $674A execution token
        dw      XT_DO                                                           ; $674C execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $674E execution token
        dw      XT_ARRAY                                                        ; $6750 execution token
        dw      $65DE                                                           ; $6752 inline word
        dw      XT_at                                                           ; $6754 execution token
        dw      XT_I                                                            ; $6756 execution token
        dw      XT_2splat                                                       ; $6758 execution token
        dw      XT_plus                                                         ; $675A execution token
        dw      XT_at                                                           ; $675C execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $675E execution token
        dw      XT_GET_CURRENT_TASK                                             ; $6760 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $6762 execution token
        dw      XT_LITbyte                                                      ; $6764 execution token
        db      $19                                                             ; $6766 inline byte
        dw      XT_plus                                                         ; $6767 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6769 execution token
        dw      XT_LOOP                                                         ; $676B execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $676D execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $676F execution token
        dw      $2D40                                                           ; $6771 execution token
        dw      PPQ5_TERSE_4295                                                 ; $6773 execution token
        dw      XT_LITbyte                                                      ; $6775 execution token
        db      $1E                                                             ; $6777 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6778 execution token
        dw      $1A2C                                                           ; $677A execution token
        dw      XT_LIT                                                          ; $677C execution token
        dw      $660E                                                           ; $677E inline word
        dw      $2CDD                                                           ; $6780 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6782 execution token
        dw      XT_LIT                                                          ; $6784 execution token
        dw      $F2FF                                                           ; $6786 inline word
        dw      $1C1D                                                           ; $6788 execution token
        dw      $1A2C                                                           ; $678A execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $678C execution token
        dw      XT_RETURN                                                       ; $678E execution token

OPERATION_SEQUENCE_WRONG_1:
        rst     $08                                                             ; $6790 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6791 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $6793 execution token
        dw      XT_LITbyte                                                      ; $6795 execution token
        db      $06                                                             ; $6797 inline byte
        dw      XT_LITbyte                                                      ; $6798 execution token
        db      $27                                                             ; $679A inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $679B execution token
        dw      XT_LITbyte                                                      ; $679D execution token
        db      $03                                                             ; $679F inline byte
        dw      XT_0                                                            ; $67A0 execution token
        dw      XT_DO                                                           ; $67A2 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $67A4 execution token
        dw      XT_ARRAY                                                        ; $67A6 execution token
        dw      $65EE                                                           ; $67A8 inline word
        dw      XT_at                                                           ; $67AA execution token
        dw      XT_I                                                            ; $67AC execution token
        dw      XT_2splat                                                       ; $67AE execution token
        dw      XT_plus                                                         ; $67B0 execution token
        dw      XT_at                                                           ; $67B2 execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $67B4 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $67B6 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $67B8 execution token
        dw      XT_LITbyte                                                      ; $67BA execution token
        db      $19                                                             ; $67BC inline byte
        dw      XT_plus                                                         ; $67BD execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $67BF execution token
        dw      XT_LOOP                                                         ; $67C1 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $67C3 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $67C5 execution token
        dw      $2D40                                                           ; $67C7 execution token
        dw      $1EE9                                                           ; $67C9 execution token
        dw      PPQ5_TERSE_612E                                                 ; $67CB execution token
        dw      XT_LIT                                                          ; $67CD execution token
        dw      $660E                                                           ; $67CF inline word
        dw      $2CDD                                                           ; $67D1 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $67D3 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $67D5 execution token
        dw      XT_RETURN                                                       ; $67D7 execution token

OPERATION_SEQUENCE_WRONG_2:
        rst     $08                                                             ; $67D9 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $67DA execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $67DC execution token
        dw      XT_LITbyte                                                      ; $67DE execution token
        db      $06                                                             ; $67E0 inline byte
        dw      XT_LITbyte                                                      ; $67E1 execution token
        db      $27                                                             ; $67E3 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $67E4 execution token
        dw      XT_LITbyte                                                      ; $67E6 execution token
        db      $03                                                             ; $67E8 inline byte
        dw      XT_0                                                            ; $67E9 execution token
        dw      XT_DO                                                           ; $67EB execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $67ED execution token
        dw      XT_ARRAY                                                        ; $67EF execution token
        dw      $65FE                                                           ; $67F1 inline word
        dw      XT_at                                                           ; $67F3 execution token
        dw      XT_I                                                            ; $67F5 execution token
        dw      XT_2splat                                                       ; $67F7 execution token
        dw      XT_plus                                                         ; $67F9 execution token
        dw      XT_at                                                           ; $67FB execution token
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $67FD execution token
        dw      XT_GET_CURRENT_TASK                                             ; $67FF execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $6801 execution token
        dw      XT_LITbyte                                                      ; $6803 execution token
        db      $19                                                             ; $6805 inline byte
        dw      XT_plus                                                         ; $6806 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6808 execution token
        dw      XT_LOOP                                                         ; $680A execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $680C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $680E execution token
        dw      $2D40                                                           ; $6810 execution token
        dw      $1EE9                                                           ; $6812 execution token
        dw      PPQ5_TERSE_612E                                                 ; $6814 execution token
        dw      XT_LIT                                                          ; $6816 execution token
        dw      $660E                                                           ; $6818 inline word
        dw      $2CDD                                                           ; $681A execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $681C execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $681E execution token
        dw      XT_RETURN                                                       ; $6820 execution token

OPERATION_SEQUENCE_ACTIONS:
        db      $04                                                             ; $6822 action count
        dw      OPERATION_SEQUENCE_SETUP                                        ; $6823 setup
        dw      OPERATION_SEQUENCE_CORRECT                                      ; $6825 correct
        dw      OPERATION_SEQUENCE_WRONG_1                                      ; $6827 wrong 1
        dw      OPERATION_SEQUENCE_WRONG_2                                      ; $6829 wrong 2

; Rooted by tier slots 3, 5, 6, 7.
QUESTION_INITIALIZER_682B:
        rst     $08                                                          ; $682B
        dw      XT_LIT                                                          ; $682C
        dw      PPQ5_OPERATION_SEQUENCE_ACTION_LIST                             ; $682E
        dw      XT_RETURN                                                       ; $6830
        db      $00,$00,$01,$01,$00,$00,$00,$90,$28                             ; $6832
        db      $00,$0A,$00,$00,$00,$00,$00,$00,$90,$28,$00,$DF,$FF,$00,$00,$00 ; $683B
        db      $00,$00,$90,$28,$00,$B4,$FF,$00,$00,$00,$37,$68,$41,$68,$4B,$68 ; $684B
        db      $01,$20,$13,$74,$68,$69,$73,$20,$6E,$75,$6D,$62,$65,$72,$20,$74 ; $685B
        db      $75,$72,$6E,$65,$64,$20,$13,$20,$20,$20,$75,$70,$73,$69,$64,$65 ; $686B
        db      $20,$64,$6F,$77,$6E,$20,$69,$73,$20,$3F,$12,$20,$20,$20,$20,$74 ; $687B
        db      $68,$69,$73,$20,$6E,$75,$6D,$62,$65,$72,$20,$69,$6E,$13,$20,$72 ; $688B
        db      $65,$76,$65,$72,$73,$65,$20,$6F,$72,$64,$65,$72,$20,$69,$73,$20 ; $689B
        db      $3F,$11,$20,$20,$20,$74,$68,$69,$73,$20,$6E,$75,$6D,$62,$65,$72 ; $68AB
        db      $20,$69,$73,$10,$20,$20,$20,$74,$68,$65,$20,$73,$61,$6D,$65,$20 ; $68BB
        db      $61,$73,$20,$3F,$5D,$68,$85,$68,$AC,$68,$71,$68,$98,$68,$BE,$68 ; $68CB
        db      $0B,$00,$81,$05,$AC,$54,$05,$79,$55,$05,$9F,$55,$05,$6C,$56,$05 ; $68DB
        db      $18,$57,$05,$D9,$57,$05,$A6,$58,$05,$73,$59,$05,$1A,$5A,$05,$E7 ; $68EB
        db      $5A,$05,$32,$68,$00,$DE,$68,$83,$FF,$9B,$FF,$B3,$FF,$CB,$FF,$E3 ; $68FB
        db      $FF,$8A,$00,$72,$00,$5A,$00,$42,$00,$2A,$00,$2A,$00,$42,$00,$5A ; $690B
        db      $00,$72,$00,$8A,$00,$2A,$00,$42,$00,$5C,$00,$76,$00,$8C,$00,$AC ; $691B
        db      $54,$73,$59,$73,$59,$6C,$56,$18,$57,$73,$59,$73,$59,$6C,$56,$18 ; $692B
        db      $57,$D9,$57,$AC,$54,$6C,$56,$9F,$55,$9F,$55,$AC,$54,$6C,$56,$9F ; $693B
        db      $55,$18,$57,$6C,$56,$D9,$57,$6C,$56,$A6,$58,$9F,$55,$E7,$5A,$9F ; $694B
        db      $55,$73,$59,$A6,$58,$AC,$54,$A6,$58,$E7,$5A,$D9,$57,$E7,$5A,$73 ; $695B
        db      $59,$E7,$5A,$9F,$55,$E7,$5A,$E7,$5A,$6C,$56,$A6,$58,$A6,$58,$E7 ; $696B
        db      $5A,$A6,$58,$1A,$5A,$A6,$58,$A6,$58,$D9,$57,$9F,$55,$D9,$57,$9F ; $697B
        db      $55,$18,$57,$9F,$55,$9F,$55,$E7,$5A,$D9,$57,$D9,$57,$9F,$55,$A6 ; $698B
        db      $58,$A6,$58,$E7,$5A,$D9,$57,$E7,$5A,$A6,$58,$A6,$58,$E7,$5A,$A6 ; $699B
        db      $58,$E7,$5A,$A6,$58,$A6,$58,$E7,$5A,$E7,$5A,$9F,$55,$D9,$57,$D9 ; $69AB
        db      $57,$9F,$55,$D9,$57,$9F,$55,$D9,$57,$D9,$57,$9F,$55,$9F,$55,$A6 ; $69BB
        db      $58,$60,$5C,$6C,$56,$A6,$58,$B4,$5B,$00,$00,$40,$40,$00,$2A,$69 ; $69CB
        db      $34,$69,$3E,$69,$48,$69,$52,$69,$5C,$69,$66,$69,$70,$69,$7A,$69 ; $69DB
        db      $84,$69,$8E,$69,$98,$69,$A2,$69,$AC,$69,$B6,$69,$C0,$69,$CF,$99 ; $69EB
        db      $15,$A8,$1E,$09,$01,$DF,$FF,$3C,$1D,$12,$01,$04,$09,$01,$FA,$F2 ; $69FB
        db      $32,$05,$6C,$5F,$14,$1F,$09,$01,$FA,$F2,$53,$01,$25,$01,$02,$69 ; $6A0B
        db      $4C,$01,$24,$1D,$09,$01,$DB,$68,$B4,$1C,$12,$01,$36,$DF,$1B,$E9 ; $6A1B
        db      $19,$F7,$2C,$25,$01,$D9,$69,$4C,$01,$09,$01,$FA,$F2,$53,$01,$A6 ; $6A2B
        db      $01,$5A,$01,$4C,$01,$B4,$1C,$34,$1E,$09,$01,$FA,$F2,$36,$01,$44 ; $6A3B
        db      $05,$53,$01,$09,$01,$FF,$00,$CF,$01,$EA,$03,$0D,$6A,$02,$23,$54 ; $6A4B
        db      $22,$FD,$00,$CF,$99,$15,$A8,$1E,$D8,$5F,$E7,$15,$34,$8B,$2A,$01 ; $6A5B
        db      $25,$01,$0C,$69,$4C,$01,$24,$1D,$09,$01,$DB,$68,$B4,$1C,$12,$01 ; $6A6B
        db      $34,$DF,$1B,$E9,$19,$02,$23,$54,$22,$FD,$00,$CF,$99,$15,$A8,$1E ; $6A7B
        db      $34,$8B,$30,$01,$25,$01,$0C,$69,$4C,$01,$24,$1D,$09,$01,$DB,$68 ; $6A8B
        db      $B4,$1C,$12,$01,$34,$DF,$1B,$E9,$19,$02,$23,$54,$22,$FD,$00,$CF ; $6A9B
        db      $99,$15,$A8,$1E,$34,$8B,$12,$01,$02,$25,$01,$0C,$69,$4C,$01,$24 ; $6AAB
        db      $1D,$09,$01,$DB,$68,$B4,$1C,$12,$01,$34,$DF,$1B,$E9,$19,$02,$23 ; $6ABB
        db      $54,$22,$FD,$00,$CF,$99,$15,$A8,$1E,$34,$8B,$12,$01,$03,$25,$01 ; $6ACB
        db      $0C,$69,$4C,$01,$24,$1D,$09,$01,$DB,$68,$B4,$1C,$12,$01,$34,$DF ; $6ADB
        db      $1B,$E9,$19,$02,$23,$54,$22,$FD,$00,$CF,$99,$15,$A8,$1E,$34,$8B ; $6AEB
        db      $12,$01,$04,$25,$01,$0C,$69,$4C,$01,$24,$1D,$09,$01,$DB,$68,$B4 ; $6AFB
        db      $1C,$12,$01,$34,$DF,$1B,$E9,$19,$02,$23,$54,$22,$FD,$00,$01,$F9 ; $6B0B
        db      $69,$05,$5E,$6A,$86,$6A,$AA,$6A,$CF,$6A,$F4,$6A                 ; $6B1B preserved bytes

PPQ5_TERSE_6B27:
        rst     $08                                                             ; $6B27 colon entry
        dw      XT_SET_OBJECT_MODE_2                                            ; $6B28 execution token
        dw      XT_LITbyte                                                      ; $6B2A execution token
        db      $03                                                             ; $6B2C inline byte
        dw      $1E5C                                                           ; $6B2D execution token
        dw      XT_LIT                                                          ; $6B2F execution token
        dw      $FF70                                                           ; $6B31 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6B33 execution token
        dw      XT_LIT                                                          ; $6B35 execution token
        dw      $FFBF                                                           ; $6B37 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $6B39 execution token
        dw      XT_LIT                                                          ; $6B3B execution token
        dw      $FFF8                                                           ; $6B3D inline word
        dw      $1C5F                                                           ; $6B3F execution token
        dw      XT_LIT                                                          ; $6B41 execution token
        dw      $FFBF                                                           ; $6B43 inline word
        dw      $1C71                                                           ; $6B45 execution token
        dw      $2630                                                           ; $6B47 execution token
        dw      XT_LIT                                                          ; $6B49 execution token
        dw      $FFF9                                                           ; $6B4B inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6B4D execution token
        dw      XT_LIT                                                          ; $6B4F execution token
        dw      $FFF9                                                           ; $6B51 inline word
        dw      $1C5F                                                           ; $6B53 execution token
        dw      XT_LIT                                                          ; $6B55 execution token
        dw      $FFFE                                                           ; $6B57 inline word
        dw      $1C71                                                           ; $6B59 execution token
        dw      $2630                                                           ; $6B5B execution token
        dw      XT_LIT                                                          ; $6B5D execution token
        dw      $FFFF                                                           ; $6B5F inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $6B61 execution token
        dw      XT_LIT                                                          ; $6B63 execution token
        dw      $FFFF                                                           ; $6B65 inline word
        dw      $1C71                                                           ; $6B67 execution token
        dw      XT_LIT                                                          ; $6B69 execution token
        dw      $FF70                                                           ; $6B6B inline word
        dw      $1C5F                                                           ; $6B6D execution token
        dw      $2630                                                           ; $6B6F execution token
        dw      XT_LIT                                                          ; $6B71 execution token
        dw      $FF6F                                                           ; $6B73 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6B75 execution token
        dw      XT_LIT                                                          ; $6B77 execution token
        dw      $FF6F                                                           ; $6B79 inline word
        dw      $1C5F                                                           ; $6B7B execution token
        dw      XT_LIT                                                          ; $6B7D execution token
        dw      $FFBF                                                           ; $6B7F inline word
        dw      $1C71                                                           ; $6B81 execution token
        dw      $2630                                                           ; $6B83 execution token
        dw      XT_LIT                                                          ; $6B85 execution token
        dw      $FF6E                                                           ; $6B87 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6B89 execution token
        dw      XT_LIT                                                          ; $6B8B execution token
        dw      $FFBD                                                           ; $6B8D inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $6B8F execution token
        dw      XT_LIT                                                          ; $6B91 execution token
        dw      $FFFA                                                           ; $6B93 inline word
        dw      $1C5F                                                           ; $6B95 execution token
        dw      XT_LIT                                                          ; $6B97 execution token
        dw      $FFBD                                                           ; $6B99 inline word
        dw      $1C71                                                           ; $6B9B execution token
        dw      $2630                                                           ; $6B9D execution token
        dw      XT_LIT                                                          ; $6B9F execution token
        dw      $FFFB                                                           ; $6BA1 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6BA3 execution token
        dw      XT_LIT                                                          ; $6BA5 execution token
        dw      $FFFB                                                           ; $6BA7 inline word
        dw      $1C5F                                                           ; $6BA9 execution token
        dw      XT_0                                                            ; $6BAB execution token
        dw      $1C71                                                           ; $6BAD execution token
        dw      $2630                                                           ; $6BAF execution token
        dw      XT_1                                                            ; $6BB1 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $6BB3 execution token
        dw      XT_1                                                            ; $6BB5 execution token
        dw      $1C71                                                           ; $6BB7 execution token
        dw      XT_LIT                                                          ; $6BB9 execution token
        dw      $FF6E                                                           ; $6BBB inline word
        dw      $1C5F                                                           ; $6BBD execution token
        dw      $2630                                                           ; $6BBF execution token
        dw      XT_LIT                                                          ; $6BC1 execution token
        dw      $FF6D                                                           ; $6BC3 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $6BC5 execution token
        dw      XT_LIT                                                          ; $6BC7 execution token
        dw      $FF6D                                                           ; $6BC9 inline word
        dw      $1C5F                                                           ; $6BCB execution token
        dw      XT_LIT                                                          ; $6BCD execution token
        dw      $FFBD                                                           ; $6BCF inline word
        dw      $1C71                                                           ; $6BD1 execution token
        dw      $2630                                                           ; $6BD3 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $6BD5 execution token
        dw      XT_RETURN                                                       ; $6BD7 execution token

        db      $0A,$00                                                         ; $6BD9 preserved bytes
        db      $DF,$FF,$B4,$FF,$CF,$09,$01,$1C,$6B,$BB,$22,$F7,$15,$12,$01,$05 ; $6BDB
        db      $2A,$01,$6F,$02,$A8,$1E,$B8,$02,$25,$01,$20,$69,$4C,$01,$24,$1D ; $6BEB
        db      $B8,$02,$1A,$01,$D4,$69,$53,$01,$03,$1F,$B8,$02,$25,$01,$CA,$69 ; $6BFB
        db      $4C,$01,$F2,$2C,$8A,$02,$37,$23,$FD,$00,$CF,$E9,$1E,$12,$01,$04 ; $6C0B
        db      $09,$01,$F2,$F5,$32,$05,$09,$01,$F2,$F5,$53,$01,$25,$01,$0C,$69 ; $6C1B
        db      $4C,$01,$24,$1D,$F7,$2C,$25,$01,$D9,$69,$4C,$01,$09,$01,$F2,$F5 ; $6C2B
        db      $53,$01,$A6,$01,$5A,$01,$4C,$01,$F2,$2C,$09,$01,$F2,$F5,$36,$01 ; $6C3B
        db      $44,$05,$53,$01,$09,$01,$FF,$00,$CF,$01,$EA,$03,$21,$6C,$FD,$00 ; $6C4B
        db      $CF,$12,$01,$04,$09,$01,$F2,$F5,$32,$05,$09,$01,$F2,$F5,$53,$01 ; $6C5B
        db      $25,$01,$0C,$69,$4C,$01,$24,$1D,$F7,$2C,$25,$01,$D9,$69,$4C,$01 ; $6C6B
        db      $09,$01,$F2,$F5,$53,$01,$A6,$01,$5A,$01,$4C,$01,$F2,$2C,$09,$01 ; $6C7B
        db      $F2,$F5,$36,$01,$44,$05,$53,$01,$09,$01,$FF,$00,$CF,$01,$EA,$03 ; $6C8B
        db      $65,$6C,$FD,$00,$CF,$12,$01,$04,$09,$01,$F8,$F2,$32,$05,$09,$01 ; $6C9B
        db      $F8,$F2,$53,$01,$25,$01,$16,$69,$4C,$01,$24,$1D,$F7,$2C,$25,$01 ; $6CAB
        db      $D9,$69,$4C,$01,$09,$01,$F8,$F2,$53,$01,$A6,$01,$5A,$01,$4C,$01 ; $6CBB
        db      $F2,$2C,$09,$01,$F8,$F2,$36,$01,$44,$05,$53,$01,$09,$01,$FF,$00 ; $6CCB
        db      $CF,$01,$EA,$03,$A9,$6C,$FD,$00,$CF,$E9,$1E,$12,$01,$05,$2A,$01 ; $6CDB
        db      $6F,$02,$B8,$02,$25,$01,$16,$69,$4C,$01,$24,$1D,$F7,$2C,$25,$01 ; $6CEB
        db      $D9,$69,$4C,$01,$B8,$02,$A6,$01,$5A,$01,$4C,$01,$F2,$2C,$8A,$02 ; $6CFB
        db      $FD,$00,$CF,$C2,$1E,$12,$01,$05,$2A,$01,$6F,$02,$B8,$02,$25,$01 ; $6D0B
        db      $16,$69,$4C,$01,$24,$1D,$F7,$2C,$25,$01,$D9,$69,$4C,$01,$B8,$02 ; $6D1B
        db      $A6,$01,$5A,$01,$4C,$01,$F2,$2C,$8A,$02,$FD,$00,$15,$6C,$5B,$6C ; $6D2B
        db      $9F,$6C,$E3,$6C,$15,$6C,$5B,$6C,$0D,$6D,$9F,$6C,$15,$6C         ; $6D3B preserved bytes

PPQ5_TERSE_6D49:
        rst     $08                                                             ; $6D49 colon entry
        dw      XT_LIT                                                          ; $6D4A execution token
        dw      $F2F7                                                           ; $6D4C inline word
        dw      XT_Bat                                                          ; $6D4E execution token
        dw      XT_RETURN                                                       ; $6D50 execution token

NUMBER_TRANSFORMATION_SETUP:
        rst     $08                                                             ; $6D52 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6D53 execution token
        dw      XT_LIT                                                          ; $6D55 execution token
        dw      $FF74                                                           ; $6D57 inline word
        dw      XT_LITbyte                                                      ; $6D59 execution token
        db      $0C                                                             ; $6D5B inline byte
        dw      XT_LIT                                                          ; $6D5C execution token
        dw      $685B                                                           ; $6D5E inline word
        dw      XT_LIT                                                          ; $6D60 execution token
        dw      $6855                                                           ; $6D62 inline word
        dw      XT_LIT                                                          ; $6D64 execution token
        dw      $2D8C                                                           ; $6D66 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $6D68 execution token
        dw      XT_LITbyte                                                      ; $6D6A execution token
        db      $02                                                             ; $6D6C inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $6D6D execution token
        dw      XT_LIT                                                          ; $6D6F execution token
        dw      $FF72                                                           ; $6D71 inline word
        dw      XT_LITbyte                                                      ; $6D73 execution token
        db      $0C                                                             ; $6D75 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6D76 execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6D78 execution token
        dw      XT_ARRAY                                                        ; $6D7A execution token
        dw      $68CF                                                           ; $6D7C inline word
        dw      XT_at                                                           ; $6D7E execution token
        dw      $2D00                                                           ; $6D80 execution token
        dw      XT_LIT                                                          ; $6D82 execution token
        dw      $FF72                                                           ; $6D84 inline word
        dw      XT_LIT                                                          ; $6D86 execution token
        dw      $FFAA                                                           ; $6D88 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6D8A execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6D8C execution token
        dw      XT_ARRAY                                                        ; $6D8E execution token
        dw      $68D5                                                           ; $6D90 inline word
        dw      XT_at                                                           ; $6D92 execution token
        dw      $2D00                                                           ; $6D94 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $6D96 execution token
        dw      PPQ5_TERSE_6B27                                                 ; $6D98 execution token
        dw      XT_LIT                                                          ; $6D9A execution token
        dw      $6B19                                                           ; $6D9C inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $6D9E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6DA0 execution token
        dw      XT_LITbyte                                                      ; $6DA2 execution token
        db      $1E                                                             ; $6DA4 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6DA5 execution token
        dw      $1A2C                                                           ; $6DA7 execution token
        dw      XT_LITbyte                                                      ; $6DA9 execution token
        db      $03                                                             ; $6DAB inline byte
        dw      XT_0                                                            ; $6DAC execution token
        dw      XT_DO                                                           ; $6DAE execution token
        dw      XT_I                                                            ; $6DB0 execution token
        dw      XT_ARRAY                                                        ; $6DB2 execution token
        dw      QUESTION_SLOT_TASK_TABLE_ADDR                                   ; $6DB4 inline word
        dw      XT_at                                                           ; $6DB6 execution token
        dw      $1608                                                           ; $6DB8 execution token
        dw      XT_LOOP                                                         ; $6DBA execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6DBC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6DBE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6DC0 execution token
        dw      XT_RETURN                                                       ; $6DC2 execution token

NUMBER_TRANSFORMATION_CORRECT:
        rst     $08                                                             ; $6DC4 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6DC5 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $6DC7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6DC9 execution token
        dw      XT_LIT                                                          ; $6DCB execution token
        dw      $FFDA                                                           ; $6DCD inline word
        dw      XT_LITbyte                                                      ; $6DCF execution token
        db      $09                                                             ; $6DD1 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6DD2 execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6DD4 execution token
        dw      XT_ARRAY                                                        ; $6DD6 execution token
        dw      $6D37                                                           ; $6DD8 inline word
        dw      XT_at                                                           ; $6DDA execution token
        dw      XT_EXECUTE                                                      ; $6DDC execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6DDE execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6DE0 execution token
        dw      XT_LIT                                                          ; $6DE2 execution token
        dw      $165F                                                           ; $6DE4 inline word
        dw      XT_LITbyte                                                      ; $6DE6 execution token
        db      $1D                                                             ; $6DE8 inline byte
        dw      XT_LIT                                                          ; $6DE9 execution token
        dw      $007F                                                           ; $6DEB inline word
        dw      XT_LITbyte                                                      ; $6DED execution token
        db      $00                                                             ; $6DEF inline byte
        dw      $2D3B                                                           ; $6DF0 execution token
        dw      XT_LIT                                                          ; $6DF2 execution token
        dw      $F6E8                                                           ; $6DF4 inline word
        dw      XT_BONE                                                         ; $6DF6 execution token
        dw      XT_LIT                                                          ; $6DF8 execution token
        dw      $F6E7                                                           ; $6DFA inline word
        dw      XT_BONE                                                         ; $6DFC execution token
        dw      XT_LIT                                                          ; $6DFE execution token
        dw      $F2F9                                                           ; $6E00 inline word
        dw      XT_BZERO                                                        ; $6E02 execution token
        dw      XT_LITbyte                                                      ; $6E04 execution token
        db      $3C                                                             ; $6E06 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6E07 execution token
        dw      $1A2C                                                           ; $6E09 execution token
L6E0B:
        dw      XT_LIT                                                          ; $6E0B execution token
        dw      $F2F9                                                           ; $6E0D inline word
        dw      XT_Bat                                                          ; $6E0F execution token
        dw      XT_ARRAY                                                        ; $6E11 execution token
        dw      $6BD9                                                           ; $6E13 inline word
        dw      XT_at                                                           ; $6E15 execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $6E17 execution token
        dw      XT_LIT                                                          ; $6E19 execution token
        dw      $6BDF                                                           ; $6E1B inline word
        dw      $2CDD                                                           ; $6E1D execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6E1F execution token
        dw      XT_LIT                                                          ; $6E21 execution token
        dw      $F2F9                                                           ; $6E23 inline word
        dw      XT_DUP                                                          ; $6E25 execution token
        dw      XT_1plusBbang                                                   ; $6E27 execution token
        dw      XT_Bat                                                          ; $6E29 execution token
        dw      XT_LITbyte                                                      ; $6E2B execution token
        db      $02                                                             ; $6E2D inline byte
        dw      XT_gt                                                           ; $6E2E execution token
        dw      XT_0BRANCH                                                      ; $6E30 execution token
        dw      L6E0B                                                           ; $6E32 branch target
        dw      XT_LITbyte                                                      ; $6E34 execution token
        db      $1E                                                             ; $6E36 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6E37 execution token
        dw      $1A2C                                                           ; $6E39 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6E3B execution token
        dw      XT_RETURN                                                       ; $6E3D execution token

NUMBER_TRANSFORMATION_WRONG_1:
        rst     $08                                                             ; $6E3F colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6E40 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $6E42 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6E44 execution token
        dw      XT_LIT                                                          ; $6E46 execution token
        dw      $FFDA                                                           ; $6E48 inline word
        dw      XT_LITbyte                                                      ; $6E4A execution token
        db      $09                                                             ; $6E4C inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6E4D execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6E4F execution token
        dw      XT_ARRAY                                                        ; $6E51 execution token
        dw      $6D3D                                                           ; $6E53 inline word
        dw      XT_at                                                           ; $6E55 execution token
        dw      XT_EXECUTE                                                      ; $6E57 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6E59 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6E5B execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6E5D execution token
        dw      XT_ARRAY                                                        ; $6E5F execution token
        dw      $6D3D                                                           ; $6E61 inline word
        dw      XT_at                                                           ; $6E63 execution token
        dw      XT_EXECUTE                                                      ; $6E65 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6E67 execution token
        dw      XT_RETURN                                                       ; $6E69 execution token
NUMBER_TRANSFORMATION_WRONG_2:
        rst     $08                                                             ; $6E6B colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6E6C execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $6E6E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6E70 execution token
        dw      XT_LIT                                                          ; $6E72 execution token
        dw      $FFDA                                                           ; $6E74 inline word
        dw      XT_LITbyte                                                      ; $6E76 execution token
        db      $09                                                             ; $6E78 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6E79 execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6E7B execution token
        dw      XT_ARRAY                                                        ; $6E7D execution token
        dw      $6D43                                                           ; $6E7F inline word
        dw      XT_at                                                           ; $6E81 execution token
        dw      XT_EXECUTE                                                      ; $6E83 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $6E85 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6E87 execution token
        dw      PPQ5_TERSE_6D49                                                 ; $6E89 execution token
        dw      XT_ARRAY                                                        ; $6E8B execution token
        dw      $6D43                                                           ; $6E8D inline word
        dw      XT_at                                                           ; $6E8F execution token
        dw      XT_EXECUTE                                                      ; $6E91 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6E93 execution token
        dw      XT_RETURN                                                       ; $6E95 execution token

NUMBER_TRANSFORMATION_ACTIONS:
        db      $04                                                             ; $6E97 action count
        dw      NUMBER_TRANSFORMATION_SETUP                                     ; $6E98 setup
        dw      NUMBER_TRANSFORMATION_CORRECT                                   ; $6E9A correct
        dw      NUMBER_TRANSFORMATION_WRONG_1                                   ; $6E9C wrong 1
        dw      NUMBER_TRANSFORMATION_WRONG_2                                   ; $6E9E wrong 2

; Rooted by tier slot 0.
QUESTION_INITIALIZER_6EA0:
        rst     $08                                                          ; $6EA0
        dw      XT_LITbyte                                                      ; $6EA1
        db      $02                                                              ; $6EA3
        dw      XT_RANDOM_BELOW                                                 ; $6EA4
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6EA6
        dw      XT_LITbyte                                                      ; $6EA8
        db      $03                                                              ; $6EAA
        dw      XT_RANDOM_BELOW                                                 ; $6EAB
        dw      XT_LIT                                                          ; $6EAD
        dw      $F2F7                                                           ; $6EAF
        dw      XT_SBbang                                                       ; $6EB1
        dw      XT_LIT                                                          ; $6EB3
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6EB5
        dw      XT_RETURN                                                       ; $6EB7

; Rooted by tier slot 1.
QUESTION_INITIALIZER_6EB9:
        rst     $08                                                          ; $6EB9
        dw      XT_LITbyte                                                      ; $6EBA
        db      $02                                                              ; $6EBC
        dw      XT_RANDOM_BELOW                                                 ; $6EBD
        dw      XT_LITbyte                                                      ; $6EBF
        db      $02                                                              ; $6EC1
        dw      XT_plus                                                         ; $6EC2
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6EC4
        dw      XT_LITbyte                                                      ; $6EC6
        db      $03                                                              ; $6EC8
        dw      XT_RANDOM_BELOW                                                 ; $6EC9
        dw      XT_LIT                                                          ; $6ECB
        dw      $F2F7                                                           ; $6ECD
        dw      XT_SBbang                                                       ; $6ECF
        dw      XT_LIT                                                          ; $6ED1
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6ED3
        dw      XT_RETURN                                                       ; $6ED5

; Rooted by tier slot 2.
QUESTION_INITIALIZER_6ED7:
        rst     $08                                                          ; $6ED7
        dw      XT_LITbyte                                                      ; $6ED8
        db      $02                                                              ; $6EDA
        dw      XT_RANDOM_BELOW                                                 ; $6EDB
        dw      XT_LITbyte                                                      ; $6EDD
        db      $04                                                              ; $6EDF
        dw      XT_plus                                                         ; $6EE0
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6EE2
        dw      XT_LITbyte                                                      ; $6EE4
        db      $03                                                              ; $6EE6
        dw      XT_RANDOM_BELOW                                                 ; $6EE7
        dw      XT_LIT                                                          ; $6EE9
        dw      $F2F7                                                           ; $6EEB
        dw      XT_SBbang                                                       ; $6EED
        dw      XT_LIT                                                          ; $6EEF
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6EF1
        dw      XT_RETURN                                                       ; $6EF3

; Rooted by tier slot 3.
QUESTION_INITIALIZER_6EF5:
        rst     $08                                                          ; $6EF5
        dw      XT_LITbyte                                                      ; $6EF6
        db      $02                                                              ; $6EF8
        dw      XT_RANDOM_BELOW                                                 ; $6EF9
        dw      XT_LITbyte                                                      ; $6EFB
        db      $06                                                              ; $6EFD
        dw      XT_plus                                                         ; $6EFE
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6F00
        dw      XT_LITbyte                                                      ; $6F02
        db      $03                                                              ; $6F04
        dw      XT_RANDOM_BELOW                                                 ; $6F05
        dw      XT_LIT                                                          ; $6F07
        dw      $F2F7                                                           ; $6F09
        dw      XT_SBbang                                                       ; $6F0B
        dw      XT_LIT                                                          ; $6F0D
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6F0F
        dw      XT_RETURN                                                       ; $6F11

; Rooted by tier slot 4.
QUESTION_INITIALIZER_6F13:
        rst     $08                                                          ; $6F13
        dw      XT_LITbyte                                                      ; $6F14
        db      $02                                                              ; $6F16
        dw      XT_RANDOM_BELOW                                                 ; $6F17
        dw      XT_LITbyte                                                      ; $6F19
        db      $08                                                              ; $6F1B
        dw      XT_plus                                                         ; $6F1C
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6F1E
        dw      XT_LITbyte                                                      ; $6F20
        db      $03                                                              ; $6F22
        dw      XT_RANDOM_BELOW                                                 ; $6F23
        dw      XT_LIT                                                          ; $6F25
        dw      $F2F7                                                           ; $6F27
        dw      XT_SBbang                                                       ; $6F29
        dw      XT_LIT                                                          ; $6F2B
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6F2D
        dw      XT_RETURN                                                       ; $6F2F

; Rooted by tier slot 5.
QUESTION_INITIALIZER_6F31:
        rst     $08                                                          ; $6F31
        dw      XT_LITbyte                                                      ; $6F32
        db      $02                                                              ; $6F34
        dw      XT_RANDOM_BELOW                                                 ; $6F35
        dw      XT_LITbyte                                                      ; $6F37
        db      $0A                                                              ; $6F39
        dw      XT_plus                                                         ; $6F3A
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6F3C
        dw      XT_LITbyte                                                      ; $6F3E
        db      $03                                                              ; $6F40
        dw      XT_RANDOM_BELOW                                                 ; $6F41
        dw      XT_LIT                                                          ; $6F43
        dw      $F2F7                                                           ; $6F45
        dw      XT_SBbang                                                       ; $6F47
        dw      XT_LIT                                                          ; $6F49
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6F4B
        dw      XT_RETURN                                                       ; $6F4D

; Rooted by tier slot 6.
QUESTION_INITIALIZER_6F4F:
        rst     $08                                                          ; $6F4F
        dw      XT_LITbyte                                                      ; $6F50
        db      $02                                                              ; $6F52
        dw      XT_RANDOM_BELOW                                                 ; $6F53
        dw      XT_LITbyte                                                      ; $6F55
        db      $0C                                                              ; $6F57
        dw      XT_plus                                                         ; $6F58
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6F5A
        dw      XT_LITbyte                                                      ; $6F5C
        db      $03                                                              ; $6F5E
        dw      XT_RANDOM_BELOW                                                 ; $6F5F
        dw      XT_LIT                                                          ; $6F61
        dw      $F2F7                                                           ; $6F63
        dw      XT_SBbang                                                       ; $6F65
        dw      XT_LIT                                                          ; $6F67
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6F69
        dw      XT_RETURN                                                       ; $6F6B

; Rooted by tier slot 7.
QUESTION_INITIALIZER_6F6D:
        rst     $08                                                          ; $6F6D
        dw      XT_LITbyte                                                      ; $6F6E
        db      $0A                                                              ; $6F70
        dw      XT_RANDOM_BELOW                                                 ; $6F71
        dw      XT_LITbyte                                                      ; $6F73
        db      $04                                                              ; $6F75
        dw      XT_plus                                                         ; $6F76
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6F78
        dw      XT_LITbyte                                                      ; $6F7A
        db      $03                                                              ; $6F7C
        dw      XT_RANDOM_BELOW                                                 ; $6F7D
        dw      XT_LIT                                                          ; $6F7F
        dw      $F2F7                                                           ; $6F81
        dw      XT_SBbang                                                       ; $6F83
        dw      XT_LIT                                                          ; $6F85
        dw      PPQ5_NUMBER_TRANSFORMATION_ACTION_LIST                          ; $6F87
        dw      XT_RETURN                                                       ; $6F89
        db      $0C,$0C                                                         ; $6F8B
        db      $07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80,$BF,$FF,$80,$00,$80,$00,$80 ; $6F8D
        db      $BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF ; $6F9D
        db      $80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00 ; $6FAD
        db      $80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA ; $6FBD
        db      $80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80 ; $6FCD
        db      $00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF ; $6FDD
        db      $FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80 ; $6FED
        db      $00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$80,$00,$BF,$FF,$80 ; $6FFD
        db      $80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00 ; $700D
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $701D
        db      $BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$AA,$AA,$AA,$AA,$AA,$AA ; $702D
        db      $80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$BF,$FF ; $703D
        db      $80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00 ; $704D
        db      $80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80 ; $705D
        db      $00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$AA,$AA,$AA ; $706D
        db      $AA,$AA,$AA,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80 ; $707D
        db      $00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80 ; $708D
        db      $80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00 ; $709D
        db      $BF,$FF,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$BF,$FF ; $70AD
        db      $80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00 ; $70BD
        db      $80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80 ; $70CD
        db      $00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$AA,$AA,$AA ; $70DD
        db      $AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80 ; $70ED
        db      $00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80 ; $70FD
        db      $00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF ; $710D
        db      $FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80 ; $711D
        db      $AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00 ; $712D
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $713D
        db      $BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF ; $714D
        db      $80,$80,$00,$80,$00,$BF,$FF,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80 ; $715D
        db      $00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80 ; $716D
        db      $00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF ; $717D
        db      $FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80 ; $718D
        db      $AA,$AA,$AA,$AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA ; $719D
        db      $AA,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80 ; $71AD
        db      $80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00 ; $71BD
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $71CD
        db      $BF,$FF,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$BF,$FF,$80,$00 ; $71DD
        db      $80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80 ; $71ED
        db      $00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF ; $71FD
        db      $FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$AA,$AA,$AA,$AA,$AA ; $720D
        db      $AA,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80 ; $721D
        db      $80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00 ; $722D
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $723D
        db      $BF,$FF,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA ; $724D
        db      $AA,$AA,$AA,$AA,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00 ; $725D
        db      $80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00 ; $726D
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $727D
        db      $00,$80,$00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$80 ; $728D
        db      $00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80 ; $729D
        db      $00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80 ; $72AD
        db      $80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$AA,$AA ; $72BD
        db      $AA,$AA,$AA,$AA,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00 ; $72CD
        db      $80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00 ; $72DD
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $72ED
        db      $00,$80,$00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$FB,$0B,$02 ; $72FD
        db      $17,$FC,$FC,$FC,$FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$00 ; $730D
        db      $00,$FC,$FC,$FC,$FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$00 ; $731D
        db      $00,$FC,$FC,$FC,$FC,$FC,$FC,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$FA ; $732D
        db      $0A,$02,$15,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00 ; $733D
        db      $00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$00,$00,$00 ; $734D
        db      $00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$C0,$C0,$03,$0B,$04 ; $735D
        db      $17,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00 ; $736D
        db      $00,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00 ; $737D
        db      $00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00 ; $738D
        db      $00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00,$00,$00 ; $739D
        db      $00,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$00 ; $73AD
        db      $00,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$00,$00,$FC,$FC,$02,$0A,$04 ; $73BD
        db      $15,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73CD
        db      $00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73DD
        db      $00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73ED
        db      $00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $73FD
        db      $00,$00,$00,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $740D
        db      $00,$00,$00,$C0,$C0,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA,$AA,$AA,$80 ; $741D
        db      $80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00 ; $742D
        db      $80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00 ; $743D
        db      $BF,$FF,$80,$80,$00,$80,$00,$BF,$FF,$80,$80,$00,$80,$00,$BF,$FF ; $744D
        db      $80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$80,$00,$BF,$FF,$80,$00,$80,$80 ; $745D
        db      $00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF ; $746D
        db      $FF,$80,$00,$80,$80,$00,$BF,$FF,$80,$00,$80,$80,$00,$BF,$FF,$80 ; $747D
        db      $00,$80,$80,$00,$BF,$FF,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80 ; $748D
        db      $BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF ; $749D
        db      $80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00 ; $74AD
        db      $80,$00,$80,$BF,$FF,$80,$00,$80,$00,$80,$BF,$FF,$80,$00,$80,$00 ; $74BD
        db      $80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$0C,$0C,$07,$19,$AA,$AA,$AA,$AA ; $74CD
        db      $AA,$AA,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00 ; $74DD
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $74ED
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $74FD
        db      $00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$BF,$FF,$BF,$FF,$BF ; $750D
        db      $FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80 ; $751D
        db      $BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$BF,$FF ; $752D
        db      $BF,$FF,$BF,$FF,$80,$BF,$FF,$BF,$FF,$BF,$FF,$80,$AA,$AA,$AA,$AA ; $753D
        db      $AA,$AA,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00 ; $754D
        db      $80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80 ; $755D
        db      $00,$80,$00,$80,$00,$80,$80,$00,$80,$00,$80,$00,$80,$80,$00,$80 ; $756D
        db      $00,$80,$00,$80,$AA,$AA,$AA,$AA,$AA,$AA,$80,$0E,$00,$08,$01,$77 ; $757D
        db      $77,$77,$77,$77,$77,$77,$70,$0E,$00,$08,$01,$77,$77,$77,$77,$77 ; $758D
        db      $77,$77,$70,$7E,$00,$5E,$00,$5E,$00,$7E,$00,$66,$00,$BD,$00,$BD ; $759D
        db      $00,$66,$00,$3E,$00,$2E,$00,$2E,$00,$3E,$00,$CF,$2A,$01,$09,$01 ; $75AD
        db      $6D,$FD,$EF,$2B,$09,$01,$F6,$F2,$3F,$05,$09,$01,$F5,$F2,$3F,$05 ; $75BD
        db      $12,$01,$00,$09,$01,$FF,$00,$2E,$2B,$12,$01,$36,$F2,$2A,$09,$01 ; $75CD
        db      $80,$00,$09,$01,$80,$00,$09,$01,$80,$00,$71,$2B,$12,$01,$00,$12 ; $75DD
        db      $01,$0F,$2E,$2B,$09,$01,$F6,$F2,$53,$01,$1A,$01,$A0,$75,$53,$01 ; $75ED
        db      $09,$01,$F6,$F2,$53,$01,$1A,$01,$A8,$75,$53,$01,$09,$01,$F6,$F2 ; $75FD
        db      $53,$01,$1A,$01,$B0,$75,$53,$01,$71,$2B,$09,$01,$F5,$F2,$53,$01 ; $760D
        db      $30,$01,$CF,$01,$EA,$03,$2D,$76,$12,$01,$0F,$12,$01,$0F,$2E,$2B ; $761D
        db      $09,$01,$F5,$F2,$53,$01,$12,$01,$03,$CF,$01,$EA,$03,$45,$76,$12 ; $762D
        db      $01,$00,$09,$01,$FF,$00,$2E,$2B,$12,$01,$05,$A8,$2B,$09,$01,$F6 ; $763D
        db      $F2,$36,$01,$49,$05,$53,$01,$12,$01,$07,$1C,$02,$EA,$03,$E9,$75 ; $764D
        db      $09,$01,$F6,$F2,$3F,$05,$09,$01,$F5,$F2,$36,$01,$49,$05,$53,$01 ; $765D
        db      $12,$01,$03,$1C,$02,$EA,$03,$E9,$75,$8C,$2B,$FD,$00,$CF,$2A,$01 ; $766D
        db      $09,$01,$3D,$FD,$EF,$2B,$09,$01,$F6,$F2,$3F,$05,$09,$01,$F4,$F2 ; $767D
        db      $3F,$05,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$03,$A8,$2B,$12 ; $768D
        db      $01,$00,$09,$01,$FF,$00,$2E,$2B,$12,$01,$36,$F2,$2A,$09,$01,$80 ; $769D
        db      $00,$09,$01,$80,$00,$09,$01,$80,$00,$71,$2B,$12,$01,$00,$12,$01 ; $76AD
        db      $0F,$2E,$2B,$09,$01,$F3,$F2,$53,$01,$1A,$01,$A0,$75,$53,$01,$09 ; $76BD
        db      $01,$F3,$F2,$53,$01,$1A,$01,$A8,$75,$53,$01,$09,$01,$F3,$F2,$53 ; $76CD
        db      $01,$1A,$01,$B0,$75,$53,$01,$71,$2B,$09,$01,$F4,$F2,$53,$01,$30 ; $76DD
        db      $01,$CF,$01,$EA,$03,$FC,$76,$12,$01,$0F,$12,$01,$0F,$2E,$2B,$09 ; $76ED
        db      $01,$F4,$F2,$53,$01,$12,$01,$03,$CF,$01,$EA,$03,$14,$77,$12,$01 ; $76FD
        db      $00,$09,$01,$FF,$00,$2E,$2B,$12,$01,$05,$A8,$2B,$09,$01,$F3,$F2 ; $770D
        db      $36,$01,$49,$05,$53,$01,$12,$01,$07,$1C,$02,$EA,$03,$B8,$76,$09 ; $771D
        db      $01,$F3,$F2,$3F,$05,$09,$01,$F4,$F2,$36,$01,$49,$05,$53,$01,$12 ; $772D
        db      $01,$03,$1C,$02,$EA,$03,$B8,$76,$8C,$2B,$FD,$00,$CF,$B8,$75,$7A ; $773D
        db      $76,$FD,$00,$00,$00,$90,$B0,$FF,$0A,$00,$40,$02,$00,$00,$00,$C8 ; $774D
        db      $00,$00,$00,$B0,$04,$00,$00,$00,$00,$40,$00,$00,$D8,$FF,$00,$00 ; $775D
        db      $50,$FB,$00,$00,$00,$90,$B0,$FF,$E2,$FF,$00,$04,$00,$00,$00,$28 ; $776D
        db      $00,$00,$00,$B0,$04,$00,$00,$00,$00,$40,$00,$00,$D8,$FF,$00,$00 ; $777D
        db      $50,$FB,$00,$00,$00,$A0,$00,$00,$00,$B0,$04,$00,$00,$00,$00,$C0 ; $778D
        db      $00,$00,$28,$00,$00,$00,$B0,$04,$00,$00,$00,$90,$B0,$FF,$BA,$FF ; $779D
        db      $40,$02,$00,$00,$00,$C8,$00,$00,$00,$B0,$04,$00,$00,$00,$00,$00 ; $77AD
        db      $00,$00,$28,$00,$00,$00,$B0,$04,$00,$50,$77,$70,$77,$A6,$77,$22 ; $77BD
        db      $77,$68,$61,$74,$20,$69,$73,$20,$6E,$65,$78,$74,$20,$69,$6E,$20 ; $77CD
        db      $74,$68,$69,$73,$20,$70,$72,$6F,$67,$72,$65,$73,$73,$69,$6F,$6E ; $77DD
        db      $3F,$20                                                         ; $77ED preserved bytes

NUMBER_PROGRESSION_SETUP:
        rst     $08                                                             ; $77EF colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $77F0 execution token
        dw      XT_LIT                                                          ; $77F2 execution token
        dw      $FFA6                                                           ; $77F4 inline word
        dw      XT_LITbyte                                                      ; $77F6 execution token
        db      $17                                                             ; $77F8 inline byte
        dw      XT_LIT                                                          ; $77F9 execution token
        dw      $77CC                                                           ; $77FB inline word
        dw      XT_LIT                                                          ; $77FD execution token
        dw      $77C6                                                           ; $77FF inline word
        dw      XT_LITbyte                                                      ; $7801 execution token
        db      $08                                                             ; $7803 inline byte
        dw      XT_RANDOM_BELOW                                                 ; $7804 execution token
        dw      XT_ARRAY                                                        ; $7806 execution token
        dw      $431A                                                           ; $7808 inline word
        dw      XT_at                                                           ; $780A execution token
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $780C execution token
        dw      XT_LITbyte                                                      ; $780E execution token
        db      $0A                                                             ; $7810 inline byte
        dw      XT_LIT                                                          ; $7811 execution token
        dw      $FFE2                                                           ; $7813 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7815 execution token
        dw      XT_LIT                                                          ; $7817 execution token
        dw      $6F8B                                                           ; $7819 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $781B execution token
        dw      XT_LITbyte                                                      ; $781D execution token
        db      $41                                                             ; $781F inline byte
        dw      XT_LIT                                                          ; $7820 execution token
        dw      $FFE2                                                           ; $7822 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7824 execution token
        dw      XT_LIT                                                          ; $7826 execution token
        dw      $703E                                                           ; $7828 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $782A execution token
        dw      XT_LIT                                                          ; $782C execution token
        dw      PORT_PATTERN_SOURCE_LO                                          ; $782E inline word
        dw      XT_LIT                                                          ; $7830 execution token
        dw      $FFC9                                                           ; $7832 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7834 execution token
        dw      XT_LIT                                                          ; $7836 execution token
        dw      $7594                                                           ; $7838 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $783A execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $783C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $783E execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7840 execution token
        dw      XT_RETURN                                                       ; $7842 execution token

        db      $03,$00,$81,$12,$8B,$6F,$0F,$3E,$70                             ; $7844 preserved bytes
        db      $23,$22,$74,$00,$47,$78                                         ; $784D preserved bytes

NUMBER_PROGRESSION_CORRECT:
        rst     $08                                                             ; $7853 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7854 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7856 execution token
        dw      XT_LIT                                                          ; $7858 execution token
        dw      $FFD8                                                           ; $785A inline word
        dw      XT_LITbyte                                                      ; $785C execution token
        db      $0A                                                             ; $785E inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $785F execution token
        dw      XT_LIT                                                          ; $7861 execution token
        dw      $7422                                                           ; $7863 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7865 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7867 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7869 execution token
        dw      XT_LIT                                                          ; $786B execution token
        dw      $7422                                                           ; $786D inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $786F execution token
        dw      $15E7                                                           ; $7871 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7873 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7875 execution token
        dw      XT_LIT                                                          ; $7877 execution token
        dw      $43CF                                                           ; $7879 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $787B execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $787D execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $787F execution token
        dw      XT_LIT                                                          ; $7881 execution token
        dw      $F6E8                                                           ; $7883 inline word
        dw      XT_BONE                                                         ; $7885 execution token
        dw      XT_LIT                                                          ; $7887 execution token
        dw      $F6E7                                                           ; $7889 inline word
        dw      XT_BONE                                                         ; $788B execution token
        dw      $1DE0                                                           ; $788D execution token
        dw      XT_LITbyte                                                      ; $788F execution token
        db      $0A                                                             ; $7891 inline byte
        dw      XT_LIT                                                          ; $7892 execution token
        dw      $FFE2                                                           ; $7894 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7896 execution token
        dw      XT_LIT                                                          ; $7898 execution token
        dw      $6F8B                                                           ; $789A inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $789C execution token
        dw      XT_LITbyte                                                      ; $789E execution token
        db      $41                                                             ; $78A0 inline byte
        dw      XT_LIT                                                          ; $78A1 execution token
        dw      $FFE2                                                           ; $78A3 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $78A5 execution token
        dw      XT_LIT                                                          ; $78A7 execution token
        dw      $703E                                                           ; $78A9 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $78AB execution token
        dw      XT_LIT                                                          ; $78AD execution token
        dw      PORT_PATTERN_SOURCE_LO                                          ; $78AF inline word
        dw      XT_LIT                                                          ; $78B1 execution token
        dw      $FFE2                                                           ; $78B3 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $78B5 execution token
        dw      XT_LIT                                                          ; $78B7 execution token
        dw      $7422                                                           ; $78B9 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $78BB execution token
        dw      XT_LIT                                                          ; $78BD execution token
        dw      $FFC9                                                           ; $78BF inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_2                                   ; $78C1 execution token
        dw      XT_LIT                                                          ; $78C3 execution token
        dw      $7594                                                           ; $78C5 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $78C7 execution token
        dw      XT_LITbyte                                                      ; $78C9 execution token
        db      $41                                                             ; $78CB inline byte
        dw      XT_LIT                                                          ; $78CC execution token
        dw      $FFE2                                                           ; $78CE inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $78D0 execution token
        dw      $1F21                                                           ; $78D2 execution token
        dw      XT_LITbyte                                                      ; $78D4 execution token
        db      $40                                                             ; $78D6 inline byte
        dw      $1E5C                                                           ; $78D7 execution token
        dw      XT_LIT                                                          ; $78D9 execution token
        dw      $7844                                                           ; $78DB inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $78DD execution token
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE                               ; $78DF execution token
        dw      XT_LITbyte                                                      ; $78E1 execution token
        db      $3C                                                             ; $78E3 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $78E4 execution token
        dw      $19E9                                                           ; $78E6 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $78E8 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $78EA execution token
        dw      XT_RETURN                                                       ; $78EC execution token

        db      $03,$00,$81,$07,$57,$72,$07,$0A,$73,$07,$3C,$73,$00,$F1,$78     ; $78EE preserved bytes
NUMBER_PROGRESSION_WRONG_1:
        rst     $08                                                             ; $78FD colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $78FE execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7900 execution token
        dw      XT_LIT                                                          ; $7902 execution token
        dw      $FFD8                                                           ; $7904 inline word
        dw      XT_LITbyte                                                      ; $7906 execution token
        db      $0A                                                             ; $7908 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7909 execution token
        dw      XT_LIT                                                          ; $790B execution token
        dw      $70F1                                                           ; $790D inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $790F execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7911 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7913 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7915 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7917 execution token
        dw      XT_LITbyte                                                      ; $7919 execution token
        db      $32                                                             ; $791B inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $791C execution token
        dw      $1A2C                                                           ; $791E execution token
        dw      $1DE0                                                           ; $7920 execution token
        dw      XT_LIT                                                          ; $7922 execution token
        dw      $78EE                                                           ; $7924 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7926 execution token
        dw      $866C                                                           ; $7928 execution token
        dw      XT_LITbyte                                                      ; $792A execution token
        db      $14                                                             ; $792C inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $792D execution token
        dw      $19E9                                                           ; $792F execution token
        dw      XT_LIT                                                          ; $7931 execution token
        dw      $733C                                                           ; $7933 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7935 execution token
        dw      XT_LITbyte                                                      ; $7937 execution token
        db      $0A                                                             ; $7939 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $793A execution token
        dw      $19E9                                                           ; $793C execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $793E execution token
        dw      XT_RETURN                                                       ; $7940 execution token

        db      $03,$00,$81,$07,$57,$72,$07,$6A,$73,$07,$CA                     ; $7942 preserved bytes
        db      $73,$00,$45,$79                                                 ; $794D preserved bytes

NUMBER_PROGRESSION_WRONG_2:
        rst     $08                                                             ; $7951 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7952 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7954 execution token
        dw      XT_LIT                                                          ; $7956 execution token
        dw      $FFD8                                                           ; $7958 inline word
        dw      XT_LITbyte                                                      ; $795A execution token
        db      $0A                                                             ; $795C inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $795D execution token
        dw      XT_LIT                                                          ; $795F execution token
        dw      $71A4                                                           ; $7961 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7963 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7965 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7967 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7969 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $796B execution token
        dw      XT_LITbyte                                                      ; $796D execution token
        db      $32                                                             ; $796F inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7970 execution token
        dw      $1A2C                                                           ; $7972 execution token
        dw      $1DE0                                                           ; $7974 execution token
        dw      XT_LIT                                                          ; $7976 execution token
        dw      $7942                                                           ; $7978 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $797A execution token
        dw      $866C                                                           ; $797C execution token
        dw      XT_LITbyte                                                      ; $797E execution token
        db      $14                                                             ; $7980 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7981 execution token
        dw      $19E9                                                           ; $7983 execution token
        dw      XT_LIT                                                          ; $7985 execution token
        dw      $73CA                                                           ; $7987 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7989 execution token
        dw      XT_LITbyte                                                      ; $798B execution token
        db      $0A                                                             ; $798D inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $798E execution token
        dw      $1A2C                                                           ; $7990 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7992 execution token
        dw      XT_RETURN                                                       ; $7994 execution token

NUMBER_PROGRESSION_ACTIONS:
        db      $04                                                             ; $7996 action count
        dw      NUMBER_PROGRESSION_SETUP                                        ; $7997 setup
        dw      NUMBER_PROGRESSION_CORRECT                                      ; $7999 correct
        dw      NUMBER_PROGRESSION_WRONG_1                                      ; $799B wrong 1
        dw      NUMBER_PROGRESSION_WRONG_2                                      ; $799D wrong 2

; Rooted by tier slots 1, 4.
QUESTION_INITIALIZER_799F:
        rst     $08                                                          ; $799F
        dw      XT_LIT                                                          ; $79A0
        dw      PPQ5_NUMBER_PROGRESSION_ACTION_LIST                             ; $79A2
        dw      XT_RETURN                                                       ; $79A4
        db      $1A,$11,$0D,$23,$00,$00,$00,$00,$00                             ; $79A6
        db      $00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $79AF
        db      $00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$A0,$00 ; $79BF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$80,$00,$00,$00,$00 ; $79CF
        db      $00,$00,$00,$00,$00,$00,$00,$AA,$00,$00,$00,$00,$00,$00,$00,$00 ; $79DF
        db      $00,$00,$00,$02,$A8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $79EF
        db      $2A,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$80,$00 ; $79FF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$AA,$00,$00,$00,$00,$00 ; $7A0F
        db      $00,$00,$00,$00,$00,$00,$0A,$A8,$00,$00,$00,$00,$00,$00,$00,$00 ; $7A1F
        db      $00,$00,$00,$2A,$A0,$00,$00,$00,$00,$00,$01,$55,$40,$00,$00,$00 ; $7A2F
        db      $AA,$80,$00,$00,$00,$00,$00,$05,$55,$50,$00,$00,$02,$AA,$00,$00 ; $7A3F
        db      $00,$00,$00,$00,$14,$00,$14,$00,$00,$0A,$A8,$00,$00,$00,$00,$00 ; $7A4F
        db      $00,$50,$00,$05,$00,$00,$2A,$A0,$00,$00,$00,$00,$00,$00,$50,$00 ; $7A5F
        db      $05,$00,$00,$AA,$80,$00,$00,$00,$00,$00,$00,$50,$00,$05,$40,$02 ; $7A6F
        db      $AA,$00,$00,$00,$00,$00,$00,$00,$50,$00,$05,$56,$8A,$A8,$AA,$AA ; $7A7F
        db      $AA,$AA,$AA,$AA,$A0,$14,$00,$15,$5A,$2A,$A2,$AA,$AA,$AA,$AA,$AA ; $7A8F
        db      $AA,$00,$05,$55,$55,$58,$82,$8A,$AA,$AA,$AA,$AA,$AA,$80,$00,$01 ; $7A9F
        db      $55,$40,$02,$82,$2A,$AA,$AA,$AA,$AA,$80,$00,$00,$00,$00,$00,$0A ; $7AAF
        db      $A8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$A0,$00,$00 ; $7ABF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$50,$00,$00,$00,$00,$00 ; $7ACF
        db      $00,$00,$00,$00,$00,$00,$50,$14,$00,$00,$00,$00,$00,$00,$00,$00 ; $7ADF
        db      $00,$00,$01,$40,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05 ; $7AEF
        db      $00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$00,$05,$00 ; $7AFF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$05,$00,$00,$00,$00 ; $7B0F
        db      $00,$00,$00,$00,$00,$01,$40,$00,$05,$00,$00,$00,$00,$00,$00,$00 ; $7B1F
        db      $00,$00,$01,$40,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $7B2F
        db      $40,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$50,$01,$40 ; $7B3F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00 ; $7B4F
        db      $00,$00,$00,$00,$00,$00,$00,$15,$54,$00,$00,$00,$00,$00,$00,$00 ; $7B5F
        db      $00,$00,$1A,$07,$0E,$13,$00,$15,$54,$00,$00,$00,$00,$00,$00,$00 ; $7B6F
        db      $00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B7F
        db      $00,$00,$01,$40,$01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7B8F
        db      $05,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00 ; $7B9F
        db      $00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$54 ; $7BAF
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$55,$6A,$AA ; $7BBF
        db      $AA,$AA,$AA,$AA,$AA,$A8,$00,$00,$01,$40,$01,$55,$AA,$AA,$AA,$AA ; $7BCF
        db      $AA,$AA,$AA,$AA,$A0,$00,$00,$55,$55,$56,$A8,$2A,$AA,$AA,$AA,$AA ; $7BDF
        db      $AA,$AA,$AA,$00,$00,$15,$54,$01,$A8,$28,$00,$00,$00,$00,$00,$00 ; $7BEF
        db      $00,$00,$05,$55,$55,$55,$6A,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$00 ; $7BFF
        db      $15,$55,$55,$55,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00 ; $7C0F
        db      $00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$00 ; $7C1F
        db      $14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$00,$14,$00 ; $7C2F
        db      $00,$00,$00,$00,$00,$00,$00,$00,$14,$00,$00,$00,$50,$00,$00,$00 ; $7C3F
        db      $00,$00,$00,$00,$00,$00,$05,$00,$00,$01,$40,$00,$00,$00,$00,$00 ; $7C4F
        db      $00,$00,$00,$00,$01,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00 ; $7C5F
        db      $00,$00,$00,$15,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7C6F
        db      $00,$00,$90,$B0,$FF,$03,$00,$80,$03,$00,$00,$FE,$7D,$00,$06,$00 ; $7C7F
        db      $78,$05,$40,$00,$0A,$00,$69,$D4,$FF,$E4,$FF,$98,$F9,$F0,$FB,$00 ; $7C8F
        db      $00,$12,$3B,$00,$E5,$FF,$38,$08,$20,$FC,$00,$00,$00,$90,$CE,$FF ; $7C9F
        db      $DB,$FF,$C0,$03,$00,$00,$F6,$54,$00,$15,$00,$48,$05,$50,$01,$0A ; $7CAF
        db      $00,$67,$D9,$FF,$E5,$FF,$30,$FC,$50,$FD,$00,$00,$03,$3F,$00,$FC ; $7CBF
        db      $FF,$70,$05,$9C,$FF,$00,$00,$00,$90,$B0,$FF,$B3,$FF,$80,$03,$00 ; $7CCF
        db      $00,$FF,$7E,$00,$01,$00,$78,$05,$20,$00,$0A,$00,$96,$D4,$FF,$1B ; $7CDF
        db      $00,$84,$FB,$B0,$02,$00,$00,$FE,$38,$00,$02,$00,$04,$06,$4C,$00 ; $7CEF
        db      $00,$7F,$7C,$AA,$7C,$D5,$7C,$02,$00,$81,$06,$A6,$79,$04,$71,$7B ; $7CFF
        db      $00,$09,$7D,$0F,$07,$00,$08,$08,$08,$00,$00,$00,$1A,$77,$68,$69 ; $7D0F
        db      $63,$68,$20,$69,$73,$20,$74,$68,$65,$20,$6D,$69,$72,$72,$6F,$72 ; $7D1F
        db      $20,$69,$6D,$61,$67,$65,$3F,$15,$77,$68,$69,$63,$68,$20,$69,$73 ; $7D2F
        db      $20,$74,$68,$65,$20,$73,$61,$6D,$65,$20,$61,$73,$3F,$1B,$7D,$36 ; $7D3F
        db      $7D,$1B,$7D,$36,$7D,$00,$40,$40,$00                             ; $7D4F preserved bytes

IMAGE_MIRROR_MATCH_SETUP:
        rst     $08                                                             ; $7D58 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7D59 execution token
        dw      XT_LIT                                                          ; $7D5B execution token
        dw      $FFB0                                                           ; $7D5D inline word
        dw      XT_LITbyte                                                      ; $7D5F execution token
        db      $17                                                             ; $7D61 inline byte
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7D62 execution token
        dw      XT_ARRAY                                                        ; $7D64 execution token
        dw      $7D4C                                                           ; $7D66 inline word
        dw      XT_at                                                           ; $7D68 execution token
        dw      XT_LIT                                                          ; $7D6A execution token
        dw      $7D00                                                           ; $7D6C inline word
        dw      XT_LIT                                                          ; $7D6E execution token
        dw      $7D12                                                           ; $7D70 inline word
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7D72 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7D74 execution token
        dw      XT_BARRAY                                                       ; $7D76 execution token
        dw      $7D54                                                           ; $7D78 inline word
        dw      XT_Bat                                                          ; $7D7A execution token
        dw      $1F03                                                           ; $7D7C execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $7D7E execution token
        dw      XT_LITbyte                                                      ; $7D80 execution token
        db      $5C                                                             ; $7D82 inline byte
        dw      XT_LIT                                                          ; $7D83 execution token
        dw      $FFF3                                                           ; $7D85 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7D87 execution token
        dw      XT_LIT                                                          ; $7D89 execution token
        dw      $7D06                                                           ; $7D8B inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7D8D execution token
        dw      XT_LITbyte                                                      ; $7D8F execution token
        db      $02                                                             ; $7D91 inline byte
        dw      $1F2F                                                           ; $7D92 execution token
        dw      XT_LITbyte                                                      ; $7D94 execution token
        db      $28                                                             ; $7D96 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7D97 execution token
        dw      $19E9                                                           ; $7D99 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7D9B execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7D9D execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7D9F execution token
        dw      XT_RETURN                                                       ; $7DA1 execution token

IMAGE_MIRROR_MATCH_CORRECT:
        rst     $08                                                             ; $7DA3 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7DA4 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $7DA6 execution token
        dw      XT_LIT                                                          ; $7DA8 execution token
        dw      $FFC9                                                           ; $7DAA inline word
        dw      XT_LITbyte                                                      ; $7DAC execution token
        db      $05                                                             ; $7DAE inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7DAF execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7DB1 execution token
        dw      XT_LITbyte                                                      ; $7DB3 execution token
        db      $02                                                             ; $7DB5 inline byte
        dw      XT_less                                                         ; $7DB6 execution token
        dw      XT_0BRANCH                                                      ; $7DB8 execution token
        dw      L7DBE                                                           ; $7DBA branch target
        dw      XT_SET_OBJECT_MODE_1                                            ; $7DBC execution token
L7DBE:
        dw      XT_LIT                                                          ; $7DBE execution token
        dw      $79A6                                                           ; $7DC0 inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7DC2 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7DC4 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7DC6 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7DC8 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7DCA execution token
        dw      $1DE0                                                           ; $7DCC execution token
        dw      XT_LITbyte                                                      ; $7DCE execution token
        db      $14                                                             ; $7DD0 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7DD1 execution token
        dw      $1A2C                                                           ; $7DD3 execution token
        dw      XT_LIT                                                          ; $7DD5 execution token
        dw      $7D06                                                           ; $7DD7 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $7DD9 execution token
        dw      XT_LITbyte                                                      ; $7DDB execution token
        db      $28                                                             ; $7DDD inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7DDE execution token
        dw      $19E9                                                           ; $7DE0 execution token
        dw      XT_LITbyte                                                      ; $7DE2 execution token
        db      $0F                                                             ; $7DE4 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7DE5 execution token
        dw      $1A2C                                                           ; $7DE7 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7DE9 execution token
        dw      XT_RETURN                                                       ; $7DEB execution token

IMAGE_MIRROR_MATCH_WRONG_1:
        rst     $08                                                             ; $7DED colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7DEE execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $7DF0 execution token
        dw      XT_LIT                                                          ; $7DF2 execution token
        dw      $FFC9                                                           ; $7DF4 inline word
        dw      XT_LITbyte                                                      ; $7DF6 execution token
        db      $05                                                             ; $7DF8 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7DF9 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7DFB execution token
        dw      XT_1                                                            ; $7DFD execution token
        dw      XT_gt                                                           ; $7DFF execution token
        dw      XT_0BRANCH                                                      ; $7E01 execution token
        dw      L7E0B                                                           ; $7E03 branch target
        dw      $1EE9                                                           ; $7E05 execution token
        dw      XT_BRANCH                                                       ; $7E07 execution token
        dw      L7E0D                                                           ; $7E09 branch target
L7E0B:
        dw      $1EC2                                                           ; $7E0B execution token
L7E0D:
        dw      XT_LIT                                                          ; $7E0D execution token
        dw      $79A6                                                           ; $7E0F inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7E11 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7E13 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7E15 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7E17 execution token
        dw      XT_LITbyte                                                      ; $7E19 execution token
        db      $3C                                                             ; $7E1B inline byte
        dw      XT_LIT                                                          ; $7E1C execution token
        dw      $FFD8                                                           ; $7E1E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7E20 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7E22 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7E24 execution token
        dw      XT_RETURN                                                       ; $7E26 execution token

IMAGE_MIRROR_MATCH_WRONG_2:
        rst     $08                                                             ; $7E28 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7E29 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $7E2B execution token
        dw      XT_LIT                                                          ; $7E2D execution token
        dw      $FFC9                                                           ; $7E2F inline word
        dw      XT_LITbyte                                                      ; $7E31 execution token
        db      $05                                                             ; $7E33 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7E34 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7E36 execution token
        dw      XT_LITbyte                                                      ; $7E38 execution token
        db      $02                                                             ; $7E3A inline byte
        dw      XT_less                                                         ; $7E3B execution token
        dw      XT_0BRANCH                                                      ; $7E3D execution token
        dw      L7E47                                                           ; $7E3F branch target
        dw      $1EE9                                                           ; $7E41 execution token
        dw      XT_BRANCH                                                       ; $7E43 execution token
        dw      L7E49                                                           ; $7E45 branch target
L7E47:
        dw      $1EC2                                                           ; $7E47 execution token
L7E49:
        dw      XT_LIT                                                          ; $7E49 execution token
        dw      $79A6                                                           ; $7E4B inline word
        dw      XT_APPLY_AND_DRAW_OBJECT                                        ; $7E4D execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7E4F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7E51 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7E53 execution token
        dw      XT_LITbyte                                                      ; $7E55 execution token
        db      $3C                                                             ; $7E57 inline byte
        dw      XT_LIT                                                          ; $7E58 execution token
        dw      $FFD8                                                           ; $7E5A inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $7E5C execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $7E5E execution token
        dw      XT_LITbyte                                                      ; $7E60 execution token
        db      $0F                                                             ; $7E62 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7E63 execution token
        dw      $1A2C                                                           ; $7E65 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7E67 execution token
        dw      XT_RETURN                                                       ; $7E69 execution token

IMAGE_MIRROR_MATCH_ACTIONS:
        db      $04                                                             ; $7E6B action count
        dw      IMAGE_MIRROR_MATCH_SETUP                                        ; $7E6C setup
        dw      IMAGE_MIRROR_MATCH_CORRECT                                      ; $7E6E correct
        dw      IMAGE_MIRROR_MATCH_WRONG_1                                      ; $7E70 wrong 1
        dw      IMAGE_MIRROR_MATCH_WRONG_2                                      ; $7E72 wrong 2

; Rooted by tier slots 0, 2.
QUESTION_INITIALIZER_7E74:
        rst     $08                                                          ; $7E74
        dw      XT_LITbyte                                                      ; $7E75
        db      $04                                                              ; $7E77
        dw      XT_RANDOM_BELOW                                                 ; $7E78
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $7E7A
        dw      XT_LIT                                                          ; $7E7C
        dw      PPQ5_IMAGE_MIRROR_MATCH_ACTION_LIST                             ; $7E7E
        dw      XT_RETURN                                                       ; $7E80

; Root tier slot 0.
QUESTION_BUCKET_7E82:
        db      $02                  ; $7E82 initializer count
        dw      QUESTION_INITIALIZER_6EA0 ; $7E83 entry 0
        dw      QUESTION_INITIALIZER_7E74 ; $7E85 entry 1

; Root tier slot 1.
QUESTION_BUCKET_7E87:
        db      $02                  ; $7E87 initializer count
        dw      QUESTION_INITIALIZER_6EB9 ; $7E88 entry 0
        dw      QUESTION_INITIALIZER_799F ; $7E8A entry 1

; Root tier slot 2.
QUESTION_BUCKET_7E8C:
        db      $03                  ; $7E8C initializer count
        dw      QUESTION_INITIALIZER_6ED7 ; $7E8D entry 0
        dw      QUESTION_INITIALIZER_546C ; $7E8F entry 1
        dw      QUESTION_INITIALIZER_7E74 ; $7E91 entry 2

; Root tier slot 3.
QUESTION_BUCKET_7E93:
        db      $03                  ; $7E93 initializer count
        dw      QUESTION_INITIALIZER_6EF5 ; $7E94 entry 0
        dw      QUESTION_INITIALIZER_547E ; $7E96 entry 1
        dw      QUESTION_INITIALIZER_682B ; $7E98 entry 2

; Root tier slot 4.
QUESTION_BUCKET_7E9A:
        db      $03                  ; $7E9A initializer count
        dw      QUESTION_INITIALIZER_6F13 ; $7E9B entry 0
        dw      QUESTION_INITIALIZER_5495 ; $7E9D entry 1
        dw      QUESTION_INITIALIZER_799F ; $7E9F entry 2

; Root tier slot 5.
QUESTION_BUCKET_7EA1:
        db      $02                  ; $7EA1 initializer count
        dw      QUESTION_INITIALIZER_6F31 ; $7EA2 entry 0
        dw      QUESTION_INITIALIZER_682B ; $7EA4 entry 1

; Root tier slot 6.
QUESTION_BUCKET_7EA6:
        db      $02                  ; $7EA6 initializer count
        dw      QUESTION_INITIALIZER_6F4F ; $7EA7 entry 0
        dw      QUESTION_INITIALIZER_682B ; $7EA9 entry 1

; Root tier slot 7.
QUESTION_BUCKET_7EAB:
        db      $02                  ; $7EAB initializer count
        dw      QUESTION_INITIALIZER_6F6D ; $7EAC entry 0
        dw      QUESTION_INITIALIZER_682B ; $7EAE entry 1

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_BUCKET_7E82 ; $7EB0 tier 0
        dw      QUESTION_BUCKET_7E87 ; $7EB2 tier 1
        dw      QUESTION_BUCKET_7E8C ; $7EB4 tier 2
        dw      QUESTION_BUCKET_7E93 ; $7EB6 tier 3
        dw      QUESTION_BUCKET_7E9A ; $7EB8 tier 4
        dw      QUESTION_BUCKET_7EA1 ; $7EBA tier 5
        dw      QUESTION_BUCKET_7EA6 ; $7EBC tier 6
        dw      QUESTION_BUCKET_7EAB ; $7EBE tier 7
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F00
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F10
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F20
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F30
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F40
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F50
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F60
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F70
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F80
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F90
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE0
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FF0
