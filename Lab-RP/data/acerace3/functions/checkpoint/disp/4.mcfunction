

# TIME DISPLAY
scoreboard players operation @s ar_secdif = @s ar_sectime
scoreboard players operation @s ar_secdif -= @s ar_sec4time
execute if score @s ar_secdif matches ..-1 run scoreboard players set @s ar_secdif_sgn -1
execute unless score @s ar_secdif matches ..-1 run scoreboard players set @s ar_secdif_sgn 1
execute if score @s ar_secdif matches ..-1 run scoreboard players operation @s ar_secdif *= -1 math

scoreboard players operation @s ar_secdif_m = @s ar_secdif
scoreboard players operation @s ar_secdif_s = @s ar_secdif
scoreboard players operation @s ar_secdif_ms = @s ar_secdif

scoreboard players operation @s ar_secdif_m /= 6000 math
scoreboard players operation @s ar_secdif_s /= 100 math
scoreboard players operation @s ar_secdif_s %= 60 math
scoreboard players operation @s ar_secdif_ms %= 100 math

# Adds a ZERO padding
execute if score @s ar_secdif_s matches 0..9 run scoreboard players set @s ar_zeropad_s 0
execute unless score @s ar_secdif_s matches 0..9 run scoreboard players reset @s ar_zeropad_s
execute if score @s ar_secdif_ms matches 0..9 run scoreboard players set @s ar_zeropad_ms 0
execute unless score @s ar_secdif_ms matches 0..9 run scoreboard players reset @s ar_zeropad_ms

title @s times 5 10 5
title @s title ""
execute if score @s ar_secdif_sgn matches -1 run title @s subtitle ["䅀 ",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "green"},"§a:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "green"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "green"},"§a.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "green"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "green"}]
execute if score @s ar_secdif_sgn matches 1 run title @s subtitle ["䅁 ",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "red"},"§c:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "red"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "red"},"§c.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "red"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "red"}]
execute at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

execute if score @s ar_secdif_sgn matches -1 run tellraw @s ["第",{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},"§b/4","圈 ","区域§b4/8", "䅀 ",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "green"},"§a:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "green"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "green"},"§a.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "green"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "green"}]
execute if score @s ar_secdif_sgn matches 1 run tellraw @s ["第",{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},"§b/4","圈 ","区域§b4/8", "䅁 ",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "red"},"§c:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "red"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "red"},"§c.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "red"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "red"}]

execute if score @s ar_sectime < @s ar_sec4time run scoreboard players operation @s ar_sec4time = @s ar_sectime
scoreboard players set @s ar_sectime 0