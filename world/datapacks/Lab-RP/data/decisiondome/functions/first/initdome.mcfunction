
kill @e[type=marker,tag=domeanchor]

summon marker -9998 112 -10006 {Tags:["domeanchor","1"]}
summon marker -10003 112 -10006 {Tags:["domeanchor","2"]}
summon marker -10006 112 -10003 {Tags:["domeanchor","3"]}
summon marker -10006 112 -9998 {Tags:["domeanchor","4"]}
summon marker -10003 112 -9995 {Tags:["domeanchor","5"]}
summon marker -9998 112 -9995 {Tags:["domeanchor","6"]}
summon marker -9995 112 -9998 {Tags:["domeanchor","7"]}
summon marker -9995 112 -10003 {Tags:["domeanchor","8"]}

function decisiondome:first/loadpreset
function decisiondome:first/setname

# summon block_display ~ ~ ~ {block_state:{Name:"note_block",Properties:{note:"100010"}}}}