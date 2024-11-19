
execute as @e[type=marker,tag=room_center_anchor,tag=outer_ring] at @s positioned ~-27 100 ~-27 run tellraw @a[dx=54,dy=180,dz=54] ["§c[§r鼱§c] ","§c§l房间即将完全熔化！ §e安全门已开始降低。"]
execute if score round meltdown_game matches 1 run scoreboard players set @e[type=marker,tag=gate_anchor,tag=outer_ring,tag=meltdown_anchor_round_1] meltdown_gate_close_time 0
execute if score round meltdown_game matches 2 run scoreboard players set @e[type=marker,tag=gate_anchor,tag=outer_ring,tag=meltdown_anchor_round_2] meltdown_gate_close_time 0
execute if score round meltdown_game matches 3 run scoreboard players set @e[type=marker,tag=gate_anchor,tag=outer_ring,tag=meltdown_anchor_round_3] meltdown_gate_close_time 0
