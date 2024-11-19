
execute as @e[type=area_effect_cloud,tag=red] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "红队","color":"red"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=blue] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "蓝队","color":"blue"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=green] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "绿队","color":"green"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=yellow] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "黄队","color":"yellow"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=cyan] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "青队","color":"dark_aqua"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=orange] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "橙队","color":"gold"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=purple] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "紫队","color":"dark_purple"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]
execute as @e[type=area_effect_cloud,tag=pink] if score @s TeamRank = Position TeamRank run tellraw @a ["",{"score":{"name": "Position","objective":"TeamRank"}},". ",{"text": "粉队","color":"light_purple"},": ",{"score":{"name":"@s","objective": "TeamCached"}}]


scoreboard players add Position TeamRank 1
execute if score Position TeamRank <= Total TeamSort run function utils:teamrank/announce
execute unless score Position TeamRank <= Total TeamSort run kill @e[type=area_effect_cloud,tag=teamsort]