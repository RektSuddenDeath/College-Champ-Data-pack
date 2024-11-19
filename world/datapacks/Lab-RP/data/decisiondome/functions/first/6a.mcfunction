
function decisiondome:column/3/white
function decisiondome:column/4/green

function decisiondome:first/sfx
kill @e[type=block_display,tag=decisiondome,tag=4]
execute as @e[type=marker,tag=domeanchor,tag=4] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}},shadow_radius:0,Tags:["decisiondome","4"]}
schedule function decisiondome:first/6b 2s