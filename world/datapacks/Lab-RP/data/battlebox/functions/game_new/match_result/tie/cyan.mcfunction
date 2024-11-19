
title @a[team=cyan] times 10 60 10
title @a[team=cyan] title ["§e平局！"]
title @a[team=cyan] subtitle ["§eThat's a whoopsie."]

tellraw @a[team=cyan] ["§6[§r曺§6] ","§6回合战平！下次要更快一点……"]
clear @a[team=cyan]
execute as @a[team=cyan] run attribute @s generic.attack_damage base set -100
effect give @a[team=cyan] resistance 100000 5 true
execute as @a[team=cyan] at @s run playsound minecraft:sound.team_eliminated record @s

execute store result storage bb:scb_tmp wins int 1 run scoreboard players get cyan bb_wins
execute store result storage bb:scb_tmp round int 1 run scoreboard players get round bb_game
data modify storage bb:scb_tmp team set value "cyan"

function battlebox:game_new/match_result/macro_scbline with storage bb:scb_tmp

scoreboard players operation @a[team=cyan] bb_indvscore += tie bb_stats 
