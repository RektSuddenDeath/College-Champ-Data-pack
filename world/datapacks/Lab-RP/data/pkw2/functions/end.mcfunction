

# Flags
scoreboard players set gameflag pkw2_game 0
scoreboard players set RoundActive tourney_stats 0
worldborder warning distance 0
gamerule doDaylightCycle false
schedule clear master:latejoinspec
# Stopsound and SFX
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
execute as @a at @s run playsound music.gameendmusic record @s

# Scoreboard changes
schedule clear master:timer/timeleft/sec
schedule clear pkw2:timer/overtime/sec
execute if score eventmode tourney_stats matches 0 run scoreboard players reset :

# Title
title @a times 0 60 20
title @a title "§c§l游戏结束！"
title @a subtitle ""
# Clear
gamemode spectator @a
clear @a
effect clear @a
schedule clear pkw2:hotbar
schedule clear pkw2:checkpoint/master
# In 45s, remove the bossbar
schedule function pkw2:bossbar/remove 45s
# Score Summary
scoreboard objectives add pkw2_gameMedals dummy
scoreboard players set @a pkw2_gameMedals 0
execute as @a[team=!spec] run scoreboard players operation @s pkw2_gameMedals += @s stoneMedal
execute as @a[team=!spec] run scoreboard players operation @s pkw2_gameMedals += @s bronzeMedal
execute as @a[team=!spec] run scoreboard players operation @s pkw2_gameMedals += @s silverMedal
execute as @a[team=!spec] run scoreboard players operation @s pkw2_gameMedals += @s goldMedal

tellraw @a "§6即将进行积分结算……"
schedule function pkw2:scoring/init 4s
# Back To Hub
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/60s
# Scoreboard
function pkw2:scoreboard/end