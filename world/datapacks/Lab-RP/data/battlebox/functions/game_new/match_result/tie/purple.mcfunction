
title @a[team=purple] times 10 60 10
title @a[team=purple] title ["§e平局！"]
title @a[team=purple] subtitle ["§eThat's a whoopsie."]

tellraw @a[team=purple] ["§6[§r曺§6] ","§6回合战平！下次要更快一点……"]
clear @a[team=purple]
execute as @a[team=purple] run attribute @s generic.attack_damage base set -100
effect give @a[team=purple] resistance 100000 5 true
execute as @a[team=purple] at @s run playsound minecraft:sound.team_eliminated record @s

execute store result storage bb:scb_tmp wins int 1 run scoreboard players get purple bb_wins
execute store result storage bb:scb_tmp round int 1 run scoreboard players get round bb_game
data modify storage bb:scb_tmp team set value "purple"

function battlebox:game_new/match_result/macro_scbline with storage bb:scb_tmp

scoreboard players operation @a[team=purple] bb_indvscore += tie bb_stats 
