
scoreboard players add shrink5 db_shrink 1
scoreboard players set shrinks db_shrink 5

execute if score shrink5 db_shrink matches 1..7 run schedule function dodgebolt:shrink/5 10t
execute if score shrink5 db_shrink matches 1 run execute as @a at @s run playsound minecraft:sound.shrink record @s ~ ~ ~ 1.6

execute if score shrink5 db_shrink matches 1 run fill 10003 186 9969 10023 186 9969 air
execute if score shrink5 db_shrink matches 1 run fill 10023 186 9970 10023 186 9986 air
execute if score shrink5 db_shrink matches 1 run fill 10023 186 9987 10004 186 9987 air
execute if score shrink5 db_shrink matches 1 run fill 10003 186 9987 10003 186 9969 air

execute if score shrink5 db_shrink matches 1 run fill 10003 185 9969 10023 185 9969 beehive
execute if score shrink5 db_shrink matches 1 run fill 10023 185 9970 10023 185 9986 beehive
execute if score shrink5 db_shrink matches 1 run fill 10023 185 9987 10004 185 9987 beehive
execute if score shrink5 db_shrink matches 1 run fill 10003 185 9987 10003 185 9969 beehive

execute if score shrink5 db_shrink matches 1 run tellraw @a ["§c(§r鼱§c)",{"text":" 场地即将收缩！","color":"red","bold":true}]

execute if score shrink5 db_shrink matches 3 run fill 10003 186 9969 10023 186 9969 air
execute if score shrink5 db_shrink matches 3 run fill 10023 186 9970 10023 186 9986 air
execute if score shrink5 db_shrink matches 3 run fill 10023 186 9987 10004 186 9987 air
execute if score shrink5 db_shrink matches 3 run fill 10003 186 9987 10003 186 9969 air

execute if score shrink5 db_shrink matches 3 run fill 10003 185 9969 10023 185 9969 beehive
execute if score shrink5 db_shrink matches 3 run fill 10023 185 9970 10023 185 9986 beehive
execute if score shrink5 db_shrink matches 3 run fill 10023 185 9987 10004 185 9987 beehive
execute if score shrink5 db_shrink matches 3 run fill 10003 185 9987 10003 185 9969 beehive

execute if score shrink5 db_shrink matches 5 run fill 10003 186 9969 10023 186 9969 air
execute if score shrink5 db_shrink matches 5 run fill 10023 186 9970 10023 186 9986 air
execute if score shrink5 db_shrink matches 5 run fill 10023 186 9987 10004 186 9987 air
execute if score shrink5 db_shrink matches 5 run fill 10003 186 9987 10003 186 9969 air

execute if score shrink5 db_shrink matches 5 run fill 10003 185 9969 10023 185 9969 beehive
execute if score shrink5 db_shrink matches 5 run fill 10023 185 9970 10023 185 9986 beehive
execute if score shrink5 db_shrink matches 5 run fill 10023 185 9987 10004 185 9987 beehive
execute if score shrink5 db_shrink matches 7 run fill 10003 185 9987 10003 185 9969 beehive

execute if score shrink5 db_shrink matches 7 run fill 10003 186 9969 10023 186 9969 air
execute if score shrink5 db_shrink matches 7 run fill 10023 186 9970 10023 186 9986 air
execute if score shrink5 db_shrink matches 7 run fill 10023 186 9987 10004 186 9987 air
execute if score shrink5 db_shrink matches 7 run fill 10003 186 9987 10003 186 9969 air

execute if score shrink5 db_shrink matches 7 run fill 10003 185 9969 10023 185 9969 beehive
execute if score shrink5 db_shrink matches 7 run fill 10023 185 9970 10023 185 9986 beehive
execute if score shrink5 db_shrink matches 7 run fill 10023 185 9987 10004 185 9987 beehive
execute if score shrink5 db_shrink matches 7 run fill 10003 185 9987 10003 185 9969 beehive

execute if score shrink5 db_shrink matches 2 run clone 10003 171 9969 10023 171 9969 10003 186 9969
execute if score shrink5 db_shrink matches 2 run clone 10023 171 9970 10023 171 9986 10023 186 9970
execute if score shrink5 db_shrink matches 2 run clone 10023 171 9987 10004 171 9987 10004 186 9987
execute if score shrink5 db_shrink matches 2 run clone 10003 171 9987 10003 171 9969 10003 186 9969

execute if score shrink5 db_shrink matches 4 run clone 10003 171 9969 10023 171 9969 10003 186 9969
execute if score shrink5 db_shrink matches 4 run clone 10023 171 9970 10023 171 9986 10023 186 9970
execute if score shrink5 db_shrink matches 4 run clone 10023 171 9987 10004 171 9987 10004 186 9987
execute if score shrink5 db_shrink matches 4 run clone 10003 171 9987 10003 171 9969 10003 186 9969

execute if score shrink5 db_shrink matches 6 run clone 10003 171 9969 10023 171 9969 10003 186 9969
execute if score shrink5 db_shrink matches 6 run clone 10023 171 9970 10023 171 9986 10023 186 9970
execute if score shrink5 db_shrink matches 6 run clone 10023 171 9987 10004 171 9987 10004 186 9987
execute if score shrink5 db_shrink matches 6 run clone 10003 171 9987 10003 171 9969 10003 186 9969

execute if score shrink5 db_shrink matches 8 run execute as @a at @s run playsound minecraft:sound.shrinkend record @s ~ ~ ~ 1.2
execute if score shrink5 db_shrink matches 8 run fill 10003 186 9969 10023 186 9969 air
execute if score shrink5 db_shrink matches 8 run fill 10023 186 9970 10023 186 9986 air
execute if score shrink5 db_shrink matches 8 run fill 10023 186 9987 10004 186 9987 air
execute if score shrink5 db_shrink matches 8 run fill 10003 186 9987 10003 186 9969 air

execute if score shrink5 db_shrink matches 8 run fill 10003 185 9969 10023 185 9969 air
execute if score shrink5 db_shrink matches 8 run fill 10023 185 9970 10023 185 9986 air
execute if score shrink5 db_shrink matches 8 run fill 10023 185 9987 10004 185 9987 air
execute if score shrink5 db_shrink matches 8 run fill 10003 185 9987 10003 185 9969 air

execute if score shrink5 db_shrink matches 8 run tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fArena shrunk by 1 block!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]