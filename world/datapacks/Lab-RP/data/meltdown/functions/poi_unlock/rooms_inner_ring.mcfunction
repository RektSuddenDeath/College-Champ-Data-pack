
execute if score round meltdown_game matches 1 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_1] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace quartz_pillar
execute if score round meltdown_game matches 2 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_2] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace quartz_pillar
execute if score round meltdown_game matches 3 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_3] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace quartz_pillar

execute if score round meltdown_game matches 1 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_1] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace smooth_quartz
execute if score round meltdown_game matches 2 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_2] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace smooth_quartz
execute if score round meltdown_game matches 3 as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,tag=inner_corner,tag=meltdown_anchor_round_3] at @s run fill ~2 ~5 ~2 ~-2 ~ ~-2 air replace smooth_quartz

execute as @a at @s run playsound sound.generalshrinkwarn record @s
tellraw @a ["§b[§r栄§b] ","§b§l内圈四边房间现已解锁！"]

# MAP UPDATE