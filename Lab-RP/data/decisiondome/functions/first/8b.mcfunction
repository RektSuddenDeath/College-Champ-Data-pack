
schedule clear decisiondome:first/sfx

# execute as @a at @s run playsound sound.game_revealed record @s

function decisiondome:block_display/6
title @a times 0 40 10
title @a title ""
title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=6,limit=1]"}]

tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=6,limit=1]"},"!"]