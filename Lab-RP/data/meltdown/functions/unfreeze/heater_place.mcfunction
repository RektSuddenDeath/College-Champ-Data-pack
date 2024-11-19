
#execute at @s unless block ~ ~ ~ air run function meltdown:freeze/find_safe_spot
execute if entity @s[tag=heater_red] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3002}},Tags:["heater_display","heater_red_display"]}
execute if entity @s[tag=heater_blue] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3003}},Tags:["heater_display","heater_blue_display"]}
execute if entity @s[tag=heater_green] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3004}},Tags:["heater_display","heater_green_display"]}
execute if entity @s[tag=heater_yellow] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3005}},Tags:["heater_display","heater_yellow_display"]}
execute if entity @s[tag=heater_cyan] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3006}},Tags:["heater_display","heater_cyan_display"]}
execute if entity @s[tag=heater_pink] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3007}},Tags:["heater_display","heater_pink_display"]}
execute if entity @s[tag=heater_orange] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3008}},Tags:["heater_display","heater_orange_display"]}
execute if entity @s[tag=heater_purple] at @s run summon item_display ~ ~0.5 ~ {item:{id:"phantom_membrane",Count:1b,tag:{CustomModelData:3009}},Tags:["heater_display","heater_purple_display"]}

setblock ~ ~ ~ barrier

scoreboard players set @s meltdown_heater_duration 0

execute if entity @s[tag=heater_red] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=red] univ_pid
execute if entity @s[tag=heater_blue] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=blue] univ_pid
execute if entity @s[tag=heater_green] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=green] univ_pid
execute if entity @s[tag=heater_yellow] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=yellow] univ_pid
execute if entity @s[tag=heater_cyan] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=cyan] univ_pid
execute if entity @s[tag=heater_pink] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=pink] univ_pid
execute if entity @s[tag=heater_orange] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=orange] univ_pid
execute if entity @s[tag=heater_purple] run scoreboard players operation @s meltdown_heater_player_id = @p[scores={meltdown_heater_used=1},team=purple] univ_pid

data modify entity @s CustomName set value '""'
tag @s add heater_processed