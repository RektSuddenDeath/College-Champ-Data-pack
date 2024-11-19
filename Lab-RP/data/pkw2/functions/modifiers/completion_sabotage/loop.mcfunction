
execute as @a[scores={pkw2_sabotage=1..}] at @s run function pkw2:modifiers/completion_sabotage/check

scoreboard players set @a pkw2_sabotage 0
scoreboard players enable @a pkw2_sabotage

execute if score gameflag pkw2_game matches 1 run schedule function pkw2:modifiers/completion_sabotage/loop 1t
execute if score gameflag pkw2_game matches 0 run tag @a remove pkw2_sabotage_used