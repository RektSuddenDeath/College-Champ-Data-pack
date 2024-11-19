
function decisiondome:column/5/white
function decisiondome:column/6/green

function decisiondome:first/sfx
kill @e[type=block_display,tag=decisiondome,tag=6]
execute as @e[type=marker,tag=domeanchor,tag=6] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}},shadow_radius:0,Tags:["decisiondome","6"]}
schedule function decisiondome:first/8b 2s