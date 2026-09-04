# Professor Pac-Man question-family inventory

The 130 rooted PPQ initializers resolve to 45 executable question
families. A family is identified by the counted action-list address returned
to the fixed repeat filter; initializers that choose different random ranges
or offsets but return the same list are variants of one family.

Every family has a four-action list and reaches the same shared contract:
scene setup, randomized correct-answer placement, distinct second-slot
placement, remaining-slot placement, child-action synchronization,
cooperative yield, and action completion.

The fixed-ROM words behind that contract are decoded in
[`question_presentation.md`](question_presentation.md).

| Bank | Family | Action list | Initializers | Tiers | Variant setup | Prompts reached directly |
| --- | --- | ---: | ---: | --- | --- | --- |
| `ppq1` | `MIRROR_FLOCK` | `$5395` | 1 | 0, 2 | random limits 2 | — |
| `ppq1` | `FILL_IN_THE_BLANK` | `$59B5` | 3 | 1, 2, 3, 4, 5, 6 | random limits 4/5; offsets 4/8 | `$580C` fill in the blank  |
| `ppq1` | `DIALED_NUMBER_MEMORY` | `$7AF1` | 4 | 1, 2, 3, 4, 5, 6, 7 | 4 direct/fixed | `$7571` which number was dialed ?  |
| `ppq2` | `COLORED_CIRCLE_COUNT` | `$5875` | 4 | 0, 1, 3, 5, 7 | random limits 2; offsets 2/4/6 | — |
| `ppq2` | `LINE_INTERSECTION_COUNT` | `$5C31` | 6 | 0, 1, 2, 3, 4, 5, 6, 7 | random limits 2/3/4/12; offsets 2/4/5/8/12 | — |
| `ppq2` | `FIGURE_MIRROR_MATCH` | `$67A5` | 1 | 0, 3 | random limits 2 | — |
| `ppq2` | `PICTURE_COUNT_MEMORY` | `$7A1E` | 4 | 2, 3, 5, 6, 7 | random limits 8; offsets 8/16/24 | `$7681` how many were <br>`$7690` study this picture |
| `ppq2` | `IMAGE_MIRROR_MATCH` | `$7CA6` | 1 | 1, 4, 6 | random limits 4 | — |
| `ppq3` | `COMPLETE_FIGURE_A` | `$51E2` | 1 | 0, 4 | 1 direct/fixed | `$506C` which is the completed figure  |
| `ppq3` | `IMAGE_MIRROR_MATCH_A` | `$5D5A` | 1 | 2, 6 | random limits 4 | — |
| `ppq3` | `IMAGE_MIRROR_MATCH_B` | `$6717` | 2 | 1, 2, 4 | 2 direct/fixed | `$6594` which is the mirror image  |
| `ppq3` | `JUGGLER_MEMORY` | `$7934` | 4 | 1, 3, 5, 7 | random limits 3/4/5; offsets 4/7/12 | `$761F` study this picture |
| `ppq4` | `COMPLETE_FIGURE_A` | `$4E34` | 1 | 0, 2, 4 | 1 direct/fixed | `$4C41` which is the completed figure? |
| `ppq4` | `COMPLETE_FIGURE_B` | `$5827` | 1 | 1, 3, 5 | 1 direct/fixed | `$55E4` which is the completed figure? |
| `ppq4` | `LEFT_RIGHT_TURNS` | `$73FC` | 8 | 0, 1, 2, 3, 4, 5, 6, 7 | 8 direct/fixed | `$6F79` how many left turns to the fruit ? <br>`$6F9D` how many right turns to the fruit ?  |
| `ppq5` | `VISUAL_ANALOGY` | `$5463` | 3 | 2, 3, 4 | random limits 2; offsets 2/4 | `$52D3` is to  |
| `ppq5` | `OPERATION_SEQUENCE` | `$6822` | 1 | 3, 5, 6, 7 | 1 direct/fixed | `$6552` from left to right which sequence of <br>`$6578` operations would arrive at the given result ? |
| `ppq5` | `NUMBER_TRANSFORMATION` | `$6E97` | 8 | 0, 1, 2, 3, 4, 5, 6, 7 | random limits 2/3/10; offsets 2/4/6/8/10/12 | — |
| `ppq5` | `NUMBER_PROGRESSION` | `$7996` | 1 | 1, 4 | 1 direct/fixed | `$77CC` what is next in this progression?  |
| `ppq5` | `IMAGE_MIRROR_MATCH` | `$7E6B` | 1 | 0, 2 | random limits 4 | — |
| `ppq6` | `HAND_PLACEMENT_MEMORY` | `$62F4` | 7 | 1, 2, 3, 4, 5, 6, 7 | random limits 2/3/16; offsets 2/4/7/10/13 | `$5B31` study these and remember their placement  |
| `ppq6` | `FIGURE_SERIES_MEMORY` | `$761E` | 10 | 0, 1, 2, 3, 4, 5, 6, 7 | random limits 5/6; offsets 5/10/15 | `$7266` study these figures<br>`$72E1` how many        's did you count?  |
| `ppq7` | `BOX_MEMBERSHIP` | `$6383` | 4 | 1, 3, 5, 6 | random limits 3/5; offsets 5/8/10 | `$6142` which object is in the box? <br>`$615F` which object is not in the box? |
| `ppq7` | `IMAGE_MIRROR_PAIR` | `$6E33` | 1 | 0, 3 | random limits 4 | — |
| `ppq7` | `OBJECT_COUNT_MEMORY` | `$7D6D` | 4 | 1, 2, 3, 4, 5, 6, 7 | random limits 13; offsets 13/26/39 | `$77D3` how many were <br>`$77E2` study these  |
| `ppq8` | `VISUAL_PROGRESSION` | `$6014` | 3 | 1, 3, 5 | 3 direct/fixed | `$5EF0` continue the progression |
| `ppq8` | `IMAGE_MIRROR_MATCH` | `$6ACF` | 1 | 0, 2 | random limits 2 | `$6930` which is the mirror image ? <br>`$694D` which is the same ?  |
| `ppq8` | `TABLE_SETTING_MEMORY` | `$7DCD` | 4 | 2, 4, 6, 7 | random limits 6/10/15; offsets 5/10/14 | `$78CD` look at this table setting |
| `ppq9` | `COMPLETE_FIGURE_A` | `$7307` | 1 | 0, 3, 4, 7 | 1 direct/fixed | `$7125` which is the completed figure? |
| `ppq9` | `COMPLETE_FIGURE_B` | `$7544` | 1 | 0, 1, 2, 5, 6 | 1 direct/fixed | `$73DF` which is the completed figure?  |
| `ppq9` | `COMPLETE_FIGURE_C` | `$77BB` | 1 | 0, 1, 5, 6 | 1 direct/fixed | `$7668` which is the completed figure?  |
| `ppq9` | `COMPLETE_FIGURE_D` | `$7A38` | 1 | 0, 1, 2, 5, 6 | 1 direct/fixed | `$78CA` which is the completed figure?  |
| `ppq9` | `COMPLETE_FIGURE_E` | `$7DB1` | 1 | 0, 1, 5, 6 | 1 direct/fixed | `$7B63` which is the completed figure  |
| `ppq10` | `UNFOLDED_DIE` | `$669C` | 1 | 2, 3, 4, 5, 6, 7 | 1 direct/fixed | `$62C1` this is a die unfolded<br>`$62D8` which below is a possible arrangement ?<br>`$6300` which below is an impossible arrangement ? |
| `ppq10` | `VISUAL_ANALOGY` | `$77C1` | 3 | 0, 1, 2, 4, 6 | random limits 2; offsets 2/4 | `$75D6` is to  |
| `ppq11` | `CITY_OBJECT_COUNT` | `$7091` | 4 | 2, 3, 4, 5, 6, 7 | random limits 3; offsets 3/6/9 | `$6E0D` examine this next city scene <br>`$6E2B` how many                were there ? |
| `ppq11` | `CITY_SCENE_REASONING` | `$7675` | 5 | 0, 1, 5, 6, 7 | random limits 3/4; offsets 3/6/9/12 | `$6E0D` examine this next city scene  |
| `ppq12` | `GROUP_MEMBERSHIP` | `$79F4` | 2 | 0, 1, 2, 3, 4, 5, 6, 7 | random limits 6; offsets 6 | — |
| `ppq13` | `CUBE_COUNT` | `$5101` | 7 | 1, 2, 3, 4, 5, 6, 7 | random limits 2/3; offsets 3/5/8/10/12/14 | `$4B39` how many cubes are in this structure ? |
| `ppq13` | `ODD_ONE_OUT` | `$7A92` | 5 | 0, 1, 2 | random limits 2; offsets 2/4/6/8 | `$795E` what does not belong in this group ? |
| `ppq13` | `VISUAL_PROGRESSION` | `$7E5F` | 1 | 0, 1, 2 | 1 direct/fixed | `$7CE5` complete this progression |
| `ppq14` | `VISUAL_PROGRESSION` | `$5505` | 2 | 1, 2, 3, 6, 7 | 2 direct/fixed | `$53E1` continue the progression |
| `ppq14` | `VISUAL_ANALOGY` | `$5751` | 2 | 3, 5, 7 | 2 direct/fixed | `$55B3` is to  |
| `ppq14` | `DOG_MIRROR_MATCH` | `$6373` | 1 | 0, 2, 4 | random limits 2 | `$61FD` which dog is the mirror image? |
| `ppq14` | `DEER_MIRROR_MATCH` | `$71C5` | 2 | 0, 1 | random limits 2; offsets 2 | `$6FC1` which deer is the mirror image? |

## Cross-family execution features

| Feature | XT | Families | Calls |
| --- | ---: | ---: | ---: |
| random correct slot | `$8B4F` | 45/45 | 45 |
| distinct second slot | `$8B7B` | 45/45 | 45 |
| remaining third slot | `$8C12` | 45/45 | 45 |
| scene setup | `$8C37` | 45/45 | 45 |
| action completion | `$8C50` | 45/45 | 177 |
| cross-slot object update | `$8C61` | 45/45 | 135 |
| child-action join | `$2302` | 45/45 | 177 |
| cooperative yield | `$15F7` | 45/45 | 287 |
| object renderer | `$1DF3` | 32/45 | 120 |
| object draw | `$1E0C` | 30/45 | 69 |
| descriptor draw | `$2CF2` | 37/45 | 187 |
| task-vector animation | `$1BDF` | 39/45 | 143 |

Prompt text is listed only when the action graph reaches its counted
string through a direct literal. A dash does not mean that a family has no
prompt; several families select text indirectly through variant tables.

Run `python3 tools/analyze_question_families.py roms/profpac.zip` to
validate the inventory and reproduce this report.
