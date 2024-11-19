
tag @r[team=red,tag=!counted] add counting
tag @r[team=blue,tag=!counted] add counting
tag @r[team=green,tag=!counted] add counting
tag @r[team=yellow,tag=!counted] add counting
tag @r[team=cyan,tag=!counted] add counting
tag @r[team=orange,tag=!counted] add counting
tag @r[team=pink,tag=!counted] add counting
tag @r[team=purple,tag=!counted] add counting

tag @a[tag=counting] add counted

tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]

execute as @a[team=red,tag=counting] run tellraw @a[team=red] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=green,tag=counting] run tellraw @a[team=green] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink] ["",{"selector":"@s"},"的表现: "]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple] ["",{"selector":"@s"},"的表现: "]

tellraw @a[team=!spec] ""

execute as @a[team=red,tag=counting] run tellraw @a[team=red] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=green,tag=counting] run tellraw @a[team=green] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple] ["","§7石:  ",{"score":{"name": "@s","objective": "stoneMedal"}}]

execute as @a[team=red,tag=counting] run tellraw @a[team=red] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=green,tag=counting] run tellraw @a[team=green] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple] ["",{"text":"铜:  ","color":"#986A00"},{"score":{"name": "@s","objective": "bronzeMedal"}}]

execute as @a[team=red,tag=counting] run tellraw @a[team=red] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=green,tag=counting] run tellraw @a[team=green] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple] ["",{"text":"银:  ","color":"#D2D2D2"},{"score":{"name": "@s","objective": "silverMedal"}}]

execute as @a[team=red,tag=counting] run tellraw @a[team=red] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=green,tag=counting] run tellraw @a[team=green] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple] ["",{"text":"金:  ","color":"#FFC600"},{"score":{"name": "@s","objective": "goldMedal"}}," + ",{"score":{"name": "@s","objective": "goldBonus"},"color": "green"},"§a分"]

scoreboard players operation @a[tag=counting] stoneMedal *= stone pkw2_gamescore
scoreboard players operation @a[tag=counting] bronzeMedal *= bronze pkw2_gamescore
scoreboard players operation @a[tag=counting] silverMedal *= silver pkw2_gamescore
scoreboard players operation @a[tag=counting] goldMedal *= gold pkw2_gamescore

execute as @a[tag=counting] run scoreboard players operation @s pkw2_indvscore += @s stoneMedal
execute as @a[tag=counting] run scoreboard players operation @s pkw2_indvscore += @s bronzeMedal
execute as @a[tag=counting] run scoreboard players operation @s pkw2_indvscore += @s silverMedal
execute as @a[tag=counting] run scoreboard players operation @s pkw2_indvscore += @s goldMedal
execute as @a[tag=counting] run scoreboard players operation @s pkw2_indvscore += @s goldBonus

execute as @a[team=red,tag=counting] run tellraw @a[team=red,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=blue,tag=counting] run tellraw @a[team=blue,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=green,tag=counting] run tellraw @a[team=green,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=yellow,tag=counting] run tellraw @a[team=yellow,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=orange,tag=counting] run tellraw @a[team=orange,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=cyan,tag=counting] run tellraw @a[team=cyan,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=pink,tag=counting] run tellraw @a[team=pink,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]
execute as @a[team=purple,tag=counting] run tellraw @a[team=purple,tag=!counting] ["得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]

execute as @a[tag=counting] run tellraw @s ["[§6+",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "gold"},"§6分§r] ","得分:  ",{"score":{"name": "@s","objective": "pkw2_indvscore"},"color": "green"}]

tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]

execute as @a[team=!spec] at @s run playsound minecraft:sound.acquire record @s
execute as @a[team=!spec,tag=counting,scores={pkw2_indvscore=1..}] at @s run playsound minecraft:sound.coinsminor record @s
tag @a remove counting

function pkw2:scoreboard/refreshend

execute if entity @a[tag=!counted,team=!spec] run schedule function pkw2:scoring/count 4s
execute unless entity @a[tag=!counted,team=!spec] run schedule function pkw2:scoring/final 4s