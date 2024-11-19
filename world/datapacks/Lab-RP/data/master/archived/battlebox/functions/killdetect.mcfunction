#Death
clear @a[scores={battlebox_death=1..1}]
execute as @a[scores={battlebox_death=1..1}] run attribute @s minecraft:generic.attack_damage base set -100
scoreboard players reset @a battlebox_death

#red
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 run scoreboard players operation red battlebox_game += Kill battlebox_stats
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 run tellraw @a[team=red] ["",{"text":"+40","color":"gold"},{"text":"分！ （击杀奖励）","color":"gold"}]
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 if score red battlebox_game matches 160 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red"},{"text":"160"}]
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 if score red battlebox_game matches 120 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red"},{"text":"120"}]
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 if score red battlebox_game matches 80 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red"},{"text":"80"}]
execute at @a[team=red] run execute if score @p battlebox_kill matches 1 if score red battlebox_game matches 40 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red"},{"text":"40"}]




execute at @a[team=red] run execute if score @p battlebox_kill matches 1 run scoreboard players reset @a[team=red] battlebox_kill


#blue
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 run scoreboard players operation blue battlebox_game += Kill battlebox_stats
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 run tellraw @a[team=blue] ["",{"text":"+40","color":"gold"},{"text":"分！ （击杀奖励）","color":"gold"}]
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score blue battlebox_game matches 160 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue"},{"text":"160"}]
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score blue battlebox_game matches 120 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue"},{"text":"120"}]
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score blue battlebox_game matches 80 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue"},{"text":"80"}]
execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score blue battlebox_game matches 40 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue"},{"text":"40"}]

execute at @a[team=blue] run execute if score @p battlebox_kill matches 1 run scoreboard players reset @a[team=blue] battlebox_kill

#green
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 run scoreboard players operation green battlebox_game += Kill battlebox_stats
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 run tellraw @a[team=green] ["",{"text":"+40","color":"gold"},{"text":"分！ （击杀奖励）","color":"gold"}]
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 if score green battlebox_game matches 160 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green"},{"text":"160"}]
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 if score green battlebox_game matches 120 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green"},{"text":"120"}]
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 if score green battlebox_game matches 80 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green"},{"text":"80"}]
execute at @a[team=green] run execute if score @p battlebox_kill matches 1 if score green battlebox_game matches 40 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green"},{"text":"40"}]

execute at @a[team=green] run execute if score @p battlebox_kill matches 1 run scoreboard players reset @a[team=green] battlebox_kill


#yellow
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 run scoreboard players operation yellow battlebox_game += Kill battlebox_stats
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 run tellraw @a[team=yellow] ["",{"text":"+40","color":"gold"},{"text":"分！ （击杀奖励）","color":"gold"}]
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score yellow battlebox_game matches 160 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow"},{"text":"160"}]
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score yellow battlebox_game matches 120 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow"},{"text":"120"}]
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score yellow battlebox_game matches 80 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow"},{"text":"80"}]
execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 if score @p battlebox_kill matches 1 if score yellow battlebox_game matches 40 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow"},{"text":"40"}]

execute at @a[team=yellow] run execute if score @p battlebox_kill matches 1 run scoreboard players reset @a[team=yellow] battlebox_kill


execute if score gameflag battlebox_game matches 1..1 run schedule function battlebox:killdetect 2t