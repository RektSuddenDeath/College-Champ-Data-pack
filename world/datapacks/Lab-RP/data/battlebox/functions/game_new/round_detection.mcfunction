
function battlebox:blockscalc

execute if score red bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/red with storage bb:opponent
execute if score blue bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/blue with storage bb:opponent
execute if score green bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/green with storage bb:opponent
execute if score yellow bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/yellow with storage bb:opponent
execute if score cyan bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/cyan with storage bb:opponent
execute if score pink bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/pink with storage bb:opponent
execute if score orange bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/orange with storage bb:opponent
execute if score purple bb_blockscalc >= winreq bb_game run function battlebox:game_new/match_result/win/purple with storage bb:opponent


# Clear illegal Blocks
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~3 ~1 ~3 ~-3 ~2 ~-3 air replace #minecraft:wool
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~3 ~ ~3 ~-3 ~ ~3 air replace #minecraft:wool
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~3 ~ ~3 ~3 ~ ~-3 air replace #minecraft:wool
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~-3 ~ ~-3 ~-3 ~ ~3 air replace #minecraft:wool
execute as @e[type=marker,tag=bb_centeranchor] at @s run fill ~-3 ~ ~-3 ~3 ~ ~-3 air replace #minecraft:wool

# Center Unlock?
execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_kill] at @s positioned ~-29 0 ~-29 if entity @a[scores={bb_death=1},dx=58,dz=58,dy=60] run tellraw @a[dx=58,dz=58,dy=60] ["","[",{"text": "▶","color":"yellow"},"]"," §b有玩家被淘汰，中心已解锁！"]
execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_kill] at @s positioned ~-29 0 ~-29 if entity @a[scores={bb_death=1},dx=58,dz=58,dy=60] run tag @s add center_unlock
execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_time] at @s positioned ~-29 0 ~-29 if score timeleft_tick bb_game matches ..1000 run tellraw @a[dx=58,dz=58,dy=60] ["","[",{"text": "▶","color":"yellow"},"]"," §b游戏已进行§f10§b秒，中心已解锁！"]
execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_time] at @s positioned ~-29 0 ~-29 if score timeleft_tick bb_game matches ..1000 run tag @s add center_unlock
execute as @e[type=marker,tag=bb_centeranchor,tag=center_unlock] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 white_wool replace black_concrete
execute as @e[type=marker,tag=bb_centeranchor,tag=center_unlock] at @s run tag @s remove center_lock_kill
execute as @e[type=marker,tag=bb_centeranchor,tag=center_unlock] at @s run tag @s remove center_lock_time
execute as @e[type=marker,tag=bb_centeranchor,tag=center_unlock] at @s run tag @s remove center_locked
execute as @e[type=marker,tag=bb_centeranchor,tag=center_unlock] at @s run tag @s remove center_unlock


function battlebox:general/death

function battlebox:kill/1

execute if score minute master.timer matches 0 if score second master.timer matches 0 run function battlebox:game_new/round_timeout with storage bb:opponent
execute if score completed bb_game >= arenas bb_game run function battlebox:game_new/round_end
execute if score gameflag bb_game matches 1 run schedule function battlebox:game_new/round_detection 1t