
# Summons corresponding entities
# All Effects except for voting chicken shall disappear before the game is chosen

# For Each Tool
## FIRE BOMB (ID:1)
tag @a[scores={dd_toolused=1..,dd_toolheld=1}] add firebomb_o

execute as @e[type=snowball,nbt={Item:{tag:{toolNo:1}}}] at @s run function decisiondome:tools/firefind
execute as @e[type=area_effect_cloud,tag=ddtools,tag=firebomb] at @s unless predicate decisiondome:is_riding_snowball run function decisiondome:tools/fire
scoreboard players remove firebomb dd_tooltime 1
execute if score firebomb dd_tooltime matches 0 run execute as @e[type=area_effect_cloud,tag=ddcolumns] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air

## Chicken Swap (ID:2)
execute as @p[scores={dd_toolused=1..,dd_toolheld=2}] run function decisiondome:tools/chickenswap
## UNO Reverse Card (ID:3)
execute as @p[scores={dd_toolused=1..,dd_toolheld=3}] run function decisiondome:tools/unoreverse
## Mega Chicken Swap (ID:4)
execute as @p[scores={dd_toolused=1..,dd_toolheld=4}] run function decisiondome:tools/megaswap

## Sticky Segment(ID:5)
tag @a[scores={dd_toolused=1..,dd_toolheld=5}] add sticky_o

execute as @e[type=snowball,nbt={Item:{tag:{toolNo:5}}}] at @s run function decisiondome:tools/stickyfind
execute as @e[type=area_effect_cloud,tag=ddtools,tag=stickyseg] at @s unless predicate decisiondome:is_riding_snowball run function decisiondome:tools/sticky
scoreboard players remove sticky dd_tooltime 1
### Visual Effect
execute as @e[type=area_effect_cloud,tag=stickySegment] at @s run particle minecraft:happy_villager ~ ~0.25 ~ 0.25 0 0.25 1 2 force @a
### Make players and chicken unable to move and has no gravity in the segment
execute as @e[type=area_effect_cloud,tag=stickySegment] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {NoAI:1b,NoGravity:1b}
execute as @e[type=area_effect_cloud,tag=stickySegment] at @s run execute as @e[type=player,team=!spec,distance=0..0.5] run effect give @s slowness 1 127 true
execute as @e[type=area_effect_cloud,tag=stickySegment] at @s run execute as @e[type=player,team=!spec,distance=0..0.5] run effect give @s levitation 1 255 true
### Clean up
execute if score sticky dd_tooltime matches 0 run execute as @e[type=chicken] run data merge entity @s {NoAI:0b,NoGravity:0b}
execute if score sticky dd_tooltime matches 0 run execute as @e[type=chicken] run effect clear @a slowness
execute if score sticky dd_tooltime matches 0 run execute as @e[type=chicken] run effect clear @a levitation
execute if score sticky dd_tooltime matches 0 run tag @e[type=area_effect_cloud,tag=stickySegment] remove stickySegment

## Fox Loose(ID:6)
tag @a[scores={dd_toolused=1..,dd_toolheld=6}] add fox_o

execute as @e[type=snowball,nbt={Item:{tag:{toolNo:6}}}] at @s run function decisiondome:tools/foxfind
execute as @e[type=area_effect_cloud,tag=ddtools,tag=fox] at @s unless predicate decisiondome:is_riding_snowball run function decisiondome:tools/fox
scoreboard players remove foxlifespan dd_tooltime 1
execute if score foxlifespan dd_tooltime matches 0 run kill @e[type=fox,limit=2,tag=eatchicken]

## Hu Tao(ID:7)
execute as @p[scores={dd_toolused=1..,dd_toolheld=7}] run function decisiondome:tools/hutao
## Reset Dome (ID:8)
execute as @p[scores={dd_toolused=1..,dd_toolheld=8}] run function decisiondome:tools/resetdome
## Zhongli Shield (ID:9)
tag @a[scores={dd_toolused=1..,dd_toolheld=9}] add zhongli_o

execute as @e[type=snowball,nbt={Item:{tag:{toolNo:9}}}] at @s run function decisiondome:tools/zhonglifind
execute as @e[type=area_effect_cloud,tag=ddtools,tag=zhongli] at @s unless predicate decisiondome:is_riding_snowball run function decisiondome:tools/zhongli

## Zooming Chicken
execute as @p[scores={dd_toolused=1..,dd_toolheld=10}] run function decisiondome:tools/zoomingchicken
### Particle Effects
execute as @e[type=chicken,nbt={Invulnerable:1b}] at @s run particle wax_on ~ ~ ~ 0 0 0 1 1 force @a
# Visual Fix
execute if score state egg_visfix matches 1 as @e[type=snowball,tag=ddtools] run data modify entity @s Air set value 1s
execute if score state egg_visfix matches -1 as @e[type=snowball,tag=ddtools] run data modify entity @s Air set value 0s

## Xiao
execute as @p[scores={dd_toolused=1..,dd_toolheld=11}] if score second master.timer matches ..10 run function decisiondome:tools/xiao
execute as @p[scores={dd_toolused=1..,dd_toolheld=11}] if score second master.timer matches 11.. run function decisiondome:tools/xiao_fail

# Detect what are in player's hands
scoreboard players set @a dd_toolheld -1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:1}}}] dd_toolheld 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:2}}}] dd_toolheld 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:3}}}] dd_toolheld 3
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:4}}}] dd_toolheld 4
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:5}}}] dd_toolheld 5
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:6}}}] dd_toolheld 6
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:7}}}] dd_toolheld 7
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:8}}}] dd_toolheld 8
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:9}}}] dd_toolheld 9
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:10}}}] dd_toolheld 10
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{toolNo:11}}}] dd_toolheld 11

# Cleanup
kill @e[type=snowball,nbt={Item:{tag:{toolItem:1}}}]
scoreboard players set @a dd_toolused 0
# Loop
execute if score phase tourney_stats matches 3..4 run schedule function decisiondome:tools/master 1t