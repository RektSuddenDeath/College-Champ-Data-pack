
execute unless block ~ ~ ~ air run tag @s add heater_placement_invalid
execute if block ~ ~-1 ~ air run tag @s add heater_placement_invalid
execute if block ~ ~-1 ~ light run tag @s add heater_placement_invalid

execute unless entity @s[tag=heater_placement_invalid] run function meltdown:unfreeze/heater_place
execute unless entity @s[tag=heater_placement_invalid] run return 1

execute if entity @s[tag=heater_red] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=red] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_blue] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=blue] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_green] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=green] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_yellow] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=yellow] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_cyan] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=cyan] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_pink] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=pink] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_orange] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=orange] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]
execute if entity @s[tag=heater_purple] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=purple] run tellraw @s ["§c[§r鼱§c] ","加热器必须放在完整方块的正上方！"]

execute if entity @s[tag=heater_red] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=red] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_blue] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=blue] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_green] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=green] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_yellow] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=yellow] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_cyan] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=cyan] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_pink] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=pink] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_orange] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=orange] run scoreboard players set @s meltdown_heater_cooldown 20
execute if entity @s[tag=heater_purple] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=purple] run scoreboard players set @s meltdown_heater_cooldown 20

execute if entity @s[tag=heater_red] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=red] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_blue] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=blue] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_green] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=green] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_yellow] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=yellow] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_cyan] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=cyan] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_pink] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=pink] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_orange] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=orange] run scoreboard players set @s meltdown_heater_used 0
execute if entity @s[tag=heater_purple] as @a[scores={meltdown_heater_used=1},limit=1,sort=nearest,team=purple] run scoreboard players set @s meltdown_heater_used 0

kill @s