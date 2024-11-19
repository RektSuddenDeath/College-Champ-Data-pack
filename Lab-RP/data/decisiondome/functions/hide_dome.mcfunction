
# This only impacts game boards, does not affect game selection.
scoreboard players set dome_boards_hidden elevatorjoke 1

kill @e[type=block_display,tag=decisiondome,tag=1]
kill @e[type=block_display,tag=decisiondome,tag=2]
kill @e[type=block_display,tag=decisiondome,tag=3]
kill @e[type=block_display,tag=decisiondome,tag=4]
kill @e[type=block_display,tag=decisiondome,tag=5]
kill @e[type=block_display,tag=decisiondome,tag=6]
kill @e[type=block_display,tag=decisiondome,tag=7]
kill @e[type=block_display,tag=decisiondome,tag=8]

execute as @e[type=marker,tag=domeanchor,tag=1] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","1"]}
execute as @e[type=marker,tag=domeanchor,tag=2] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","2"]}
execute as @e[type=marker,tag=domeanchor,tag=3] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","3"]}
execute as @e[type=marker,tag=domeanchor,tag=4] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","4"]}
execute as @e[type=marker,tag=domeanchor,tag=5] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","5"]}
execute as @e[type=marker,tag=domeanchor,tag=6] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","6"]}
execute as @e[type=marker,tag=domeanchor,tag=7] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","7"]}
execute as @e[type=marker,tag=domeanchor,tag=8] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"24",powered:"false"}},shadow_radius:0,Tags:["decisiondome","8"]}