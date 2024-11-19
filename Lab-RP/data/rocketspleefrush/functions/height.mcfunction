
execute as @a[tag=alive] run execute store result score @s rsr_ylevel run data get entity @s Pos[1] 10000

scoreboard players set Marker rsr_ylevel 2147483647

execute as @a[tag=alive] run scoreboard players operation Marker rsr_ylevel < @s rsr_ylevel

execute as @a[tag=alive] if score @s rsr_ylevel = Marker rsr_ylevel run scoreboard players operation @s rsr_rank = TotalPlayers rsr_game
execute as @a[tag=alive] if score @s rsr_ylevel = Marker rsr_ylevel run tag @s remove alive

scoreboard players remove TotalPlayers rsr_game 1

execute unless score TotalPlayers rsr_game matches ..0 run function rocketspleefrush:height