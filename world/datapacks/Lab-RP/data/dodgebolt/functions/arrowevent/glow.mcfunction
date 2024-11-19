
execute as @e[type=arrow] run data merge entity @s[type=arrow] {Glowing:1}
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] run data merge entity @s {Glowing:1}
execute as @e[type=arrow] run data merge entity @s {life:0s}

execute if score gameflag db_game matches 1 run schedule function dodgebolt:arrowevent/glow 1t