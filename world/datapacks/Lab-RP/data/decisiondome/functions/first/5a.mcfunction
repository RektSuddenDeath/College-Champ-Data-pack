
function decisiondome:column/2/white
function decisiondome:column/3/green

function decisiondome:first/sfx
kill @e[type=block_display,tag=decisiondome,tag=3]
execute as @e[type=marker,tag=domeanchor,tag=3] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}},shadow_radius:0,Tags:["decisiondome","3"]}
schedule function decisiondome:first/5b 2s