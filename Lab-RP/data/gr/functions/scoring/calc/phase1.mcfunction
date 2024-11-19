
# 只取前三名，展示，不计分
scoreboard players set Marker gr_ranktime 100000000
execute as @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=1..120000}] run scoreboard players operation Marker gr_ranktime < @s gr_ranktime

execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation @s gr_ranking = Step gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..9 run tellraw @a ["",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..100 run tellraw @a ["",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..9 run tellraw @a ["",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..100 run tellraw @a ["",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players add Step gr_ranking 1
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players set @s gr_ranktime 200000000

execute if score Step gr_ranking matches 1..3 if entity @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=1..120000}] unless score Step gr_ranking > total gr_game run function gr:scoring/calc/phase1