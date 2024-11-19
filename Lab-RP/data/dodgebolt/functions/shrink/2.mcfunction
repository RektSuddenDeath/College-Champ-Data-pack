
scoreboard players add shrink2 db_shrink 1
scoreboard players set shrinks db_shrink 2

execute if score shrink2 db_shrink matches 1..7 run schedule function dodgebolt:shrink/2 10t
execute if score shrink2 db_shrink matches 1 run execute as @a at @s run playsound minecraft:sound.shrink record @s ~ ~ ~ 1.6

execute if score shrink2 db_shrink matches 1 run fill 9999 186 9990 10027 186 9991 air
execute if score shrink2 db_shrink matches 1 run fill 10026 186 9989 10027 186 9967 air
execute if score shrink2 db_shrink matches 1 run fill 10027 186 9965 9999 186 9966 air
execute if score shrink2 db_shrink matches 1 run fill 9999 186 9967 10000 186 9989 air

execute if score shrink2 db_shrink matches 1 run fill 9999 185 9990 10027 185 9991 beehive
execute if score shrink2 db_shrink matches 1 run fill 10026 185 9989 10027 185 9967 beehive
execute if score shrink2 db_shrink matches 1 run fill 10027 185 9965 9999 185 9966 beehive
execute if score shrink2 db_shrink matches 1 run fill 9999 185 9967 10000 185 9989 beehive

execute if score shrink2 db_shrink matches 1 run tellraw @a ["§c(§r鼱§c)",{"text":" 场地即将收缩！","color":"red","bold":true}]

execute if score shrink2 db_shrink matches 3 run fill 9999 186 9990 10027 186 9991 air
execute if score shrink2 db_shrink matches 3 run fill 10026 186 9989 10027 186 9967 air
execute if score shrink2 db_shrink matches 3 run fill 10027 186 9965 9999 186 9966 air
execute if score shrink2 db_shrink matches 3 run fill 9999 186 9967 10000 186 9989 air

execute if score shrink2 db_shrink matches 3 run fill 9999 185 9990 10027 185 9991 beehive
execute if score shrink2 db_shrink matches 3 run fill 10026 185 9989 10027 185 9967 beehive
execute if score shrink2 db_shrink matches 3 run fill 10027 185 9965 9999 185 9966 beehive
execute if score shrink2 db_shrink matches 3 run fill 9999 185 9967 10000 185 9989 beehive

execute if score shrink2 db_shrink matches 5 run fill 9999 186 9990 10027 186 9991 air
execute if score shrink2 db_shrink matches 5 run fill 10026 186 9989 10027 186 9967 air
execute if score shrink2 db_shrink matches 5 run fill 10027 186 9965 9999 186 9966 air
execute if score shrink2 db_shrink matches 5 run fill 9999 186 9967 10000 186 9989 air

execute if score shrink2 db_shrink matches 5 run fill 9999 185 9990 10027 185 9991 beehive
execute if score shrink2 db_shrink matches 5 run fill 10026 185 9989 10027 185 9967 beehive
execute if score shrink2 db_shrink matches 5 run fill 10027 185 9965 9999 185 9966 beehive
execute if score shrink2 db_shrink matches 5 run fill 9999 185 9967 10000 185 9989 beehive

execute if score shrink2 db_shrink matches 7 run fill 9999 186 9990 10027 186 9991 air
execute if score shrink2 db_shrink matches 7 run fill 10026 186 9989 10027 186 9967 air
execute if score shrink2 db_shrink matches 7 run fill 10027 186 9965 9999 186 9966 air
execute if score shrink2 db_shrink matches 7 run fill 9999 186 9967 10000 186 9989 air

execute if score shrink2 db_shrink matches 7 run fill 9999 185 9990 10027 185 9991 beehive
execute if score shrink2 db_shrink matches 7 run fill 10026 185 9989 10027 185 9967 beehive
execute if score shrink2 db_shrink matches 7 run fill 10027 185 9965 9999 185 9966 beehive
execute if score shrink2 db_shrink matches 7 run fill 9999 185 9967 10000 185 9989 beehive

execute if score shrink2 db_shrink matches 2 run clone 9999 171 9990 10027 171 9991 9999 186 9990
execute if score shrink2 db_shrink matches 2 run clone 10026 171 9989 10027 171 9967 10026 186 9967
execute if score shrink2 db_shrink matches 2 run clone 10027 171 9965 9999 171 9966 9999 186 9965
execute if score shrink2 db_shrink matches 2 run clone 9999 171 9967 10000 171 9989 9999 186 9967

execute if score shrink2 db_shrink matches 4 run clone 9999 171 9990 10027 171 9991 9999 186 9990
execute if score shrink2 db_shrink matches 4 run clone 10026 171 9989 10027 171 9967 10026 186 9967
execute if score shrink2 db_shrink matches 4 run clone 10027 171 9965 9999 171 9966 9999 186 9965
execute if score shrink2 db_shrink matches 4 run clone 9999 171 9967 10000 171 9989 9999 186 9967

execute if score shrink2 db_shrink matches 6 run clone 9999 171 9990 10027 171 9991 9999 186 9990
execute if score shrink2 db_shrink matches 6 run clone 10026 171 9989 10027 171 9967 10026 186 9967
execute if score shrink2 db_shrink matches 6 run clone 10027 171 9965 9999 171 9966 9999 186 9965
execute if score shrink2 db_shrink matches 6 run clone 9999 171 9967 10000 171 9989 9999 186 9967

execute if score shrink2 db_shrink matches 8 run execute as @a at @s run playsound minecraft:sound.shrinkend record @s ~ ~ ~ 1.2
execute if score shrink2 db_shrink matches 8 run fill 9999 186 9990 10027 186 9991 air
execute if score shrink2 db_shrink matches 8 run fill 10026 186 9989 10027 186 9967 air
execute if score shrink2 db_shrink matches 8 run fill 10027 186 9965 9999 186 9966 air
execute if score shrink2 db_shrink matches 8 run fill 9999 186 9967 10000 186 9989 air

execute if score shrink2 db_shrink matches 8 run fill 9999 185 9990 10027 185 9991 air
execute if score shrink2 db_shrink matches 8 run fill 10026 185 9989 10027 185 9967 air
execute if score shrink2 db_shrink matches 8 run fill 10027 185 9965 9999 185 9966 air
execute if score shrink2 db_shrink matches 8 run fill 9999 185 9967 10000 185 9989 air

execute if score shrink2 db_shrink matches 8 run tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fArena shrunk by 2 blocks!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]