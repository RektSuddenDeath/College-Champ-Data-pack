
function master:sfx/battlebox
scoreboard players set gameflag bb_game 1
scoreboard players set timeleft_tick bb_game 1200

kill @e[type=item]
kill @e[type=arrow]
# 提供Remix的不清空接口
clear @a[tag=!bb_noclear]
execute as @a[scores={bb_keepinv_stacks=1..},tag=bb_noclear] run tellraw @s ["","§a§l使用了一次保留物品栏次数，剩余",{"score":{"name": "@s","objective": "bb_keepinv_stacks"},"color": "gold","bold": true},"§a§l次。"]
execute as @a[scores={bb_keepinv_stacks=1..},tag=bb_noclear] run scoreboard players remove @s bb_keepinv_stacks 1
tag @a remove bb_noclear

# 清除Remix相关的Tags
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_time
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_kill
tag @e[type=marker,tag=bb_centeranchor] remove game_mod_haste

tp @a[team=red] 21 33 75 90 0
tp @a[team=orange] -21 33 75 270 0
tp @a[team=blue] 21 33 150 90 0
tp @a[team=purple] -21 33 150 270 0
tp @a[team=green] 21 33 225 90 0
tp @a[team=cyan] -21 33 225 270 0
tp @a[team=yellow] 21 33 300 90 0
tp @a[team=pink] -21 33 300 270 0

spawnpoint @a[team=red] 21 33 75
spawnpoint @a[team=orange] -21 33 75
spawnpoint @a[team=blue] 21 33 150
spawnpoint @a[team=purple] -21 33 150
spawnpoint @a[team=green] 21 33 225
spawnpoint @a[team=cyan] -21 33 225
spawnpoint @a[team=yellow] 21 33 300
spawnpoint @a[team=pink] -21 33 300


tp @e[type=marker,tag=bb_redanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_blueanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]
tp @e[type=marker,tag=bb_greenanchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_yellowanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]
tp @e[type=marker,tag=bb_cyananchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_pinkanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]
tp @e[type=marker,tag=bb_orangeanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_purpleanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]

#region Play Texts
title @a times 10 40 10
title @a title "回合 6/7"
title @a[team=red] subtitle ["",{"text": "红队","color": "red"}," vs. ",{"text": "橙队","color":"gold"}]
title @a[team=blue] subtitle ["",{"text": "蓝队","color": "blue"}," vs. ",{"text": "紫队","color": "dark_purple"}]
title @a[team=green] subtitle ["",{"text": "绿队","color": "green"}," vs. ",{"text": "青队","color":"dark_aqua"}]
title @a[team=yellow] subtitle ["",{"text": "黄队","color": "yellow"}," vs. ",{"text": "粉队","color":"light_purple"}]
title @a[team=cyan] subtitle ["",{"text": "青队","color":"dark_aqua"}," vs. ",{"text": "绿队","color": "green"}]
title @a[team=pink] subtitle ["",{"text": "粉队","color":"light_purple"}," vs. ",{"text": "黄队","color": "yellow"}]
title @a[team=orange] subtitle ["",{"text": "橙队","color":"gold"}," vs. ",{"text": "红队","color": "red"}]
title @a[team=purple] subtitle ["",{"text": "紫队","color": "dark_purple"}," vs. ",{"text": "蓝队","color": "blue"}]
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
execute if score map bb_game matches 7 run function battlebox:mapindv/7/structure

execute if score map bb_game matches 0 run function battlebox:mapindv/0/spawns
execute if score map bb_game matches 1 run function battlebox:mapindv/1/spawns
execute if score map bb_game matches 2 run function battlebox:mapindv/2/spawns
execute if score map bb_game matches 3 run function battlebox:mapindv/3/spawns
execute if score map bb_game matches 4 run function battlebox:mapindv/4/spawns
execute if score map bb_game matches 5 run function battlebox:mapindv/5/spawns
execute if score map bb_game matches 6 run function battlebox:mapindv/6/spawns
execute if score map bb_game matches 7 run function battlebox:mapindv/7/spawns
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
function battlebox:scoreboard/game6
execute if score remix bb_game matches 0 run schedule function battlebox:game/6/ready 15s
execute if score remix bb_game matches 1 run schedule function battlebox:game/6/ready 25s
scoreboard objectives setdisplay below_name health
scoreboard players set completed bb_game 0
scoreboard players set round bb_game 6

function battlebox:statusbar/pregameinit

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> Round roster:"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§c红队","§7 vs."," §6橙队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§9蓝队","§7 vs."," §5紫队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§a绿队","§7 vs."," §3青队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§e黄队","§7 vs."," §d粉队"]