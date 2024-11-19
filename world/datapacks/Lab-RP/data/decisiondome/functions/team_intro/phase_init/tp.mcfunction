
scoreboard objectives add temp_team_intro dummy
scoreboard players set @a[tag=team_intro_tp] temp_team_intro 0

execute as @r[tag=team_intro_tp,scores={temp_team_intro=0}] run execute store success score @s temp_team_intro run tp @s -10001 102.5 -10000 90 0
execute as @r[tag=team_intro_tp,scores={temp_team_intro=0}] run execute store success score @s temp_team_intro run tp @s -9999 102.5 -10000 -90 0
execute as @r[tag=team_intro_tp,scores={temp_team_intro=0}] run execute store success score @s temp_team_intro run tp @s -10000 102.5 -9999 0 0
execute as @r[tag=team_intro_tp,scores={temp_team_intro=0}] run execute store success score @s temp_team_intro run tp @s -10000 102.5 -10001 180 0

scoreboard objectives remove temp_team_intro
tag @a remove team_intro_tp