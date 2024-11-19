
execute if score gameflag rsr_game matches 0 run return 1
#$minY rsr_playerY
# CD
scoreboard players remove @a rsr_cd_low_height 1

execute as @a[tag=alive] run execute store result score @s rsr_elim_height_diff run data get entity @s Pos[1]
execute as @a[tag=alive] run scoreboard players operation @s rsr_elim_height_diff -= $minY rsr_playerY

execute as @a[tag=alive,scores={rsr_elim_height_diff=..2,rsr_cd_low_height=..0}] run function rocketspleefrush:height_warn/self

scoreboard players set @a[scores={rsr_elim_height_diff=..2}] rsr_cd_low_height 50

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:height_warn/loop 1t