
scoreboard objectives add dd_remix_player_value dummy
execute as @a[team=!spec] store result score @s dd_remix_player_value run random value -5..5
tag @a[team=!spec] add dd_swappedPlayer

execute as @a[team=!spec] run title @s title ""
execute as @a[team=!spec] run title @s subtitle ["","你的价值为",{"score":{"name": "@s","objective": "dd_remix_player_value"},"bold":true,"color": "gold"}]
execute as @a[team=!spec] run title @s times 0 100 40

clear @a egg
tp @a[team=!spec] -10000 103 -10000