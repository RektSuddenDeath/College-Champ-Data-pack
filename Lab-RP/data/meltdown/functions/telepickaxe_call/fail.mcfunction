scoreboard objectives add temp_telepickaxe_call_cd dummy
scoreboard players operation @s temp_telepickaxe_call_cd = @s meltdown_telepickaxe_cooldown
scoreboard players operation @s temp_telepickaxe_call_cd /= 20 math
scoreboard players add @s temp_telepickaxe_call_cd 1
tellraw @s ["§c移动镐召唤CD中：",{"score":{"name": "@s","objective": "temp_telepickaxe_call_cd"}},"§fs"]
scoreboard objectives remove temp_telepickaxe_call_cd