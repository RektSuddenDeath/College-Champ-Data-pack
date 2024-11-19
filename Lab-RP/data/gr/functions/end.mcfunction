
scoreboard players set RoundActive tourney_stats 0

# Stop music
schedule clear gr:sound/loop
stopsound @a voice
stopsound @a record gr.coursecomp
# Gameflag
scoreboard players set gameflag gr_game 0
# Gamemode
gamemode spectator @a[team=!spec]
# Attribute
execute as @a run attribute @s generic.max_health base set 20
# Clear
clear @a
kill @e[type=area_effect_cloud,tag=gr_anchors]
kill @e[type=armor_stand,tag=gr_divider]
difficulty peaceful
kill @e[type=area_effect_cloud,tag=gr_opener]
kill @e[type=area_effect_cloud,tag=gr_closer]
# Announce
title @a times 0 60 20
title @a subtitle ""
title @a title "§c§l游戏结束！"
execute as @a at @s run playsound sound.end record @s
execute as @a at @s run playsound music.gameendmusic record @s
tellraw @a ""
tellraw @a "§6游戏结算即将开始……"
tellraw @a ""
# Start score calc
function gr:scoreboard/end
schedule function gr:scoring/1 3s
schedule function gr:scoring/2 8s
schedule function gr:scoring/3 13s
schedule function gr:scoring/4 18s
schedule function gr:scoring/5 23s
schedule function gr:scoring/6 28s
schedule function gr:scoring/7 33s
schedule function gr:scoring/8 38s
schedule function gr:scoring/course 43s
schedule function gr:scoring/wrapup 44s
schedule function utils:text/gamescore 48s
schedule function utils:text/eventstandings 56s
# Clears all team's progress
scoreboard players set red gr_teamphase 999
scoreboard players set blue gr_teamphase 999
scoreboard players set green gr_teamphase 999
scoreboard players set yellow gr_teamphase 999
scoreboard players set cyan gr_teamphase 999
scoreboard players set orange gr_teamphase 999
scoreboard players set pink gr_teamphase 999
scoreboard players set purple gr_teamphase 999
# Back to hub
schedule clear master:timer/timeleft/sec
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/80s
# Not Event mode
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_redsb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_bluesb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_greensb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_yellowsb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_cyansb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_orangesb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_pinksb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : gr_purplesb