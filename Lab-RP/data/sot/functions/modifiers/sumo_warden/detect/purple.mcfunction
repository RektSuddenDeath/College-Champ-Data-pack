
# Escape
execute as @a[team=purple,tag=sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:modifiers/sumo_warden/escape/purple

# Timer
scoreboard players add purple SotWardenSumoTime 1

## Warning (Total 95 sec), Killing every one when timer expires.
execute if score purple SotWardenSumoTime matches 100 run tellraw @a[team=purple] ["§6[§r瀞§6] 地牢即将在",{"text": "90","color": "#E3E3E3"},"§6秒后塌陷！"]
execute if score purple SotWardenSumoTime matches 700 run tellraw @a[team=purple] ["§6[§r瀞§6] 地牢即将在",{"text": "60","color": "#E3E3E3"},"§6秒后塌陷！"]
execute if score purple SotWardenSumoTime matches 1300 run tellraw @a[team=purple] ["§6[§r瀞§6] 地牢即将在",{"text": "30","color": "#E3E3E3"},"§6秒后塌陷！"]
execute if score purple SotWardenSumoTime matches 1700 run tellraw @a[team=purple] ["§6[§r瀞§6] 地牢即将在",{"text": "10","color": "#E3E3E3"},"§6秒后塌陷！"]
execute if score purple SotWardenSumoTime matches 1900 run tellraw @a[team=purple] ["§c[§r鼱§c] 地牢塌陷了！"]
execute if score purple SotWardenSumoTime matches 1900 run scoreboard players set @a[team=purple,tag=sumo_warden] SotDeath 1

# Death
execute as @a[team=purple,tag=sumo_warden,scores={SotDeath=1..}] at @s run function sot:modifiers/sumo_warden/death/purple
scoreboard players set @a[team=purple] SotDeath 0

# Complete
execute unless entity @a[team=purple,tag=sumo_warden] run tellraw @a[team=purple] ["§a[§r彀§a] 你的队伍完成了与监守者的对决！"]
execute unless entity @a[team=purple,tag=sumo_warden] run function sot:modifiers/sumo_warden/complete_event/purple

# Loop if still a player active.
execute if entity @a[team=purple,tag=sumo_warden] run schedule function sot:modifiers/sumo_warden/detect/purple 1t