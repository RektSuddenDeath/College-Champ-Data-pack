
function decisiondome:column/1/white
function decisiondome:column/2/green

function decisiondome:first/sfx
kill @e[type=block_display,tag=decisiondome,tag=2]
execute as @e[type=marker,tag=domeanchor,tag=2] at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"note_block",Properties:{instrument:"custom_head",note:"23",powered:"false"}},shadow_radius:0,Tags:["decisiondome","2"]}
schedule function decisiondome:first/4b 2s