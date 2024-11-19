
schedule clear battlebox:beginlistener
schedule clear battlebox:game_new/next_round

# FX

tellraw @a ["§b[§r曺§b] 已重置当前回合状态，请重新选择工具包。"]

# Teleport Players
function battlebox:game_new/round_teleport

# Universal

## Update match count
execute store result storage bb:scb round int 1 run scoreboard players get round bb_game
execute store result storage bb:scb total int 1 run scoreboard players get matches bb_game
function battlebox:scoreboard/macro_match_count with storage bb:scb
##

function master:sfx/battlebox
scoreboard players set gameflag bb_game 1
scoreboard players set timeleft_tick bb_game 1200

kill @e[type=item]
kill @e[type=arrow]
kill @e[type=spectral_arrow]
kill @e[type=trident]
clear @a
kill @e[type=item_display,tag=bb_remix_display]

# 清除Remix相关的Tags
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_time
tag @e[type=marker,tag=bb_centeranchor] remove center_lock_kill
tag @e[type=marker,tag=bb_centeranchor] remove game_mod_haste


function battlebox:enablekits

gamemode spectator @a[team=spec]
gamemode adventure @a[team=!spec]

function battlebox:defaultkit

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
schedule function battlebox:game_new/round_ready 15s
scoreboard objectives setdisplay below_name health

# Title FX ## TBDONE!!!
title @a title ["回合 ",{"score":{"name": "round","objective": "bb_game"}},"/",{"score":{"name": "matches","objective": "bb_game"}}]
title @a subtitle ""
function battlebox:game_new/macro_round_subtitles with storage bb:opponent

# 轮空判定
execute if score red bb_round_off matches 1 run function battlebox:game_new/match_result/break/red
execute if score blue bb_round_off matches 1 run function battlebox:game_new/match_result/break/blue
execute if score green bb_round_off matches 1 run function battlebox:game_new/match_result/break/green
execute if score yellow bb_round_off matches 1 run function battlebox:game_new/match_result/break/yellow
execute if score cyan bb_round_off matches 1 run function battlebox:game_new/match_result/break/cyan
execute if score pink bb_round_off matches 1 run function battlebox:game_new/match_result/break/pink
execute if score orange bb_round_off matches 1 run function battlebox:game_new/match_result/break/orange
execute if score purple bb_round_off matches 1 run function battlebox:game_new/match_result/break/purple
