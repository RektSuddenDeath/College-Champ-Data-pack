

execute if entity @s[tag=heater_red] run tellraw @a[team=red] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_blue] run tellraw @a[team=blue] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_green] run tellraw @a[team=green] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_yellow] run tellraw @a[team=yellow] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_cyan] run tellraw @a[team=cyan] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_pink] run tellraw @a[team=pink] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_orange] run tellraw @a[team=orange] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]
execute if entity @s[tag=heater_purple] run tellraw @a[team=purple] ["§c[§r鼱§c] ","§c你的队伍的一个加热器被破坏了。"]

tag @s add heater_getting_broken
execute as @a if score @s univ_pid = @e[type=interaction,tag=heater_getting_broken,limit=1,sort=nearest] meltdown_heater_player_id run tellraw @s ["§c[§r鼱§c] ","§c你的加热器被破坏了。"]
execute as @a if score @s univ_pid = @e[type=interaction,tag=heater_getting_broken,limit=1,sort=nearest] meltdown_heater_player_id run scoreboard players set @s meltdown_heater_cooldown 240
execute as @a if score @s univ_pid = @e[type=interaction,tag=heater_getting_broken,limit=1,sort=nearest] meltdown_heater_player_id run tag @s remove meltdown_has_heater_placed

tag @s remove heater_getting_broken
# TO BE CHANGED TO A REAL MODEL
kill @e[type=item_display,tag=heater_display,sort=nearest,limit=1]
execute if block ~ ~ ~ brown_stained_glass run setblock ~ ~ ~ air
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @s