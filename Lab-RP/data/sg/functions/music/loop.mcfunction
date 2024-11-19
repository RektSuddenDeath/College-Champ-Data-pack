
scoreboard players add musicTicks sg_game 1
execute if score musicTicks sg_game matches 4674.. run execute as @a at @s run playsound minecraft:music.sg voice @s ~ ~ ~ 0.8
execute if score musicTicks sg_game matches 4674.. run scoreboard players set musicTicks sg_game 0

execute if score gameflag sg_game matches 0 run stopsound @a voice minecraft:music.sg
execute if score OvertimeActive sg_game matches 1 run stopsound @a voice minecraft:music.sg

execute if score OvertimeActive sg_game matches 1 run function sg:music/overtime_init
execute if score gameflag sg_game matches 1 if score OvertimeActive sg_game matches 0 run schedule function sg:music/loop 1t