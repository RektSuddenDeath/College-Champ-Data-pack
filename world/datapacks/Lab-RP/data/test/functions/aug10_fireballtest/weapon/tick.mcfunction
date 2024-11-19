
execute as @e[type=fireball,tag=tnt] at @s run summon area_effect_cloud ~ ~-1 ~ {Duration:9999999,Tags:["fire"]}

#execute as @e[type=fireball,tag=tnt] at @s run particle damage_indicator ~ ~ ~ 0 0 0 0 100 force

execute as @e[type=area_effect_cloud,tag=fire] at @s run fill ~12 ~8 ~12 ~-12 ~-8 ~-12 air replace fire
scoreboard players add @e[type=area_effect_cloud,tag=fire] AecClearFire 1
kill @e[type=area_effect_cloud,tag=fire,scores={AecClearFire=2..}]

scoreboard players add @e[type=fireball,tag=tnt] FireballTime 1
scoreboard players add @e[type=area_effect_cloud,tag=fire] FireballTime 1

execute as @e[type=fireball,tag=tnt,scores={FireballTime=40..}] on passengers run kill @s
kill @e[type=fireball,tag=tnt,scores={FireballTime=40..}]

# Momentum Carrying
function test:aug10_fireballtest/weapon/loop_momentum

# Random Ticks
# execute as @e[type=area_effect_cloud,tag=ridingfireball,predicate=test:aug10_fireballtest/is_riding_fireball] run data modify entity @s Rotation set from entity @e[type=fireball,sort=nearest,limit=1]
scoreboard players add randomtick rsr_explodertick 1
execute if score randomtick rsr_explodertick matches 9.. run scoreboard players set randomtick rsr_explodertick 1

# NEW ALGORITHM
execute as @e[type=area_effect_cloud,tag=ridingfireball,predicate=!rocketspleefrush:is_riding_fireball] run tag @s add to_explode
function test:aug10_fireballtest/weapon/explode_queue

# Update Player Location
function test:aug10_fireballtest/weapon/update_player_location

schedule function test:aug10_fireballtest/weapon/tick 1t