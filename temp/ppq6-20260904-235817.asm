; Professor Pac-Man question ROM PPQ6
; CPU address $4000-$7FFF when selected through port $F3
; The root directory, rooted TERSE initializers, and complete reachable family
; action graphs are structured symbolically. Unclassified data retains its
; original addressed byte representation.

        include "src/profpac_question_common.include"

        org     QUESTION_ROM_WINDOW

PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST       equ     $62F4
PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST        equ     $761E

QUESTION_BANK_HEADER:
        dw      QUESTION_ROOT_DIRECTORY ; $4000 root-directory pointer
PPQ6_TERSE_4002:
        rst     $08                                                             ; $4002 colon entry
        dw      XT_LITbyte                                                      ; $4003 execution token
        db      $0C                                                             ; $4005 inline byte
        dw      XT_LIT                                                          ; $4006 execution token
        dw      $8276                                                           ; $4008 inline word
        dw      $2B2E                                                           ; $400A execution token
        dw      XT_RETURN                                                       ; $400C execution token

PPQ6_TERSE_400E:
        rst     $08                                                             ; $400E colon entry
        dw      XT_LITbyte                                                      ; $400F execution token
        db      $0A                                                             ; $4011 inline byte
        dw      XT_LIT                                                          ; $4012 execution token
        dw      $00AA                                                           ; $4014 inline word
        dw      $2B2E                                                           ; $4016 execution token
        dw      XT_RETURN                                                       ; $4018 execution token

PPQ6_TERSE_401A:
        rst     $08                                                             ; $401A colon entry
        dw      XT_LITbyte                                                      ; $401B execution token
        db      $0F                                                             ; $401D inline byte
        dw      XT_LIT                                                          ; $401E execution token
        dw      $00FF                                                           ; $4020 inline word
        dw      $2B2E                                                           ; $4022 execution token
        dw      XT_RETURN                                                       ; $4024 execution token

PPQ6_TERSE_4026:
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
        dw      PPQ6_TERSE_400E                                                 ; $4045 execution token
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
        dw      PPQ6_TERSE_400E                                                 ; $4059 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $407A execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $409C execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $40C3 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $40E4 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $4103 execution token
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
        dw      PPQ6_TERSE_401A                                                 ; $4122 execution token
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
        dw      PPQ6_TERSE_401A                                                 ; $4142 execution token
        dw      XT_LITbyte                                                      ; $4144 execution token
        db      $18                                                             ; $4146 inline byte
        dw      $2BA8                                                           ; $4147 execution token
        dw      $2B8C                                                           ; $4149 execution token
        dw      XT_RETURN                                                       ; $414B execution token

PPQ6_TERSE_414D:
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
        dw      PPQ6_TERSE_400E                                                 ; $4173 execution token
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
        dw      PPQ6_TERSE_400E                                                 ; $4187 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $41A8 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $41CA execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $41F1 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $4212 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $4231 execution token
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
        dw      PPQ6_TERSE_4002                                                 ; $4245 execution token
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
        dw      PPQ6_TERSE_401A                                                 ; $4264 execution token
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
        dw      PPQ6_TERSE_401A                                                 ; $4284 execution token
        dw      XT_LITbyte                                                      ; $4286 execution token
        db      $18                                                             ; $4288 inline byte
        dw      $2BA8                                                           ; $4289 execution token
        dw      XT_LIT                                                          ; $428B execution token
        dw      $F2FF                                                           ; $428D inline word
        dw      XT_BONE                                                         ; $428F execution token
        dw      $2B8C                                                           ; $4291 execution token
        dw      XT_RETURN                                                       ; $4293 execution token

PPQ6_TERSE_4295:
        rst     $08                                                             ; $4295 colon entry
        dw      PPQ6_TERSE_4026                                                 ; $4296 execution token
        dw      PPQ6_TERSE_414D                                                 ; $4298 execution token
        dw      XT_RETURN                                                       ; $429A execution token

        db      $0B,$0C,$06,$1A,$00,$3F                                         ; $429C preserved bytes
        db      $FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0,$00,$0F,$FF,$FF,$FF,$F0,$00 ; $42A2
        db      $3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA,$AF,$FE,$40,$FF,$E9,$55,$57 ; $42B2
        db      $FF,$50,$FF,$E5,$55,$57,$FF,$90,$FF,$E5,$40,$03,$FF,$94,$FF,$E5 ; $42C2
        db      $00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94 ; $42D2
        db      $FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03 ; $42E2
        db      $FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$FF,$E5 ; $42F2
        db      $00,$03,$FF,$94,$FF,$E5,$00,$03,$FF,$94,$3F,$F5,$00,$0F,$FE,$94 ; $4302
        db      $3F,$FF,$FF,$FF,$FE,$54,$0F,$FF,$FF,$FF,$FA,$54,$03,$FF,$FF,$FF ; $4312
        db      $E9,$50,$01,$BF,$FF,$FE,$A5,$50,$00,$5A,$AA,$AA,$55,$40,$00,$55 ; $4322
        db      $55,$55,$55,$00,$00,$05,$55,$55,$50,$00,$05,$0C,$03,$1A,$3F,$F0 ; $4332
        db      $00,$3F,$F8,$00,$3F,$F9,$00,$3F,$F9,$00,$3F,$F9,$00,$3F,$F9,$40 ; $4342
        db      $3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F ; $4352
        db      $F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9 ; $4362
        db      $40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40,$3F,$F9,$40 ; $4372
        db      $3F,$F9,$40,$0A,$A9,$40,$01,$55,$40,$01,$55,$40,$0B,$0C,$06,$1A ; $4382
        db      $00,$3F,$FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0,$00,$0F,$FF,$FF,$FF ; $4392
        db      $F0,$00,$3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA,$AF,$FE,$40,$FF,$E9 ; $43A2
        db      $55,$57,$FF,$50,$FF,$E5,$55,$57,$FF,$90,$2A,$A5,$40,$03,$FF,$94 ; $43B2
        db      $05,$55,$00,$0F,$FF,$94,$05,$7F,$FF,$FF,$FE,$94,$03,$FF,$FF,$FF ; $43C2
        db      $FE,$94,$0F,$FF,$FF,$FF,$FA,$54,$3F,$FF,$FF,$FF,$A5,$54,$3F,$FE ; $43D2
        db      $AA,$AA,$95,$50,$FF,$FA,$55,$55,$55,$00,$FF,$E9,$55,$55,$54,$00 ; $43E2
        db      $FF,$E5,$50,$00,$00,$00,$FF,$E5,$40,$00,$00,$00,$FF,$E5,$00,$00 ; $43F2
        db      $00,$00,$FF,$FF,$FF,$FF,$FF,$80,$FF,$FF,$FF,$FF,$FF,$94,$FF,$FF ; $4402
        db      $FF,$FF,$FF,$94,$FF,$FF,$FF,$FF,$FF,$94,$2A,$AA,$AA,$AA,$AA,$94 ; $4412
        db      $05,$55,$55,$55,$55,$54,$05,$55,$55,$55,$55,$54,$0B,$0C,$06,$1A ; $4422
        db      $00,$3F,$FF,$FC,$00,$00,$03,$FF,$FF,$FF,$C0,$00,$0F,$FF,$FF,$FF ; $4432
        db      $F0,$00,$3F,$FF,$FF,$FF,$FC,$00,$3F,$FA,$AA,$AF,$FE,$40,$FF,$E9 ; $4442
        db      $55,$57,$FF,$50,$FF,$E5,$55,$57,$FF,$90,$2A,$A5,$40,$03,$FF,$94 ; $4452
        db      $05,$55,$00,$0F,$FF,$94,$05,$57,$FF,$FF,$FE,$94,$00,$03,$FF,$FF ; $4462
        db      $FE,$54,$00,$03,$FF,$FF,$FA,$50,$00,$03,$FF,$FF,$FD,$50,$00,$00 ; $4472
        db      $AA,$AF,$FE,$40,$00,$00,$15,$57,$FF,$50,$00,$00,$15,$57,$FF,$90 ; $4482
        db      $FF,$C0,$00,$03,$FF,$94,$FF,$E0,$00,$03,$FF,$94,$3F,$F5,$00,$0F ; $4492
        db      $FE,$94,$3F,$FF,$FF,$FF,$FE,$54,$0F,$FF,$FF,$FF,$FA,$54,$07,$FF ; $44A2
        db      $FF,$FF,$E9,$50,$01,$BF,$FF,$FE,$A5,$40,$00,$5A,$AA,$AA,$55,$00 ; $44B2
        db      $00,$05,$55,$55,$54,$00,$00,$01,$55,$55,$40,$00,$0F,$00,$09,$00 ; $44C2
        db      $04,$0E,$0F,$0A,$00,$03,$0E,$00,$00,$00,$0A,$0E,$05,$06,$0F,$0B ; $44D2
        db      $00,$0F,$00,$00,$0C,$00,$08,$0E,$05,$06,$00,$00,$0A,$0F,$04,$00 ; $44E2
        db      $07,$00,$07,$0E,$05,$06,$0F,$0B,$00,$0E,$05,$06,$0F,$0A,$00,$00 ; $44F2
        db      $00,$0E,$00,$01,$0F,$0F,$00,$00,$07,$07,$07,$0F,$0B,$00,$0F,$00 ; $4502
        db      $00,$0C,$00,$08,$0F,$0B,$00,$0E,$05,$06,$07,$00,$07,$05,$05,$05 ; $4512
        db      $03,$03,$03,$07,$07,$07,$00,$00,$09,$00,$04,$0E,$0F,$0A,$00,$00 ; $4522
        db      $0A,$00,$00,$04,$0E,$0F,$0A,$00,$09,$00,$07,$00,$04,$0E,$0F,$0A ; $4532
        db      $00,$0C,$00,$00,$00,$09,$00,$0F,$0D,$00,$16,$45,$43,$45,$04,$45 ; $4542
        db      $FB,$44,$28,$45,$F2,$44,$0D,$45,$E0,$44,$8C,$2D,$CF,$12,$01,$10 ; $4552
        db      $09,$01,$6D,$FD,$EF,$2B,$EC,$3E,$12,$01,$1D,$A8,$2B,$EA,$3F,$30 ; $4562
        db      $01,$A8,$2B,$8C,$2B,$FD,$00,$CF,$12,$01,$10,$09,$01,$3D,$FD,$EF ; $4572
        db      $2B,$12,$01,$00,$12,$01,$00,$2E,$2B,$12,$01,$02,$A8,$2B,$EC,$3E ; $4582
        db      $12,$01,$1B,$A8,$2B,$EA,$3F,$30,$01,$A8,$2B,$8C,$2B,$FD,$00,$CF ; $4592
        db      $5E,$45,$79,$45,$FD,$00,$CF,$99,$15,$12,$01,$04,$09,$01,$FE,$F2 ; $45A2
        db      $32,$05,$09,$01,$FD,$F2,$3F,$05,$A1,$45,$09,$01,$FD,$F2,$53,$01 ; $45B2
        db      $25,$01,$4C,$45,$4C,$01,$6B,$2D,$12,$01,$03,$DF,$1B,$2C,$1A,$09 ; $45C2
        db      $01,$FD,$F2,$36,$01,$49,$05,$53,$01,$12,$01,$08,$1C,$02,$EA,$03 ; $45D2
        db      $BC,$45,$09,$01,$FE,$F2,$36,$01,$44,$05,$53,$01,$DE,$01,$EA,$03 ; $45E2
        db      $B4,$45,$12,$01,$20,$DF,$1B,$2C,$1A,$02,$23,$54,$22,$FD,$00,$01 ; $45F2
        db      $A8,$45,$08,$07,$07,$18,$AF,$A8,$00,$00,$04,$00,$00,$00,$00,$80 ; $4602
        db      $00,$09,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$02 ; $4612
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$22 ; $4622
        db      $90,$00,$80,$00,$00,$11,$28,$50,$00,$00,$C0,$00,$00,$58,$80,$00 ; $4632
        db      $00,$00,$0E,$2F,$8A,$80,$00,$0C,$00,$00,$0E,$8A,$8A,$00,$00,$00 ; $4642
        db      $00,$2A,$C8,$3A,$00,$00,$00,$03,$A0,$A8,$00,$00,$00,$00,$02,$A4 ; $4652
        db      $A8,$02,$A0,$20,$00,$03,$84,$28,$02,$00,$00,$00,$00,$20,$2A,$00 ; $4662
        db      $00,$00,$00,$00,$A0,$AA,$0C,$00,$00,$0C,$00,$00,$00,$00,$00,$00 ; $4672
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00 ; $4682
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$01,$00,$00 ; $4692
        db      $00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$01,$00 ; $46A2
        db      $00,$00,$0C,$00,$00,$00,$00,$80,$00,$0F,$0C,$00,$00,$00,$00,$00 ; $46B2
        db      $03,$00,$00,$00,$00,$00,$00,$03,$00,$00,$0C,$00,$00,$00,$00,$00 ; $46C2
        db      $00,$33,$00,$00,$00,$C0,$00,$33,$F0,$C0,$80,$00,$00,$33,$FC,$F0 ; $46D2
        db      $00,$00,$C0,$00,$00,$FC,$83,$C0,$00,$00,$0E,$2F,$FA,$83,$C0,$0C ; $46E2
        db      $00,$00,$0F,$CA,$BA,$00,$00,$00,$00,$3F,$C8,$FA,$00,$00,$00,$02 ; $46F2
        db      $F0,$FC,$FC,$00,$00,$00,$03,$FC,$FC,$FE,$A0,$2C,$00,$02,$CC,$3C ; $4702
        db      $F2,$00,$00,$00,$00,$3C,$2A,$00,$00,$00,$00,$00,$FC,$AA,$0C,$00 ; $4712
        db      $00,$0C,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4722
        db      $00,$00,$00,$00,$0C,$00,$00,$00,$03,$00,$00,$C0,$00,$00,$00,$00 ; $4732
        db      $00,$00,$00,$00,$08,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C ; $4742
        db      $00,$00,$00,$00,$00,$00,$03,$00,$00,$06,$0A,$07,$1A,$AF,$B6,$00 ; $4752
        db      $00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4762
        db      $00,$00,$01,$00,$00,$00,$40,$03,$C0,$04,$28,$00,$20,$10,$0B,$80 ; $4772
        db      $04,$80,$00,$08,$04,$00,$00,$01,$A0,$80,$02,$04,$02,$40,$54,$0A ; $4782
        db      $00,$00,$5C,$02,$40,$08,$20,$00,$05,$FF,$02,$80,$64,$88,$00,$17 ; $4792
        db      $FC,$12,$47,$55,$80,$00,$9F,$C2,$76,$4C,$35,$00,$00,$3F,$05,$FE ; $47A2
        db      $4C,$F4,$03,$00,$0C,$17,$C0,$63,$C0,$00,$00,$C0,$F7,$08,$00,$13 ; $47B2
        db      $00,$00,$00,$3C,$00,$00,$00,$15,$40,$28,$00,$44,$00,$2A,$A2,$00 ; $47C2
        db      $50,$34,$00,$2B,$00,$00,$00,$00,$00,$00,$0B,$14,$00,$00,$00,$3C ; $47D2
        db      $8C,$C3,$D5,$40,$00,$00,$3C,$1C,$70,$00,$00,$00,$00,$01,$20,$F0 ; $47E2
        db      $10,$00,$00,$00,$80,$F7,$5C,$04,$03,$00,$08,$04,$3F,$F0,$00,$00 ; $47F2
        db      $00,$20,$14,$0D,$41,$00,$2A,$00,$80,$10,$01,$60,$40,$AA,$00,$00 ; $4802
        db      $00,$00,$20,$40,$08,$00,$00,$00,$00,$C0,$00,$00,$00,$00,$00,$00 ; $4812
        db      $00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$C0,$03,$C0,$0C ; $4822
        db      $28,$00,$20,$30,$CB,$80,$0C,$80,$00,$08,$0C,$00,$00,$33,$A0,$80 ; $4832
        db      $02,$0C,$02,$C0,$FC,$0A,$00,$00,$AC,$32,$C0,$08,$20,$00,$0A,$FF ; $4842
        db      $32,$80,$A8,$88,$00,$2B,$FC,$3E,$CF,$EA,$80,$00,$AF,$C2,$BE,$CC ; $4852
        db      $3A,$00,$00,$3F,$0A,$FE,$CC,$F8,$03,$00,$0C,$3B,$C0,$E3,$C0,$00 ; $4862
        db      $00,$C0,$FB,$0C,$00,$33,$00,$00,$00,$3C,$00,$00,$0C,$FF,$C0,$28 ; $4872
        db      $00,$CC,$00,$2A,$AE,$C0,$F0,$3C,$00,$3B,$00,$00,$00,$00,$C0,$00 ; $4882
        db      $0B,$38,$00,$00,$0F,$3C,$8C,$C3,$EB,$F0,$00,$C0,$3C,$3C,$F0,$30 ; $4892
        db      $00,$00,$00,$03,$20,$F0,$33,$00,$00,$00,$80,$FB,$AC,$0C,$C3,$00 ; $48A2
        db      $08,$0C,$3F,$F0,$00,$00,$00,$20,$3C,$0F,$C3,$00,$3F,$00,$80,$30 ; $48B2
        db      $03,$E0,$C0,$FF,$00,$00,$00,$00,$20,$C0,$0C,$00,$08,$08,$07,$19 ; $48C2
        db      $AF,$AF,$00,$02,$A0,$5F,$40,$01,$43,$F0,$00,$81,$1F,$C7,$D1,$41 ; $48D2
        db      $70,$00,$00,$05,$17,$FD,$00,$00,$02,$10,$00,$DF,$D0,$08,$00,$07 ; $48E2
        db      $D0,$03,$97,$90,$40,$08,$0D,$33,$00,$3B,$00,$00,$20,$0C,$4A,$00 ; $48F2
        db      $14,$00,$BE,$00,$3F,$FE,$00,$9A,$02,$CF,$C0,$0E,$BF,$20,$97,$00 ; $4902
        db      $FF,$F0,$00,$33,$28,$14,$08,$B5,$C0,$0C,$1E,$A4,$00,$1A,$B7,$C4 ; $4912
        db      $00,$08,$00,$00,$18,$B7,$C4,$00,$00,$00,$00,$5A,$B7,$D0,$0D,$89 ; $4922
        db      $40,$00,$00,$A7,$40,$01,$62,$70,$00,$00,$2A,$00,$3F,$5A,$40,$42 ; $4932
        db      $54,$00,$00,$FD,$58,$00,$40,$45,$CC,$00,$3F,$40,$0A,$61,$6B,$D3 ; $4942
        db      $00,$07,$00,$08,$A0,$23,$53,$00,$00,$00,$A2,$80,$2D,$4F,$00,$00 ; $4952
        db      $80,$07,$B0,$0C,$03,$00,$00,$0F,$1A,$FC,$10,$FC,$00,$08,$0C,$FF ; $4962
        db      $FF,$00,$00,$00,$00,$03,$C5,$D3,$C4,$00,$00,$00,$10,$F1,$50,$C1 ; $4972
        db      $00,$00,$03,$F0,$AF,$83,$02,$82,$A0,$00,$C3,$2F,$CB,$E2,$83,$E0 ; $4982
        db      $00,$00,$0A,$2B,$FE,$00,$00,$02,$20,$0C,$EF,$E0,$08,$00,$0B,$E0 ; $4992
        db      $03,$AB,$A0,$C0,$08,$0E,$33,$00,$3B,$00,$00,$20,$0C,$8A,$00,$28 ; $49A2
        db      $00,$BE,$00,$3F,$FE,$03,$EF,$02,$CF,$C0,$0E,$BF,$30,$FF,$00,$FF ; $49B2
        db      $F0,$00,$33,$3C,$3C,$0C,$BA,$C0,$0C,$2E,$BC,$00,$3E,$BB,$C8,$00 ; $49C2
        db      $08,$00,$00,$3C,$BB,$C8,$00,$00,$00,$00,$FF,$BB,$E0,$0E,$8F,$C0 ; $49D2
        db      $00,$00,$AB,$80,$02,$A3,$F0,$00,$00,$2A,$00,$3F,$AB,$C0,$C3,$FC ; $49E2
        db      $00,$00,$FE,$A8,$00,$C0,$CF,$FF,$00,$3F,$80,$0F,$F3,$EB,$EF,$30 ; $49F2
        db      $0B,$00,$08,$F0,$23,$AF,$0C,$00,$00,$A2,$80,$2E,$BF,$00,$00,$80 ; $4A02
        db      $0B,$B0,$0F,$FF,$00,$00,$0F,$2A,$FC,$30,$FC,$00,$08,$0C,$FF,$FF ; $4A12
        db      $00,$00,$00,$00,$03,$CA,$E3,$CC,$00,$00,$00,$30,$F2,$A0,$C3,$00 ; $4A22
        db      $00,$08,$0A,$08,$1A,$AF,$D0,$00,$00,$03,$FF,$03,$C0,$00,$0C,$00 ; $4A32
        db      $00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C,$D0,$0F,$30,$0C,$00 ; $4A42
        db      $00,$00,$5F,$F4,$15,$00,$00,$00,$00,$01,$73,$FC,$3D,$C0,$10,$00 ; $4A52
        db      $00,$00,$3C,$33,$3F,$00,$54,$00,$00,$C0,$F0,$00,$00,$00,$FF,$00 ; $4A62
        db      $01,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00,$30,$00,$15,$00 ; $4A72
        db      $5F,$F0,$0C,$00,$00,$03,$01,$40,$17,$C0,$00,$00,$00,$00,$00,$00 ; $4A82
        db      $1F,$00,$00,$00,$00,$00,$01,$00,$1C,$40,$0C,$00,$00,$00,$15,$00 ; $4A92
        db      $1C,$03,$3C,$00,$00,$00,$FD,$00,$30,$00,$C0,$00,$00,$00,$00,$C0 ; $4AA2
        db      $01,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00,$00,$00,$00,$CF,$00 ; $4AB2
        db      $04,$F0,$00,$00,$00,$00,$0C,$00,$05,$57,$00,$00,$00,$00,$00,$00 ; $4AC2
        db      $05,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$30,$0F,$14,$00 ; $4AD2
        db      $00,$01,$10,$C0,$C0,$3F,$54,$00,$00,$03,$F3,$F0,$C3,$0D,$10,$00 ; $4AE2
        db      $00,$03,$3F,$3C,$CC,$05,$00,$00,$00,$00,$35,$40,$15,$04,$00,$00 ; $4AF2
        db      $00,$00,$03,$C0,$0D,$C0,$00,$00,$00,$03,$FF,$03,$C0,$00,$0C,$00 ; $4B02
        db      $00,$0F,$00,$03,$03,$00,$FF,$00,$00,$00,$0C,$E0,$0F,$30,$0C,$00 ; $4B12
        db      $00,$00,$AF,$F8,$2A,$00,$00,$00,$00,$02,$B3,$FC,$3E,$C0,$20,$00 ; $4B22
        db      $00,$00,$3C,$33,$3F,$00,$A8,$00,$00,$C0,$F0,$00,$00,$00,$FF,$00 ; $4B32
        db      $02,$F0,$00,$03,$00,$03,$C0,$00,$3F,$F0,$03,$00,$30,$00,$2A,$00 ; $4B42
        db      $AF,$F0,$0C,$00,$00,$03,$02,$80,$2B,$C0,$00,$00,$00,$00,$00,$00 ; $4B52
        db      $2F,$00,$00,$00,$00,$00,$02,$00,$2C,$80,$0C,$00,$00,$00,$2A,$00 ; $4B62
        db      $2C,$03,$3C,$00,$00,$00,$FE,$00,$30,$00,$C0,$00,$00,$00,$00,$C0 ; $4B72
        db      $02,$00,$00,$00,$00,$00,$0F,$00,$00,$30,$00,$00,$00,$00,$CF,$00 ; $4B82
        db      $08,$F0,$00,$00,$00,$00,$0C,$00,$0A,$AB,$00,$00,$00,$00,$00,$00 ; $4B92
        db      $0A,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$30,$0F,$28,$00 ; $4BA2
        db      $00,$02,$20,$C0,$C0,$3F,$A8,$00,$00,$03,$F3,$F0,$C3,$0E,$20,$00 ; $4BB2
        db      $00,$03,$3F,$3C,$CC,$0A,$00,$00,$00,$00,$3A,$80,$2A,$08,$00,$00 ; $4BC2
        db      $00,$00,$03,$C0,$0E,$C0,$00,$00,$04,$00,$81,$10,$04,$46,$12,$5B ; $4BD2
        db      $47,$14,$CE,$48,$12,$33,$4A,$00,$DD,$4B                         ; $4BE2 preserved bytes

PPQ6_TERSE_4BEC:
        rst     $08                                                             ; $4BEC colon entry
        dw      XT_LITbyte                                                      ; $4BED execution token
        db      $10                                                             ; $4BEF inline byte
        dw      XT_LIT                                                          ; $4BF0 execution token
        dw      $FD3D                                                           ; $4BF2 inline word
        dw      $2BEF                                                           ; $4BF4 execution token
        dw      XT_LITbyte                                                      ; $4BF6 execution token
        db      $00                                                             ; $4BF8 inline byte
        dw      XT_LITbyte                                                      ; $4BF9 execution token
        db      $00                                                             ; $4BFB inline byte
        dw      $2B2E                                                           ; $4BFC execution token
        dw      XT_LITbyte                                                      ; $4BFE execution token
        db      $06                                                             ; $4C00 inline byte
        dw      $2BA8                                                           ; $4C01 execution token
        dw      XT_LITbyte                                                      ; $4C03 execution token
        db      $14                                                             ; $4C05 inline byte
        dw      XT_LITbyte                                                      ; $4C06 execution token
        db      $26                                                             ; $4C08 inline byte
        dw      XT_LITbyte                                                      ; $4C09 execution token
        db      $28                                                             ; $4C0B inline byte
        dw      $2B71                                                           ; $4C0C execution token
        dw      XT_LITbyte                                                      ; $4C0E execution token
        db      $16                                                             ; $4C10 inline byte
        dw      XT_LIT                                                          ; $4C11 execution token
        dw      $0066                                                           ; $4C13 inline word
        dw      $2B2E                                                           ; $4C15 execution token
        dw      XT_LITbyte                                                      ; $4C17 execution token
        db      $38                                                             ; $4C19 inline byte
        dw      $2AF2                                                           ; $4C1A execution token
        dw      XT_LITbyte                                                      ; $4C1C execution token
        db      $03                                                             ; $4C1E inline byte
        dw      XT_LITbyte                                                      ; $4C1F execution token
        db      $07                                                             ; $4C21 inline byte
        dw      XT_LITbyte                                                      ; $4C22 execution token
        db      $05                                                             ; $4C24 inline byte
        dw      XT_LIT                                                          ; $4C25 execution token
        dw      $FFFF                                                           ; $4C27 inline word
        dw      XT_LITbyte                                                      ; $4C29 execution token
        db      $10                                                             ; $4C2B inline byte
        dw      XT_LITbyte                                                      ; $4C2C execution token
        db      $18                                                             ; $4C2E inline byte
        dw      XT_LIT                                                          ; $4C2F execution token
        dw      $FFF9                                                           ; $4C31 inline word
        dw      $2BBB                                                           ; $4C33 execution token
        dw      XT_1                                                            ; $4C35 execution token
        dw      XT_LITbyte                                                      ; $4C37 execution token
        db      $10                                                             ; $4C39 inline byte
        dw      XT_LITbyte                                                      ; $4C3A execution token
        db      $03                                                             ; $4C3C inline byte
        dw      XT_LIT                                                          ; $4C3D execution token
        dw      $FFFE                                                           ; $4C3F inline word
        dw      XT_LITbyte                                                      ; $4C41 execution token
        db      $20                                                             ; $4C43 inline byte
        dw      XT_LIT                                                          ; $4C44 execution token
        dw      QUESTION_BANK_BASE                                              ; $4C46 inline word
        dw      XT_LIT                                                          ; $4C48 execution token
        dw      $FFE4                                                           ; $4C4A inline word
        dw      $2BBB                                                           ; $4C4C execution token
        dw      XT_1                                                            ; $4C4E execution token
        dw      XT_LITbyte                                                      ; $4C50 execution token
        db      $10                                                             ; $4C52 inline byte
        dw      XT_LITbyte                                                      ; $4C53 execution token
        db      $03                                                             ; $4C55 inline byte
        dw      XT_LITbyte                                                      ; $4C56 execution token
        db      $04                                                             ; $4C58 inline byte
        dw      XT_0                                                            ; $4C59 execution token
        dw      XT_LITbyte                                                      ; $4C5B execution token
        db      $0F                                                             ; $4C5D inline byte
        dw      XT_LIT                                                          ; $4C5E execution token
        dw      $FFF2                                                           ; $4C60 inline word
        dw      $2BBB                                                           ; $4C62 execution token
        dw      XT_LITbyte                                                      ; $4C64 execution token
        db      $07                                                             ; $4C66 inline byte
        dw      $2B01                                                           ; $4C67 execution token
        dw      XT_LITbyte                                                      ; $4C69 execution token
        db      $28                                                             ; $4C6B inline byte
        dw      $2BA8                                                           ; $4C6C execution token
        dw      $2B8C                                                           ; $4C6E execution token
        dw      XT_RETURN                                                       ; $4C70 execution token
PPQ6_TERSE_4C72:
        rst     $08                                                             ; $4C72 colon entry
        dw      XT_LITbyte                                                      ; $4C73 execution token
        db      $10                                                             ; $4C75 inline byte
        dw      XT_LIT                                                          ; $4C76 execution token
        dw      $FD6D                                                           ; $4C78 inline word
        dw      $2BEF                                                           ; $4C7A execution token
        dw      XT_LITbyte                                                      ; $4C7C execution token
        db      $1F                                                             ; $4C7E inline byte
        dw      XT_LIT                                                          ; $4C7F execution token
        dw      $00FF                                                           ; $4C81 inline word
        dw      $2B2E                                                           ; $4C83 execution token
        dw      XT_LIT                                                          ; $4C85 execution token
        dw      $0068                                                           ; $4C87 inline word
        dw      $2B01                                                           ; $4C89 execution token
        dw      XT_LITbyte                                                      ; $4C8B execution token
        db      $20                                                             ; $4C8D inline byte
        dw      $2AF2                                                           ; $4C8E execution token
        dw      XT_LIT                                                          ; $4C90 execution token
        dw      $0088                                                           ; $4C92 inline word
        dw      XT_LITbyte                                                      ; $4C94 execution token
        db      $50                                                             ; $4C96 inline byte
        dw      XT_LIT                                                          ; $4C97 execution token
        dw      $0064                                                           ; $4C99 inline word
        dw      $2B71                                                           ; $4C9B execution token
        dw      XT_LITbyte                                                      ; $4C9D execution token
        db      $20                                                             ; $4C9F inline byte
        dw      $2BA8                                                           ; $4CA0 execution token
        dw      XT_LITbyte                                                      ; $4CA2 execution token
        db      $00                                                             ; $4CA4 inline byte
        dw      XT_LITbyte                                                      ; $4CA5 execution token
        db      $00                                                             ; $4CA7 inline byte
        dw      $2B2E                                                           ; $4CA8 execution token
        dw      XT_LITbyte                                                      ; $4CAA execution token
        db      $04                                                             ; $4CAC inline byte
        dw      $2BA8                                                           ; $4CAD execution token
        dw      XT_LITbyte                                                      ; $4CAF execution token
        db      $1F                                                             ; $4CB1 inline byte
        dw      XT_LIT                                                          ; $4CB2 execution token
        dw      $00FF                                                           ; $4CB4 inline word
        dw      $2B2E                                                           ; $4CB6 execution token
        dw      XT_LITbyte                                                      ; $4CB8 execution token
        db      $08                                                             ; $4CBA inline byte
        dw      $2BA8                                                           ; $4CBB execution token
        dw      XT_LITbyte                                                      ; $4CBD execution token
        db      $00                                                             ; $4CBF inline byte
        dw      XT_LITbyte                                                      ; $4CC0 execution token
        db      $00                                                             ; $4CC2 inline byte
        dw      $2B2E                                                           ; $4CC3 execution token
        dw      XT_LITbyte                                                      ; $4CC5 execution token
        db      $04                                                             ; $4CC7 inline byte
        dw      $2BA8                                                           ; $4CC8 execution token
        dw      $2B8C                                                           ; $4CCA execution token
        dw      XT_RETURN                                                       ; $4CCC execution token

PPQ6_TERSE_4CCE:
        rst     $08                                                             ; $4CCE colon entry
        dw      PPQ6_TERSE_4BEC                                                 ; $4CCF execution token
        dw      PPQ6_TERSE_4C72                                                 ; $4CD1 execution token
        dw      XT_RETURN                                                       ; $4CD3 execution token

        db      $CF,$99,$15,$34,$8B,$A8,$1E,$CE,$4C,$09,$01,$DA,$4B             ; $4CD5 preserved bytes
        db      $B4,$1C,$12,$01,$3C,$DF,$1B,$E9,$19,$F3,$1D,$12,$01,$0C,$DF,$1B ; $4CE2
        db      $2C,$1A,$02,$23,$54,$22,$FD,$00,$01,$D5,$4C,$18,$1F,$0C,$3F,$00 ; $4CF2
        db      $00,$00,$00,$00,$03,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4D02
        db      $0F,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$FF,$C0,$FF ; $4D12
        db      $00,$00,$00,$00,$00,$00,$03,$F0,$3F,$FF,$C3,$FF,$C0,$00,$00,$00 ; $4D22
        db      $00,$00,$0F,$FC,$3F,$FF,$CF,$FF,$C0,$00,$00,$00,$00,$00,$0F,$FF ; $4D32
        db      $3F,$FF,$CF,$FF,$F0,$00,$00,$00,$00,$00,$3F,$FF,$3F,$FF,$CF,$FF ; $4D42
        db      $F0,$00,$00,$00,$00,$00,$3F,$FF,$3F,$FF,$CF,$FF,$F0,$00,$00,$00 ; $4D52
        db      $00,$00,$3F,$FF,$3F,$FF,$CF,$FF,$F0,$00,$00,$00,$00,$00,$3F,$FF ; $4D62
        db      $3F,$FF,$CF,$FF,$F0,$00,$00,$00,$00,$00,$3F,$FF,$1F,$FF,$4F,$FF ; $4D72
        db      $F0,$00,$00,$00,$00,$00,$3F,$FF,$30,$00,$CF,$FF,$F0,$00,$00,$00 ; $4D82
        db      $00,$00,$7F,$FD,$1F,$FF,$47,$FF,$D0,$0F,$C0,$00,$00,$00,$40,$03 ; $4D92
        db      $3F,$FF,$CC,$00,$30,$7F,$F0,$00,$00,$00,$7F,$FD,$3F,$FF,$C7,$FF ; $4DA2
        db      $D0,$FF,$F0,$00,$00,$00,$FF,$FF,$3F,$FF,$CF,$FF,$F0,$FF,$F0,$00 ; $4DB2
        db      $00,$00,$FF,$FF,$3F,$FF,$CF,$FF,$F0,$FF,$F0,$00,$00,$00,$FF,$FF ; $4DC2
        db      $3F,$FF,$CF,$FF,$F0,$FF,$F0,$00,$00,$00,$FF,$FF,$1F,$FF,$4F,$FF ; $4DD2
        db      $F0,$FF,$F0,$00,$00,$00,$FF,$FF,$30,$00,$CF,$FF,$F0,$FF,$D0,$00 ; $4DE2
        db      $00,$00,$FF,$FF,$1F,$FF,$47,$FF,$D0,$40,$30,$00,$00,$00,$7F,$FD ; $4DF2
        db      $3F,$FF,$CC,$00,$31,$FF,$D0,$00,$00,$00,$C0,$03,$3F,$FF,$C7,$FF ; $4E02
        db      $D0,$FF,$F0,$00,$00,$00,$7F,$FD,$3F,$FF,$CF,$FF,$F0,$FF,$F0,$00 ; $4E12
        db      $00,$00,$FF,$FF,$3F,$FF,$CF,$FF,$F0,$FF,$F0,$00,$00,$00,$FF,$FF ; $4E22
        db      $3F,$FF,$CF,$FF,$F0,$FF,$F0,$00,$00,$00,$FF,$FF,$3F,$FF,$CF,$FF ; $4E32
        db      $F1,$FF,$D0,$00,$00,$00,$FF,$FF,$3F,$FF,$CF,$FF,$F0,$40,$30,$00 ; $4E42
        db      $00,$00,$FF,$FF,$0F,$FF,$0F,$FF,$F1,$FF,$C0,$00,$00,$00,$FF,$FF ; $4E52
        db      $00,$30,$03,$FF,$D3,$FF,$F0,$00,$FC,$00,$3F,$FC,$7D,$DF,$50,$33 ; $4E62
        db      $03,$FF,$F0,$03,$FF,$00,$C0,$03,$3F,$FF,$FD,$5D,$D3,$FF,$F0,$03 ; $4E72
        db      $FF,$C0,$37,$77,$FF,$FF,$FF,$FF,$F3,$FF,$F0,$03,$FF,$C0,$FF,$FF ; $4E82
        db      $CF,$FF,$FF,$FF,$FC,$FF,$F0,$03,$FF,$F3,$FF,$FF,$FF,$FF,$FF,$FF ; $4E92
        db      $FF,$0F,$C0,$03,$FF,$F3,$FF,$FF,$CF,$FF,$FF,$3F,$FF,$DC,$C0,$03 ; $4EA2
        db      $FF,$F3,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$DF,$40,$0F,$FF,$F3,$FF,$FF ; $4EB2
        db      $F3,$FF,$FF,$3F,$FF,$FF,$D0,$0F,$FF,$F3,$FF,$FF,$FF,$FF,$FF,$FF ; $4EC2
        db      $FF,$FF,$F0,$3F,$FF,$F3,$FF,$FF,$FF,$3F,$FF,$3F,$FF,$FF,$C0,$FF ; $4ED2
        db      $FF,$C3,$FF,$FF,$FF,$F3,$FF,$CF,$FF,$FF,$D0,$FF,$F0,$03,$FF,$FF ; $4EE2
        db      $FF,$F3,$F3,$0F,$FF,$FF,$10,$FF,$FF,$C0,$FF,$FF,$C0,$0C,$33,$03 ; $4EF2
        db      $FF,$FC,$40,$FF,$FF,$F0,$00,$30,$1D,$DD,$F0,$FD,$44,$4F,$30,$3F ; $4F02
        db      $FF,$FD,$0F,$CC,$C0,$0F,$FF,$3F,$FF,$FF,$C0,$3F,$FF,$F3,$F0,$FF ; $4F12
        db      $FF,$C3,$FF,$C3,$FF,$FF,$F0,$0F,$FF,$CF,$FF,$3F,$FF,$FC,$FF,$FF ; $4F22
        db      $0F,$FF,$F0,$0F,$FF,$3F,$FF,$CF,$FF,$FF,$3F,$FF,$F3,$FF,$F0,$0F ; $4F32
        db      $FF,$FF,$FF,$FF,$FF,$FF,$3F,$FF,$FC,$3F,$F0,$0F,$FF,$3F,$FF,$FF ; $4F42
        db      $FF,$FF,$3F,$FF,$FF,$FF,$F0,$0F,$FF,$3F,$FF,$FF,$FF,$FF,$CF,$FF ; $4F52
        db      $FF,$FF,$F0,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$CF,$FF,$FF,$FF,$F0,$0F ; $4F62
        db      $FF,$FF,$FF,$FF,$FF,$FF,$F3,$FF,$FF,$FF,$F0,$03,$FF,$FF,$FF,$FF ; $4F72
        db      $FF,$FF,$F3,$FF,$FF,$FF,$F0,$03,$FF,$FF,$FF,$FF,$FF,$FF,$F7,$FF ; $4F82
        db      $FF,$FF,$F0,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$00 ; $4F92
        db      $3F,$FF,$FF,$FF,$FF,$FF,$CF,$FF,$FF,$FF,$C0,$00,$03,$FF,$FF,$FF ; $4FA2
        db      $FF,$FF,$CF,$FF,$FF,$FF,$C0,$00,$00,$3F,$FF,$FF,$FF,$FF,$CF,$FF ; $4FB2
        db      $FF,$FF,$C0,$00,$00,$0F,$FF,$FF,$FF,$FF,$0F,$FF,$FF,$FF,$00,$00 ; $4FC2
        db      $00,$03,$FF,$FF,$FF,$FF,$3F,$3F,$FF,$FF,$00,$00,$00,$00,$3F,$FF ; $4FD2
        db      $FF,$FC,$CC,$FF,$FF,$FC,$00,$00,$00,$00,$03,$FF,$FF,$F3,$C3,$FF ; $4FE2
        db      $FF,$C0,$00,$1C,$20,$0E,$41,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $4FF2
        db      $3F,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$C0 ; $5002
        db      $00,$00,$00,$00,$00,$00,$00,$3F,$C0,$00,$00,$00,$FF,$F0,$00,$00 ; $5012
        db      $00,$00,$00,$00,$00,$FF,$F0,$00,$00,$00,$FF,$F0,$00,$00,$00,$00 ; $5022
        db      $00,$00,$00,$FF,$FC,$00,$00,$03,$FF,$FC,$00,$00,$00,$00,$00,$00 ; $5032
        db      $00,$FF,$FF,$C0,$00,$03,$FF,$FC,$00,$00,$00,$00,$00,$00,$00,$FF ; $5042
        db      $FF,$FF,$00,$03,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF ; $5052
        db      $00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$FF,$C0,$00 ; $5062
        db      $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$CF,$F0,$00,$FF,$FF ; $5072
        db      $00,$00,$00,$00,$00,$00,$00,$0F,$FF,$FF,$F0,$00,$3F,$FF,$C0,$00 ; $5082
        db      $00,$00,$00,$00,$00,$00,$FC,$3F,$FC,$00,$00,$0F,$C0,$00,$00,$00 ; $5092
        db      $00,$00,$00,$00,$00,$FF,$FC,$00,$3F,$FF,$C0,$3F,$C0,$00,$00,$00 ; $50A2
        db      $00,$00,$0F,$FF,$FF,$00,$FF,$FF,$C0,$FF,$F0,$00,$00,$00,$00,$00 ; $50B2
        db      $0F,$FF,$FF,$C0,$FF,$FF,$03,$FF,$F0,$00,$00,$00,$00,$00,$03,$FF ; $50C2
        db      $FF,$C0,$FF,$FF,$03,$FF,$C0,$00,$00,$00,$00,$00,$03,$FF,$FF,$C0 ; $50D2
        db      $FF,$FF,$0F,$FF,$C0,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$FF,$FF ; $50E2
        db      $0F,$FF,$C0,$00,$00,$00,$00,$00,$00,$3F,$FF,$F0,$FF,$FF,$3F,$FF ; $50F2
        db      $00,$00,$00,$00,$0F,$FC,$00,$00,$0F,$F0,$3F,$FC,$3F,$FF,$00,$00 ; $5102
        db      $03,$FF,$FF,$FF,$00,$0F,$FF,$F0,$00,$C0,$3F,$FF,$00,$00,$0F,$FF ; $5112
        db      $FF,$FF,$C0,$3F,$FF,$F3,$FF,$FC,$00,$3F,$00,$00,$3F,$FF,$FF,$FF ; $5122
        db      $FC,$3F,$FF,$F3,$FF,$FC,$FF,$FC,$00,$00,$17,$FF,$FF,$FF,$FF,$3F ; $5132
        db      $FF,$CF,$FF,$F3,$FF,$FC,$00,$00,$A9,$FF,$FF,$CF,$FF,$3F,$FF,$CF ; $5142
        db      $FF,$F3,$FF,$F0,$00,$02,$A9,$FC,$FF,$CF,$FF,$3F,$FF,$CF,$FF,$CF ; $5152
        db      $FF,$F0,$00,$2A,$A7,$FC,$FF,$CF,$FC,$3F,$FF,$0F,$FF,$CF,$FF,$F0 ; $5162
        db      $00,$00,$1F,$FC,$FF,$3F,$FC,$0F,$FF,$3F,$FF,$CF,$FF,$F0,$00,$FF ; $5172
        db      $FF,$F0,$F0,$FF,$FC,$D0,$30,$3F,$FF,$03,$FF,$F0,$00,$3F,$FF,$C0 ; $5182
        db      $00,$FF,$F3,$FF,$C3,$0F,$FC,$3C,$03,$F0,$00,$0F,$FC,$00,$00,$3C ; $5192
        db      $0F,$FF,$3F,$F3,$FC,$FF,$FF,$C0,$00,$00,$00,$00,$00,$03,$FF,$FF ; $51A2
        db      $FF,$FC,$00,$FF,$FF,$C0,$00,$3F,$F0,$00,$00,$0F,$FF,$FF,$FF,$FC ; $51B2
        db      $C3,$FF,$FF,$C0,$00,$FF,$FF,$00,$00,$0F,$FF,$FC,$FF,$CF,$C3,$FF ; $51C2
        db      $FF,$C0,$00,$FF,$FF,$00,$00,$0F,$FF,$FC,$FF,$3F,$F3,$FF,$FF,$00 ; $51D2
        db      $00,$FF,$FF,$C0,$00,$0F,$FF,$FC,$3C,$FF,$FC,$3F,$FF,$00,$00,$3F ; $51E2
        db      $FF,$C0,$00,$03,$FF,$FC,$FF,$FF,$FF,$0F,$FF,$00,$00,$3F,$FF,$F0 ; $51F2
        db      $00,$03,$FF,$F4,$F3,$FF,$FF,$F0,$FF,$00,$00,$3F,$FF,$F0,$00,$00 ; $5202
        db      $FC,$0C,$33,$FF,$FF,$FF,$FF,$00,$00,$3F,$FF,$F0,$00,$00,$00,$77 ; $5212
        db      $33,$FF,$FF,$FF,$FF,$00,$00,$3F,$FF,$F0,$00,$00,$1D,$FD,$03,$FF ; $5222
        db      $FF,$FF,$FC,$00,$00,$3F,$FF,$C0,$00,$3F,$3F,$FF,$43,$FF,$FF,$FF ; $5232
        db      $FC,$00,$00,$3F,$FF,$CF,$03,$FF,$0D,$FF,$D3,$FF,$FF,$FF,$FC,$00 ; $5242
        db      $00,$FF,$FF,$3F,$CF,$FF,$CF,$7F,$C3,$FF,$FF,$FF,$FC,$00,$00,$FF ; $5252
        db      $FC,$FF,$CF,$FF,$FC,$FF,$0F,$FF,$FF,$FF,$FC,$00,$00,$FF,$33,$FF ; $5262
        db      $3F,$FF,$FF,$34,$FF,$FF,$FF,$FF,$FC,$00,$00,$3F,$FF,$FC,$3F,$FF ; $5272
        db      $FF,$01,$FF,$FF,$FF,$FF,$FC,$00,$00,$3F,$FF,$FC,$FF,$FF,$FF,$C7 ; $5282
        db      $FF,$FF,$FF,$FF,$FC,$00,$00,$3F,$FF,$F3,$FF,$FF,$FF,$CF,$FF,$FF ; $5292
        db      $FF,$FF,$FC,$00,$00,$0F,$FF,$F3,$FF,$FF,$FC,$3F,$FF,$FF,$FF,$FF ; $52A2
        db      $FC,$00,$00,$03,$FF,$CF,$FF,$FF,$FC,$FF,$FF,$FF,$FF,$FF,$F0,$00 ; $52B2
        db      $00,$00,$FF,$CF,$FF,$FF,$F3,$FF,$FF,$FF,$FF,$FF,$F0,$00,$00,$00 ; $52C2
        db      $FF,$CF,$FF,$FF,$F7,$FF,$FF,$FF,$FF,$FF,$F0,$00,$00,$00,$3F,$FF ; $52D2
        db      $FF,$FF,$CF,$FF,$FF,$FF,$FF,$FF,$C0,$00,$00,$00,$0F,$FF,$FF,$FF ; $52E2
        db      $DF,$FF,$FF,$FF,$FF,$FF,$C0,$00,$00,$00,$03,$FF,$FF,$FF,$DF,$FF ; $52F2
        db      $FF,$FF,$FF,$FF,$00,$00,$00,$00,$03,$FF,$FF,$FF,$3F,$FF,$FF,$FF ; $5302
        db      $FF,$FC,$00,$00,$00,$00,$00,$FF,$FF,$FF,$3F,$FF,$FF,$FF,$FF,$FC ; $5312
        db      $00,$00,$00,$00,$00,$3F,$FF,$FF,$7F,$FF,$FF,$FF,$FF,$FC,$00,$00 ; $5322
        db      $00,$00,$00,$0F,$FF,$FF,$5F,$FF,$FF,$FF,$FF,$F0,$00,$00,$00,$00 ; $5332
        db      $00,$03,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00 ; $5342
        db      $3F,$FF,$0F,$FF,$FF,$FF,$FF,$C0,$00,$00,$00,$00,$00,$00,$03,$FF ; $5352
        db      $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$FF ; $5362
        db      $FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FC ; $5372
        db      $00,$00,$00,$00,$00,$18,$20,$0C,$40,$00,$00,$00,$00,$00,$02,$80 ; $5382
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1A,$A4,$00,$00,$00,$00 ; $5392
        db      $00,$00,$00,$00,$00,$00,$1A,$A7,$00,$A8,$00,$00,$00,$00,$00,$00 ; $53A2
        db      $0F,$C0,$DA,$A7,$06,$AB,$00,$00,$00,$00,$00,$00,$3A,$B0,$DA,$A7 ; $53B2
        db      $36,$A9,$C0,$00,$00,$00,$00,$00,$DA,$9C,$DA,$A7,$36,$A9,$C0,$00 ; $53C2
        db      $00,$00,$00,$00,$DA,$9C,$F0,$0F,$36,$A9,$C0,$00,$00,$00,$00,$00 ; $53D2
        db      $DA,$9C,$FF,$FF,$36,$A9,$C0,$00,$00,$00,$00,$00,$F0,$3C,$FF,$FF ; $53E2
        db      $3C,$03,$C0,$00,$00,$00,$00,$00,$FF,$FC,$FF,$FF,$3F,$FF,$C0,$00 ; $53F2
        db      $00,$00,$00,$00,$FF,$FC,$75,$7D,$3F,$FF,$C0,$00,$00,$00,$00,$00 ; $5402
        db      $FF,$FC,$7F,$FF,$3F,$77,$C0,$00,$00,$00,$00,$01,$F7,$D4,$75,$5D ; $5412
        db      $1F,$FF,$40,$0A,$00,$00,$00,$01,$7F,$DC,$FF,$FF,$3D,$57,$C0,$6A ; $5422
        db      $C0,$00,$00,$01,$D7,$74,$FF,$FF,$1F,$FF,$43,$6A,$C0,$00,$00,$01 ; $5432
        db      $FF,$FC,$FF,$FF,$3F,$FF,$C3,$6A,$C0,$00,$00,$03,$FF,$FC,$FF,$FF ; $5442
        db      $3F,$FF,$C3,$C0,$C0,$00,$00,$03,$FF,$FC,$FF,$FF,$3F,$FF,$C3,$FF ; $5452
        db      $C0,$00,$00,$03,$FF,$FC,$F5,$DF,$3F,$FF,$C3,$FF,$C0,$00,$00,$03 ; $5462
        db      $FF,$FC,$DF,$F7,$1D,$D7,$C3,$57,$C0,$00,$00,$03,$5F,$DC,$5F,$7D ; $5472
        db      $1F,$FD,$41,$7F,$C0,$00,$00,$01,$FF,$F4,$DF,$F7,$3F,$5F,$43,$57 ; $5482
        db      $40,$00,$00,$03,$DC,$5C,$F7,$77,$17,$FD,$43,$FF,$C0,$00,$00,$01 ; $5492
        db      $FF,$F4,$FF,$FF,$3D,$57,$C3,$FF,$C0,$00,$00,$03,$F5,$7C,$FF,$FF ; $54A2
        db      $3F,$FF,$C3,$FF,$C0,$00,$00,$03,$FF,$FC,$FF,$FF,$3F,$FF,$C3,$FF ; $54B2
        db      $C0,$00,$00,$03,$FF,$FC,$FF,$FF,$3F,$FF,$C1,$F5,$C0,$00,$00,$03 ; $54C2
        db      $FF,$FC,$FF,$FF,$3F,$FF,$C3,$7F,$C0,$00,$00,$03,$FF,$FC,$FF,$FC ; $54D2
        db      $0F,$FF,$C7,$5D,$40,$00,$00,$03,$FF,$F0,$0F,$F3,$F3,$FF,$CF,$FF ; $54E2
        db      $C0,$03,$F0,$03,$FF,$CF,$FF,$FF,$FF,$FD,$0F,$FF,$C0,$0A,$9C,$01 ; $54F2
        db      $FF,$FF,$FF,$DD,$FF,$DF,$CF,$FF,$C0,$0A,$9F,$03,$FF,$77,$FF,$FD ; $5502
        db      $FF,$F7,$F1,$FF,$C0,$0A,$9F,$03,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$5F ; $5512
        db      $40,$0A,$9F,$CF,$FF,$75,$FF,$FD,$FF,$FD,$FF,$FF,$40,$0A,$9F,$CF ; $5522
        db      $FF,$FD,$FF,$75,$FF,$F7,$FF,$F7,$40,$05,$7F,$CF,$FF,$FD,$7F,$DF ; $5532
        db      $FD,$F7,$FF,$F7,$C0,$3F,$FF,$CF,$FF,$F7,$FF,$DF,$FF,$5F,$FF,$D7 ; $5542
        db      $C0,$3F,$FF,$CF,$FF,$D7,$FF,$FF,$FF,$FF,$FF,$DF,$40,$5F,$FF,$CF ; $5552
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FD,$DF,$C0,$F7,$FF,$0F,$FF,$FF,$FF,$FF ; $5562
        db      $FF,$FF,$FF,$7F,$40,$5F,$F5,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $5572
        db      $C0,$FF,$FF,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$5F,$FF,$3F ; $5582
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$FF,$FF,$3F,$FF,$FF,$FF,$FF ; $5592
        db      $FF,$FF,$FF,$FF,$C0,$7F,$FF,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $55A2
        db      $C0,$FF,$FF,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$FF,$FC,$3F ; $55B2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$FF,$F3,$3F,$FF,$FF,$FF,$FF ; $55C2
        db      $FF,$FF,$FF,$FF,$40,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $55D2
        db      $C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$3F,$FF,$FF ; $55E2
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$3F,$FF,$FF,$FF,$FF,$FF,$FF ; $55F2
        db      $FF,$FF,$FF,$FF,$40,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $5602
        db      $00,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$03,$FF,$FF ; $5612
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF ; $5622
        db      $FF,$FF,$FF,$F4,$00,$00,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F0 ; $5632
        db      $00,$00,$03,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$00,$00,$00,$FF ; $5642
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$00,$00,$00,$3F,$FF,$FF,$FF,$FF ; $5652
        db      $FF,$FF,$FF,$00,$00,$00,$00,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$00 ; $5662
        db      $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$D0,$00,$00,$00,$00,$00 ; $5672
        db      $3F,$FF,$FF,$FF,$FF,$FF,$C0,$00,$00,$20,$20,$0E,$3F,$00,$00,$00 ; $5682
        db      $3F,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FC ; $5692
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00 ; $56A2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$C0,$00,$00,$00 ; $56B2
        db      $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$C0,$00,$00,$00,$00,$00 ; $56C2
        db      $00,$00,$00,$00,$00,$00,$FF,$FF,$C0,$00,$00,$00,$00,$00,$00,$00 ; $56D2
        db      $00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $56E2
        db      $00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $56F2
        db      $FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF ; $5702
        db      $F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00 ; $5712
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00 ; $5722
        db      $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$F0,$00,$00,$00,$00,$00 ; $5732
        db      $00,$00,$00,$00,$00,$03,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$00 ; $5742
        db      $00,$00,$00,$03,$FF,$03,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $5752
        db      $00,$03,$FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; $5762
        db      $FF,$FF,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$FF,$FF ; $5772
        db      $C0,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$0F,$FF,$FF,$C0,$00 ; $5782
        db      $03,$FF,$0F,$00,$00,$00,$00,$00,$00,$3F,$FF,$FF,$C0,$CF,$0F,$FF ; $5792
        db      $CF,$FC,$00,$00,$00,$00,$00,$FF,$FF,$FF,$C3,$FF,$CF,$FF,$CF,$FF ; $57A2
        db      $F0,$00,$00,$00,$00,$FF,$FF,$FF,$C3,$FF,$C3,$FF,$CF,$FF,$FC,$00 ; $57B2
        db      $00,$00,$03,$FF,$FF,$FF,$C3,$FF,$F3,$FF,$CF,$FF,$FF,$00,$00,$00 ; $57C2
        db      $03,$FF,$FF,$FF,$C3,$FF,$F3,$FF,$3F,$FF,$FF,$C0,$00,$00,$0F,$FF ; $57D2
        db      $FF,$FF,$C3,$FF,$F3,$FF,$3F,$F0,$FF,$FC,$00,$00,$0F,$FF,$FF,$FF ; $57E2
        db      $01,$FF,$F4,$FF,$3F,$0F,$FF,$FF,$00,$00,$0F,$FF,$F0,$00,$FF,$FF ; $57F2
        db      $F0,$FF,$3F,$3F,$FF,$FD,$C0,$00,$3F,$FF,$FF,$F3,$FC,$FF,$FC,$FF ; $5802
        db      $0C,$3F,$FF,$FF,$C0,$00,$3F,$FF,$FF,$FC,$FF,$3F,$F0,$7C,$00,$FF ; $5812
        db      $FF,$FF,$C0,$00,$FF,$FF,$FF,$FF,$3F,$CF,$00,$00,$00,$FF,$FF,$F7 ; $5822
        db      $C0,$00,$FF,$FF,$FF,$FF,$0F,$F0,$3F,$FF,$FF,$FF,$FF,$FF,$C0,$03 ; $5832
        db      $FF,$FF,$FF,$FF,$CF,$C0,$C0,$0F,$FF,$FF,$FF,$FF,$C0,$0F,$FF,$FF ; $5842
        db      $FF,$FF,$F3,$C0,$EA,$A3,$FF,$F7,$FF,$FF,$00,$3F,$FF,$FF,$FF,$FF ; $5852
        db      $F3,$C0,$EA,$A3,$FF,$F5,$FF,$F0,$3C,$FC,$FF,$FF,$FF,$FF,$FC,$F0 ; $5862
        db      $EA,$A3,$FF,$FD,$FF,$C0,$FF,$FC,$FF,$FF,$FF,$FF,$FF,$F0,$EA,$A3 ; $5872
        db      $FF,$F7,$FC,$03,$FF,$FC,$FF,$FF,$FF,$FF,$FF,$F0,$EA,$8F,$FF,$FF ; $5882
        db      $00,$3D,$FF,$FC,$FF,$FF,$FF,$FF,$FF,$C0,$3F,$FF,$FF,$F0,$0F,$FF ; $5892
        db      $FF,$FC,$3F,$FF,$FF,$FF,$FF,$CC,$00,$00,$00,$03,$FF,$FF,$7F,$FC ; $58A2
        db      $3F,$FF,$FF,$FF,$FF,$C3,$03,$FF,$FF,$FF,$FF,$7F,$7F,$FF,$0F,$FF ; $58B2
        db      $FF,$FF,$FF,$0C,$A8,$0F,$FF,$FF,$FF,$FF,$7C,$FF,$C3,$FF,$FF,$FF ; $58C2
        db      $FF,$0F,$AA,$8F,$FF,$FF,$FF,$FF,$70,$FF,$00,$FF,$FF,$FF,$F0,$0E ; $58D2
        db      $AA,$8F,$D7,$FF,$FF,$FD,$C0,$FC,$33,$FF,$FF,$FF,$0D,$0F,$AA,$8F ; $58E2
        db      $D7,$FF,$FF,$FD,$00,$FF,$FF,$FF,$FF,$C3,$07,$43,$E8,$3F,$F7,$FF ; $58F2
        db      $FF,$F0,$00,$FF,$FF,$FF,$C3,$1D,$FC,$00,$0F,$FF,$F7,$FF,$F0,$03 ; $5902
        db      $00,$FF,$CF,$FF,$FF,$FD,$3C,$FF,$F0,$00,$00,$00,$00,$FF,$00,$FF ; $5912
        db      $F3,$FF,$FF,$FF,$F3,$00,$0F,$FF,$FF,$FF,$FF,$FF,$00,$F0,$F3,$FF ; $5922
        db      $FF,$FF,$C3,$AA,$A3,$FF,$FF,$FF,$FF,$FF,$00,$FF,$C3,$FF,$FF,$FF ; $5932
        db      $F3,$AA,$A8,$FF,$FF,$FF,$F7,$FC,$00,$FF,$F3,$FF,$FF,$FF,$F3,$AA ; $5942
        db      $A8,$FF,$FF,$FF,$F7,$FC,$00,$FF,$F3,$FF,$FF,$FF,$F3,$AA,$83,$FD ; $5952
        db      $7F,$FF,$F7,$F0,$00,$FF,$F3,$FF,$FF,$FF,$F0,$FF,$FF,$FD,$FF,$FF ; $5962
        db      $F3,$C0,$00,$3F,$F3,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$00,$00,$00 ; $5972
        db      $00,$0F,$FC,$FF,$FF,$FF,$FF,$C3,$FF,$FF,$FF,$FF,$FF,$00,$00,$0F ; $5982
        db      $FC,$3F,$FF,$FF,$FF,$CC,$03,$F5,$CF,$FF,$DF,$C0,$00,$0F,$FF,$3F ; $5992
        db      $FF,$FF,$FF,$0E,$A8,$FD,$FF,$FF,$DF,$C0,$00,$03,$F0,$0F,$FF,$FF ; $59A2
        db      $FF,$CE,$A8,$F7,$FF,$FF,$7F,$00,$00,$00,$FD,$C3,$FF,$FF,$FF,$CE ; $59B2
        db      $A3,$F7,$7F,$FF,$5C,$00,$00,$00,$FD,$F0,$FF,$FF,$FF,$F3,$FF,$FF ; $59C2
        db      $7F,$FF,$C0,$00,$00,$00,$3F,$C0,$3F,$FF,$FF,$FC,$00,$00,$00,$00 ; $59D2
        db      $00,$00,$00,$00,$00,$00,$03,$FF,$FF,$FF,$CF,$FF,$03,$00,$00,$00 ; $59E2
        db      $00,$00,$00,$00,$00,$3F,$FF,$FF,$C3,$FF,$CC,$00,$00,$00,$00,$2E ; $59F2
        db      $00,$2E,$00,$31,$00,$31,$00,$34,$00,$34,$00,$31,$00,$31,$00,$01 ; $5A02
        db      $5A,$01,$5A,$01,$5A,$01,$5A,$01,$5A,$01,$5A,$01,$5A,$01,$5A,$01 ; $5A12
        db      $5A,$01,$5A,$01,$5A,$01,$5A,$04,$0F,$FF,$11,$5A,$19,$5A,$21,$5A ; $5A22
        db      $30,$02,$0F,$FF,$11,$5A,$19,$5A,$21,$5A,$27,$02,$0F,$FF,$11,$5A ; $5A32
        db      $19,$5A,$21,$5A,$20                                             ; $5A42 preserved bytes

PPQ6_TERSE_5A47:
        rst     $08                                                             ; $5A47 colon entry
        dw      XT_0                                                            ; $5A48 execution token
        dw      XT_LIT                                                          ; $5A4A execution token
        dw      $FD3D                                                           ; $5A4C inline word
        dw      $2BEF                                                           ; $5A4E execution token
        dw      XT_LITbyte                                                      ; $5A50 execution token
        db      $30                                                             ; $5A52 inline byte
        dw      $2AF2                                                           ; $5A53 execution token
        dw      XT_LITbyte                                                      ; $5A55 execution token
        db      $4E                                                             ; $5A57 inline byte
        dw      XT_LIT                                                          ; $5A58 execution token
        dw      $009F                                                           ; $5A5A inline word
        dw      XT_LITbyte                                                      ; $5A5C execution token
        db      $4E                                                             ; $5A5E inline byte
        dw      $2B71                                                           ; $5A5F execution token
        dw      XT_LITbyte                                                      ; $5A61 execution token
        db      $0F                                                             ; $5A63 inline byte
        dw      XT_LIT                                                          ; $5A64 execution token
        dw      $00AA                                                           ; $5A66 inline word
        dw      $2B2E                                                           ; $5A68 execution token
        dw      XT_LIT                                                          ; $5A6A execution token
        dw      $0088                                                           ; $5A6C inline word
        dw      $2B35                                                           ; $5A6E execution token
        dw      XT_LITbyte                                                      ; $5A70 execution token
        db      $40                                                             ; $5A72 inline byte
        dw      $2BA8                                                           ; $5A73 execution token
        dw      XT_LITbyte                                                      ; $5A75 execution token
        db      $00                                                             ; $5A77 inline byte
        dw      $2B35                                                           ; $5A78 execution token
        dw      $2B8C                                                           ; $5A7A execution token
        dw      XT_RETURN                                                       ; $5A7C execution token

PPQ6_TERSE_5A7E:
        rst     $08                                                             ; $5A7E colon entry
        dw      XT_0                                                            ; $5A7F execution token
        dw      XT_LIT                                                          ; $5A81 execution token
        dw      $FD6D                                                           ; $5A83 inline word
        dw      $2BEF                                                           ; $5A85 execution token
        dw      XT_LITbyte                                                      ; $5A87 execution token
        db      $30                                                             ; $5A89 inline byte
        dw      $2AF2                                                           ; $5A8A execution token
        dw      XT_LIT                                                          ; $5A8C execution token
        dw      QUESTION_BANK_BASE                                              ; $5A8E inline word
        dw      XT_LITbyte                                                      ; $5A90 execution token
        db      $40                                                             ; $5A92 inline byte
        dw      XT_LITbyte                                                      ; $5A93 execution token
        db      $20                                                             ; $5A95 inline byte
        dw      $2B71                                                           ; $5A96 execution token
        dw      XT_LITbyte                                                      ; $5A98 execution token
        db      $0F                                                             ; $5A9A inline byte
        dw      XT_LIT                                                          ; $5A9B execution token
        dw      $00AA                                                           ; $5A9D inline word
        dw      $2B2E                                                           ; $5A9F execution token
        dw      XT_LIT                                                          ; $5AA1 execution token
        dw      $0088                                                           ; $5AA3 inline word
        dw      $2B35                                                           ; $5AA5 execution token
        dw      XT_LITbyte                                                      ; $5AA7 execution token
        db      $40                                                             ; $5AA9 inline byte
        dw      $2BA8                                                           ; $5AAA execution token
        dw      XT_LITbyte                                                      ; $5AAC execution token
        db      $00                                                             ; $5AAE inline byte
        dw      $2B35                                                           ; $5AAF execution token
        dw      $2B8C                                                           ; $5AB1 execution token
        dw      XT_RETURN                                                       ; $5AB3 execution token

PPQ6_TERSE_5AB5:
        rst     $08                                                             ; $5AB5 colon entry
        dw      PPQ6_TERSE_5A7E                                                 ; $5AB6 execution token
        dw      PPQ6_TERSE_5A47                                                 ; $5AB8 execution token
        dw      XT_RETURN                                                       ; $5ABA execution token

        db      $00,$00,$90,$9C,$FF,$00                                         ; $5ABC preserved bytes
        db      $00,$00,$00,$00,$00,$00,$90,$9C,$FF,$D8,$FF,$00,$00,$00,$00,$00 ; $5AC2
        db      $90,$9C,$FF,$B0,$FF,$00,$00,$00,$BC,$5A,$C6,$5A,$D0,$5A,$0D,$00 ; $5AD2
        db      $00,$0F,$0F,$0D,$0D,$06,$06,$07,$02,$02,$0E,$08,$05,$09,$04,$03 ; $5AE2
        db      $09,$03,$00,$0F,$0A,$07,$0D,$05,$01,$07,$03,$00,$0F,$0E,$07,$0E ; $5AF2
        db      $09,$01,$E0,$5A,$E9,$5A,$F2,$5A,$FB,$5A,$02,$00,$89,$40,$28,$FD ; $5B02
        db      $4C,$40,$6E,$F5,$4F,$00,$00,$0F,$5B,$02,$00,$81,$28,$FD,$4C,$64 ; $5B12
        db      $8B,$56,$00,$1E,$5B,$83,$FF,$C1,$FF,$00,$00,$3F,$00,$7D,$00,$29 ; $5B22
        db      $73,$74,$75,$64,$79,$20,$74,$68,$65,$73,$65,$20,$61,$6E,$64,$20 ; $5B32
        db      $72,$65,$6D,$65,$6D,$62,$65,$72,$20,$74,$68,$65,$69,$72,$20,$70 ; $5B42
        db      $6C,$61,$63,$65,$6D,$65,$6E,$74,$20,$1B,$77,$68,$69,$63,$68,$20 ; $5B52
        db      $68,$61,$6E,$64,$73,$20,$77,$65,$72,$65,$20,$6C,$65,$66,$74,$20 ; $5B62
        db      $68,$61,$6E,$64,$73,$1C,$77,$68,$69,$63,$68,$20,$68,$61,$6E,$64 ; $5B72
        db      $73,$20,$77,$65,$72,$65,$20,$72,$69,$67,$68,$74,$20,$68,$61,$6E ; $5B82
        db      $64,$73,$0D,$6E,$6F,$6E,$65,$20,$6F,$66,$20,$74,$68,$65,$6D,$20 ; $5B92
        db      $04,$61,$6E,$64,$20,$02,$2C,$20,$04,$61,$6C,$6C,$20,$01,$20,$02 ; $5BA2
        db      $31,$20,$02,$32,$20,$02,$33,$20,$02,$34,$20,$02,$35,$20,$B1,$5B ; $5BB2
        db      $B4,$5B,$B7,$5B,$BA,$5B,$BD,$5B,$FD,$4C,$FD,$4C,$FD,$4C,$FD,$4C ; $5BC2
        db      $FD,$4C,$87,$53,$87,$53,$FD,$4C,$87,$53,$87,$53,$FD,$4C,$FD,$4C ; $5BD2
        db      $87,$53,$FD,$4C,$FD,$4C,$87,$53,$FD,$4C,$87,$53,$FD,$4C,$87,$53 ; $5BE2
        db      $FD,$4C,$87,$53,$FD,$4C,$87,$53,$FD,$4C,$CA,$5B,$CA,$5B,$D4,$5B ; $5BF2
        db      $D4,$5B,$DE,$5B,$DE,$5B,$E8,$5B,$F2,$5B,$CA,$5B,$CA,$5B,$D4,$5B ; $5C02
        db      $D4,$5B,$DE,$5B,$DE,$5B,$E8,$5B,$F2,$5B,$AA,$5B,$B1,$5B,$B7,$5B ; $5C12
        db      $B1,$5B,$B1,$5B,$B4,$5B,$B1,$5B,$B1,$5B,$B1,$5B,$BA,$5B,$B1,$5B ; $5C22
        db      $B4,$5B,$B4,$5B,$B1,$5B,$BD,$5B,$B1,$5B,$AF,$5B,$A2,$5B,$A7,$5B ; $5C32
        db      $A2,$5B,$A2,$5B,$AF,$5B,$A7,$5B,$A7,$5B,$A7,$5B,$AF,$5B,$A7,$5B ; $5C42
        db      $A7,$5B,$A7,$5B,$A2,$5B,$AF,$5B,$A7,$5B,$AF,$5B,$B7,$5B,$BA,$5B ; $5C52
        db      $BD,$5B,$BD,$5B,$AF,$5B,$B7,$5B,$B4,$5B,$BA,$5B,$AF,$5B,$B7,$5B ; $5C62
        db      $B7,$5B,$B7,$5B,$B4,$5B,$AF,$5B,$B7,$5B,$AF,$5B,$AF,$5B,$A2,$5B ; $5C72
        db      $AF,$5B,$AF,$5B,$AF,$5B,$A7,$5B,$A2,$5B,$A2,$5B,$AF,$5B,$A7,$5B ; $5C82
        db      $A2,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$BD,$5B ; $5C92
        db      $AF,$5B,$AF,$5B,$AF,$5B,$BA,$5B,$BD,$5B,$BD,$5B,$AF,$5B,$BA,$5B ; $5CA2
        db      $BA,$5B,$BA,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5CB2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B ; $5CC2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5CD2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B ; $5CE2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$94,$5B,$B4,$5B,$B1,$5B ; $5CF2
        db      $B4,$5B,$B4,$5B,$B1,$5B,$B4,$5B,$B7,$5B,$B4,$5B,$B1,$5B,$B4,$5B ; $5D02
        db      $B1,$5B,$B1,$5B,$B7,$5B,$B1,$5B,$B4,$5B,$AF,$5B,$A7,$5B,$A7,$5B ; $5D12
        db      $A7,$5B,$A7,$5B,$A7,$5B,$AF,$5B,$A2,$5B,$A2,$5B,$A7,$5B,$AF,$5B ; $5D22
        db      $A2,$5B,$A2,$5B,$A7,$5B,$A7,$5B,$A2,$5B,$AF,$5B,$BA,$5B,$B4,$5B ; $5D32
        db      $B7,$5B,$B7,$5B,$B7,$5B,$AF,$5B,$BA,$5B,$B7,$5B,$B4,$5B,$AF,$5B ; $5D42
        db      $BD,$5B,$BD,$5B,$BA,$5B,$B4,$5B,$BA,$5B,$AF,$5B,$A2,$5B,$AF,$5B ; $5D52
        db      $A2,$5B,$A2,$5B,$A7,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A7,$5B,$AF,$5B ; $5D62
        db      $AF,$5B,$AF,$5B,$A2,$5B,$A7,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B ; $5D72
        db      $BA,$5B,$BA,$5B,$BA,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$B7,$5B,$AF,$5B ; $5D82
        db      $AF,$5B,$AF,$5B,$BD,$5B,$B7,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5D92
        db      $AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B ; $5DA2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5DB2
        db      $AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B ; $5DC2
        db      $AF,$5B,$AF,$5B,$AF,$5B,$BA,$5B,$AF,$5B,$B1,$5B,$B1,$5B,$BA,$5B ; $5DD2
        db      $BA,$5B,$B1,$5B,$B1,$5B,$B4,$5B,$B4,$5B,$B1,$5B,$B1,$5B,$B4,$5B ; $5DE2
        db      $B7,$5B,$B4,$5B,$B1,$5B,$94,$5B,$B1,$5B,$AF,$5B,$A2,$5B,$A2,$5B ; $5DF2
        db      $A2,$5B,$A7,$5B,$A7,$5B,$A2,$5B,$A2,$5B,$A7,$5B,$A2,$5B,$A7,$5B ; $5E02
        db      $A2,$5B,$A7,$5B,$A7,$5B,$AF,$5B,$A7,$5B,$AF,$5B,$B4,$5B,$BD,$5B ; $5E12
        db      $BD,$5B,$B7,$5B,$BA,$5B,$BA,$5B,$BD,$5B,$B4,$5B,$BA,$5B,$B7,$5B ; $5E22
        db      $BD,$5B,$B7,$5B,$B4,$5B,$AF,$5B,$B7,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5E32
        db      $AF,$5B,$A2,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$A7,$5B ; $5E42
        db      $AF,$5B,$A7,$5B,$A7,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5E52
        db      $AF,$5B,$BD,$5B,$BD,$5B,$AF,$5B,$AF,$5B,$B7,$5B,$AF,$5B,$BA,$5B ; $5E62
        db      $AF,$5B,$BA,$5B,$BA,$5B,$AF,$5B,$BA,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5E72
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B ; $5E82
        db      $AF,$5B,$A2,$5B,$A2,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B ; $5E92
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B ; $5EA2
        db      $AF,$5B,$BD,$5B,$BD,$5B,$AF,$5B,$AF,$5B,$B4,$5B,$BA,$5B,$B7,$5B ; $5EB2
        db      $B1,$5B,$B4,$5B,$B4,$5B,$B7,$5B,$B1,$5B,$B7,$5B,$B4,$5B,$B4,$5B ; $5EC2
        db      $B1,$5B,$B1,$5B,$B4,$5B,$AA,$5B,$B4,$5B,$A7,$5B,$A2,$5B,$AF,$5B ; $5ED2
        db      $A2,$5B,$A2,$5B,$A2,$5B,$A7,$5B,$A2,$5B,$A7,$5B,$A7,$5B,$A2,$5B ; $5EE2
        db      $A2,$5B,$A2,$5B,$A2,$5B,$AF,$5B,$A7,$5B,$B7,$5B,$BD,$5B,$AF,$5B ; $5EF2
        db      $B4,$5B,$BA,$5B,$B7,$5B,$BA,$5B,$BD,$5B,$BA,$5B,$B7,$5B,$BD,$5B ; $5F02
        db      $BA,$5B,$B4,$5B,$BA,$5B,$AF,$5B,$BA,$5B,$A7,$5B,$AF,$5B,$AF,$5B ; $5F12
        db      $AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B,$A2,$5B,$A7,$5B,$AF,$5B ; $5F22
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$BA,$5B,$AF,$5B,$AF,$5B ; $5F32
        db      $AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B,$BD,$5B,$BA,$5B,$AF,$5B ; $5F42
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$A2,$5B,$AF,$5B,$AF,$5B ; $5F52
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$A2,$5B,$AF,$5B ; $5F62
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B,$AF,$5B ; $5F72
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$BD,$5B,$AF,$5B ; $5F82
        db      $AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$AF,$5B,$5B,$5B,$77,$5B,$1C,$5C ; $5F92
        db      $FC,$5C,$3C,$5C,$1C,$5D,$5C,$5C,$3C,$5D,$7C,$5C,$5C,$5D,$9C,$5C ; $5FA2
        db      $7C,$5D,$BC,$5C,$9C,$5D,$DC,$5C,$BC,$5D,$DC,$5D,$DC,$5D,$FC,$5D ; $5FB2
        db      $FC,$5D,$1C,$5E,$1C,$5E,$3C,$5E,$3C,$5E,$5C,$5E,$5C,$5E,$7C,$5E ; $5FC2
        db      $7C,$5E,$9C,$5E,$9C,$5E,$BC,$5E,$BC,$5E,$DC,$5E,$DC,$5E,$FC,$5E ; $5FD2
        db      $FC,$5E,$1C,$5F,$1C,$5F,$3C,$5F,$3C,$5F,$5C,$5F,$5C,$5F,$7C,$5F ; $5FE2
        db      $7C,$5F,$00,$C0,$C0,$C0,$C0,$00,$40,$00,$80,$80,$00,$00,$00,$40 ; $5FF2
        db      $40,$80,$00,$80,$C0,$80,$00,$40,$C0,$40,$00,$80,$00,$C0,$80,$80 ; $6002
        db      $40,$80,$40,$C0,$40,$00,$40,$40,$00,$C0,$F4,$5F,$F9,$5F,$FE,$5F ; $6012
        db      $03,$60,$08,$60,$0D,$60,$12,$60,$17,$60,$17,$60,$12,$60,$0D,$60 ; $6022
        db      $08,$60,$03,$60,$FE,$5F,$F9,$5F,$F4,$5F,$CF,$12,$01,$02,$7D,$1E ; $6032
        db      $83,$20,$93,$2C,$FD,$00,$CF,$A8,$1E,$09,$01,$83,$FF,$09,$01,$E7 ; $6042
        db      $FF,$54,$1D,$12,$01,$05,$2A,$01,$6F,$02,$F7,$2C,$25,$01,$FC,$5B ; $6052
        db      $4C,$01,$B8,$02,$A6,$01,$5A,$01,$4C,$01,$B4,$1C,$F7,$2C,$25,$01 ; $6062
        db      $1C,$60,$4C,$01,$B8,$02,$5A,$01,$53,$01,$03,$1F,$B8,$02,$25,$01 ; $6072
        db      $27,$5B,$4C,$01,$24,$1D,$A8,$1E,$0C,$1E,$8A,$02,$2A,$01,$03,$1F ; $6082
        db      $09,$01,$83,$FF,$09,$01,$B0,$FF,$54,$1D,$12,$01,$05,$2A,$01,$6F ; $6092
        db      $02,$B8,$02,$25,$01,$C0,$5B,$4C,$01,$8E,$1E,$B8,$02,$25,$01,$27 ; $60A2
        db      $5B,$4C,$01,$24,$1D,$A8,$1E,$3C,$60,$8A,$02,$37,$23,$FD,$00,$CF ; $60B2
        db      $93,$2C,$09,$01,$6E,$00,$09,$01,$C4,$FF,$54,$1D,$09,$01,$8B,$56 ; $60C2
        db      $B4,$1C,$09,$01,$E8,$03,$6B,$1D,$12,$01,$04,$09,$01,$EA,$F6,$32 ; $60D2
        db      $05,$12,$01,$02,$40,$1F,$09,$01,$E8,$03,$6B,$1D,$2A,$01,$71,$1C ; $60E2
        db      $51,$1C,$E9,$19,$09,$01,$18,$FC,$6B,$1D,$09,$01,$E7,$FF,$71,$1C ; $60F2
        db      $51,$1C,$E9,$19,$09,$01,$EA,$F6,$36,$01,$44,$05,$53,$01,$DE,$01 ; $6102
        db      $EA,$03,$E8,$60,$37,$23,$FD,$00                                 ; $6112 preserved bytes

HAND_PLACEMENT_MEMORY_SETUP:
        rst     $08                                                             ; $611A colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $611B execution token
        dw      XT_LITbyte                                                      ; $611D execution token
        db      $02                                                             ; $611F inline byte
        dw      XT_RANDOM_BELOW                                                 ; $6120 execution token
        dw      XT_LIT                                                          ; $6122 execution token
        dw      $F2FC                                                           ; $6124 inline word
        dw      XT_SBbang                                                       ; $6126 execution token
        dw      XT_LITbyte                                                      ; $6128 execution token
        db      $04                                                             ; $612A inline byte
        dw      XT_RANDOM_BELOW                                                 ; $612B execution token
        dw      XT_LIT                                                          ; $612D execution token
        dw      $F2FB                                                           ; $612F inline word
        dw      XT_SBbang                                                       ; $6131 execution token
        dw      XT_LIT                                                          ; $6133 execution token
        dw      $FF83                                                           ; $6135 inline word
        dw      XT_LITbyte                                                      ; $6137 execution token
        db      $14                                                             ; $6139 inline byte
        dw      XT_LIT                                                          ; $613A execution token
        dw      $5B31                                                           ; $613C inline word
        dw      XT_LIT                                                          ; $613E execution token
        dw      $5ADA                                                           ; $6140 inline word
        dw      XT_LIT                                                          ; $6142 execution token
        dw      $F2FB                                                           ; $6144 inline word
        dw      XT_Bat                                                          ; $6146 execution token
        dw      XT_ARRAY                                                        ; $6148 execution token
        dw      $5B04                                                           ; $614A inline word
        dw      XT_at                                                           ; $614C execution token
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $614E execution token
        dw      XT_LIT                                                          ; $6150 execution token
        dw      $6048                                                           ; $6152 inline word
        dw      $2CDD                                                           ; $6154 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6156 execution token
        dw      XT_LIT                                                          ; $6158 execution token
        dw      $5A29                                                           ; $615A inline word
        dw      XT_DUP                                                          ; $615C execution token
        dw      $3D67                                                           ; $615E execution token
        dw      $3DE7                                                           ; $6160 execution token
        dw      $1F21                                                           ; $6162 execution token
        dw      XT_LIT                                                          ; $6164 execution token
        dw      $0118                                                           ; $6166 inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6168 execution token
        dw      $1A2C                                                           ; $616A execution token
        dw      XT_LIT                                                          ; $616C execution token
        dw      $6048                                                           ; $616E inline word
        dw      $2CDD                                                           ; $6170 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6172 execution token
        dw      CFG0_XT_REAPPLY_CACHED_OBJECT_SETUP                             ; $6174 execution token
        dw      XT_LIT                                                          ; $6176 execution token
        dw      $FF9E                                                           ; $6178 inline word
        dw      XT_LITbyte                                                      ; $617A execution token
        db      $16                                                             ; $617C inline byte
        dw      XT_LIT                                                          ; $617D execution token
        dw      $F2FC                                                           ; $617F inline word
        dw      XT_Bat                                                          ; $6181 execution token
        dw      XT_ARRAY                                                        ; $6183 execution token
        dw      CFG1_CLEAR_TWO_PLAYER_TIME_INDEX_XT                             ; $6185 inline word
        dw      XT_at                                                           ; $6187 execution token
        dw      CFG0_XT_CACHE_AND_APPLY_OBJECT_SETUP                            ; $6189 execution token
        dw      XT_LITbyte                                                      ; $618B execution token
        db      $03                                                             ; $618D inline byte
        dw      XT_0                                                            ; $618E execution token
        dw      XT_DO                                                           ; $6190 execution token
        dw      XT_I                                                            ; $6192 execution token
        dw      XT_ARRAY                                                        ; $6194 execution token
        dw      QUESTION_SLOT_TASK_TABLE_ADDR                                   ; $6196 inline word
        dw      XT_at                                                           ; $6198 execution token
        dw      $1608                                                           ; $619A execution token
        dw      XT_LOOP                                                         ; $619C execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $619E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $61A0 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $61A2 execution token
        dw      XT_RETURN                                                       ; $61A4 execution token

        db      $A0,$5F,$A4,$5F,$A8,$5F,$AC,$5F,$B0,$5F,$B4,$5F                 ; $61A6 preserved bytes
        db      $B8,$5F                                                         ; $61B2 preserved bytes

PPQ6_TERSE_61B4:
        rst     $08                                                             ; $61B4 colon entry
        dw      XT_at                                                           ; $61B5 execution token
        dw      XT_LIT                                                          ; $61B7 execution token
        dw      $F2FC                                                           ; $61B9 inline word
        dw      XT_Bat                                                          ; $61BB execution token
        dw      XT_2splat                                                       ; $61BD execution token
        dw      XT_plus                                                         ; $61BF execution token
        dw      XT_at                                                           ; $61C1 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $61C3 execution token
        dw      XT_2splat                                                       ; $61C5 execution token
        dw      XT_plus                                                         ; $61C7 execution token
        dw      XT_at                                                           ; $61C9 execution token
        dw      XT_RETURN                                                       ; $61CB execution token

HAND_PLACEMENT_MEMORY_CORRECT:
        rst     $08                                                             ; $61CD colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $61CE execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $61D0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $61D2 execution token
        dw      XT_LIT                                                          ; $61D4 execution token
        dw      $FFE2                                                           ; $61D6 inline word
        dw      XT_LITbyte                                                      ; $61D8 execution token
        db      $0C                                                             ; $61DA inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $61DB execution token
        dw      XT_LITbyte                                                      ; $61DD execution token
        db      $02                                                             ; $61DF inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $61E0 execution token
        dw      XT_LITbyte                                                      ; $61E2 execution token
        db      $07                                                             ; $61E4 inline byte
        dw      XT_0                                                            ; $61E5 execution token
        dw      XT_DO                                                           ; $61E7 execution token
        dw      XT_I                                                            ; $61E9 execution token
        dw      XT_ARRAY                                                        ; $61EB execution token
        dw      $61A6                                                           ; $61ED inline word
        dw      PPQ6_TERSE_61B4                                                 ; $61EF execution token
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $61F1 execution token
        dw      $207E                                                           ; $61F3 execution token
        dw      XT_LOOP                                                         ; $61F5 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $61F7 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $61F9 execution token
        dw      XT_RESET_OBJECT_DRAW_STATE                                      ; $61FB execution token
        dw      XT_LIT                                                          ; $61FD execution token
        dw      $F6E7                                                           ; $61FF inline word
        dw      XT_BONE                                                         ; $6201 execution token
        dw      XT_LIT                                                          ; $6203 execution token
        dw      $5A33                                                           ; $6205 inline word
        dw      XT_DUP                                                          ; $6207 execution token
        dw      $3D67                                                           ; $6209 execution token
        dw      $3DE7                                                           ; $620B execution token
        dw      XT_LITbyte                                                      ; $620D execution token
        db      $28                                                             ; $620F inline byte
        dw      XT_LIT                                                          ; $6210 execution token
        dw      $FFE7                                                           ; $6212 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $6214 execution token
        dw      XT_LIT                                                          ; $6216 execution token
        dw      $5B0C                                                           ; $6218 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $621A execution token
        dw      XT_LIT                                                          ; $621C execution token
        dw      $008C                                                           ; $621E inline word
        dw      XT_SET_TASK_VECTOR_0D                                           ; $6220 execution token
        dw      $19E9                                                           ; $6222 execution token
        dw      XT_MARK_CURRENT_OBJECT_FOR_UPDATE                               ; $6224 execution token
        dw      $1EF6                                                           ; $6226 execution token
        dw      XT_LIT                                                          ; $6228 execution token
        dw      $5A3D                                                           ; $622A inline word
        dw      XT_DUP                                                          ; $622C execution token
        dw      $3D67                                                           ; $622E execution token
        dw      $3DE7                                                           ; $6230 execution token
        dw      XT_LIT                                                          ; $6232 execution token
        dw      $60C1                                                           ; $6234 inline word
        dw      $2CDD                                                           ; $6236 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6238 execution token
        dw      XT_LIT                                                          ; $623A execution token
        dw      $F6DD                                                           ; $623C inline word
        dw      $1C1D                                                           ; $623E execution token
        dw      $1A2C                                                           ; $6240 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6242 execution token
        dw      XT_RETURN                                                       ; $6244 execution token

        db      $BC,$5F,$C0,$5F,$C4,$5F,$C8,$5F,$CC,$5F,$D0,$5F                 ; $6246 preserved bytes
        db      $D4,$5F                                                         ; $6252 preserved bytes

HAND_PLACEMENT_MEMORY_WRONG_1:
        rst     $08                                                             ; $6254 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $6255 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $6257 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6259 execution token
        dw      XT_LIT                                                          ; $625B execution token
        dw      $FFE2                                                           ; $625D inline word
        dw      XT_LITbyte                                                      ; $625F execution token
        db      $0C                                                             ; $6261 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $6262 execution token
        dw      XT_LITbyte                                                      ; $6264 execution token
        db      $02                                                             ; $6266 inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $6267 execution token
        dw      XT_LITbyte                                                      ; $6269 execution token
        db      $07                                                             ; $626B inline byte
        dw      XT_0                                                            ; $626C execution token
        dw      XT_DO                                                           ; $626E execution token
        dw      XT_I                                                            ; $6270 execution token
        dw      XT_ARRAY                                                        ; $6272 execution token
        dw      $6246                                                           ; $6274 inline word
        dw      PPQ6_TERSE_61B4                                                 ; $6276 execution token
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $6278 execution token
        dw      $207E                                                           ; $627A execution token
        dw      XT_LOOP                                                         ; $627C execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $627E execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $6280 execution token
        dw      XT_LIT                                                          ; $6282 execution token
        dw      $F6E7                                                           ; $6284 inline word
        dw      XT_BONE                                                         ; $6286 execution token
        dw      $1EE9                                                           ; $6288 execution token
        dw      PPQ6_TERSE_5AB5                                                 ; $628A execution token
        dw      XT_LITbyte                                                      ; $628C execution token
        db      $02                                                             ; $628E inline byte
        dw      XT_SET_TASK_BYTE_0C                                             ; $628F execution token
        dw      XT_LIT                                                          ; $6291 execution token
        dw      $60C1                                                           ; $6293 inline word
        dw      $2CDD                                                           ; $6295 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $6297 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $6299 execution token
        dw      XT_RETURN                                                       ; $629B execution token

        db      $D8,$5F,$DC,$5F,$E0                                             ; $629D preserved bytes
        db      $5F,$E4,$5F,$E8,$5F,$EC,$5F,$F0,$5F                             ; $62A2 preserved bytes

HAND_PLACEMENT_MEMORY_WRONG_2:
        rst     $08                                                             ; $62AB colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $62AC execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $62AE execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $62B0 execution token
        dw      XT_LIT                                                          ; $62B2 execution token
        dw      $FFE2                                                           ; $62B4 inline word
        dw      XT_LITbyte                                                      ; $62B6 execution token
        db      $0C                                                             ; $62B8 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $62B9 execution token
        dw      XT_LITbyte                                                      ; $62BB execution token
        db      $02                                                             ; $62BD inline byte
        dw      XT_SET_CURRENT_OBJECT_BYTE_18                                   ; $62BE execution token
        dw      XT_LITbyte                                                      ; $62C0 execution token
        db      $07                                                             ; $62C2 inline byte
        dw      XT_0                                                            ; $62C3 execution token
        dw      XT_DO                                                           ; $62C5 execution token
        dw      XT_I                                                            ; $62C7 execution token
        dw      XT_ARRAY                                                        ; $62C9 execution token
        dw      $629D                                                           ; $62CB inline word
        dw      PPQ6_TERSE_61B4                                                 ; $62CD execution token
        dw      XT_SET_CURRENT_OBJECT_WORD_1D                                   ; $62CF execution token
        dw      $207E                                                           ; $62D1 execution token
        dw      XT_LOOP                                                         ; $62D3 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $62D5 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $62D7 execution token
        dw      XT_LIT                                                          ; $62D9 execution token
        dw      $F6E7                                                           ; $62DB inline word
        dw      XT_BONE                                                         ; $62DD execution token
        dw      $1EE9                                                           ; $62DF execution token
        dw      PPQ6_TERSE_5AB5                                                 ; $62E1 execution token
        dw      XT_LITbyte                                                      ; $62E3 execution token
        db      $02                                                             ; $62E5 inline byte
        dw      XT_SET_TASK_BYTE_0C                                             ; $62E6 execution token
        dw      XT_LIT                                                          ; $62E8 execution token
        dw      $60C1                                                           ; $62EA inline word
        dw      $2CDD                                                           ; $62EC execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $62EE execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $62F0 execution token
        dw      XT_RETURN                                                       ; $62F2 execution token

HAND_PLACEMENT_MEMORY_ACTIONS:
        db      $04                                                             ; $62F4 action count
        dw      HAND_PLACEMENT_MEMORY_SETUP                                     ; $62F5 setup
        dw      HAND_PLACEMENT_MEMORY_CORRECT                                   ; $62F7 correct
        dw      HAND_PLACEMENT_MEMORY_WRONG_1                                   ; $62F9 wrong 1
        dw      HAND_PLACEMENT_MEMORY_WRONG_2                                   ; $62FB wrong 2

; Rooted by tier slot 1.
QUESTION_INITIALIZER_62FD:
        rst     $08                                                          ; $62FD
        dw      XT_LITbyte                                                      ; $62FE
        db      $02                                                              ; $6300
        dw      XT_RANDOM_BELOW                                                 ; $6301
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6303
        dw      XT_LIT                                                          ; $6305
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $6307
        dw      XT_RETURN                                                       ; $6309

; Rooted by tier slot 2.
QUESTION_INITIALIZER_630B:
        rst     $08                                                          ; $630B
        dw      XT_LITbyte                                                      ; $630C
        db      $02                                                              ; $630E
        dw      XT_RANDOM_BELOW                                                 ; $630F
        dw      XT_LITbyte                                                      ; $6311
        db      $02                                                              ; $6313
        dw      XT_plus                                                         ; $6314
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6316
        dw      XT_LIT                                                          ; $6318
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $631A
        dw      XT_RETURN                                                       ; $631C

; Rooted by tier slot 3.
QUESTION_INITIALIZER_631E:
        rst     $08                                                          ; $631E
        dw      XT_LITbyte                                                      ; $631F
        db      $03                                                              ; $6321
        dw      XT_RANDOM_BELOW                                                 ; $6322
        dw      XT_LITbyte                                                      ; $6324
        db      $04                                                              ; $6326
        dw      XT_plus                                                         ; $6327
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6329
        dw      XT_LIT                                                          ; $632B
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $632D
        dw      XT_RETURN                                                       ; $632F

; Rooted by tier slot 4.
QUESTION_INITIALIZER_6331:
        rst     $08                                                          ; $6331
        dw      XT_LITbyte                                                      ; $6332
        db      $03                                                              ; $6334
        dw      XT_RANDOM_BELOW                                                 ; $6335
        dw      XT_LITbyte                                                      ; $6337
        db      $07                                                              ; $6339
        dw      XT_plus                                                         ; $633A
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $633C
        dw      XT_LIT                                                          ; $633E
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $6340
        dw      XT_RETURN                                                       ; $6342

; Rooted by tier slot 5.
QUESTION_INITIALIZER_6344:
        rst     $08                                                          ; $6344
        dw      XT_LITbyte                                                      ; $6345
        db      $03                                                              ; $6347
        dw      XT_RANDOM_BELOW                                                 ; $6348
        dw      XT_LITbyte                                                      ; $634A
        db      $0A                                                              ; $634C
        dw      XT_plus                                                         ; $634D
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $634F
        dw      XT_LIT                                                          ; $6351
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $6353
        dw      XT_RETURN                                                       ; $6355

; Rooted by tier slot 6.
QUESTION_INITIALIZER_6357:
        rst     $08                                                          ; $6357
        dw      XT_LITbyte                                                      ; $6358
        db      $03                                                              ; $635A
        dw      XT_RANDOM_BELOW                                                 ; $635B
        dw      XT_LITbyte                                                      ; $635D
        db      $0D                                                              ; $635F
        dw      XT_plus                                                         ; $6360
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6362
        dw      XT_LIT                                                          ; $6364
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $6366
        dw      XT_RETURN                                                       ; $6368

; Rooted by tier slot 7.
QUESTION_INITIALIZER_636A:
        rst     $08                                                          ; $636A
        dw      XT_LITbyte                                                      ; $636B
        db      $10                                                              ; $636D
        dw      XT_RANDOM_BELOW                                                 ; $636E
        dw      CFG0_XT_SET_QUESTION_VARIANT_BYTE                               ; $6370
        dw      XT_LIT                                                          ; $6372
        dw      PPQ6_HAND_PLACEMENT_MEMORY_ACTION_LIST                          ; $6374
        dw      XT_RETURN                                                       ; $6376
        db      $0C,$0C                                                         ; $6378
        db      $07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FA,$AB,$C0,$00,$00 ; $637A
        db      $00,$0F,$AA,$AA,$BC,$00,$00,$00,$3A,$AA,$AA,$AB,$00,$00,$00,$EA ; $638A
        db      $AA,$AA,$AA,$C0,$00,$03,$AA,$AA,$AA,$AA,$B0,$00,$0E,$AA,$AA,$AA ; $639A
        db      $AA,$AC,$00,$0E,$AA,$AA,$AA,$AA,$AC,$00,$3F,$FF,$FE,$95,$6A,$AB ; $63AA
        db      $00,$00,$00,$0E,$5F,$5A,$AB,$00,$FF,$FF,$CE,$7F,$DA,$AA,$C0,$EA ; $63BA
        db      $AA,$CE,$7F,$DA,$AA,$C0,$EA,$AA,$CE,$5F,$5A,$AA,$C0,$EA,$AA,$CE ; $63CA
        db      $95,$6A,$AA,$C0,$EA,$AA,$CF,$FF,$FF,$FF,$C0,$3A,$AA,$C0,$00,$00 ; $63DA
        db      $00,$00,$3A,$AA,$FF,$FF,$FF,$FF,$00,$0E,$AA,$A9,$56,$AA,$AC,$00 ; $63EA
        db      $0E,$AA,$A5,$F5,$AA,$AC,$00,$03,$AA,$A7,$FD,$AA,$B0,$00,$00,$EA ; $63FA
        db      $A7,$FD,$AA,$C0,$00,$00,$3A,$A5,$F5,$AB,$00,$00,$00,$0F,$A9,$56 ; $640A
        db      $BC,$00,$00,$00,$00,$FA,$AA,$C0,$00,$00,$00,$00,$0F,$FC,$00,$00 ; $641A
        db      $00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$FA,$AC ; $642A
        db      $C0,$00,$00,$00,$0F,$AA,$AC,$FC,$00,$00,$00,$3A,$AA,$AC,$EB,$00 ; $643A
        db      $00,$00,$EA,$AA,$AC,$EA,$C0,$00,$03,$AA,$AA,$AC,$EA,$B0,$00,$0E ; $644A
        db      $AA,$AA,$AC,$EA,$AC,$00,$0E,$AA,$AA,$AC,$EA,$AC,$00,$3A,$AA,$FF ; $645A
        db      $FC,$EA,$AB,$00,$3A,$AA,$C0,$00,$EA,$AB,$00,$E9,$56,$CF,$FF,$EA ; $646A
        db      $AA,$C0,$E5,$F5,$CE,$AA,$AA,$AA,$C0,$E7,$FD,$CE,$55,$AA,$AA,$C0 ; $647A
        db      $E7,$FD,$CD,$7D,$6A,$AA,$C0,$E5,$F5,$CD,$FF,$6A,$AA,$C0,$29,$56 ; $648A
        db      $CD,$FF,$6A,$AB,$00,$3A,$AA,$CD,$7D,$6A,$AB,$00,$0E,$AA,$CE,$55 ; $649A
        db      $AA,$AC,$00,$0E,$AA,$CE,$AA,$AA,$AC,$00,$03,$AA,$CE,$AA,$AA,$B0 ; $64AA
        db      $00,$00,$EA,$CE,$AA,$AA,$C0,$00,$00,$3A,$CE,$AA,$AB,$00,$00,$00 ; $64BA
        db      $0F,$CE,$AA,$BC,$00,$00,$00,$00,$CE,$AB,$C0,$00,$00,$00,$00,$0F ; $64CA
        db      $FC,$00,$00,$00,$0C,$0C,$07,$19,$00,$03,$FF,$FC,$F0,$00,$00,$00 ; $64DA
        db      $0E,$AA,$B3,$AC,$00,$00,$00,$3A,$AA,$CE,$AB,$00,$00,$00,$EA,$AB ; $64EA
        db      $3A,$AA,$C0,$00,$03,$AA,$AC,$EA,$AA,$B0,$00,$0E,$AA,$B3,$AA,$55 ; $64FA
        db      $AC,$00,$3A,$AA,$CE,$A9,$7D,$6B,$00,$EA,$AB,$3A,$A9,$FF,$6A,$C0 ; $650A
        db      $EA,$AC,$EA,$A9,$FF,$6A,$C0,$EA,$B3,$AA,$A9,$7D,$6A,$C0,$EA,$B3 ; $651A
        db      $AA,$AA,$55,$AA,$C0,$EA,$B3,$AA,$AA,$AA,$AA,$C0,$EA,$B3,$FF,$FF ; $652A
        db      $FF,$FF,$C0,$EA,$B0,$00,$00,$00,$00,$00,$EA,$B3,$FF,$FF,$FF,$FF ; $653A
        db      $C0,$EA,$B3,$AA,$AA,$AA,$AA,$C0,$EA,$B3,$A9,$56,$AA,$AA,$C0,$EA ; $654A
        db      $B3,$A5,$F5,$AA,$AA,$C0,$3A,$B3,$A7,$FD,$AA,$AB,$00,$0E,$B3,$A7 ; $655A
        db      $FD,$AA,$AC,$00,$03,$B3,$A5,$F5,$AA,$B0,$00,$00,$F3,$A9,$56,$AA ; $656A
        db      $C0,$00,$00,$33,$AA,$AA,$AB,$00,$00,$00,$03,$AA,$AA,$AC,$00,$00 ; $657A
        db      $00,$03,$FF,$FF,$F0,$00,$00,$0C,$0C,$07,$19,$00,$03,$FF,$FF,$F0 ; $658A
        db      $00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$3A,$AA,$AA,$AB,$00,$00 ; $659A
        db      $00,$EA,$AA,$AA,$AA,$C0,$00,$03,$AA,$AA,$AA,$AA,$B0,$00,$0F,$FF ; $65AA
        db      $FF,$FF,$AA,$AC,$00,$00,$00,$00,$00,$EA,$AB,$00,$FF,$FF,$FC,$FF ; $65BA
        db      $3A,$AA,$C0,$EA,$AA,$AC,$EA,$CE,$AA,$C0,$EA,$AA,$AC,$EA,$B3,$AA ; $65CA
        db      $C0,$EA,$55,$AC,$EA,$AC,$EA,$C0,$E9,$7D,$6C,$EA,$AB,$3A,$C0,$E9 ; $65DA
        db      $FF,$6C,$EA,$AA,$CE,$C0,$E9,$FF,$6C,$EA,$AA,$B3,$C0,$E9,$7D,$6C ; $65EA
        db      $EA,$AA,$AC,$C0,$EA,$55,$AC,$E9,$56,$AB,$00,$EA,$AA,$AC,$E5,$F5 ; $65FA
        db      $AA,$C0,$EA,$AA,$AC,$E7,$FD,$AA,$C0,$3A,$AA,$AC,$E7,$FD,$AB,$00 ; $660A
        db      $0E,$AA,$AC,$E5,$F5,$AC,$00,$03,$AA,$AC,$E9,$56,$B0,$00,$00,$EA ; $661A
        db      $AC,$EA,$AA,$C0,$00,$00,$3A,$AC,$EA,$AB,$00,$00,$00,$0E,$AC,$EA ; $662A
        db      $AC,$00,$00,$00,$03,$FC,$FF,$F0,$00,$00,$0C,$0C,$07,$19,$00,$03 ; $663A
        db      $FF,$FF,$F0,$00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$3A,$AA,$AA ; $664A
        db      $AB,$00,$00,$00,$EA,$AA,$AA,$AA,$C0,$00,$03,$AA,$AA,$AA,$AA,$B0 ; $665A
        db      $00,$0F,$AA,$AA,$AA,$AA,$AC,$00,$03,$EA,$AA,$EA,$AA,$AB,$00,$F0 ; $666A
        db      $FA,$AB,$FA,$AA,$AA,$C0,$FC,$3E,$AF,$3E,$AA,$AA,$C0,$EF,$0F,$BC ; $667A
        db      $0F,$AA,$AA,$C0,$EB,$C3,$F0,$C3,$EA,$AA,$C0,$EA,$F0,$C3,$F0,$FA ; $668A
        db      $AA,$C0,$EA,$BC,$0F,$BC,$3E,$AA,$C0,$EA,$AF,$3E,$AF,$0F,$AA,$C0 ; $669A
        db      $EA,$AB,$FA,$AB,$C3,$EA,$C0,$EA,$AA,$EA,$AA,$F0,$FA,$C0,$EA,$AA ; $66AA
        db      $A5,$5A,$BC,$3E,$C0,$EA,$AA,$97,$D6,$AF,$0F,$C0,$3A,$AA,$9F,$F6 ; $66BA
        db      $AB,$C3,$00,$0E,$AA,$9F,$F6,$AA,$F0,$00,$03,$AA,$97,$D6,$AA,$B0 ; $66CA
        db      $00,$00,$EA,$A5,$5A,$AA,$C0,$00,$00,$3A,$AA,$AA,$AB,$00,$00,$00 ; $66DA
        db      $0E,$AA,$AA,$AC,$00,$00,$00,$03,$FF,$FF,$F0,$00,$00,$0C,$0C,$07 ; $66EA
        db      $19,$00,$03,$FF,$FF,$F0,$00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00 ; $66FA
        db      $3A,$AA,$AA,$AB,$00,$00,$00,$EA,$AA,$AA,$AA,$C0,$00,$03,$95,$6A ; $670A
        db      $AA,$AA,$B0,$00,$0E,$5F,$5A,$AA,$AA,$AC,$00,$3A,$7F,$DA,$AA,$AA ; $671A
        db      $BC,$00,$EA,$7F,$DA,$EA,$AA,$F0,$C0,$EA,$5F,$5B,$FA,$AB,$C3,$C0 ; $672A
        db      $EA,$95,$6F,$3E,$AF,$0F,$C0,$EA,$AA,$BC,$0F,$BC,$3E,$C0,$EA,$AA ; $673A
        db      $F0,$C3,$F0,$FA,$C0,$EA,$AB,$C3,$F0,$C3,$EA,$C0,$EA,$AF,$0F,$BC ; $674A
        db      $0F,$AA,$C0,$EA,$BC,$3E,$AF,$3E,$AA,$C0,$EA,$F0,$FA,$AB,$FA,$AA ; $675A
        db      $C0,$EB,$C3,$EA,$AA,$EA,$AA,$C0,$EF,$0F,$AA,$AA,$AA,$AA,$C0,$3C ; $676A
        db      $3E,$AA,$AA,$AA,$AB,$00,$00,$FA,$AA,$AA,$AA,$AC,$00,$03,$EA,$AA ; $677A
        db      $AA,$AA,$B0,$00,$00,$EA,$AA,$AA,$AA,$C0,$00,$00,$3A,$AA,$AA,$AB ; $678A
        db      $00,$00,$00,$0E,$AA,$AA,$AC,$00,$00,$00,$03,$FF,$FF,$F0,$00,$00 ; $679A
        db      $0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00,$0D,$5C,$00 ; $67AA
        db      $00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00 ; $67BA
        db      $00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00,$00,$03 ; $67CA
        db      $AA,$AA,$B0,$00,$00,$00,$0F,$FF,$AF,$FC,$00,$00,$00,$00,$03,$AC ; $67DA
        db      $00,$00,$00,$00,$FF,$F3,$AC,$FF,$C0,$00,$FF,$EA,$B3,$AC,$EA,$FF ; $67EA
        db      $C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5,$EA,$B3,$AC,$EA,$D5,$C0,$D5 ; $67FA
        db      $EA,$B3,$AC,$EA,$D5,$C0,$FF,$EA,$B3,$FC,$EA,$FF,$C0,$00,$EA,$B0 ; $680A
        db      $00,$EA,$C0,$00,$00,$3A,$BF,$FF,$EB,$00,$00,$00,$0E,$AA,$AA,$AC ; $681A
        db      $00,$00,$00,$03,$AA,$AA,$B0,$00,$00,$00,$00,$EA,$AA,$C0,$00,$00 ; $682A
        db      $00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00 ; $683A
        db      $0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0F,$FC ; $684A
        db      $00,$00,$00,$0C,$0C,$07,$19,$00,$00,$0F,$FC,$00,$00,$00,$00,$00 ; $685A
        db      $0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C ; $686A
        db      $00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$EA,$AB,$00,$00 ; $687A
        db      $00,$00,$03,$AA,$AB,$30,$00,$00,$00,$0E,$AA,$AB,$3C,$00,$00,$00 ; $688A
        db      $3A,$AA,$AB,$3B,$00,$00,$00,$EA,$FF,$FF,$3A,$C0,$00,$FF,$EA,$C0 ; $689A
        db      $00,$3A,$FF,$C0,$D5,$EA,$CF,$FF,$FA,$D5,$C0,$D5,$EA,$CE,$AA,$AA ; $68AA
        db      $D5,$C0,$D5,$EA,$CE,$AA,$AA,$D5,$C0,$FF,$EA,$CF,$FF,$FA,$FF,$C0 ; $68BA
        db      $00,$EA,$C0,$00,$3A,$C0,$00,$00,$3A,$FF,$FF,$3B,$00,$00,$00,$0E ; $68CA
        db      $AA,$AB,$3C,$00,$00,$00,$03,$AA,$AB,$30,$00,$00,$00,$00,$EA,$AB ; $68DA
        db      $00,$00,$00,$00,$00,$3F,$FF,$00,$00,$00,$00,$00,$0D,$5C,$00,$00 ; $68EA
        db      $00,$00,$00,$0D,$5C,$00,$00,$00,$00,$00,$0D,$5C,$00,$00,$00,$00 ; $68FA
        db      $00,$0F,$FC,$00,$00,$00,$0C,$0C,$07,$19,$00,$00,$55,$54,$40,$00 ; $690A
        db      $00,$00,$01,$55,$54,$50,$00,$00,$00,$05,$FF,$D4,$54,$00,$00,$00 ; $691A
        db      $17,$AA,$D4,$55,$00,$00,$00,$5E,$AA,$D4,$5D,$40,$00,$01,$7A,$AA ; $692A
        db      $D4,$5F,$50,$00,$05,$EA,$AA,$D4,$5E,$D4,$00,$17,$AA,$AA,$D4,$5E ; $693A
        db      $B5,$00,$5E,$AB,$FF,$D4,$5E,$AD,$40,$5E,$AB,$55,$54,$5E,$AD,$40 ; $694A
        db      $5E,$AB,$55,$54,$5E,$AD,$40,$5E,$AB,$50,$00,$5E,$AD,$40,$5E,$AB ; $695A
        db      $51,$55,$5E,$AD,$40,$5E,$AB,$51,$55,$5E,$AD,$40,$5E,$AB,$51,$7F ; $696A
        db      $FE,$AD,$40,$5E,$AB,$51,$7A,$AA,$AD,$40,$5E,$AB,$51,$7A,$AA,$AD ; $697A
        db      $40,$17,$AB,$51,$7A,$AA,$B5,$00,$05,$EB,$51,$7A,$AA,$D4,$00,$01 ; $698A
        db      $7B,$51,$7A,$AB,$50,$00,$00,$5F,$51,$7A,$AD,$40,$00,$00,$17,$51 ; $699A
        db      $7A,$B5,$00,$00,$00,$05,$51,$7F,$D4,$00,$00,$00,$01,$51,$55,$50 ; $69AA
        db      $00,$00,$00,$00,$51,$55,$40,$00,$00,$0C,$0C,$07,$19,$00,$00,$55 ; $69BA
        db      $55,$40,$00,$00,$00,$01,$55,$55,$50,$00,$00,$00,$05,$FF,$FF,$D4 ; $69CA
        db      $00,$00,$00,$17,$AA,$AA,$B5,$00,$00,$00,$5E,$AA,$AA,$AD,$40,$00 ; $69DA
        db      $01,$7A,$AA,$AA,$AB,$50,$00,$05,$EA,$AA,$AA,$AA,$D4,$00,$17,$FF ; $69EA
        db      $FF,$FF,$EA,$B5,$00,$55,$55,$55,$55,$EA,$AD,$40,$55,$55,$55,$55 ; $69FA
        db      $EA,$AD,$40,$00,$00,$00,$05,$EA,$AD,$40,$55,$55,$55,$45,$EA,$AD ; $6A0A
        db      $40,$55,$55,$55,$45,$FF,$FD,$40,$5F,$FF,$FD,$45,$55,$55,$40,$5E ; $6A1A
        db      $AA,$AD,$45,$55,$55,$40,$5E,$AA,$AD,$40,$00,$00,$00,$5E,$AA,$AD ; $6A2A
        db      $55,$55,$55,$40,$17,$AA,$AD,$55,$55,$55,$00,$05,$EA,$AF,$FF,$FF ; $6A3A
        db      $D4,$00,$01,$7A,$AA,$AA,$AB,$50,$00,$00,$5E,$AA,$AA,$AD,$40,$00 ; $6A4A
        db      $00,$17,$AA,$AA,$B5,$00,$00,$00,$05,$FF,$FF,$D4,$00,$00,$00,$01 ; $6A5A
        db      $55,$55,$50,$00,$00,$00,$00,$55,$55,$40,$00,$00,$0E,$0E,$08,$1E ; $6A6A
        db      $55,$55,$55,$55,$55,$55,$55,$50,$40,$00,$00,$00,$00,$00,$00,$10 ; $6A7A
        db      $4F,$FF,$FF,$FF,$FF,$FF,$FF,$10,$4C,$00,$00,$00,$00,$00,$03,$10 ; $6A8A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6A9A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6AAA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6ABA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6ACA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6ADA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6AEA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6AFA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6B0A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6B1A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6B2A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10 ; $6B3A
        db      $4C,$00,$00,$00,$00,$00,$03,$10,$4F,$FF,$FF,$FF,$FF,$FF,$FF,$10 ; $6B4A
        db      $40,$00,$00,$00,$00,$00,$00,$10,$55,$55,$55,$55,$55,$55,$55,$50 ; $6B5A
        db      $0E,$0E,$08,$1D,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$10 ; $6B6A
        db      $40,$00,$00,$00,$00,$00,$00,$10,$40,$00,$00,$00,$00,$00,$00,$4F ; $6B7A
        db      $10,$00,$00,$00,$00,$00,$00,$4F,$10,$00,$00,$00,$00,$00,$01,$30 ; $6B8A
        db      $C4,$00,$00,$00,$00,$00,$01,$30,$C4,$00,$00,$00,$00,$00,$04,$CA ; $6B9A
        db      $31,$00,$00,$00,$00,$00,$04,$CA,$31,$00,$00,$00,$00,$00,$13,$2A ; $6BAA
        db      $8C,$40,$00,$00,$00,$00,$13,$2A,$8C,$40,$00,$00,$00,$00,$4C,$AA ; $6BBA
        db      $A3,$10,$00,$00,$00,$00,$4C,$AA,$A3,$10,$00,$00,$00,$01,$32,$AA ; $6BCA
        db      $A8,$C4,$00,$00,$00,$01,$32,$AA,$A8,$C4,$00,$00,$00,$04,$CA,$AA ; $6BDA
        db      $AA,$31,$00,$00,$00,$04,$CA,$AA,$AA,$31,$00,$00,$00,$13,$2A,$AA ; $6BEA
        db      $AA,$8C,$40,$00,$00,$13,$2A,$AA,$AA,$8C,$40,$00,$00,$4C,$AA,$AA ; $6BFA
        db      $AA,$A3,$10,$00,$00,$4C,$AA,$AA,$AA,$A3,$10,$00,$01,$32,$AA,$AA ; $6C0A
        db      $AA,$A8,$C4,$00,$01,$32,$AA,$AA,$AA,$A8,$C4,$00,$04,$CA,$AA,$AA ; $6C1A
        db      $AA,$AA,$31,$00,$04,$CA,$AA,$AA,$AA,$AA,$31,$00,$13,$00,$00,$00 ; $6C2A
        db      $00,$00,$0C,$40,$13,$FF,$FF,$FF,$FF,$FF,$FC,$40,$40,$00,$00,$00 ; $6C3A
        db      $00,$00,$00,$10,$55,$55,$55,$55,$55,$55,$55,$50,$0F,$0F,$08,$20 ; $6C4A
        db      $00,$00,$00,$01,$40,$00,$00,$00,$00,$00,$00,$04,$10,$00,$00,$00 ; $6C5A
        db      $00,$00,$00,$13,$C4,$00,$00,$00,$00,$00,$00,$4C,$31,$00,$00,$00 ; $6C6A
        db      $00,$00,$01,$32,$8C,$40,$00,$00,$00,$00,$04,$CA,$A3,$10,$00,$00 ; $6C7A
        db      $00,$00,$13,$2A,$A8,$C4,$00,$00,$00,$00,$4C,$AA,$AA,$31,$00,$00 ; $6C8A
        db      $00,$01,$32,$AA,$AA,$8C,$40,$00,$00,$04,$CA,$AA,$AA,$A3,$10,$00 ; $6C9A
        db      $00,$13,$2A,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$AA,$31,$00 ; $6CAA
        db      $01,$32,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA,$A3,$10 ; $6CBA
        db      $13,$2A,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$AA,$31 ; $6CCA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$AA,$31,$13,$2A,$AA,$AA,$AA,$AA,$A8,$C4 ; $6CDA
        db      $04,$CA,$AA,$AA,$AA,$AA,$A3,$10,$01,$32,$AA,$AA,$AA,$AA,$8C,$40 ; $6CEA
        db      $00,$4C,$AA,$AA,$AA,$AA,$31,$00,$00,$13,$2A,$AA,$AA,$A8,$C4,$00 ; $6CFA
        db      $00,$04,$CA,$AA,$AA,$A3,$10,$00,$00,$01,$32,$AA,$AA,$8C,$40,$00 ; $6D0A
        db      $00,$00,$4C,$AA,$AA,$31,$00,$00,$00,$00,$13,$2A,$A8,$C4,$00,$00 ; $6D1A
        db      $00,$00,$04,$CA,$A3,$10,$00,$00,$00,$00,$01,$32,$8C,$40,$00,$00 ; $6D2A
        db      $00,$00,$00,$4C,$31,$00,$00,$00,$00,$00,$00,$13,$C4,$00,$00,$00 ; $6D3A
        db      $00,$00,$00,$04,$10,$00,$00,$00,$00,$00,$00,$01,$40,$00,$00,$00 ; $6D4A
        db      $0F,$0F,$08,$1F,$00,$00,$00,$55,$54,$00,$00,$00,$00,$00,$05,$40 ; $6D5A
        db      $05,$40,$00,$00,$00,$00,$54,$3F,$F0,$54,$00,$00,$00,$01,$43,$C0 ; $6D6A
        db      $0F,$05,$00,$00,$00,$05,$3C,$2A,$A0,$F1,$40,$00,$00,$14,$C2,$AA ; $6D7A
        db      $AA,$0C,$50,$00,$00,$53,$2A,$AA,$AA,$A3,$14,$00,$01,$4C,$AA,$AA ; $6D8A
        db      $AA,$A8,$C5,$00,$05,$32,$AA,$AA,$AA,$AA,$31,$40,$04,$CA,$AA,$AA ; $6D9A
        db      $AA,$AA,$8C,$40,$14,$CA,$AA,$AA,$AA,$AA,$8C,$50,$13,$2A,$AA,$AA ; $6DAA
        db      $AA,$AA,$A3,$10,$53,$2A,$AA,$AA,$AA,$AA,$A3,$14,$4C,$AA,$AA,$AA ; $6DBA
        db      $AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA ; $6DCA
        db      $AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA ; $6DDA
        db      $AA,$AA,$A8,$C4,$53,$2A,$AA,$AA,$AA,$AA,$A3,$14,$13,$2A,$AA,$AA ; $6DEA
        db      $AA,$AA,$A3,$10,$14,$CA,$AA,$AA,$AA,$AA,$8C,$50,$04,$CA,$AA,$AA ; $6DFA
        db      $AA,$AA,$8C,$40,$05,$32,$AA,$AA,$AA,$AA,$31,$40,$01,$4C,$AA,$AA ; $6E0A
        db      $AA,$A8,$C5,$00,$00,$53,$2A,$AA,$AA,$A3,$14,$00,$00,$14,$C2,$AA ; $6E1A
        db      $AA,$0C,$50,$00,$00,$05,$3C,$2A,$A0,$F1,$40,$00,$00,$01,$43,$C0 ; $6E2A
        db      $0F,$05,$00,$00,$00,$00,$54,$3F,$F0,$54,$00,$00,$00,$00,$05,$40 ; $6E3A
        db      $05,$40,$00,$00,$00,$00,$00,$55,$54,$00,$00,$00,$0F,$0F,$08,$1F ; $6E4A
        db      $00,$00,$15,$55,$55,$50,$00,$00,$00,$00,$40,$00,$00,$04,$00,$00 ; $6E5A
        db      $00,$01,$3F,$FF,$FF,$F1,$00,$00,$00,$04,$C0,$00,$00,$0C,$40,$00 ; $6E6A
        db      $00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00 ; $6E7A
        db      $01,$32,$AA,$AA,$AA,$AA,$31,$00,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40 ; $6E8A
        db      $13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6E9A
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6EAA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6EBA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6ECA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6EDA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6EEA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $6EFA
        db      $13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40 ; $6F0A
        db      $01,$32,$AA,$AA,$AA,$AA,$31,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00 ; $6F1A
        db      $00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$04,$C0,$00,$00,$0C,$40,$00 ; $6F2A
        db      $00,$01,$3F,$FF,$FF,$F1,$00,$00,$00,$00,$40,$00,$00,$04,$00,$00 ; $6F3A
        db      $00,$00,$15,$55,$55,$50,$00,$00,$0E,$0E,$08,$1E,$00,$00,$00,$05 ; $6F4A
        db      $00,$00,$00,$00,$00,$00,$00,$50,$50,$00,$00,$00,$00,$00,$05,$0F ; $6F5A
        db      $05,$00,$00,$00,$00,$00,$50,$F0,$F0,$50,$00,$00,$00,$05,$0F,$0A ; $6F6A
        db      $0F,$05,$00,$00,$00,$50,$F0,$AA,$A0,$F0,$50,$00,$05,$0F,$0A,$AA ; $6F7A
        db      $AA,$0F,$05,$00,$10,$F0,$AA,$AA,$AA,$A0,$F0,$40,$4F,$0A,$AA,$AA ; $6F8A
        db      $AA,$AA,$0F,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6F9A
        db      $AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6FAA
        db      $AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6FBA
        db      $AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6FCA
        db      $AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6FDA
        db      $AA,$AA,$A3,$10,$4C,$AA,$AA,$AA,$AA,$AA,$A3,$10,$4C,$AA,$AA,$AA ; $6FEA
        db      $AA,$AA,$A3,$10,$4F,$0A,$AA,$AA,$AA,$AA,$0F,$10,$10,$F0,$AA,$AA ; $6FFA
        db      $AA,$A0,$F0,$40,$05,$0F,$0A,$AA,$AA,$0F,$05,$00,$00,$50,$F0,$AA ; $700A
        db      $A0,$F0,$50,$00,$00,$05,$0F,$0A,$0F,$05,$00,$00,$00,$00,$50,$F0 ; $701A
        db      $F0,$50,$00,$00,$00,$00,$05,$0F,$05,$00,$00,$00,$00,$00,$00,$50 ; $702A
        db      $50,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$0F,$0E,$08,$1E ; $703A
        db      $00,$00,$55,$55,$55,$54,$00,$00,$00,$01,$00,$00,$00,$01,$00,$00 ; $704A
        db      $00,$04,$FF,$FF,$FF,$FC,$40,$00,$00,$04,$C0,$00,$00,$0C,$40,$00 ; $705A
        db      $00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00 ; $706A
        db      $00,$4C,$AA,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00 ; $707A
        db      $01,$32,$AA,$AA,$AA,$AA,$31,$00,$01,$32,$AA,$AA,$AA,$AA,$31,$00 ; $708A
        db      $04,$CA,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40 ; $709A
        db      $13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10 ; $70AA
        db      $4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4,$4C,$AA,$AA,$AA,$AA,$AA,$A8,$C4 ; $70BA
        db      $13,$2A,$AA,$AA,$AA,$AA,$A3,$10,$13,$2A,$AA,$AA,$AA,$AA,$A3,$10 ; $70CA
        db      $04,$CA,$AA,$AA,$AA,$AA,$8C,$40,$04,$CA,$AA,$AA,$AA,$AA,$8C,$40 ; $70DA
        db      $01,$32,$AA,$AA,$AA,$AA,$31,$00,$01,$32,$AA,$AA,$AA,$AA,$31,$00 ; $70EA
        db      $00,$4C,$AA,$AA,$AA,$A8,$C4,$00,$00,$4C,$AA,$AA,$AA,$A8,$C4,$00 ; $70FA
        db      $00,$13,$2A,$AA,$AA,$A3,$10,$00,$00,$13,$2A,$AA,$AA,$A3,$10,$00 ; $710A
        db      $00,$04,$C0,$00,$00,$0C,$40,$00,$00,$04,$FF,$FF,$FF,$FC,$40,$00 ; $711A
        db      $00,$01,$00,$00,$00,$01,$00,$00,$00,$00,$55,$55,$55,$54,$00,$00 ; $712A
        db      $00,$00,$90,$BA,$FF,$00,$00,$D0,$08,$00,$00,$F5,$37,$00,$0F,$00 ; $713A
        db      $48,$08,$48,$02,$00,$00,$FE,$36,$00,$02,$00,$B4,$08,$70,$00,$00 ; $714A
        db      $00,$1D,$1D,$00,$E7,$FF,$AC,$06,$44,$FA,$00,$00,$40,$00,$00,$E4 ; $715A
        db      $FF,$00,$00,$1C,$F7,$00,$00,$5E,$ED,$FF,$EB,$FF,$F8,$F9,$58,$F9 ; $716A
        db      $00,$00,$7F,$DE,$FF,$FF,$FF,$E8,$F6,$CC,$FF,$00,$00,$9F,$E4,$FF ; $717A
        db      $1A,$00,$60,$F9,$58,$06,$00,$00,$C3,$03,$00,$24,$00,$B0,$00,$3C ; $718A
        db      $09,$00,$00,$00,$90,$BA,$FF,$DA,$FF,$80,$08,$00,$00,$ED,$37,$00 ; $719A
        db      $1B,$00,$AC,$07,$D8,$03,$00,$00,$F4,$2C,$00,$0D,$00,$4C,$08,$80 ; $71AA
        db      $02,$00,$00,$0F,$21,$00,$F3,$FF,$30,$08,$DC,$FC,$00,$00,$3B,$04 ; $71BA
        db      $00,$E2,$FF,$10,$01,$34,$F7,$00,$00,$61,$ED,$FF,$EE,$FF,$8C,$F9 ; $71CA
        db      $D4,$F9,$00,$00,$7F,$D7,$FF,$FF,$FF,$F8,$F6,$CC,$FF,$00,$00,$9E ; $71DA
        db      $E7,$FF,$17,$00,$44,$F9,$1C,$06,$00,$00,$CA,$0A,$00,$26,$00,$3C ; $71EA
        db      $02,$F0,$08,$00,$00,$00,$90,$BA,$FF,$B5,$FF,$80,$08,$00,$00,$01 ; $71FA
        db      $58,$00,$FF,$FF,$98,$08,$D0,$FF,$00,$00,$FA,$27,$00,$06,$00,$AC ; $720A
        db      $08,$4C,$01,$00,$00,$EE,$21,$00,$10,$00,$FC,$07,$C4,$03,$00,$00 ; $721A
        db      $C5,$05,$00,$28,$00,$14,$01,$E0,$08,$00,$00,$9F,$E5,$FF,$1A,$00 ; $722A
        db      $78,$F9,$40,$06,$00,$00,$7E,$D6,$FF,$FE,$FF,$DC,$F6,$8C,$FF,$00 ; $723A
        db      $00,$5F,$EA,$FF,$E9,$FF,$A4,$F9,$58,$F9,$00,$00,$3A,$05,$00,$E1 ; $724A
        db      $FF,$60,$01,$CC,$F6,$00,$3A,$71,$9C,$71,$FE,$71,$13,$73,$74,$75 ; $725A
        db      $64,$79,$20,$74,$68,$65,$73,$65,$20,$66,$69,$67,$75,$72,$65,$73 ; $726A
        db      $24,$77,$68,$69,$63,$68,$20,$6F,$62,$6A,$65,$63,$74,$20,$77,$61 ; $727A
        db      $73,$20,$6E,$6F,$74,$20,$69,$6E,$20,$74,$68,$65,$20,$73,$65,$72 ; $728A
        db      $69,$65,$73,$3F,$20,$1C,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74 ; $729A
        db      $68,$65,$20,$73,$61,$6D,$65,$20,$73,$65,$71,$75,$65,$6E,$63,$65 ; $72AA
        db      $3F,$20,$24,$77,$68,$69,$63,$68,$20,$64,$69,$64,$20,$6E,$6F,$74 ; $72BA
        db      $20,$62,$65,$6C,$6F,$6E,$67,$20,$69,$6E,$20,$74,$68,$65,$20,$73 ; $72CA
        db      $65,$72,$69,$65,$73,$3F,$20,$22,$68,$6F,$77,$20,$6D,$61,$6E,$79 ; $72DA
        db      $20,$20,$20,$20,$20,$20,$20,$20,$27,$73,$20,$64,$69,$64,$20,$79 ; $72EA
        db      $6F,$75,$20,$63,$6F,$75,$6E,$74,$3F,$20,$20,$68,$6F,$77,$20,$6D ; $72FA
        db      $61,$6E,$79,$20,$63,$69,$72,$63,$6C,$65,$73,$20,$64,$69,$64,$20 ; $730A
        db      $79,$6F,$75,$20,$63,$6F,$75,$6E,$74,$3F,$20,$20,$68,$6F,$77,$20 ; $731A
        db      $6D,$61,$6E,$79,$20,$73,$71,$75,$61,$72,$65,$73,$20,$64,$69,$64 ; $732A
        db      $20,$79,$6F,$75,$20,$63,$6F,$75,$6E,$74,$3F,$20,$22,$68,$6F,$77 ; $733A
        db      $20,$6D,$61,$6E,$79,$20,$74,$72,$69,$61,$6E,$67,$6C,$65,$73,$20 ; $734A
        db      $64,$69,$64,$20,$79,$6F,$75,$20,$63,$6F,$75,$6E,$74,$3F,$20,$04 ; $735A
        db      $04,$04,$04,$04,$05,$05,$05,$05,$05,$06,$06,$06,$06,$06,$06,$06 ; $736A
        db      $06,$06,$06,$06,$04,$04,$04,$04,$04,$05,$05,$05,$05,$05,$01,$01 ; $737A
        db      $01,$01,$01,$01,$01,$01,$01,$01,$01                             ; $738A preserved bytes

PPQ6_TERSE_7393:
        rst     $08                                                             ; $7393 colon entry
        dw      XT_0                                                            ; $7394 execution token
        dw      XT_DO                                                           ; $7396 execution token
        dw      XT_DUP                                                          ; $7398 execution token
        dw      XT_I                                                            ; $739A execution token
        dw      XT_2splat                                                       ; $739C execution token
        dw      XT_plus                                                         ; $739E execution token
        dw      XT_at                                                           ; $73A0 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $73A2 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $73A4 execution token
        dw      XT_GET_CURRENT_TASK                                             ; $73A6 execution token
        dw      XT_GET_CURRENT_OBJECT_VALUE_1                                   ; $73A8 execution token
        dw      XT_LITbyte                                                      ; $73AA execution token
        db      $28                                                             ; $73AC inline byte
        dw      XT_plus                                                         ; $73AD execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $73AF execution token
        dw      XT_LOOP                                                         ; $73B1 execution token
        dw      XT_DROP                                                         ; $73B3 execution token
        dw      XT_RETURN                                                       ; $73B5 execution token

        db      $8C,$2D,$F2                                                     ; $73B7 preserved bytes
        db      $44,$28,$45,$31,$45,$3A,$45,$16,$45,$E9,$44,$8C,$2D,$F2,$44,$28 ; $73BA
        db      $45,$31,$45,$3A,$45,$43,$45,$CE,$44,$F2,$44,$43,$45,$04,$45,$D7 ; $73CA
        db      $44,$04,$45,$8C,$2D,$31,$45                                     ; $73DA preserved bytes

PPQ6_TERSE_73E1:
        rst     $08                                                             ; $73E1 colon entry
        dw      XT_LIT                                                          ; $73E2 execution token
        dw      $F2F9                                                           ; $73E4 inline word
        dw      XT_at                                                           ; $73E6 execution token
        dw      XT_plus                                                         ; $73E8 execution token
        dw      XT_at                                                           ; $73EA execution token
        dw      XT_RETURN                                                       ; $73EC execution token

PPQ6_TERSE_73EE:
        rst     $08                                                             ; $73EE colon entry
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $73EF execution token
        dw      XT_2splat                                                       ; $73F1 execution token
        dw      XT_plus                                                         ; $73F3 execution token
        dw      XT_at                                                           ; $73F5 execution token
        dw      XT_RETURN                                                       ; $73F7 execution token

PPQ6_TERSE_73F9:
        rst     $08                                                             ; $73F9 colon entry
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $73FA execution token
        dw      XT_BARRAY                                                       ; $73FC execution token
        dw      $7369                                                           ; $73FE inline word
        dw      XT_Bat                                                          ; $7400 execution token
        dw      XT_DUP                                                          ; $7402 execution token
        dw      XT_LITbyte                                                      ; $7404 execution token
        db      $04                                                             ; $7406 inline byte
        dw      XT_gt                                                           ; $7407 execution token
        dw      XT_0BRANCH                                                      ; $7409 execution token
        dw      L7426                                                           ; $740B branch target
        dw      XT_LITbyte                                                      ; $740D execution token
        db      $05                                                             ; $740F inline byte
        dw      XT_gt                                                           ; $7410 execution token
        dw      XT_0BRANCH                                                      ; $7412 execution token
        dw      L741E                                                           ; $7414 branch target
        dw      XT_LIT                                                          ; $7416 execution token
        dw      $FF9C                                                           ; $7418 inline word
        dw      XT_BRANCH                                                       ; $741A execution token
        dw      L7422                                                           ; $741C branch target
L741E:
        dw      XT_LIT                                                          ; $741E execution token
        dw      $FFB0                                                           ; $7420 inline word
L7422:
        dw      XT_BRANCH                                                       ; $7422 execution token
        dw      L742C                                                           ; $7424 branch target
L7426:
        dw      XT_DROP                                                         ; $7426 execution token
        dw      XT_LIT                                                          ; $7428 execution token
        dw      $FFBA                                                           ; $742A inline word
L742C:
        dw      XT_0                                                            ; $742C execution token
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $742E execution token
        dw      XT_SET_OBJECT_MODE_2                                            ; $7430 execution token
        dw      XT_LITbyte                                                      ; $7432 execution token
        db      $04                                                             ; $7434 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $7435 execution token
        dw      PPQ6_TERSE_73EE                                                 ; $7437 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7439 execution token
        dw      XT_BARRAY                                                       ; $743B execution token
        dw      $7369                                                           ; $743D inline word
        dw      XT_Bat                                                          ; $743F execution token
        dw      PPQ6_TERSE_7393                                                 ; $7441 execution token
        dw      XT_RETURN                                                       ; $7443 execution token

FIGURE_SERIES_MEMORY_SETUP:
        rst     $08                                                             ; $7445 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $7446 execution token
        dw      XT_LIT                                                          ; $7448 execution token
        dw      $FFB5                                                           ; $744A inline word
        dw      XT_LIT                                                          ; $744C execution token
        dw      $FFD8                                                           ; $744E inline word
        dw      XT_LIT                                                          ; $7450 execution token
        dw      $7266                                                           ; $7452 inline word
        dw      XT_LIT                                                          ; $7454 execution token
        dw      $F2F9                                                           ; $7456 inline word
        dw      XT_at                                                           ; $7458 execution token
        dw      XT_at                                                           ; $745A execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $745C execution token
        dw      XT_ARRAY                                                        ; $745E execution token
        dw      $73B7                                                           ; $7460 inline word
        dw      XT_at                                                           ; $7462 execution token
        dw      CFG0_XT_CONFIGURE_QUESTION_SCENE                                ; $7464 execution token
        dw      PPQ6_TERSE_73F9                                                 ; $7466 execution token
        dw      XT_LITbyte                                                      ; $7468 execution token
        db      $14                                                             ; $746A inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $746B execution token
        dw      $1A2C                                                           ; $746D execution token
        dw      PPQ6_TERSE_4295                                                 ; $746F execution token
        dw      XT_LIT                                                          ; $7471 execution token
        dw      $F2FF                                                           ; $7473 inline word
        dw      $1C1D                                                           ; $7475 execution token
        dw      $1A2C                                                           ; $7477 execution token
        dw      XT_LITbyte                                                      ; $7479 execution token
        db      $1E                                                             ; $747B inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $747C execution token
        dw      $1A2C                                                           ; $747E execution token
        dw      $2D40                                                           ; $7480 execution token
        dw      XT_LIT                                                          ; $7482 execution token
        dw      $FFA6                                                           ; $7484 inline word
        dw      XT_LITbyte                                                      ; $7486 execution token
        db      $14                                                             ; $7488 inline byte
        dw      XT_LITbyte                                                      ; $7489 execution token
        db      $02                                                             ; $748B inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $748C execution token
        dw      PPQ6_TERSE_73EE                                                 ; $748E execution token
        dw      XT_DUP                                                          ; $7490 execution token
        dw      XT_LIT                                                          ; $7492 execution token
        dw      $72E1                                                           ; $7494 inline word
        dw      XT_equal                                                        ; $7496 execution token
        dw      XT_0BRANCH                                                      ; $7498 execution token
        dw      L74BB                                                           ; $749A branch target
        dw      XT_LIT                                                          ; $749C execution token
        dw      $FFF4                                                           ; $749E inline word
        dw      XT_LITbyte                                                      ; $74A0 execution token
        db      $15                                                             ; $74A2 inline byte
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $74A3 execution token
        dw      XT_LITbyte                                                      ; $74A5 execution token
        db      $0C                                                             ; $74A7 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $74A8 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $74AA execution token
        dw      XT_LITbyte                                                      ; $74AC execution token
        db      $0A                                                             ; $74AE inline byte
        dw      XT_minussign                                                    ; $74AF execution token
        dw      XT_2splat                                                       ; $74B1 execution token
        dw      XT_plus                                                         ; $74B3 execution token
        dw      XT_at                                                           ; $74B5 execution token
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $74B7 execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $74B9 execution token
L74BB:
        dw      CFG0_XT_CACHE_AND_APPLY_OBJECT_SETUP                            ; $74BB execution token
        dw      XT_LITbyte                                                      ; $74BD execution token
        db      $03                                                             ; $74BF inline byte
        dw      XT_0                                                            ; $74C0 execution token
        dw      XT_DO                                                           ; $74C2 execution token
        dw      XT_I                                                            ; $74C4 execution token
        dw      XT_ARRAY                                                        ; $74C6 execution token
        dw      QUESTION_SLOT_TASK_TABLE_ADDR                                   ; $74C8 inline word
        dw      XT_at                                                           ; $74CA execution token
        dw      $1608                                                           ; $74CC execution token
        dw      XT_LOOP                                                         ; $74CE execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $74D0 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $74D2 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $74D4 execution token
        dw      XT_RETURN                                                       ; $74D6 execution token

PPQ6_TERSE_74D8:
        rst     $08                                                             ; $74D8 colon entry
        dw      XT_LIT                                                          ; $74D9 execution token
        dw      QUESTION_VARIANT_ADDR                                           ; $74DB inline word
        dw      XT_Bat                                                          ; $74DD execution token
        dw      XT_DUP                                                          ; $74DF execution token
        dw      XT_2splat                                                       ; $74E1 execution token
        dw      XT_ROT                                                          ; $74E3 execution token
        dw      XT_plus                                                         ; $74E5 execution token
        dw      XT_at                                                           ; $74E7 execution token
        dw      XT_SWAP                                                         ; $74E9 execution token
        dw      XT_BARRAY                                                       ; $74EB execution token
        dw      $737E                                                           ; $74ED inline word
        dw      XT_Bat                                                          ; $74EF execution token
        dw      PPQ6_TERSE_7393                                                 ; $74F1 execution token
        dw      XT_RETURN                                                       ; $74F3 execution token

FIGURE_SERIES_MEMORY_CORRECT:
        rst     $08                                                             ; $74F5 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $74F6 execution token
        dw      CFG0_XT_PLACE_CORRECT_RANDOM_SLOT                               ; $74F8 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $74FA execution token
        dw      XT_LIT                                                          ; $74FC execution token
        dw      $FFD8                                                           ; $74FE inline word
        dw      XT_LITbyte                                                      ; $7500 execution token
        db      $05                                                             ; $7502 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $7503 execution token
        dw      XT_LITbyte                                                      ; $7505 execution token
        db      $06                                                             ; $7507 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $7508 execution token
        dw      PPQ6_TERSE_74D8                                                 ; $750A execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $750C execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $750E execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7510 execution token
        dw      XT_BARRAY                                                       ; $7512 execution token
        dw      $737E                                                           ; $7514 inline word
        dw      XT_Bat                                                          ; $7516 execution token
        dw      XT_1                                                            ; $7518 execution token
        dw      XT_equal                                                        ; $751A execution token
        dw      XT_0BRANCH                                                      ; $751C execution token
        dw      L7533                                                           ; $751E branch target
        dw      XT_LITbyte                                                      ; $7520 execution token
        db      $40                                                             ; $7522 inline byte
        dw      $1E5C                                                           ; $7523 execution token
        dw      XT_0                                                            ; $7525 execution token
        dw      XT_LIT                                                          ; $7527 execution token
        dw      $FFE2                                                           ; $7529 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_PAIR                                ; $752B execution token
        dw      XT_DRAW_CURRENT_OBJECT                                          ; $752D execution token
        dw      XT_BRANCH                                                       ; $752F execution token
        dw      L7559                                                           ; $7531 branch target
L7533:
        dw      XT_LITbyte                                                      ; $7533 execution token
        db      $04                                                             ; $7535 inline byte
        dw      XT_LIT                                                          ; $7536 execution token
        dw      $F6EB                                                           ; $7538 inline word
        dw      XT_SBbang                                                       ; $753A execution token
L753C:
        dw      XT_LIT                                                          ; $753C execution token
        dw      $FFBA                                                           ; $753E inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7540 execution token
        dw      XT_LITbyte                                                      ; $7542 execution token
        db      $06                                                             ; $7544 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $7545 execution token
        dw      PPQ6_TERSE_74D8                                                 ; $7547 execution token
        dw      XT_LIT                                                          ; $7549 execution token
        dw      $F6EB                                                           ; $754B inline word
        dw      XT_DUP                                                          ; $754D execution token
        dw      XT_1minusBbang                                                  ; $754F execution token
        dw      XT_Bat                                                          ; $7551 execution token
        dw      XT_zeroequal                                                    ; $7553 execution token
        dw      XT_0BRANCH                                                      ; $7555 execution token
        dw      L753C                                                           ; $7557 branch target
L7559:
        dw      XT_LITbyte                                                      ; $7559 execution token
        db      $3C                                                             ; $755B inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $755C execution token
        dw      $1A2C                                                           ; $755E execution token
        dw      XT_LIT                                                          ; $7560 execution token
        dw      $4601                                                           ; $7562 inline word
        dw      XT_START_COUNTED_ACTION_LIST                                    ; $7564 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7566 execution token
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $7568 execution token
        dw      XT_RETURN                                                       ; $756A execution token

FIGURE_SERIES_MEMORY_WRONG_1:
        rst     $08                                                             ; $756C colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $756D execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_SECOND_SLOT                            ; $756F execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7571 execution token
        dw      XT_LIT                                                          ; $7573 execution token
        dw      $FFD8                                                           ; $7575 inline word
        dw      XT_LITbyte                                                      ; $7577 execution token
        db      $05                                                             ; $7579 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $757A execution token
        dw      XT_LITbyte                                                      ; $757C execution token
        db      $08                                                             ; $757E inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $757F execution token
        dw      PPQ6_TERSE_74D8                                                 ; $7581 execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $7583 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $7585 execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $7587 execution token
        dw      XT_LITbyte                                                      ; $7589 execution token
        db      $09                                                             ; $758B inline byte
        dw      XT_gt                                                           ; $758C execution token
        dw      XT_0BRANCH                                                      ; $758E execution token
        dw      L75B4                                                           ; $7590 branch target
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7592 execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $7594 execution token
        dw      $1DE0                                                           ; $7596 execution token
        dw      PPQ6_TERSE_4CCE                                                 ; $7598 execution token
        dw      XT_LIT                                                          ; $759A execution token
        dw      $4BDA                                                           ; $759C inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $759E execution token
        dw      XT_LITbyte                                                      ; $75A0 execution token
        db      $35                                                             ; $75A2 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $75A3 execution token
        dw      $19E9                                                           ; $75A5 execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $75A7 execution token
        dw      XT_LITbyte                                                      ; $75A9 execution token
        db      $1E                                                             ; $75AB inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $75AC execution token
        dw      $1A2C                                                           ; $75AE execution token
        dw      XT_BRANCH                                                       ; $75B0 execution token
        dw      L75C1                                                           ; $75B2 branch target
L75B4:
        dw      XT_LIT                                                          ; $75B4 execution token
        dw      $FFBA                                                           ; $75B6 inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $75B8 execution token
        dw      XT_LITbyte                                                      ; $75BA execution token
        db      $08                                                             ; $75BC inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $75BD execution token
        dw      PPQ6_TERSE_74D8                                                 ; $75BF execution token
L75C1:
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $75C1 execution token
        dw      XT_RETURN                                                       ; $75C3 execution token

FIGURE_SERIES_MEMORY_WRONG_2:
        rst     $08                                                             ; $75C5 colon entry
        dw      XT_ENTER_ACTION_TASK                                            ; $75C6 execution token
        dw      CFG0_XT_PLACE_DISTRACTOR_REMAINING_SLOT                         ; $75C8 execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $75CA execution token
        dw      XT_LIT                                                          ; $75CC execution token
        dw      $FFD8                                                           ; $75CE inline word
        dw      XT_LITbyte                                                      ; $75D0 execution token
        db      $05                                                             ; $75D2 inline byte
        dw      CFG0_XT_UPDATE_OTHER_SLOT_OBJECTS                               ; $75D3 execution token
        dw      XT_LITbyte                                                      ; $75D5 execution token
        db      $0A                                                             ; $75D7 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $75D8 execution token
        dw      PPQ6_TERSE_74D8                                                 ; $75DA execution token
        dw      XT_WAIT_FOR_CHILD_ACTIONS                                       ; $75DC execution token
        dw      XT_YIELD_ACTION_TASK                                            ; $75DE execution token
        dw      XT_GET_QUESTION_VARIANT_BYTE                                    ; $75E0 execution token
        dw      XT_LITbyte                                                      ; $75E2 execution token
        db      $09                                                             ; $75E4 inline byte
        dw      XT_gt                                                           ; $75E5 execution token
        dw      XT_0BRANCH                                                      ; $75E7 execution token
        dw      L760D                                                           ; $75E9 branch target
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $75EB execution token
        dw      XT_SWAP_TASK_THREAD_IP                                          ; $75ED execution token
        dw      $1DE0                                                           ; $75EF execution token
        dw      PPQ6_TERSE_4CCE                                                 ; $75F1 execution token
        dw      XT_LIT                                                          ; $75F3 execution token
        dw      $4BDA                                                           ; $75F5 inline word
        dw      XT_APPLY_OBJECT_DESCRIPTOR                                      ; $75F7 execution token
        dw      XT_LITbyte                                                      ; $75F9 execution token
        db      $35                                                             ; $75FB inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $75FC execution token
        dw      $19E9                                                           ; $75FE execution token
        dw      XT_RENDER_CURRENT_OBJECT                                        ; $7600 execution token
        dw      XT_LITbyte                                                      ; $7602 execution token
        db      $1E                                                             ; $7604 inline byte
        dw      XT_SET_TASK_VECTOR_0D                                           ; $7605 execution token
        dw      $1A2C                                                           ; $7607 execution token
        dw      XT_BRANCH                                                       ; $7609 execution token
        dw      L761A                                                           ; $760B branch target
L760D:
        dw      XT_LIT                                                          ; $760D execution token
        dw      $FFBA                                                           ; $760F inline word
        dw      XT_SET_CURRENT_OBJECT_VALUE_1                                   ; $7611 execution token
        dw      XT_LITbyte                                                      ; $7613 execution token
        db      $0A                                                             ; $7615 inline byte
        dw      PPQ6_TERSE_73E1                                                 ; $7616 execution token
        dw      PPQ6_TERSE_74D8                                                 ; $7618 execution token
L761A:
        dw      CFG0_XT_COMPLETE_QUESTION_ACTION                                ; $761A execution token
        dw      XT_RETURN                                                       ; $761C execution token

FIGURE_SERIES_MEMORY_ACTIONS:
        db      $04                                                             ; $761E action count
        dw      FIGURE_SERIES_MEMORY_SETUP                                      ; $761F setup
        dw      FIGURE_SERIES_MEMORY_CORRECT                                    ; $7621 correct
        dw      FIGURE_SERIES_MEMORY_WRONG_1                                    ; $7623 wrong 1
        dw      FIGURE_SERIES_MEMORY_WRONG_2                                    ; $7625 wrong 2

        db      $DE,$64,$78                                                     ; $7627 preserved bytes
        db      $63,$2B,$64,$44,$66,$91,$65,$DE,$64,$2B,$64,$78,$63,$44,$66,$91 ; $762A
        db      $65,$78,$63,$91,$65,$78,$63,$2B,$64,$44,$66,$91,$65,$91,$65,$78 ; $763A
        db      $63,$44,$66,$78,$63,$DE,$64,$91,$65,$78,$63,$44,$66,$2B,$64,$DE ; $764A
        db      $64,$78,$63,$91,$65,$44,$66,$F7,$66,$78,$63,$F7,$66,$2B,$64,$91 ; $765A
        db      $65,$F7,$66,$44,$66,$78,$63,$2B,$64,$78,$63,$DE,$64,$44,$66,$91 ; $766A
        db      $65,$2B,$64,$44,$66,$78,$63,$44,$66,$2B,$64,$DE,$64,$F7,$66,$F7 ; $767A
        db      $66,$78,$63,$44,$66,$78,$63,$91,$65,$44,$66,$78,$63,$44,$66,$78 ; $768A
        db      $63,$DE,$64,$44,$66,$9C,$42,$3C,$43,$8E,$43,$2E,$44,$27,$76,$31 ; $769A
        db      $76,$5B,$76,$93,$76,$67,$76,$47,$76,$73,$76,$7D,$76,$51,$76,$47 ; $76AA
        db      $76,$5B,$76,$31,$76,$31,$76,$31,$76,$5B,$76,$7D,$76,$27,$76,$31 ; $76BA
        db      $76,$5B,$76,$93,$76,$67,$76,$47,$76,$73,$76,$7D,$76,$51,$76,$47 ; $76CA
        db      $76,$A3,$76,$A3,$76,$A1,$76,$89,$76,$67,$76,$3D,$76,$31,$76,$3D ; $76DA
        db      $76,$67,$76,$89,$76,$5B,$76,$51,$76,$5B,$76,$89,$76,$3D,$76,$51 ; $76EA
        db      $76,$A5,$76,$A5,$76,$A3,$76,$7D,$76,$3D,$76,$27,$76,$3D,$76,$47 ; $76FA
        db      $76,$73,$76,$7D,$76,$51,$76,$3D,$76,$51,$76,$93,$76,$27,$76,$31 ; $770A
        db      $76,$A1,$76,$A1,$76,$A5,$76,$51,$76,$73,$76,$67,$76,$9F,$72,$9F ; $771A
        db      $72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F ; $772A
        db      $72,$E1,$72,$E1,$72,$E1,$72,$7A,$72,$7A,$72,$7A,$72,$F7,$66,$78 ; $773A
        db      $63,$DE,$64,$60,$72,$27,$77,$A7,$76,$C7,$76,$E7,$76,$07,$77,$47 ; $774A
        db      $77                                                             ; $775A

; Rooted by tier slot 0.
QUESTION_INITIALIZER_775B:
        rst     $08                                                          ; $775B
        dw      XT_LIT                                                          ; $775C
        dw      $774D                                                           ; $775E
        dw      XT_LIT                                                          ; $7760
        dw      $F2F9                                                           ; $7762
        dw      XT_bang                                                         ; $7764
        dw      XT_LITbyte                                                      ; $7766
        db      $05                                                              ; $7768
        dw      XT_RANDOM_BELOW                                                 ; $7769
        dw      XT_LIT                                                          ; $776B
        dw      QUESTION_VARIANT_ADDR                                           ; $776D
        dw      XT_SBbang                                                       ; $776F
        dw      XT_LIT                                                          ; $7771
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7773
        dw      XT_RETURN                                                       ; $7775

; Rooted by tier slot 3.
QUESTION_INITIALIZER_7777:
        rst     $08                                                          ; $7777
        dw      XT_LIT                                                          ; $7778
        dw      $774D                                                           ; $777A
        dw      XT_LIT                                                          ; $777C
        dw      $F2F9                                                           ; $777E
        dw      XT_bang                                                         ; $7780
        dw      XT_LITbyte                                                      ; $7782
        db      $05                                                              ; $7784
        dw      XT_RANDOM_BELOW                                                 ; $7785
        dw      XT_LITbyte                                                      ; $7787
        db      $05                                                              ; $7789
        dw      XT_plus                                                         ; $778A
        dw      XT_LIT                                                          ; $778C
        dw      QUESTION_VARIANT_ADDR                                           ; $778E
        dw      XT_SBbang                                                       ; $7790
        dw      XT_LIT                                                          ; $7792
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7794
        dw      XT_RETURN                                                       ; $7796

; Rooted by tier slot 4.
QUESTION_INITIALIZER_7798:
        rst     $08                                                          ; $7798
        dw      XT_LIT                                                          ; $7799
        dw      $774D                                                           ; $779B
        dw      XT_LIT                                                          ; $779D
        dw      $F2F9                                                           ; $779F
        dw      XT_bang                                                         ; $77A1
        dw      XT_LITbyte                                                      ; $77A3
        db      $06                                                              ; $77A5
        dw      XT_RANDOM_BELOW                                                 ; $77A6
        dw      XT_LITbyte                                                      ; $77A8
        db      $0A                                                              ; $77AA
        dw      XT_plus                                                         ; $77AB
        dw      XT_LIT                                                          ; $77AD
        dw      QUESTION_VARIANT_ADDR                                           ; $77AF
        dw      XT_SBbang                                                       ; $77B1
        dw      XT_LIT                                                          ; $77B3
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $77B5
        dw      XT_RETURN                                                       ; $77B7
        db      $76,$6A,$6A,$6B,$5A,$6D,$56,$6E,$56,$6C,$52,$6F,$76,$6A,$6A     ; $77B9
        db      $6B,$56,$6E,$5A,$6D,$52,$6F,$56,$6C,$6A,$6B,$76,$6A,$52,$6F,$5A ; $77C8
        db      $6D,$56,$6E,$56,$6C,$5A,$6D,$56,$6E,$5A,$6D,$56,$6C,$5A,$6D,$46 ; $77D8
        db      $70,$56,$6E,$5A,$6D,$6A,$6B,$46,$70,$76,$6A,$5A,$6D,$46,$70,$56 ; $77E8
        db      $6E,$76,$6A,$6A,$6B,$5A,$6D,$56,$6C,$6A,$6B,$56,$6C,$5A,$6D,$56 ; $77F8
        db      $6E,$46,$70,$76,$6A,$6A,$6B,$56,$6C,$56,$6E,$5A,$6D,$52,$6F,$46 ; $7808
        db      $70,$52,$6F,$56,$6E,$76,$6A,$56,$6C,$5A,$6D,$6A,$6B,$52,$6F,$5A ; $7818
        db      $6D,$6A,$6B,$76,$6A,$56,$6E,$56,$6C,$56,$6C,$5A,$6D,$76,$6A,$6A ; $7828
        db      $6B,$56,$6C,$56,$6E,$76,$6A,$5A,$6D,$56,$6C,$6A,$6B,$56,$6E,$46 ; $7838
        db      $70,$56,$6C,$76,$6A,$56,$6C,$46,$70,$5A,$6D,$56,$6E,$46,$70,$56 ; $7848
        db      $6E,$76,$6A,$56,$6C,$56,$6E,$5A,$6D,$52,$6F,$5A,$6D,$76,$6A,$5A ; $7858
        db      $6D,$56,$6C,$52,$6F,$56,$6E,$76,$6A,$56,$6C,$76,$6A,$76,$6A,$56 ; $7868
        db      $6E,$56,$6C,$6A,$6B,$6A,$6B,$52,$6F,$46,$70,$6A,$6B,$B9,$77,$55 ; $7878
        db      $78,$01,$78,$19,$78,$31,$78,$C5,$77,$0D,$78,$F5,$77,$B9,$77,$F5 ; $7888
        db      $77,$61,$78,$B9,$77,$DD,$77,$E9,$77,$B9,$77,$DD,$77,$61,$78,$0D ; $7898
        db      $78,$6D,$78,$79,$78,$DD,$77,$B9,$77,$55,$78,$01,$78,$19,$78,$31 ; $78A8
        db      $78,$C5,$77,$0D,$78,$F5,$77,$B9,$77,$F5,$77,$01,$78,$F5,$77,$19 ; $78B8
        db      $78,$31,$78,$DD,$77,$A5,$76,$A3,$76,$9F,$76,$A5,$76,$A5,$76,$9F ; $78C8
        db      $76,$C5,$77,$E9,$77,$0D,$78,$25,$78,$01,$78,$B9,$77,$D1,$77,$19 ; $78D8
        db      $78,$C5,$77,$55,$78,$25,$78,$31,$78,$E9,$77,$D1,$77,$31,$78,$A3 ; $78E8
        db      $76,$A5,$76,$A1,$76,$A1,$76,$A3,$76,$A3,$76,$D1,$77,$F5,$77,$C5 ; $78F8
        db      $77,$31,$78,$D1,$77,$3D,$78,$01,$78,$E9,$77,$3D,$78,$61,$78,$49 ; $7908
        db      $78,$19,$78,$F5,$77,$B9,$77,$C5,$77,$A1,$76,$A1,$76,$A3,$76,$A3 ; $7918
        db      $76,$A1,$76,$A1,$76,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$9F ; $7928
        db      $72,$9F,$72,$9F,$72,$9F,$72,$9F,$72,$7A,$72,$7A,$72,$7A,$72,$7A ; $7938
        db      $72,$BC,$72,$04,$73,$04,$73,$25,$73,$25,$73,$46,$73,$46,$73,$60 ; $7948
        db      $72,$2D,$79,$85,$78,$AF,$78,$D9,$78,$03,$79                     ; $7958

; Rooted by tier slot 1.
QUESTION_INITIALIZER_7963:
        rst     $08                                                          ; $7963
        dw      XT_LIT                                                          ; $7964
        dw      $7957                                                           ; $7966
        dw      XT_LIT                                                          ; $7968
        dw      $F2F9                                                           ; $796A
        dw      XT_bang                                                         ; $796C
        dw      XT_LITbyte                                                      ; $796E
        db      $05                                                              ; $7970
        dw      XT_RANDOM_BELOW                                                 ; $7971
        dw      XT_LITbyte                                                      ; $7973
        db      $0A                                                              ; $7975
        dw      XT_plus                                                         ; $7976
        dw      XT_LIT                                                          ; $7978
        dw      QUESTION_VARIANT_ADDR                                           ; $797A
        dw      XT_SBbang                                                       ; $797C
        dw      XT_LIT                                                          ; $797E
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7980
        dw      XT_RETURN                                                       ; $7982

; Rooted by tier slot 3.
QUESTION_INITIALIZER_7984:
        rst     $08                                                          ; $7984
        dw      XT_LIT                                                          ; $7985
        dw      $7957                                                           ; $7987
        dw      XT_LIT                                                          ; $7989
        dw      $F2F9                                                           ; $798B
        dw      XT_bang                                                         ; $798D
        dw      XT_LITbyte                                                      ; $798F
        db      $05                                                              ; $7991
        dw      XT_RANDOM_BELOW                                                 ; $7992
        dw      XT_LIT                                                          ; $7994
        dw      QUESTION_VARIANT_ADDR                                           ; $7996
        dw      XT_SBbang                                                       ; $7998
        dw      XT_LIT                                                          ; $799A
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $799C
        dw      XT_RETURN                                                       ; $799E

; Rooted by tier slot 5.
QUESTION_INITIALIZER_79A0:
        rst     $08                                                          ; $79A0
        dw      XT_LIT                                                          ; $79A1
        dw      $7957                                                           ; $79A3
        dw      XT_LIT                                                          ; $79A5
        dw      $F2F9                                                           ; $79A7
        dw      XT_bang                                                         ; $79A9
        dw      XT_LITbyte                                                      ; $79AB
        db      $06                                                              ; $79AD
        dw      XT_RANDOM_BELOW                                                 ; $79AE
        dw      XT_LITbyte                                                      ; $79B0
        db      $0F                                                              ; $79B2
        dw      XT_plus                                                         ; $79B3
        dw      XT_LIT                                                          ; $79B5
        dw      QUESTION_VARIANT_ADDR                                           ; $79B7
        dw      XT_SBbang                                                       ; $79B9
        dw      XT_LIT                                                          ; $79BB
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $79BD
        dw      XT_RETURN                                                       ; $79BF

; Rooted by tier slot 6.
QUESTION_INITIALIZER_79C1:
        rst     $08                                                          ; $79C1
        dw      XT_LIT                                                          ; $79C2
        dw      $7957                                                           ; $79C4
        dw      XT_LIT                                                          ; $79C6
        dw      $F2F9                                                           ; $79C8
        dw      XT_bang                                                         ; $79CA
        dw      XT_LITbyte                                                      ; $79CC
        db      $05                                                              ; $79CE
        dw      XT_RANDOM_BELOW                                                 ; $79CF
        dw      XT_LITbyte                                                      ; $79D1
        db      $05                                                              ; $79D3
        dw      XT_plus                                                         ; $79D4
        dw      XT_LIT                                                          ; $79D6
        dw      QUESTION_VARIANT_ADDR                                           ; $79D8
        dw      XT_SBbang                                                       ; $79DA
        dw      XT_LIT                                                          ; $79DC
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $79DE
        dw      XT_RETURN                                                       ; $79E0
        db      $AA,$67,$78,$63,$2B,$64,$10,$69,$5D,$68,$AA,$67,$2B,$64,$78     ; $79E2
        db      $63,$10,$69,$5D,$68,$78,$63,$5D,$68,$78,$63,$2B,$64,$10,$69,$5D ; $79F1
        db      $68,$5D,$68,$78,$63,$10,$69,$78,$63,$AA,$67,$5D,$68,$78,$63,$10 ; $7A01
        db      $69,$2B,$64,$AA,$67,$78,$63,$5D,$68,$10,$69,$C3,$69,$78,$63,$C3 ; $7A11
        db      $69,$2B,$64,$5D,$68,$C3,$69,$10,$69,$78,$63,$2B,$64,$78,$63,$AA ; $7A21
        db      $67,$10,$69,$5D,$68,$2B,$64,$10,$69,$78,$63,$10,$69,$2B,$64,$AA ; $7A31
        db      $67,$C3,$69,$C3,$69,$78,$63,$10,$69,$78,$63,$5D,$68,$10,$69,$78 ; $7A41
        db      $63,$10,$69,$78,$63,$AA,$67,$10,$69,$E2,$79,$02,$7A,$16,$7A,$38 ; $7A51
        db      $7A,$0C,$7A,$EC,$79,$2E,$7A,$4E,$7A,$02,$7A,$22,$7A,$22,$7A,$EC ; $7A61
        db      $79,$EC,$79,$16,$7A,$22,$7A,$38,$7A,$E2,$79,$02,$7A,$16,$7A,$38 ; $7A71
        db      $7A,$0C,$7A,$EC,$79,$2E,$7A,$4E,$7A,$02,$7A,$22,$7A,$A1,$76,$A3 ; $7A81
        db      $76,$A1,$76,$22,$7A,$EC,$79,$F8,$79,$EC,$79,$0C,$7A,$22,$7A,$44 ; $7A91
        db      $7A,$F8,$79,$F8,$79,$16,$7A,$44,$7A,$0C,$7A,$16,$7A,$A3,$76,$A5 ; $7AA1
        db      $76,$A3,$76,$F8,$79,$F8,$79,$E2,$79,$F8,$79,$F8,$79,$2E,$7A,$4E ; $7AB1
        db      $7A,$E2,$79,$02,$7A,$0C,$7A,$38,$7A,$EC,$79,$0C,$7A,$A5,$76,$A1 ; $7AC1
        db      $76,$A5,$76,$2E,$7A,$38,$7A,$22,$7A,$78,$63,$78,$63,$AA,$67,$60 ; $7AD1
        db      $72,$27,$77,$5A,$7A,$7A,$7A,$9A,$7A,$BA,$7A,$DA,$7A             ; $7AE1

; Rooted by tier slot 1.
QUESTION_INITIALIZER_7AEE:
        rst     $08                                                          ; $7AEE
        dw      XT_LIT                                                          ; $7AEF
        dw      $7AE0                                                           ; $7AF1
        dw      XT_LIT                                                          ; $7AF3
        dw      $F2F9                                                           ; $7AF5
        dw      XT_bang                                                         ; $7AF7
        dw      XT_LITbyte                                                      ; $7AF9
        db      $05                                                              ; $7AFB
        dw      XT_RANDOM_BELOW                                                 ; $7AFC
        dw      XT_LIT                                                          ; $7AFE
        dw      QUESTION_VARIANT_ADDR                                           ; $7B00
        dw      XT_SBbang                                                       ; $7B02
        dw      XT_LIT                                                          ; $7B04
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7B06
        dw      XT_RETURN                                                       ; $7B08

; Rooted by tier slot 2.
QUESTION_INITIALIZER_7B0A:
        rst     $08                                                          ; $7B0A
        dw      XT_LIT                                                          ; $7B0B
        dw      $7AE0                                                           ; $7B0D
        dw      XT_LIT                                                          ; $7B0F
        dw      $F2F9                                                           ; $7B11
        dw      XT_bang                                                         ; $7B13
        dw      XT_LITbyte                                                      ; $7B15
        db      $05                                                              ; $7B17
        dw      XT_RANDOM_BELOW                                                 ; $7B18
        dw      XT_LITbyte                                                      ; $7B1A
        db      $05                                                              ; $7B1C
        dw      XT_plus                                                         ; $7B1D
        dw      XT_LIT                                                          ; $7B1F
        dw      QUESTION_VARIANT_ADDR                                           ; $7B21
        dw      XT_SBbang                                                       ; $7B23
        dw      XT_LIT                                                          ; $7B25
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7B27
        dw      XT_RETURN                                                       ; $7B29

; Rooted by tier slot 7.
QUESTION_INITIALIZER_7B2B:
        rst     $08                                                          ; $7B2B
        dw      XT_LIT                                                          ; $7B2C
        dw      $7AE0                                                           ; $7B2E
        dw      XT_LIT                                                          ; $7B30
        dw      $F2F9                                                           ; $7B32
        dw      XT_bang                                                         ; $7B34
        dw      XT_LITbyte                                                      ; $7B36
        db      $06                                                              ; $7B38
        dw      XT_RANDOM_BELOW                                                 ; $7B39
        dw      XT_LITbyte                                                      ; $7B3B
        db      $0A                                                              ; $7B3D
        dw      XT_plus                                                         ; $7B3E
        dw      XT_LIT                                                          ; $7B40
        dw      QUESTION_VARIANT_ADDR                                           ; $7B42
        dw      XT_SBbang                                                       ; $7B44
        dw      XT_LIT                                                          ; $7B46
        dw      PPQ6_FIGURE_SERIES_MEMORY_ACTION_LIST                           ; $7B48
        dw      XT_RETURN                                                       ; $7B4A

; Root tier slot 0.
QUESTION_BUCKET_7B4C:
        db      $01                  ; $7B4C initializer count
        dw      QUESTION_INITIALIZER_775B ; $7B4D entry 0

; Root tier slot 1.
QUESTION_BUCKET_7B4F:
        db      $03                  ; $7B4F initializer count
        dw      QUESTION_INITIALIZER_62FD ; $7B50 entry 0
        dw      QUESTION_INITIALIZER_7AEE ; $7B52 entry 1
        dw      QUESTION_INITIALIZER_7963 ; $7B54 entry 2

; Root tier slot 2.
QUESTION_BUCKET_7B56:
        db      $02                  ; $7B56 initializer count
        dw      QUESTION_INITIALIZER_630B ; $7B57 entry 0
        dw      QUESTION_INITIALIZER_7B0A ; $7B59 entry 1

; Root tier slot 3.
QUESTION_BUCKET_7B5B:
        db      $03                  ; $7B5B initializer count
        dw      QUESTION_INITIALIZER_631E ; $7B5C entry 0
        dw      QUESTION_INITIALIZER_7777 ; $7B5E entry 1
        dw      QUESTION_INITIALIZER_7984 ; $7B60 entry 2

; Root tier slot 4.
QUESTION_BUCKET_7B62:
        db      $02                  ; $7B62 initializer count
        dw      QUESTION_INITIALIZER_6331 ; $7B63 entry 0
        dw      QUESTION_INITIALIZER_7798 ; $7B65 entry 1

; Root tier slot 5.
QUESTION_BUCKET_7B67:
        db      $02                  ; $7B67 initializer count
        dw      QUESTION_INITIALIZER_6344 ; $7B68 entry 0
        dw      QUESTION_INITIALIZER_79A0 ; $7B6A entry 1

; Root tier slot 6.
QUESTION_BUCKET_7B6C:
        db      $02                  ; $7B6C initializer count
        dw      QUESTION_INITIALIZER_6357 ; $7B6D entry 0
        dw      QUESTION_INITIALIZER_79C1 ; $7B6F entry 1

; Root tier slot 7.
QUESTION_BUCKET_7B71:
        db      $02                  ; $7B71 initializer count
        dw      QUESTION_INITIALIZER_636A ; $7B72 entry 0
        dw      QUESTION_INITIALIZER_7B2B ; $7B74 entry 1

; Eight little-endian bucket pointers indexed by the fixed selector.
QUESTION_ROOT_DIRECTORY:
        dw      QUESTION_BUCKET_7B4C ; $7B76 tier 0
        dw      QUESTION_BUCKET_7B4F ; $7B78 tier 1
        dw      QUESTION_BUCKET_7B56 ; $7B7A tier 2
        dw      QUESTION_BUCKET_7B5B ; $7B7C tier 3
        dw      QUESTION_BUCKET_7B62 ; $7B7E tier 4
        dw      QUESTION_BUCKET_7B67 ; $7B80 tier 5
        dw      QUESTION_BUCKET_7B6C ; $7B82 tier 6
        dw      QUESTION_BUCKET_7B71 ; $7B84 tier 7
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$40,$01,$40,$00,$00,$00 ; $7B86
        db      $00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$50,$00,$00,$00,$00,$00 ; $7B96
        db      $00,$00,$00,$00,$00,$05,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00 ; $7BA6
        db      $00,$00,$00,$05,$00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $7BB6
        db      $00,$05,$00,$00,$55,$6A,$AA,$AA,$AA,$AA,$AA,$AA,$A8,$00,$00,$01 ; $7BC6
        db      $40,$01,$55,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$00,$00,$55,$55 ; $7BD6
        db      $56,$A8,$2A,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$00,$00,$15,$54,$01,$A8 ; $7BE6
        db      $28,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$6A,$AA,$AA ; $7BF6
        db      $AA,$AA,$AA,$AA,$A0,$00,$00,$15,$55,$55,$55,$54,$00,$00,$00,$00 ; $7C06
        db      $00,$00,$00,$00,$00,$54,$00,$00,$00,$54,$00,$00,$00,$00,$00,$00 ; $7C16
        db      $00,$00,$00,$50,$00,$00,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00 ; $7C26
        db      $00,$50,$00,$00,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14 ; $7C36
        db      $00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00 ; $7C46
        db      $01,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$55,$55,$55,$00 ; $7C56
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$55,$50,$00,$00,$00 ; $7C66
        db      $00,$00,$00,$00,$00,$00,$00,$00,$00,$90,$B0,$FF,$03,$00,$80,$03 ; $7C76
        db      $00,$00,$FE,$7D,$00,$06,$00,$78,$05,$40,$00,$0A,$00,$69,$D4,$FF ; $7C86
        db      $E4,$FF,$98,$F9,$F0,$FB,$00,$00,$12,$3B,$00,$E5,$FF,$38,$08,$20 ; $7C96
        db      $FC,$00,$00,$00,$90,$CE,$FF,$DB,$FF,$C0,$03,$00,$00,$F6,$54,$00 ; $7CA6
        db      $15,$00,$48,$05,$50,$01,$0A,$00,$67,$D9,$FF,$E5,$FF,$30,$FC,$50 ; $7CB6
        db      $FD,$00,$00,$03,$3F,$00,$FC,$FF,$70,$05,$9C,$FF,$00,$00,$00,$90 ; $7CC6
        db      $B0,$FF,$B3,$FF,$80,$03,$00,$00,$FF,$7E,$00,$01,$00,$78,$05,$20 ; $7CD6
        db      $00,$0A,$00,$96,$D4,$FF,$1B,$00,$84,$FB,$B0,$02,$00,$00,$FE,$38 ; $7CE6
        db      $00,$02,$00,$04,$06,$4C,$00,$00,$7D,$7C,$A8,$7C,$D3,$7C,$02,$00 ; $7CF6
        db      $81,$06,$A4,$79,$04,$6F,$7B,$00,$07,$7D,$0F,$07,$00,$08,$08,$08 ; $7D06
        db      $00,$00,$00,$1A,$77,$68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65 ; $7D16
        db      $20,$6D,$69,$72,$72,$6F,$72,$20,$69,$6D,$61,$67,$65,$3F,$15,$77 ; $7D26
        db      $68,$69,$63,$68,$20,$69,$73,$20,$74,$68,$65,$20,$73,$61,$6D,$65 ; $7D36
        db      $20,$61,$73,$3F,$19,$7D,$34,$7D,$19,$7D,$34,$7D,$00,$40,$40,$00 ; $7D46
        db      $CF,$99,$15,$09,$01,$B0,$FF,$12,$01,$17,$F7,$2C,$25,$01,$4A,$7D ; $7D56
        db      $4C,$01,$09,$01,$FE,$7C,$09,$01,$10,$7D,$37,$8C,$F7,$2C,$1A,$01 ; $7D66
        db      $52,$7D,$53,$01,$03,$1F,$A8,$1E,$12,$01,$5C,$09,$01,$F3,$FF,$54 ; $7D76
        db      $1D,$09,$01,$04,$7D,$B4,$1C,$12,$01,$02,$2F,$1F,$12,$01,$28,$DF ; $7D86
        db      $1B,$E9,$19,$02,$23,$F7,$15,$50,$8C,$FD,$00,$CF,$99,$15,$4F,$8B ; $7D96
        db      $09,$01,$C9,$FF,$12,$01,$05,$61,$8C,$F7,$2C,$12,$01,$02,$08,$02 ; $7DA6
        db      $EA,$03,$BC,$7D,$CF,$1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15 ; $7DB6
        db      $F3,$1D,$37,$23,$E0,$1D,$12,$01,$14,$DF,$1B,$2C,$1A,$09,$01,$04 ; $7DC6
        db      $7D,$B4,$1C,$12,$01,$28,$DF,$1B,$E9,$19,$12,$01,$0F,$DF,$1B,$2C ; $7DD6
        db      $1A,$50,$8C,$FD,$00,$CF,$99,$15,$7B,$8B,$09,$01,$C9,$FF,$12,$01 ; $7DE6
        db      $05,$61,$8C,$F7,$2C,$30,$01,$1C,$02,$EA,$03,$09,$7E,$E9,$1E,$E2 ; $7DF6
        db      $03,$0B,$7E,$C2,$1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15,$F3 ; $7E06
        db      $1D,$12,$01,$3C,$09,$01,$D8,$FF,$54,$1D,$0C,$1E,$50,$8C,$FD,$00 ; $7E16
        db      $CF,$99,$15,$12,$8C,$09,$01,$C9,$FF,$12,$01,$05,$61,$8C,$F7,$2C ; $7E26
        db      $12,$01,$02,$08,$02,$EA,$03,$45,$7E,$E9,$1E,$E2,$03,$47,$7E,$C2 ; $7E36
        db      $1E,$09,$01,$A4,$79,$F2,$2C,$02,$23,$F7,$15,$F3,$1D,$12,$01,$3C ; $7E46
        db      $09,$01,$D8,$FF,$54,$1D,$0C,$1E,$12,$01,$0F,$DF,$1B,$2C,$1A,$50 ; $7E56
        db      $8C,$FD,$00,$04,$56,$7D,$A1,$7D,$EB,$7D,$26,$7E,$CF,$12,$01,$04 ; $7E66
        db      $32,$1B,$2B,$8B,$09,$01,$69,$7E,$FD,$00,$02,$9E,$6E,$72,$7E,$02 ; $7E76
        db      $B7,$6E,$9D,$79,$03,$D5,$6E,$6A,$54,$72,$7E,$03,$F3,$6E,$7C,$54 ; $7E86
        db      $29,$68,$03,$11,$6F,$93,$54,$9D,$79,$02,$2F,$6F,$29,$68,$02,$4D ; $7E96
        db      $6F,$29,$68,$02,$6B,$6F,$29,$68,$80,$7E,$85,$7E,$8A,$7E,$91,$7E ; $7EA6
        db      $98,$7E,$9F,$7E,$A4,$7E,$A9,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EB6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EC6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7ED6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EE6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7EF6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F06
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F16
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F26
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F36
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F46
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F56
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F66
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F76
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F86
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7F96
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FA6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FB6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FC6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FD6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $7FE6
        db      $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF                         ; $7FF6
