
# 计分
scoreboard players set Marker gr_ranktime 100000000
execute as @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=1..120000}] run scoreboard players operation Marker gr_ranktime < @s gr_ranktime

execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation @s gr_ranking = Step gr_ranking

# Text is only played to own team
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation red gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=red] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=red] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=red] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=red] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation blue gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=blue] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=blue] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=blue] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=blue] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation green gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=green] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=green] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=green] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=green] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation yellow gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=yellow] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=yellow] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=yellow] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=yellow] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation cyan gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=cyan] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=cyan] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=cyan] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=cyan] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation pink gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=pink] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=pink] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=pink] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=pink] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation orange gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=orange] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=orange] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=orange] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=orange] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players operation purple gr_teamscore += score gr_ranking
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 0..5 run tellraw @a[team=purple] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 0..9 if score @s gr_rankms matches 10..95 run tellraw @a[team=purple] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":0",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 0..5 run tellraw @a[team=purple] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".0",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] if score @s gr_ranktime = Marker gr_ranktime if score @s gr_ranksec matches 10..59 if score @s gr_rankms matches 10..95 run tellraw @a[team=purple] ["","[","§6+",{"score":{"name":"score","objective": "gr_ranking"},"color": "gold"},"§6分","] ",{"score":{"name": "Step","objective": "gr_ranking"}},". ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
# Move
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players remove score gr_ranking 20
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players add Step gr_ranking 1
execute as @e[type=area_effect_cloud,tag=gr_general] if score @s gr_ranktime = Marker gr_ranktime run scoreboard players set @s gr_ranktime 200000000

execute if score Step gr_ranking matches 1..8 if entity @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=1..120000}] unless score Step gr_ranking > total gr_game run function gr:scoring/calc/phase2