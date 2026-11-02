# Stage 5 — 334 unique physical PPS8 TERSE execution cells

Configuration 1; byte-sourced from the original addressed `src/pps8.asm` region, before symbolic promotion. This table lists every **reachable token** from the nine Stage 5 shared entrypoints, deduplicated by physical address. Shared ownership does not imply multiple copies. Inline operands follow the physical byte order; an unnamed numeric execution token is not a guessed semantic label.

Use `node tools/analyze_shared_threads.js --token-map --check-sources` against the original ROM ZIP to regenerate an independently ROM-derived listing.

| Physical cell | Execution token | Inline operand | Reachable from |
| --- | --- | --- | --- |
| $BA32 | `XT_ENTER_ACTION_TASK` | — | $BA31 |
| $BA34 | `XT_LIT` | $FFFF | $BA31 |
| $BA38 | `XT_LIT` | $F71A | $BA31 |
| $BA3C | `XT_bang` | — | $BA31 |
| $BA3E | `XT_1` | — | $BA31 |
| $BA40 | `XT_LIT` | $F71C | $BA31 |
| $BA44 | `XT_bang` | — | $BA31 |
| $BA46 | `XT_SET_OBJECT_MODE_2` | — | $BA31 |
| $BA48 | `XT_LIT` | $0096 | $BA31 |
| $BA4C | `XT_LITbyte` | $005A | $BA31 |
| $BA4F | `XT_SET_CURRENT_OBJECT_VALUE_PAIR` | — | $BA31 |
| $BA51 | `XT_LIT` | $F6EB | $BA31 |
| $BA55 | `XT_BZERO` | — | $BA31 |
| $BA57 | `XT_LIT` | $0096 | $BA31 |
| $BA5B | `XT_LIT` | $F718 | $BA31 |
| $BA5F | `XT_bang` | — | $BA31 |
| $BA61 | `XT_0` | — | $BA31 |
| $BA63 | `XT_LIT` | $F716 | $BA31 |
| $BA67 | `XT_bang` | — | $BA31 |
| $BA69 | `XT_RESET_OBJECT_DRAW_STATE` | — | $BA31 |
| $BA6B | `XT_LITbyte` | $0006 | $BA31 |
| $BA6E | `$1E5C` | — | $BA31 |
| $BA70 | `XT_0` | — | $BA31 |
| $BA72 | `XT_LITbyte` | $005A | $BA31 |
| $BA75 | `$1C71` | — | $BA31 |
| $BA77 | `$1C5F` | — | $BA31 |
| $BA79 | `$1B2C` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA7B | `XT_DROP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA7D | `$25BB` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA7F | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA81 | `$1CA5` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA83 | `XT_DUP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA85 | `XT_LIT` | $F716 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA89 | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA8B | `XT_not_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA8D | `XT_0BRANCH` | $BAA4 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA91 | `XT_LIT` | $F71A | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA95 | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA97 | `XT_LITbyte` | $0002 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA9A | `XT_star` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA9C | `XT_plus` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BA9E | `$1C71` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAA0 | `XT_BRANCH` | $BAB9 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAA4 | `XT_DROP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAA6 | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAA8 | `$1C96` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAAA | `XT_LIT` | $F71C | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAAE | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAB0 | `XT_LITbyte` | $0002 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAB3 | `XT_star` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAB5 | `XT_plus` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAB7 | `$1C5F` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAB9 | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BABB | `XT_DUP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BABD | `$1C96` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BABF | `XT_LIT` | $F718 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAC3 | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAC5 | `XT_LIT` | $F71C | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAC9 | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BACB | `XT_star` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BACD | `XT_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BACE | `$4601` | — | $BACD |
| $BACF | `XT_SWAP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAD0 | `$A501` | — | $BACD |
| $BAD1 | `$1CA5` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAD2 | `$091C` | — | $BACD |
| $BAD3 | `XT_LIT` | $F716 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAD4 | `$1601` | — | $BACD |
| $BAD6 | `$4CF7` | — | $BACD |
| $BAD7 | `XT_at` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAD8 | `$CF01` | — | $BACD |
| $BAD9 | `XT_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BADA | `$7901` | — | $BACD, $BAD9 |
| $BADB | `XT_AND` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BADC | `$EA01` | — | $BACD, $BAD9 |
| $BADD | `XT_0BRANCH` | $BA79 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BADE | `$7903` | — | $BACD, $BAD9 |
| $BAE0 | `$09BA` | — | $BACD, $BAD9 |
| $BAE1 | `XT_LIT` | $F6EB | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAE2 | `$EB01` | — | $BACD, $BAD9 |
| $BAE4 | `$36F6` | — | $BACD, $BAD9 |
| $BAE5 | `XT_DUP` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAE6 | `$4901` | — | $BACD, $BAD9 |
| $BAE7 | `XT_1plusBbang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAE8 | `$5305` | — | $BACD, $BAD9 |
| $BAE9 | `XT_Bat` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAEA | `$3001` | — | $BACD, $BAD9 |
| $BAEB | `XT_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAEC | `$CF01` | — | $BACD, $BAD9 |
| $BAED | `XT_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAEE | `$EA01` | — | $BACD, $BAD9, $BAED |
| $BAEF | `XT_0BRANCH` | $BB1E | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAF0 | `$1E03` | — | $BACD, $BAD9, $BAED |
| $BAF2 | `$0EBB` | — | $BACD, $BAD9, $BAED |
| $BAF3 | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAF4 | `$9B1F` | — | $BACD, $BAD9, $BAED |
| $BAF5 | `XT_GET_CURRENT_OBJECT_VALUE_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAF6 | `$681D` | — | $BACD, $BAD9, $BAED |
| $BAF7 | `XT_MINUS` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAF8 | `$2401` | — | $BACD, $BAD9, $BAED |
| $BAF9 | `XT_SET_CURRENT_OBJECT_VALUE_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAFA | `$091D` | — | $BACD, $BAD9, $BAED |
| $BAFB | `XT_LIT` | $FFFF | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BAFC | `$FF01` | — | $BACD, $BAD9, $BAED |
| $BAFE | `$09FF` | — | $BACD, $BAD9, $BAED |
| $BAFF | `XT_LIT` | $F71C | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB00 | `$1C01` | — | $BACD, $BAD9, $BAED |
| $BB02 | `$61F7` | — | $BACD, $BAD9, $BAED |
| $BB03 | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB04 | `$1205` | — | $BACD, $BAD9, $BAED |
| $BB05 | `XT_LITbyte` | $005A | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB06 | `$5A01` | — | $BACD, $BAD9, $BAED |
| $BB08 | `$1C71` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB0A | `XT_LIT` | $FFFF | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB0E | `$1C5F` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB10 | `XT_LIT` | $0097 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB14 | `XT_LIT` | $F718 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB18 | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB1A | `XT_BRANCH` | $BB92 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB1E | `XT_LIT` | $F6EB | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB22 | `XT_Bat` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB24 | `XT_LITbyte` | $0002 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB27 | `XT_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB28 | `$EA01` | — | $BB27 |
| $BB29 | `XT_0BRANCH` | $BB5F | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB2A | `$5F03` | — | $BB27 |
| $BB2C | `$0EBB` | — | $BB27 |
| $BB2D | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB2E | `$AA1F` | — | $BB27 |
| $BB2F | `XT_GET_CURRENT_OBJECT_VALUE_2` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB30 | `$681D` | — | $BB27 |
| $BB31 | `XT_MINUS` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB32 | `$3C01` | — | $BB27 |
| $BB33 | `XT_SET_CURRENT_OBJECT_VALUE_2` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB34 | `$301D` | — | $BB27 |
| $BB35 | `XT_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB36 | `$0901` | — | $BB27 |
| $BB37 | `XT_LIT` | $F71A | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB38 | `$1A01` | — | $BB27 |
| $BB3A | `$61F7` | — | $BB27 |
| $BB3B | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB3C | `$0905` | — | $BB27 |
| $BB3D | `XT_LIT` | $FFA5 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB3E | `$A501` | — | $BB27 |
| $BB40 | `$71FF` | — | $BB27 |
| $BB41 | `$1C71` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB42 | `$2A1C` | — | $BB27 |
| $BB43 | `XT_0` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB44 | `$5F01` | — | $BB27 |
| $BB45 | `$1C5F` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB46 | `$091C` | — | $BB27 |
| $BB47 | `XT_LIT` | $0096 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB48 | `$9601` | — | $BB27 |
| $BB4A | `$0900` | — | $BB27 |
| $BB4B | `XT_LIT` | $F718 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB4C | `$1801` | — | $BB27 |
| $BB4E | `$61F7` | — | $BB27 |
| $BB4F | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB50 | `$0905` | — | $BB27 |
| $BB51 | `XT_LIT` | $FFFF | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB52 | `$FF01` | — | $BB27 |
| $BB54 | `$09FF` | — | $BB27 |
| $BB55 | `XT_LIT` | $F716 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB56 | `$1601` | — | $BB27 |
| $BB58 | `$61F7` | — | $BB27 |
| $BB59 | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB5A | `$E205` | — | $BB27 |
| $BB5B | `XT_BRANCH` | $BB92 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB5C | `$9203` | — | $BB27 |
| $BB5E | `$09BB` | — | $BB27 |
| $BB5F | `XT_LIT` | $F6EB | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB60 | `$EB01` | — | $BB27 |
| $BB62 | `$53F6` | — | $BB27 |
| $BB63 | `XT_Bat` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB64 | `$1201` | — | $BB27 |
| $BB65 | `XT_LITbyte` | $0003 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB66 | `$0301` | — | $BB27 |
| $BB68 | `XT_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB69 | `$EA01` | — | $BB68 |
| $BB6A | `XT_0BRANCH` | $BB92 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB6B | `$9203` | — | $BB68 |
| $BB6D | `$0EBB` | — | $BB68 |
| $BB6E | `XT_GET_CURRENT_TASK` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB6F | `$9B1F` | — | $BB68 |
| $BB70 | `XT_GET_CURRENT_OBJECT_VALUE_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB71 | `$681D` | — | $BB68 |
| $BB72 | `XT_MINUS` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB73 | `$2401` | — | $BB68 |
| $BB74 | `XT_SET_CURRENT_OBJECT_VALUE_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB75 | `$301D` | — | $BB68 |
| $BB76 | `XT_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB77 | `$0901` | — | $BB68 |
| $BB78 | `XT_LIT` | $F71C | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB79 | `$1C01` | — | $BB68 |
| $BB7B | `$61F7` | — | $BB68 |
| $BB7C | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB7D | `$0905` | — | $BB68 |
| $BB7E | `XT_LIT` | $FFA5 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB7F | `$A501` | — | $BB68 |
| $BB81 | `$71FF` | — | $BB68 |
| $BB82 | `$1C71` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB83 | `$301C` | — | $BB68 |
| $BB84 | `XT_1` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB85 | `$5F01` | — | $BB68 |
| $BB86 | `$1C5F` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB87 | `$091C` | — | $BB68 |
| $BB88 | `XT_LIT` | $0097 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB89 | `$9701` | — | $BB68 |
| $BB8B | `$0900` | — | $BB68 |
| $BB8C | `XT_LIT` | $F718 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB8D | `$1801` | — | $BB68 |
| $BB8F | `$61F7` | — | $BB68 |
| $BB90 | `XT_bang` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB91 | `$0905` | — | $BB68 |
| $BB92 | `XT_LIT` | $F6EB | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB93 | `$EB01` | — | $BB68 |
| $BB95 | `$53F6` | — | $BB68 |
| $BB96 | `XT_Bat` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB97 | `$1201` | — | $BB68 |
| $BB98 | `XT_LITbyte` | $0004 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB99 | `$0401` | — | $BB68 |
| $BB9B | `XT_gt_equal` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BB9D | `XT_0BRANCH` | $BA79 | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BBA1 | `$B9FF` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BBA3 | `$2789` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BBA5 | `XT_RETURN` | — | $BA31, $BACD, $BAD9, $BAED, $BB27, $BB68 |
| $BBE9 | `XT_ENTER_ACTION_TASK` | — | $BBE8 |
| $BBEB | `XT_LITbyte` | $002A | $BBE8 |
| $BBEE | `XT_LIT` | $00BF | $BBE8 |
| $BBF2 | `XT_OUTP` | — | $BBE8 |
| $BBF4 | `$2D2B` | — | $BBE8 |
| $BBF6 | `XT_LIT` | $FFFF | $BBE8 |
| $BBFA | `XT_LIT` | $F71C | $BBE8 |
| $BBFE | `XT_bang` | — | $BBE8 |
| $BC00 | `XT_SET_OBJECT_MODE_2` | — | $BBE8 |
| $BC02 | `XT_0` | — | $BBE8 |
| $BC04 | `XT_LIT` | $FFEA | $BBE8 |
| $BC08 | `XT_SET_CURRENT_OBJECT_VALUE_PAIR` | — | $BBE8 |
| $BC0A | `XT_LIT` | $FF64 | $BBE8 |
| $BC0E | `XT_LIT` | $F718 | $BBE8 |
| $BC12 | `XT_bang` | — | $BBE8 |
| $BC14 | `XT_LIT` | $FF9D | $BBE8 |
| $BC18 | `XT_LIT` | $F716 | $BBE8 |
| $BC1C | `XT_bang` | — | $BBE8 |
| $BC1E | `XT_RESET_OBJECT_DRAW_STATE` | — | $BBE8 |
| $BC20 | `XT_LITbyte` | $000D | $BBE8 |
| $BC23 | `$1E5C` | — | $BBE8 |
| $BC25 | `XT_LIT` | $009A | $BBE8 |
| $BC29 | `XT_LITbyte` | $002D | $BBE8 |
| $BC2C | `$1C71` | — | $BBE8 |
| $BC2E | `$1C5F` | — | $BBE8 |
| $BC30 | `XT_LITbyte` | $0002 | $BBE8 |
| $BC33 | `XT_0` | — | $BBE8 |
| $BC35 | `XT_DO` | — | $BBE8 |
| $BC37 | `$1B2C` | — | $BBE8 |
| $BC39 | `XT_DROP` | — | $BBE8 |
| $BC3B | `$25BB` | — | $BBE8 |
| $BC3D | `XT_GET_CURRENT_TASK` | — | $BBE8 |
| $BC3F | `$1CA5` | — | $BBE8 |
| $BC41 | `XT_DUP` | — | $BBE8 |
| $BC43 | `XT_LIT` | $F716 | $BBE8 |
| $BC47 | `XT_at` | — | $BBE8 |
| $BC49 | `XT_not_equal` | — | $BBE8 |
| $BC4B | `XT_0BRANCH` | $BC62 | $BBE8 |
| $BC4F | `XT_LIT` | $F71C | $BBE8 |
| $BC53 | `XT_at` | — | $BBE8 |
| $BC55 | `XT_LITbyte` | $0002 | $BBE8 |
| $BC58 | `XT_star` | — | $BBE8 |
| $BC5A | `XT_plus` | — | $BBE8 |
| $BC5C | `$1C71` | — | $BBE8 |
| $BC5E | `XT_BRANCH` | $BC77 | $BBE8 |
| $BC62 | `XT_DROP` | — | $BBE8 |
| $BC64 | `XT_GET_CURRENT_TASK` | — | $BBE8 |
| $BC66 | `$1C96` | — | $BBE8 |
| $BC68 | `XT_LIT` | $F71C | $BBE8 |
| $BC6C | `XT_at` | — | $BBE8 |
| $BC6E | `XT_LITbyte` | $0002 | $BBE8 |
| $BC71 | `XT_star` | — | $BBE8 |
| $BC73 | `XT_plus` | — | $BBE8 |
| $BC75 | `$1C5F` | — | $BBE8 |
| $BC77 | `XT_GET_CURRENT_TASK` | — | $BBE8 |
| $BC79 | `XT_DUP` | — | $BBE8 |
| $BC7B | `$1C96` | — | $BBE8 |
| $BC7D | `XT_LIT` | $F718 | $BBE8 |
| $BC81 | `XT_at` | — | $BBE8 |
| $BC83 | `XT_equal` | — | $BBE8 |
| $BC84 | `$4601` | — | $BC83 |
| $BC85 | `XT_SWAP` | — | $BBE8 |
| $BC86 | `$A501` | — | $BC83 |
| $BC87 | `$1CA5` | — | $BBE8 |
| $BC88 | `$091C` | — | $BC83 |
| $BC89 | `XT_LIT` | $F716 | $BBE8 |
| $BC8A | `$1601` | — | $BC83 |
| $BC8C | `$4CF7` | — | $BC83 |
| $BC8D | `XT_at` | — | $BBE8 |
| $BC8E | `$CF01` | — | $BC83 |
| $BC8F | `XT_equal` | — | $BBE8 |
| $BC90 | `$7901` | — | $BC83, $BC8F |
| $BC91 | `XT_AND` | — | $BBE8 |
| $BC92 | `$EA01` | — | $BC83, $BC8F |
| $BC93 | `XT_0BRANCH` | $BC37 | $BBE8 |
| $BC94 | `$3703` | — | $BC83, $BC8F |
| $BC96 | `$09BC` | — | $BC83, $BC8F |
| $BC97 | `XT_LIT` | $009A | $BBE8 |
| $BC98 | `$9A01` | — | $BC83, $BC8F |
| $BC9A | `$0900` | — | $BC83, $BC8F |
| $BC9B | `XT_LIT` | $F718 | $BBE8 |
| $BC9C | `$1801` | — | $BC83, $BC8F |
| $BC9E | `$61F7` | — | $BC83, $BC8F |
| $BC9F | `XT_bang` | — | $BBE8 |
| $BCA0 | `$1205` | — | $BC83, $BC8F |
| $BCA1 | `XT_LITbyte` | $002D | $BBE8 |
| $BCA2 | `$2D01` | — | $BC83, $BC8F |
| $BCA4 | `XT_LIT` | $F716 | $BBE8, $BC83, $BC8F |
| $BCA8 | `XT_bang` | — | $BBE8, $BC83, $BC8F |
| $BCAA | `XT_1` | — | $BBE8, $BC83, $BC8F |
| $BCAC | `XT_LIT` | $F71C | $BBE8, $BC83, $BC8F |
| $BCB0 | `XT_bang` | — | $BBE8, $BC83, $BC8F |
| $BCB2 | `XT_LOOP` | — | $BBE8, $BC83, $BC8F |
| $BCB4 | `$1E9B` | — | $BBE8, $BC83, $BC8F |
| $BCB6 | `XT_LIT` | $BBD4 | $BBE8, $BC83, $BC8F |
| $BCBA | `XT_SET_CURRENT_OBJECT_WORD_1D` | — | $BBE8, $BC83, $BC8F |
| $BCBC | `XT_LITbyte` | $004A | $BBE8, $BC83, $BC8F |
| $BCBF | `XT_SET_CURRENT_OBJECT_BYTE_18` | — | $BBE8, $BC83, $BC8F |
| $BCC1 | `XT_LIT` | $FF74 | $BBE8, $BC83, $BC8F |
| $BCC5 | `XT_LIT` | $FFDD | $BBE8, $BC83, $BC8F |
| $BCC9 | `XT_SET_CURRENT_OBJECT_VALUE_PAIR` | — | $BBE8, $BC83, $BC8F |
| $BCCB | `$2083` | — | $BBE8, $BC83, $BC8F |
| $BCCD | `XT_0` | — | $BBE8, $BC83, $BC8F |
| $BCCF | `XT_LIT` | $00BF | $BBE8, $BC83, $BC8F |
| $BCD3 | `XT_OUTP` | — | $BBE8, $BC83, $BC8F |
| $BCD5 | `XT_CLEAR_TASK_ACTIVE_BIT` | — | $BBE8, $BC83, $BC8F |
| $BCD7 | `$2789` | — | $BBE8, $BC83, $BC8F |
| $BCD9 | `XT_RETURN` | — | $BBE8, $BC83, $BC8F |

**334 distinct physical token starts, nine entrypoint traversals.** This disassembly is an address-aware ROM map, not a compilable second copy of the shared code. The corresponding bytes are represented exactly once in `src/pps8.asm`.
