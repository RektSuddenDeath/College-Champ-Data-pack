
# TIME DISPLAY
scoreboard players operation @s ar_secdif_m = @s ar_sectime
scoreboard players operation @s ar_secdif_s = @s ar_sectime
scoreboard players operation @s ar_secdif_ms = @s ar_sectime

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
title @s subtitle ["",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "yellow"},"§e:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "yellow"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "yellow"},"§e.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "yellow"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "yellow"}]
execute at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

tellraw @s ["第",{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},"§b/4","圈 ","区域§b6/8", ""," (",{"score":{"name": "@s","objective": "ar_secdif_m"},"color": "yellow"},"§e:",{"score":{"name": "@s","objective": "ar_zeropad_s"},"color": "yellow"},{"score":{"name": "@s","objective": "ar_secdif_s"},"color": "yellow"},"§e.",{"score":{"name": "@s","objective": "ar_zeropad_ms"},"color": "yellow"},{"score":{"name": "@s","objective": "ar_secdif_ms"},"color": "yellow"},")"]

scoreboard players operation @s ar_sec6time = @s ar_sectime
scoreboard players set @s ar_sectime 0