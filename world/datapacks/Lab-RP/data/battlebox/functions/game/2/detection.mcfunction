# Calculate the amount of blocks around the marker
function battlebox:blockscalc

# Arena 1
execute if score red bb_blockscalc matches 9 run function battlebox:general/win/red 
execute if score red bb_blockscalc matches 9 run function battlebox:general/lose/green
execute if score red bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_redanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 red_concrete

execute if score green bb_blockscalc matches 9 run function battlebox:general/win/green 
execute if score green bb_blockscalc matches 9 run function battlebox:general/lose/red
execute if score green bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_greenanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 green_concrete


# Arena 2
execute if score blue bb_blockscalc matches 9 run function battlebox:general/win/blue 
execute if score blue bb_blockscalc matches 9 run function battlebox:general/lose/yellow
execute if score blue bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_blueanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 blue_concrete

execute if score yellow bb_blockscalc matches 9 run function battlebox:general/win/yellow 
execute if score yellow bb_blockscalc matches 9 run function battlebox:general/lose/blue
execute if score yellow bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_yellowanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 yellow_concrete

# Arena 3
execute if score cyan bb_blockscalc matches 9 run function battlebox:general/win/cyan 
execute if score cyan bb_blockscalc matches 9 run function battlebox:general/lose/orange
execute if score cyan bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_cyananchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 cyan_concrete

execute if score orange bb_blockscalc matches 9 run function battlebox:general/win/orange 
execute if score orange bb_blockscalc matches 9 run function battlebox:general/lose/cyan
execute if score orange bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_orangeanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 orange_concrete
# Arena 4

execute if score pink bb_blockscalc matches 9 run function battlebox:general/win/pink 
execute if score pink bb_blockscalc matches 9 run function battlebox:general/lose/purple
execute if score pink bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_pinkanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 pink_concrete

execute if score purple bb_blockscalc matches 9 run function battlebox:general/win/purple 
execute if score purple bb_blockscalc matches 9 run function battlebox:general/lose/pink
execute if score purple bb_blockscalc matches 9 run execute as @e[type=marker,tag=bb_purpleanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 purple_concrete

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

execute if score minute master.timer matches 0 if score second master.timer matches 0 run function battlebox:game/2/timeout
execute if score completed bb_game matches 4 run function battlebox:game/2/end
execute if score gameflag bb_game matches 1 run schedule function battlebox:game/2/detection 1t