
scoreboard objectives remove spec_sottime
scoreboard objectives remove spec_sotcomplete
scoreboard objectives add spec_sottime dummy
scoreboard objectives add spec_sotcomplete dummy

execute if score red SotTeamTime matches 0.. run scoreboard players operation red spec_sottime = red SotTeamTime
execute if score blue SotTeamTime matches 0.. run scoreboard players operation blue spec_sottime = blue SotTeamTime
execute if score green SotTeamTime matches 0.. run scoreboard players operation green spec_sottime = green SotTeamTime
execute if score yellow SotTeamTime matches 0.. run scoreboard players operation yellow spec_sottime = yellow SotTeamTime
execute if score cyan SotTeamTime matches 0.. run scoreboard players operation cyan spec_sottime = cyan SotTeamTime
execute if score pink SotTeamTime matches 0.. run scoreboard players operation pink spec_sottime = pink SotTeamTime
execute if score orange SotTeamTime matches 0.. run scoreboard players operation orange spec_sottime = orange SotTeamTime
execute if score purple SotTeamTime matches 0.. run scoreboard players operation purple spec_sottime = purple SotTeamTime

execute if score red SotTeamTime matches ..-1 run scoreboard players set red spec_sotcomplete 1
execute if score blue SotTeamTime matches ..-1 run scoreboard players set blue spec_sotcomplete 1
execute if score green SotTeamTime matches ..-1 run scoreboard players set green spec_sotcomplete 1
execute if score yellow SotTeamTime matches ..-1 run scoreboard players set yellow spec_sotcomplete 1
execute if score cyan SotTeamTime matches ..-1 run scoreboard players set cyan spec_sotcomplete 1
execute if score pink SotTeamTime matches ..-1 run scoreboard players set pink spec_sotcomplete 1
execute if score orange SotTeamTime matches ..-1 run scoreboard players set orange spec_sotcomplete 1
execute if score purple SotTeamTime matches ..-1 run scoreboard players set purple spec_sotcomplete 1

scoreboard players operation gameMin spec_sottime = gametime SotTeamTime
scoreboard players operation gameSec spec_sottime = gametime SotTeamTime
scoreboard players operation gameMin spec_sottime /= 60 math
scoreboard players operation gameSec spec_sottime %= 60 math

execute if score gameSec spec_sottime matches 0..9 run scoreboard players set gameSec_zero spec_sottime 0
execute unless score gameSec spec_sottime matches 0..9 run scoreboard players reset gameSec_zero spec_sottime

bossbar set sotspec name ["",{"score":{"objective": "spec_sottime","name": "red"},"color": "red"},{"score":{"objective": "spec_sotcomplete","name": "red"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "blue"},"color": "blue"},{"score":{"objective": "spec_sotcomplete","name": "blue"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "green"},"color": "green"},{"score":{"objective": "spec_sotcomplete","name": "green"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "yellow"},"color": "yellow"},{"score":{"objective": "spec_sotcomplete","name": "yellow"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "cyan"},"color": "dark_aqua"},{"score":{"objective": "spec_sotcomplete","name": "cyan"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "pink"},"color": "light_purple"},{"score":{"objective": "spec_sotcomplete","name": "pink"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "orange"},"color": "gold"},{"score":{"objective": "spec_sotcomplete","name": "orange"},"font":"font:specgui"}," ",{"score":{"objective": "spec_sottime","name": "purple"},"color": "dark_purple"},{"score":{"objective": "spec_sotcomplete","name": "purple"},"font":"font:specgui"}," ","                                                                                                      ","Time Elapsed: ",{"score":{"objective": "spec_sottime","name": "gameMin"},"color": "blue"},"§9:",{"score":{"objective": "spec_sottime","name": "gameSec_zero"},"color": "blue"},{"score":{"objective": "spec_sottime","name": "gameSec"},"color": "blue"}]

execute if score gameflag SotGame matches 0 run bossbar remove sotspec
execute if score gameflag SotGame matches 1 run schedule function sot:spectator/loop 1t