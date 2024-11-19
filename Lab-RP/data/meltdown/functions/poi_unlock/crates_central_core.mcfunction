
execute if score round meltdown_game matches 1 as @e[type=marker,tag=meltdown_anchor,tag=capture_crate_anchor,tag=central_core,tag=meltdown_anchor_round_1] at @s run fill ~3 ~ ~3 ~-3 ~-3 ~-3 air replace cyan_stained_glass
execute if score round meltdown_game matches 2 as @e[type=marker,tag=meltdown_anchor,tag=capture_crate_anchor,tag=central_core,tag=meltdown_anchor_round_2] at @s run fill ~3 ~ ~3 ~-3 ~-3 ~-3 air replace cyan_stained_glass
execute if score round meltdown_game matches 3 as @e[type=marker,tag=meltdown_anchor,tag=capture_crate_anchor,tag=central_core,tag=meltdown_anchor_round_3] at @s run fill ~3 ~ ~3 ~-3 ~-3 ~-3 air replace cyan_stained_glass

scoreboard players set centre_crate_unlocked meltdown_game 1

execute as @a at @s run playsound sound.mapupdate record @s
tellraw @a ["§b[§r榮§b] ","§b§l中心的奖励箱争夺点已解锁！"]