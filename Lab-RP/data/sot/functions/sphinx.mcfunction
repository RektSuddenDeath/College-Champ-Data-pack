
execute as @a[scores={SotSphinx=1}] run scoreboard players operation @s SotPersonal *= 8 SotCache
execute as @a[scores={SotSphinx=1}] run scoreboard players operation @s SotPersonal /= 10 SotCache

execute as @a[scores={SotSphinx=1},team=red] run scoreboard players operation red SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=blue] run scoreboard players operation blue SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=green] run scoreboard players operation green SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=yellow] run scoreboard players operation yellow SotTeamBanked += @s SotPersonal

execute as @a[scores={SotSphinx=1},team=cyan] run scoreboard players operation cyan SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=pink] run scoreboard players operation pink SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=orange] run scoreboard players operation orange SotTeamBanked += @s SotPersonal
execute as @a[scores={SotSphinx=1},team=purple] run scoreboard players operation purple SotTeamBanked += @s SotPersonal

execute as @a[scores={SotSphinx=1}] run scoreboard players operation @s SotPersonal_multi = @s SotPersonal
execute as @a[scores={SotSphinx=1}] run scoreboard players operation @s SotPersonal_multi *= multiplier1 tourney_stats
execute as @a[scores={SotSphinx=1}] run scoreboard players operation @s SotPersonal_multi /= multiplier2 tourney_stats

execute as @a[scores={SotSphinx=1},team=red] run tellraw @a[team=red] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"red"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=blue] run tellraw @a[team=blue] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"blue"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=green] run tellraw @a[team=green] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"green"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=yellow] run tellraw @a[team=yellow] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"yellow"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]

execute as @a[scores={SotSphinx=1},team=cyan] run tellraw @a[team=cyan] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"dark_aqua"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=pink] run tellraw @a[team=pink] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"light_purple"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=orange] run tellraw @a[team=orange] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"gold"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
execute as @a[scores={SotSphinx=1},team=purple] run tellraw @a[team=purple] ["",{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "]: ","color":"white"},{"selector":"@s","color":"dark_purple"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]

execute as @a[scores={SotSphinx=1},team=red] run setblock 2500 84 2525 air
execute as @a[scores={SotSphinx=1},team=red] run setblock 2500 84 2525 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=blue] run setblock 2000 84 2525 air
execute as @a[scores={SotSphinx=1},team=blue] run setblock 2000 84 2525 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=green] run setblock 2500 84 2025 air
execute as @a[scores={SotSphinx=1},team=green] run setblock 2500 84 2025 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=yellow] run setblock 2500 84 3025 air
execute as @a[scores={SotSphinx=1},team=yellow] run setblock 2500 84 3025 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=cyan] run setblock 2000 84 3025 air
execute as @a[scores={SotSphinx=1},team=cyan] run setblock 2000 84 3025 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=pink] run setblock 3000 84 2025 air
execute as @a[scores={SotSphinx=1},team=pink] run setblock 3000 84 2025 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=orange] run setblock 3000 84 2525 air
execute as @a[scores={SotSphinx=1},team=orange] run setblock 3000 84 2525 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1},team=purple] run setblock 3000 84 3025 air
execute as @a[scores={SotSphinx=1},team=purple] run setblock 3000 84 3025 ender_chest[facing=north]

execute as @a[scores={SotSphinx=1}] run scoreboard players set @s SotPersonal 0

scoreboard players set @a SotSphinx 0
execute if score gameflag SotGame matches 1 run schedule function sot:sphinx 1t