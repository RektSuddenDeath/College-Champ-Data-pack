

scoreboard objectives add temp_chaos_tally dummy
scoreboard objectives add temp_chaos_tally_1 dummy
scoreboard objectives add temp_chaos_tally_2 dummy
scoreboard objectives add temp_chaos_tally_3 dummy
scoreboard objectives add temp_chaos_tally_4 dummy
scoreboard objectives add temp_chaos_tally_5 dummy

execute store result score @s temp_chaos_tally_1 run clear @s green_candle
execute store result score @s temp_chaos_tally_2 run clear @s orange_candle
execute store result score @s temp_chaos_tally_3 run clear @s purple_candle
execute store result score @s temp_chaos_tally_4 run clear @s blue_candle
execute store result score @s temp_chaos_tally_5 run clear @s red_candle

scoreboard players operation @s temp_chaos_tally_1 *= 5 math
scoreboard players operation @s temp_chaos_tally_2 *= 10 math
scoreboard players operation @s temp_chaos_tally_3 *= 20 math
scoreboard players operation @s temp_chaos_tally_4 *= 30 math
scoreboard players operation @s temp_chaos_tally_5 *= 50 math

scoreboard players operation @s temp_chaos_tally += @s temp_chaos_tally_1
scoreboard players operation @s temp_chaos_tally += @s temp_chaos_tally_2
scoreboard players operation @s temp_chaos_tally += @s temp_chaos_tally_3
scoreboard players operation @s temp_chaos_tally += @s temp_chaos_tally_4
scoreboard players operation @s temp_chaos_tally += @s temp_chaos_tally_5

execute if entity @s[team=red] store result storage temp:chaos red_multi float 0.01 run scoreboard players operation red chaos_multi += @s temp_chaos_tally
execute if entity @s[team=blue] store result storage temp:chaos blue_multi float 0.01 run scoreboard players operation blue chaos_multi += @s temp_chaos_tally
execute if entity @s[team=green] store result storage temp:chaos green_multi float 0.01 run scoreboard players operation green chaos_multi += @s temp_chaos_tally
execute if entity @s[team=yellow] store result storage temp:chaos yellow_multi float 0.01 run scoreboard players operation yellow chaos_multi += @s temp_chaos_tally
execute if entity @s[team=cyan] store result storage temp:chaos cyan_multi float 0.01 run scoreboard players operation cyan chaos_multi += @s temp_chaos_tally
execute if entity @s[team=pink] store result storage temp:chaos pink_multi float 0.01 run scoreboard players operation pink chaos_multi += @s temp_chaos_tally
execute if entity @s[team=orange] store result storage temp:chaos orange_multi float 0.01 run scoreboard players operation orange chaos_multi += @s temp_chaos_tally
execute if entity @s[team=purple] store result storage temp:chaos purple_multi float 0.01 run scoreboard players operation purple chaos_multi += @s temp_chaos_tally

# float sign is very annoying sadly:(
execute if entity @s[team=red] run tellraw @a[team=red] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"red_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=blue] run tellraw @a[team=blue] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"blue_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=green] run tellraw @a[team=green] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"green_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"yellow_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"cyan_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=pink] run tellraw @a[team=pink] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"pink_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=orange] run tellraw @a[team=orange] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"orange_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]
execute if entity @s[team=purple] run tellraw @a[team=purple] ["§b[§r坕§b] ","§b你的队伍在下一个游戏将会对游戏倍率产生 ",{"storage":"temp:chaos","nbt":"purple_multi","color":"#E3E3E3","interpret":true},"§bx 的影响！"]

scoreboard objectives remove temp_chaos_tally
scoreboard objectives remove temp_chaos_tally_1
scoreboard objectives remove temp_chaos_tally_2
scoreboard objectives remove temp_chaos_tally_3
scoreboard objectives remove temp_chaos_tally_4
scoreboard objectives remove temp_chaos_tally_5

