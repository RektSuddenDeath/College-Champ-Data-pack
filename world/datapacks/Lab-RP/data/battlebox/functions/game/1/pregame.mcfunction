
schedule clear battlebox:beginlistener

function master:sfx/battlebox
scoreboard players set gameflag bb_game 1
scoreboard players set timeleft_tick bb_game 1200

kill @e[type=item]
kill @e[type=arrow]
clear @a
kill @e[type=item_display,tag=bb_remix_display]

# 清除Remix相关的Tags
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_time
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_kill
tag @e[type=marker,tag=bb_centeranchor] remove game_mod_haste


tp @a[team=red] 21 33 75 facing 0 34 75
tp @a[team=blue] -21 33 75 facing 0 34 75
tp @a[team=green] 21 33 150 facing 0 34 150
tp @a[team=yellow] -21 33 150 facing 0 34 150
tp @a[team=cyan] 21 33 225 facing 0 34 225
tp @a[team=pink] -21 33 225 facing 0 34 225
tp @a[team=orange] 21 33 300 facing 0 34 300
tp @a[team=purple] -21 33 300 facing 0 34 300

spawnpoint @a[team=red] 21 33 75
spawnpoint @a[team=blue] -21 33 75
spawnpoint @a[team=green] 21 33 150
spawnpoint @a[team=yellow] -21 33 150
spawnpoint @a[team=cyan] 21 33 225
spawnpoint @a[team=pink] -21 33 225
spawnpoint @a[team=orange] 21 33 300
spawnpoint @a[team=purple] -21 33 300

tp @e[type=marker,tag=bb_redanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_blueanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_greenanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]
tp @e[type=marker,tag=bb_yellowanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]
tp @e[type=marker,tag=bb_cyananchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_pinkanchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_orangeanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]
tp @e[type=marker,tag=bb_purpleanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]

#region Play Texts
title @a times 10 40 10
title @a title "回合 1/7"
title @a[team=red] subtitle ["",{"text": "红队","color": "red"},{"text": " vs. ","color": "white"},{"text": "蓝队","color": "blue"}]
title @a[team=blue] subtitle ["",{"text": "蓝队","color": "blue"},{"text": " vs. ","color": "white"},{"text": "红队","color": "red"}]
title @a[team=green] subtitle ["",{"text": "绿队","color": "green"},{"text": " vs. ","color": "white"},{"text": "黄队","color": "yellow"}]
title @a[team=yellow] subtitle ["",{"text": "黄队","color": "yellow"},{"text": " vs. ","color": "white"},{"text": "绿队","color": "green"}]
title @a[team=cyan] subtitle ["",{"text": "青队","color":"dark_aqua"}," vs. ",{"text": "粉队","color":"light_purple"}]
title @a[team=pink] subtitle ["",{"text": "粉队","color":"light_purple"}," vs. ",{"text": "青队","color":"dark_aqua"}]
title @a[team=orange] subtitle ["",{"text": "橙队","color":"gold"}," vs. ",{"text": "紫队","color": "dark_purple"}]
title @a[team=purple] subtitle ["",{"text": "紫队","color": "dark_purple"}," vs. ",{"text": "橙队","color":"gold"}]
#endregion
function battlebox:enablekits

gamemode spectator @a[team=spec]
#region Give Default Kits

function battlebox:defaultkit

 

#endregion

# Reset Centers
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 white_wool



# Reset Map
execute if score map bb_game matches 0 run function battlebox:mapindv/0/structure
execute if score map bb_game matches 1 run function battlebox:mapindv/1/structure
execute if score map bb_game matches 2 run function battlebox:mapindv/2/structure
execute if score map bb_game matches 3 run function battlebox:mapindv/3/structure
execute if score map bb_game matches 4 run function battlebox:mapindv/4/structure
execute if score map bb_game matches 5 run function battlebox:mapindv/5/structure
execute if score map bb_game matches 6 run function battlebox:mapindv/6/structure

execute as @e[type=marker,tag=battleboxanchor,tag=spawns] at @s run fill ~-1 ~ ~3 ~2 ~3 ~-3 air
# Reset attributes
execute as @a run attribute @s generic.attack_damage base set 1.0
effect clear @a
effect give @a fire_resistance 16 0 true
effect give @a instant_health 20 0 true
# Reset Killboards
scoreboard players set @a bb_kills 0
scoreboard players set @a bb_death 0

scoreboard players set @a greenKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0

# 
function master:timer/selkit/battlebox
function battlebox:scoreboard/game1
execute if score remix bb_game matches 0 run schedule function battlebox:game/1/ready 15s
execute if score remix bb_game matches 1 run schedule function battlebox:game/1/ready 25s

scoreboard objectives setdisplay below_name health
scoreboard players set completed bb_game 0
scoreboard players set round bb_game 1

function battlebox:statusbar/pregameinit

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7BATTLE_BOX_PREGAME§f -> BATTLE_BOX_IN_GAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
tellraw @a[tag=_transcript] ["  §bTranscript >> Round roster:"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§c红队","§7 vs."," §9蓝队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§a绿队","§7 vs."," §e黄队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§3青队","§7 vs."," §d粉队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§6橙队","§7 vs."," §5紫队"]