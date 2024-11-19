# Parkour Rush Modifier
execute if score modifiers_parkour_rush pkw2_game matches 1 if score b-14 pkw2_level_clears >= b-14 pkw2_level_clear_limit run function pkw2:modifiers/parkour_rush/over_limit_complete
execute if score modifiers_parkour_rush pkw2_game matches 1 if score b-14 pkw2_level_clears >= b-14 pkw2_level_clear_limit run return 0

function pkw2:checkpoint/clear_fx/bonus_silver
scoreboard players set @s pkw2_titledelay 30
scoreboard players set @s pkw2_bonus5 2
scoreboard players set @s pkw2_bb5 2
scoreboard players set @s pkw2_cp 32
tellraw @s ["","§a[§r彀§a] §f你完成了 ","",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=26}]"},"§f 并获得了一枚§f银奖牌§f!"]
title @s actionbar "§b已更新存档点"


# Parkour Rush Modifier
scoreboard players add b-14 pkw2_level_clears 1
execute if score modifiers_parkour_rush pkw2_game matches 1 run execute as @a[scores={pkw2_cp=31}] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 2

# Champion Build Modifier
execute if score b-14 pkw2_level_clears matches 1 if score modifiers_champion_build pkw2_game matches 1 run function pkw2:modifiers/champion_build/get_build_block