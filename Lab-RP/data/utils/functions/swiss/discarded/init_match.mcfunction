# 开辟记录每个队伍已对战的对手的空间，本队直接标1. 1为已对战，0为未对战。
scoreboard objectives add swiss_match_done_red dummy
scoreboard objectives add swiss_match_done_blue dummy
scoreboard objectives add swiss_match_done_green dummy
scoreboard objectives add swiss_match_done_yellow dummy
scoreboard objectives add swiss_match_done_cyan dummy
scoreboard objectives add swiss_match_done_pink dummy
scoreboard objectives add swiss_match_done_orange dummy
scoreboard objectives add swiss_match_done_purple dummy

scoreboard players set red swiss_match_done_red 1
scoreboard players set blue swiss_match_done_red 0
scoreboard players set green swiss_match_done_red 0
scoreboard players set yellow swiss_match_done_red 0
scoreboard players set cyan swiss_match_done_red 0
scoreboard players set pink swiss_match_done_red 0
scoreboard players set orange swiss_match_done_red 0
scoreboard players set purple swiss_match_done_red 0

scoreboard players set red swiss_match_done_blue 0
scoreboard players set blue swiss_match_done_blue 1
scoreboard players set green swiss_match_done_blue 0
scoreboard players set yellow swiss_match_done_blue 0
scoreboard players set cyan swiss_match_done_blue 0
scoreboard players set pink swiss_match_done_blue 0
scoreboard players set orange swiss_match_done_blue 0
scoreboard players set purple swiss_match_done_blue 0

scoreboard players set red swiss_match_done_green 0
scoreboard players set blue swiss_match_done_green 0
scoreboard players set green swiss_match_done_green 1
scoreboard players set yellow swiss_match_done_green 0
scoreboard players set cyan swiss_match_done_green 0
scoreboard players set pink swiss_match_done_green 0
scoreboard players set orange swiss_match_done_green 0
scoreboard players set purple swiss_match_done_green 0

scoreboard players set red swiss_match_done_yellow 0
scoreboard players set blue swiss_match_done_yellow 0
scoreboard players set green swiss_match_done_yellow 0
scoreboard players set yellow swiss_match_done_yellow 1
scoreboard players set cyan swiss_match_done_yellow 0
scoreboard players set pink swiss_match_done_yellow 0
scoreboard players set orange swiss_match_done_yellow 0
scoreboard players set purple swiss_match_done_yellow 0

scoreboard players set red swiss_match_done_cyan 0
scoreboard players set blue swiss_match_done_cyan 0
scoreboard players set green swiss_match_done_cyan 0
scoreboard players set yellow swiss_match_done_cyan 0
scoreboard players set cyan swiss_match_done_cyan 1
scoreboard players set pink swiss_match_done_cyan 0
scoreboard players set orange swiss_match_done_cyan 0
scoreboard players set purple swiss_match_done_cyan 0

scoreboard players set red swiss_match_done_pink 0
scoreboard players set blue swiss_match_done_pink 0
scoreboard players set green swiss_match_done_pink 0
scoreboard players set yellow swiss_match_done_pink 0
scoreboard players set cyan swiss_match_done_pink 0
scoreboard players set pink swiss_match_done_pink 1
scoreboard players set orange swiss_match_done_pink 0
scoreboard players set purple swiss_match_done_pink 0

scoreboard players set red swiss_match_done_orange 0
scoreboard players set blue swiss_match_done_orange 0
scoreboard players set green swiss_match_done_orange 0
scoreboard players set yellow swiss_match_done_orange 0
scoreboard players set cyan swiss_match_done_orange 0
scoreboard players set pink swiss_match_done_orange 0
scoreboard players set orange swiss_match_done_orange 1
scoreboard players set purple swiss_match_done_orange 0

scoreboard players set red swiss_match_done_purple 0
scoreboard players set blue swiss_match_done_purple 0
scoreboard players set green swiss_match_done_purple 0
scoreboard players set yellow swiss_match_done_purple 0
scoreboard players set cyan swiss_match_done_purple 0
scoreboard players set pink swiss_match_done_purple 0
scoreboard players set orange swiss_match_done_purple 0
scoreboard players set purple swiss_match_done_purple 1