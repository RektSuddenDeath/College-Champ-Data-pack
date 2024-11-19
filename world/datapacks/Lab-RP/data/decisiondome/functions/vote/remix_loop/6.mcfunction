
execute as @a[team=!spec] if score @s dd_remix_sneaks = @s dd_remix_sneaks_prev run scoreboard players operation @s dd_remix_sneaks_milestone = @s dd_remix_sneaks
execute as @a[team=!spec] if score @s dd_remix_sneaks = @s dd_remix_sneaks_prev run scoreboard players add @s dd_remix_sneaks_milestone 5

execute as @a[team=!spec] if score @s dd_remix_sneaks = @s dd_remix_sneaks_milestone at @s run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute as @a[team=!spec] if score @s dd_remix_sneaks = @s dd_remix_sneaks_milestone at @s run scoreboard players add dome_chickens tourney_stats 1

execute as @a[team=!spec] run scoreboard players operation @s dd_remix_sneaks_prev = @s dd_remix_sneaks
schedule function decisiondome:vote/remix_loop/6 1t