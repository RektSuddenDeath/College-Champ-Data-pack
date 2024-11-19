
function decisiondome:column/4/white
function decisiondome:column/5/green

function decisiondome:first/sfx
kill @e[type=block_display,tag=decisiondome,tag=5]
execute as @e[type=marker,tag=domeanchor,tag=5] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}},shadow_radius:0,Tags:["decisiondome","5"]}
schedule function decisiondome:first/7b 2s