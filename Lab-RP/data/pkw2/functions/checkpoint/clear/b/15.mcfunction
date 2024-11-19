# Parkour Rush Modifier
execute if score modifiers_parkour_rush pkw2_game matches 1 if score b-15 pkw2_level_clears >= b-15 pkw2_level_clear_limit run function pkw2:modifiers/parkour_rush/over_limit_complete
execute if score modifiers_parkour_rush pkw2_game matches 1 if score b-15 pkw2_level_clears >= b-15 pkw2_level_clear_limit run return 0

function pkw2:checkpoint/clear_fx/bonus_gold
#scoreboard players set @s pkw2_titledelay 30
scoreboard players set @s pkw2_bonus5 3
scoreboard players set @s pkw2_bb5 3
scoreboard players set @s pkw2_cp 29
function pkw2:checkpoint/tp
tellraw @s ["","§a[§r彀§a] §f你完成了 ","",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=27}]"},"§f 并获得了一枚§e金奖牌§f!"]
tellraw @s ["","§b[§r梎§b]","§b你已被传送回最后的路口。"]

#execute if score @s pkw2_bonus2 matches 0..2 run tellraw @s ["","§b[§r梎§b]","§f额外获取了第二大关未获取完成的奖牌。"]
#execute if score @s pkw2_bonus2 matches 0..2 run scoreboard players set @s pkw2_bonus2 3

title @s actionbar "§b已更新存档点"


# Parkour Rush Modifier
scoreboard players add b-15 pkw2_level_clears 1
execute if score modifiers_parkour_rush pkw2_game matches 1 run execute as @a[scores={pkw2_cp=32}] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 2

# Champion Build Modifier
execute if score b-15 pkw2_level_clears matches 1 if score modifiers_champion_build pkw2_game matches 1 run function pkw2:modifiers/champion_build/get_build_block