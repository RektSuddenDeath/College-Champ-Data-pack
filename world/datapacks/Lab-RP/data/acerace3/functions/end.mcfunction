
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag ar_game 0
gamemode spectator @a
scoreboard players set finishwarn ar_game 0
schedule clear master:sfx/overtime
schedule clear master:timer/timeleft/sec
schedule clear utils:launchpad/loop

execute as @a run attribute @s generic.movement_speed base set 0.1

title @a times 0 60 20
title @a title [{"text":"游戏结束！","color":"red","bold":true}]

tellraw @a " "

scoreboard players set @a ar_cp 0

# execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1
execute as @a at @s run playsound music.gameendmusic record @s

kill @e[type=boat]
clear @a

# Remove the Leader Lines
scoreboard players reset $ar_sb_l4 ar_sb
scoreboard players reset $ar_sb_l3 ar_sb
scoreboard players reset $ar_sb_l2 ar_sb
scoreboard players reset $ar_sb_l1 ar_sb
scoreboard players reset $ar_sb_l0 ar_sb
scoreboard players reset $ar_sb_l-1 ar_sb

# 积分结算
tellraw @a ""
tellraw @a "§6即将进行积分结算……"
tellraw @a ""
function acerace3:section_score/init

schedule function acerace3:text/section_champions 2s
schedule function acerace3:section_score/champions 4s
schedule function acerace3:text/section_scores 12s
schedule function acerace3:section_score/1 280t
schedule function acerace3:section_score/2 290t
schedule function acerace3:section_score/3 300t
schedule function acerace3:section_score/4 310t
schedule function acerace3:section_score/5 320t
schedule function acerace3:section_score/6 330t
schedule function acerace3:section_score/7 340t
schedule function acerace3:section_score/8 350t
schedule function acerace3:section_score/cleanup 351t

schedule function utils:text/gamescore 26s
schedule function utils:text/fastestgame 34s
schedule function acerace3:mvpannouncement 36s
schedule function utils:text/fastestlap 44s
schedule function acerace3:flapdec 46s
schedule function utils:text/eventstandings 54s

function utils:personal/update
schedule clear master:latejoinspec
function utils:no_drop_stop

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : ar_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players set §6 ar_sb 6
execute if score eventmode tourney_stats matches 0 run team modify placeholder_6 suffix [{"text":"游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/80s

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7ACE_RACE_IN_GAME§f -> GAME_ENDS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]