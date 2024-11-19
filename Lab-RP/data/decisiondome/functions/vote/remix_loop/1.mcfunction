execute as @e[type=area_effect_cloud,tag=voteaec,tag=!set_extra_eggs] store result score @s dd_remix_extra_chickens run random value 1..9
execute as @e[type=area_effect_cloud,tag=voteaec,tag=!set_extra_eggs] run tag @s add set_extra_eggs

schedule function decisiondome:vote/remix_loop/1 1t