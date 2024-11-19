
scoreboard players add shrink1 db_shrink 1
scoreboard players set shrinks db_shrink 1

execute if score shrink1 db_shrink matches 1..7 run schedule function dodgebolt:shrink/1 10t
execute if score shrink1 db_shrink matches 1 run execute as @a at @s run playsound minecraft:sound.shrink record @s ~ ~ ~ 1.6

execute if score shrink1 db_shrink matches 1 run fill 9997 186 9963 10029 186 9964 air
execute if score shrink1 db_shrink matches 1 run fill 10028 186 9991 10029 186 9965 air
execute if score shrink1 db_shrink matches 1 run fill 10029 186 9993 9997 186 9992 air
execute if score shrink1 db_shrink matches 1 run fill 9997 186 9991 9998 186 9965 air

execute if score shrink1 db_shrink matches 1 run fill 9997 185 9963 10029 185 9964 beehive
execute if score shrink1 db_shrink matches 1 run fill 10028 185 9991 10029 185 9965 beehive
execute if score shrink1 db_shrink matches 1 run fill 10029 185 9993 9997 185 9992 beehive
execute if score shrink1 db_shrink matches 1 run fill 9997 185 9991 9998 185 9965 beehive

execute if score shrink1 db_shrink matches 1 run tellraw @a ["§c(§r鼱§c)",{"text":" 场地即将收缩！","color":"red","bold":true}]

execute if score shrink1 db_shrink matches 3 run fill 9997 186 9963 10029 186 9964 air
execute if score shrink1 db_shrink matches 3 run fill 10028 186 9991 10029 186 9965 air
execute if score shrink1 db_shrink matches 3 run fill 10029 186 9993 9997 186 9992 air
execute if score shrink1 db_shrink matches 3 run fill 9997 186 9991 9998 186 9965 air

execute if score shrink1 db_shrink matches 3 run fill 9997 185 9963 10029 185 9964 beehive
execute if score shrink1 db_shrink matches 3 run fill 10028 185 9991 10029 185 9965 beehive
execute if score shrink1 db_shrink matches 3 run fill 10029 185 9993 9997 185 9992 beehive
execute if score shrink1 db_shrink matches 3 run fill 9997 185 9991 9998 185 9965 beehive

execute if score shrink1 db_shrink matches 5 run fill 9997 186 9963 10029 186 9964 air
execute if score shrink1 db_shrink matches 5 run fill 10028 186 9991 10029 186 9965 air
execute if score shrink1 db_shrink matches 5 run fill 10029 186 9993 9997 186 9992 air
execute if score shrink1 db_shrink matches 5 run fill 9997 186 9991 9998 186 9965 air

execute if score shrink1 db_shrink matches 5 run fill 9997 185 9963 10029 185 9964 beehive
execute if score shrink1 db_shrink matches 5 run fill 10028 185 9991 10029 185 9965 beehive
execute if score shrink1 db_shrink matches 5 run fill 10029 185 9993 9997 185 9992 beehive
execute if score shrink1 db_shrink matches 5 run fill 9997 185 9991 9998 185 9965 beehive

execute if score shrink1 db_shrink matches 7 run fill 9997 186 9963 10029 186 9964 air
execute if score shrink1 db_shrink matches 7 run fill 10028 186 9991 10029 186 9965 air
execute if score shrink1 db_shrink matches 7 run fill 10029 186 9993 9997 186 9992 air
execute if score shrink1 db_shrink matches 7 run fill 9997 186 9991 9998 186 9965 air

execute if score shrink1 db_shrink matches 7 run fill 9997 185 9963 10029 185 9964 beehive
execute if score shrink1 db_shrink matches 7 run fill 10028 185 9991 10029 185 9965 beehive
execute if score shrink1 db_shrink matches 7 run fill 10029 185 9993 9997 185 9992 beehive
execute if score shrink1 db_shrink matches 7 run fill 9997 185 9991 9998 185 9965 beehive

execute if score shrink1 db_shrink matches 2 run clone 9997 171 9963 10029 171 9964 9997 186 9963
execute if score shrink1 db_shrink matches 2 run clone 10028 171 9991 10029 171 9965 10028 186 9965
execute if score shrink1 db_shrink matches 2 run clone 10029 171 9993 9997 171 9992 9997 186 9992
execute if score shrink1 db_shrink matches 2 run clone 9997 171 9991 9998 171 9965 9997 186 9965

execute if score shrink1 db_shrink matches 4 run clone 9997 171 9963 10029 171 9964 9997 186 9963
execute if score shrink1 db_shrink matches 4 run clone 10028 171 9991 10029 171 9965 10028 186 9965
execute if score shrink1 db_shrink matches 4 run clone 10029 171 9993 9997 171 9992 9997 186 9992
execute if score shrink1 db_shrink matches 4 run clone 9997 171 9991 9998 171 9965 9997 186 9965

execute if score shrink1 db_shrink matches 6 run clone 9997 171 9963 10029 171 9964 9997 186 9963
execute if score shrink1 db_shrink matches 6 run clone 10028 171 9991 10029 171 9965 10028 186 9965
execute if score shrink1 db_shrink matches 6 run clone 10029 171 9993 9997 171 9992 9997 186 9992
execute if score shrink1 db_shrink matches 6 run clone 9997 171 9991 9998 171 9965 9997 186 9965


execute if score shrink1 db_shrink matches 8 run execute as @a at @s run playsound minecraft:sound.shrinkend record @s ~ ~ ~ 1.2
execute if score shrink1 db_shrink matches 8 run fill 9997 186 9963 10029 186 9964 air
execute if score shrink1 db_shrink matches 8 run fill 10028 186 9991 10029 186 9965 air
execute if score shrink1 db_shrink matches 8 run fill 10029 186 9993 9997 186 9992 air
execute if score shrink1 db_shrink matches 8 run fill 9997 186 9991 9998 186 9965 air

execute if score shrink1 db_shrink matches 8 run fill 9997 185 9963 10029 185 9964 air
execute if score shrink1 db_shrink matches 8 run fill 10028 185 9991 10029 185 9965 air
execute if score shrink1 db_shrink matches 8 run fill 10029 185 9993 9997 185 9992 air
execute if score shrink1 db_shrink matches 8 run fill 9997 185 9991 9998 185 9965 air

execute if score shrink1 db_shrink matches 8 run tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fArena shrunk by 2 blocks!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]