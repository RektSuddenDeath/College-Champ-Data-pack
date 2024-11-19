
title @a[team=red] times 10 60 10
title @a[team=red] title ["§e平局！"]
title @a[team=red] subtitle ["§eThat's a whoopsie."]

tellraw @a[team=red] ["§6[§r曺§6] ","§6回合战平！下次要更快一点……"]
clear @a[team=red]
execute as @a[team=red] run attribute @s generic.attack_damage base set -100
effect give @a[team=red] resistance 100000 5 true
execute as @a[team=red] at @s run playsound minecraft:sound.team_eliminated record @s

execute store result storage bb:scb_tmp wins int 1 run scoreboard players get red bb_wins
execute store result storage bb:scb_tmp round int 1 run scoreboard players get round bb_game
data modify storage bb:scb_tmp team set value "red"

function battlebox:game_new/match_result/macro_scbline with storage bb:scb_tmp

scoreboard players operation @a[team=red] bb_indvscore += tie bb_stats 
