scoreboard players add m-6 pkw2_level_clears 1

function pkw2:checkpoint/clear_fx/main
#scoreboard players set @s pkw2_titledelay 30
scoreboard players set @s pkw2_main 6
scoreboard players set @s pkw2_main2 3
scoreboard players set @s pkw2_cp 15
tellraw @s ["","§a[§r彀§a] §f你完成了 ","",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=12}]"},"§f 并获得了一枚§7石奖牌§f!"]
title @s actionbar "§b已更新存档点"

# Champion Build Modifier
execute if score m-6 pkw2_level_clears matches 1 if score modifiers_champion_build pkw2_game matches 1 run function pkw2:modifiers/champion_build/get_build_block