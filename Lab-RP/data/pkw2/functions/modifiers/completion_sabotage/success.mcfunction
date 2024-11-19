

execute if entity @s[team=red] run setblock ~ ~-1 ~ red_concrete
execute if entity @s[team=blue] run setblock ~ ~-1 ~ blue_concrete
execute if entity @s[team=green] run setblock ~ ~-1 ~ green_concrete
execute if entity @s[team=yellow] run setblock ~ ~-1 ~ yellow_concrete
execute if entity @s[team=cyan] run setblock ~ ~-1 ~ cyan_concrete
execute if entity @s[team=pink] run setblock ~ ~-1 ~ pink_concrete
execute if entity @s[team=orange] run setblock ~ ~-1 ~ orange_concrete
execute if entity @s[team=purple] run setblock ~ ~-1 ~ purple_concrete
execute if entity @s[team=spec] run setblock ~ ~-1 ~ gray_concrete

tag @s add pkw2_sabotage_used

tellraw @s ["§a[§r彀§a] 放置成功！希望仍在场的玩家*喜欢*你的小杰作。"]