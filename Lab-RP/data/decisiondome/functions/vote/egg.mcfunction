
execute as @e[type=egg,tag=!voteegg,nbt={Item:{tag:{vote:1}}}] at @s run function decisiondome:vote/findegg 

# Egg Dupe while remix is inactive
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,tag=!extra_chicken_rolled] store result score @s dd_egg_dupe run random value 1..1000
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,tag=!extra_chicken_rolled] run tag @s add extra_chicken_rolled

# 1.6% Chance for a Legendary Egg, Half chance for positive, half for negative.
# 5.1% Chance for an Epic Egg.
## PARTICLE
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..16}] at @s run particle wax_on ~ ~-0.3 ~ 0.25 0.25 0.25 0.2 10 force @a
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=17..67}] at @s run particle dragon_breath ~ ~-0.3 ~ 0.25 0.25 0.25 0.2 10 force @a



# Always
#execute as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}

# Remix
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 1.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 2.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 3.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 4.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 5.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 6.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 7.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 8.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 1 as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg if score @s dd_remix_extra_chickens matches 9.. run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
# Duplication
## Legendary Negative
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=1..8}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken","negative_vote"],CustomName:'"Dinnerbone"',EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
## Legendary Positive
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=9..16}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
## Epic Positive
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=17..67}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=17..67}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=17..67}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=17..67}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}
## Common
execute if score remix_mode tourney_stats matches 0 as @e[type=area_effect_cloud,tag=voteaec,scores={dd_egg_dupe=68..}] at @s unless predicate decisiondome:is_riding_egg run summon chicken ~ ~ ~ {Tags:["validchicken"],EggLayTime:2147483647,Age:0,PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:0.10}]}


execute as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg run scoreboard players operation dome_chickens tourney_stats += @s dd_remix_extra_chickens
execute as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg run scoreboard players add dome_chickens tourney_stats 1

execute as @e[type=area_effect_cloud,tag=voteaec] at @s unless predicate decisiondome:is_riding_egg run kill @s

# Teleport all invalid chickens to void
execute as @e[type=chicken,tag=!validchicken] at @s run tp @s ~ 0 ~

# Visual Fix
scoreboard players operation state egg_visfix *= -1 egg_visfix
execute if score state egg_visfix matches 1 as @e[type=egg,tag=voteegg] run data modify entity @s Air set value 1s
execute if score state egg_visfix matches -1 as @e[type=egg,tag=voteegg] run data modify entity @s Air set value 0s

execute if score phase tourney_stats matches 3..4 run schedule function decisiondome:vote/egg 1t