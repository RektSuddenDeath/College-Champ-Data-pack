
execute as @e[type=area_effect_cloud,tag=red,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "红队","color":"red"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=blue,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "蓝队","color":"blue"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=green,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "绿队","color":"green"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=yellow,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "黄队","color":"yellow"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=cyan,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "青队","color":"dark_aqua"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=orange,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "橙队","color":"gold"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=purple,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "紫队","color":"dark_purple"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=pink,tag=teamsort] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "粉队","color":"light_purple"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]


# 递归继续输出队伍排名
scoreboard players add Position TeamRank 1
execute if score Position TeamRank <= Total TeamSort run function utils:gamerank/announce
execute unless score Position TeamRank <= Total TeamSort run kill @e[type=area_effect_cloud,tag=teamsort]