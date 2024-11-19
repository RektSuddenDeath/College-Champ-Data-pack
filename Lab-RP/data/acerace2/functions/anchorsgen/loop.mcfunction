
# Fetch the running player's coords
execute store result score NewX posAnchors run data get entity @p[tag=gen] Pos[0] 10
execute store result score NewY posAnchors run data get entity @p[tag=gen] Pos[1] 10
execute store result score NewZ posAnchors run data get entity @p[tag=gen] Pos[2] 10

# Compare if previous coords and new coords match (at least 0.1 block difference on any axis is considered "different")

scoreboard players set disapprove posAnchors 0
execute if score NewX posAnchors = PrevX posAnchors run scoreboard players add disapprove posAnchors 1
execute if score NewY posAnchors = PrevY posAnchors run scoreboard players add disapprove posAnchors 1
execute if score NewZ posAnchors = PrevZ posAnchors run scoreboard players add disapprove posAnchors 1

execute unless score disapprove posAnchors matches 3 run execute as @p[tag=gen] at @s run summon area_effect_cloud ~ ~ ~ {Duration:999999999,WaitTime:-99999999,Tags:["posAnchor","newAnchor"]}
scoreboard players operation @e[type=area_effect_cloud,tag=newAnchor] anchorNo = currentNo anchorNo

execute if entity @e[type=area_effect_cloud,tag=newAnchor] run scoreboard players add currentNo anchorNo 1
# Store the coords as previous coords
scoreboard players operation PrevX posAnchors = NewX posAnchors
scoreboard players operation PrevY posAnchors = NewY posAnchors
scoreboard players operation PrevZ posAnchors = NewZ posAnchors

# Clear the previous newAnchor tag
tag @e[type=area_effect_cloud,tag=newAnchor] remove newAnchor

# Loops after 0.1s interval (Subject to change)
schedule function acerace2:anchorsgen/loop 2t