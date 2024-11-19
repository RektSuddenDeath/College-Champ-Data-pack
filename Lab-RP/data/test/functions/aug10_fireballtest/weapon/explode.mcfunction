
#particle cloud ~ ~ ~ 0 0 0 0 100 force
fill ~1.8 ~1.2 ~1.8 ~-1.8 ~0.2 ~-1.8 air
fill ~0.95 ~2.4 ~0.95 ~-0.95 ~1.2 ~-0.95 air
fill ~0.95 ~0.2 ~0.95 ~-0.95 ~-1.2 ~-0.95 air

execute if score randomtick rsr_explodertick matches 1..3 run setblock ~ ~2.2 ~ air
execute if score randomtick rsr_explodertick matches 1..4 run setblock ~2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 2..4 run setblock ~ ~-2.2 ~ air
execute if score randomtick rsr_explodertick matches 2..5 run setblock ~ ~ ~-2.2 air
execute if score randomtick rsr_explodertick matches 3..6 run setblock ~2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 3..5 run setblock ~2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 4..6 run setblock ~-2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 4..5 run setblock ~-2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 5..6 run setblock ~2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 5 run setblock ~ ~ ~2.2 air
execute if score randomtick rsr_explodertick matches 6..7 run setblock ~-2.2 ~ ~ air
execute if score randomtick rsr_explodertick matches 6..8 run setblock ~ ~ ~-2.2 air
execute if score randomtick rsr_explodertick matches 7 run setblock ~ ~ ~-2.2 air
execute if score randomtick rsr_explodertick matches 7..8 run setblock ~ ~ ~-2.2 air
execute if score randomtick rsr_explodertick matches 3..8 run setblock ~ ~ ~2.2 air
execute if score randomtick rsr_explodertick matches 4..8 run setblock ~ ~ ~2.2 air
kill @s