
scoreboard players set RoundActive tourney_stats 0

schedule clear master:timer/timeleft/sec
schedule function battlebox:game_new/winanno 2s
scoreboard players set gameflag bb_game 0
tellraw @a ["",{"text": "以下是本轮对战情况: ","bold": true}]

execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2

title @a times 0 60 10
title @a title ["",{"text": "回合结束！","color": "red","bold": true}]

execute as @a run scoreboard players operation @s bb_gamekills += @s bb_roundkills
scoreboard players set @a bb_roundkills 0

schedule clear battlebox:statusbar/update
tag @a remove bb_alive

execute if score round bb_game < matches bb_game run function master:timer/nextround/10s
execute if score round bb_game < matches bb_game run schedule function battlebox:game_new/next_round 10s
execute if score round bb_game = matches bb_game run function battlebox:game_new/game_end

# Hide away in game bossbar
bossbar set bb_bossbar_red visible false
bossbar set bb_bossbar_blue visible false
bossbar set bb_bossbar_green visible false
bossbar set bb_bossbar_yellow visible false
bossbar set bb_bossbar_cyan visible false
bossbar set bb_bossbar_pink visible false
bossbar set bb_bossbar_orange visible false
bossbar set bb_bossbar_purple visible false

schedule clear utils:health_bar/loop
