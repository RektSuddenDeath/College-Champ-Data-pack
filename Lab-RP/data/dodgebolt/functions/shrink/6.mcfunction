
scoreboard players add shrink6 db_shrink 1
scoreboard players set shrinks db_shrink 6

execute if score shrink6 db_shrink matches 1..7 run schedule function dodgebolt:shrink/6 10t
execute if score shrink6 db_shrink matches 1 run execute as @a at @s run playsound minecraft:sound.shrink record @s ~ ~ ~ 1.6

execute if score shrink6 db_shrink matches 1 run fill 10004 186 9986 10004 186 9970 air
execute if score shrink6 db_shrink matches 1 run fill 10005 186 9970 10021 186 9970 air
execute if score shrink6 db_shrink matches 1 run fill 10022 186 9970 10022 186 9986 air
execute if score shrink6 db_shrink matches 1 run fill 10021 186 9986 10005 186 9986 air

execute if score shrink6 db_shrink matches 1 run fill 10004 185 9986 10004 185 9970 beehive
execute if score shrink6 db_shrink matches 1 run fill 10005 185 9970 10021 185 9970 beehive
execute if score shrink6 db_shrink matches 1 run fill 10022 185 9970 10022 185 9986 beehive
execute if score shrink6 db_shrink matches 1 run fill 10021 185 9986 10005 185 9986 beehive

execute if score shrink6 db_shrink matches 1 run tellraw @a ["§c(§r鼱§c)",{"text":" 场地即将收缩！","color":"red","bold":true}]

execute if score shrink6 db_shrink matches 3 run fill 10004 186 9986 10004 186 9970 air
execute if score shrink6 db_shrink matches 3 run fill 10005 186 9970 10021 186 9970 air
execute if score shrink6 db_shrink matches 3 run fill 10022 186 9970 10022 186 9986 air
execute if score shrink6 db_shrink matches 3 run fill 10021 186 9986 10005 186 9986 air

execute if score shrink6 db_shrink matches 3 run fill 10004 185 9986 10004 185 9970 beehive
execute if score shrink6 db_shrink matches 3 run fill 10005 185 9970 10021 185 9970 beehive
execute if score shrink6 db_shrink matches 3 run fill 10022 185 9970 10022 185 9986 beehive
execute if score shrink6 db_shrink matches 3 run fill 10021 185 9986 10005 185 9986 beehive

execute if score shrink6 db_shrink matches 5 run fill 10004 186 9986 10004 186 9970 air
execute if score shrink6 db_shrink matches 5 run fill 10005 186 9970 10021 186 9970 air
execute if score shrink6 db_shrink matches 5 run fill 10022 186 9970 10022 186 9986 air
execute if score shrink6 db_shrink matches 5 run fill 10021 186 9986 10005 186 9986 air

execute if score shrink6 db_shrink matches 5 run fill 10004 185 9986 10004 185 9970 beehive
execute if score shrink6 db_shrink matches 5 run fill 10005 185 9970 10021 185 9970 beehive
execute if score shrink6 db_shrink matches 5 run fill 10022 185 9970 10022 185 9986 beehive
execute if score shrink6 db_shrink matches 5 run fill 10021 185 9986 10005 185 9986 beehive

execute if score shrink6 db_shrink matches 7 run fill 10004 186 9986 10004 186 9970 air
execute if score shrink6 db_shrink matches 7 run fill 10005 186 9970 10021 186 9970 air
execute if score shrink6 db_shrink matches 7 run fill 10022 186 9970 10022 186 9986 air
execute if score shrink6 db_shrink matches 7 run fill 10021 186 9986 10005 186 9986 air

execute if score shrink6 db_shrink matches 7 run fill 10004 185 9986 10004 185 9970 beehive
execute if score shrink6 db_shrink matches 7 run fill 10005 185 9970 10021 185 9970 beehive
execute if score shrink6 db_shrink matches 7 run fill 10022 185 9970 10022 185 9986 beehive
execute if score shrink6 db_shrink matches 7 run fill 10021 185 9986 10005 185 9986 beehive

execute if score shrink6 db_shrink matches 2 run clone 10004 171 9986 10004 171 9970 10004 186 9970
execute if score shrink6 db_shrink matches 2 run clone 10005 171 9970 10021 171 9970 10005 186 9970
execute if score shrink6 db_shrink matches 2 run clone 10022 171 9970 10022 171 9986 10022 186 9970
execute if score shrink6 db_shrink matches 2 run clone 10021 171 9986 10005 171 9986 10005 186 9986

execute if score shrink6 db_shrink matches 4 run clone 10004 171 9986 10004 171 9970 10004 186 9970
execute if score shrink6 db_shrink matches 4 run clone 10005 171 9970 10021 171 9970 10005 186 9970
execute if score shrink6 db_shrink matches 4 run clone 10022 171 9970 10022 171 9986 10022 186 9970
execute if score shrink6 db_shrink matches 4 run clone 10021 171 9986 10005 171 9986 10005 186 9986

execute if score shrink6 db_shrink matches 6 run clone 10004 171 9986 10004 171 9970 10004 186 9970
execute if score shrink6 db_shrink matches 6 run clone 10005 171 9970 10021 171 9970 10005 186 9970
execute if score shrink6 db_shrink matches 6 run clone 10022 171 9970 10022 171 9986 10022 186 9970
execute if score shrink6 db_shrink matches 6 run clone 10021 171 9986 10005 171 9986 10005 186 9986

execute if score shrink6 db_shrink matches 8 run execute as @a at @s run playsound minecraft:sound.shrinkend record @s ~ ~ ~ 1.2
execute if score shrink6 db_shrink matches 8 run fill 10021 186 9986 10005 186 9986 air
execute if score shrink6 db_shrink matches 8 run fill 10022 186 9970 10022 186 9986 air
execute if score shrink6 db_shrink matches 8 run fill 10005 186 9970 10021 186 9970 air
execute if score shrink6 db_shrink matches 8 run fill 10004 186 9986 10004 186 9970 air

execute if score shrink6 db_shrink matches 8 run fill 10021 185 9986 10005 185 9986 air
execute if score shrink6 db_shrink matches 8 run fill 10022 185 9970 10022 185 9986 air
execute if score shrink6 db_shrink matches 8 run fill 10005 185 9970 10021 185 9970 air
execute if score shrink6 db_shrink matches 8 run fill 10004 185 9986 10004 185 9970 air

execute if score shrink6 db_shrink matches 8 run tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fArena shrunk by 1 block!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]