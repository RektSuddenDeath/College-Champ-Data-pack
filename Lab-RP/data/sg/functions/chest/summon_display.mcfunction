

scoreboard objectives add sg_tempcount dummy
scoreboard players set 1 sg_tempcount 0
execute as @e[type=marker,tag=sgchest,tag=!hasdisplay] run scoreboard players add 1 sg_tempcount 1
tellraw @s ["","§eFound ",{"score":{"name": "1","objective": "sg_tempcount"},"color": "green"},"§e applicable entities and added text displays on them."]
scoreboard objectives remove sg_tempcount

execute as @e[type=marker,tag=sgchest,tag=!hasdisplay] at @s run summon text_display ~ ~1 ~ {Tags:["chestdisplay","sgcomp"],text:"",alignment:"center",billboard:"horizontal"}

execute as @e[type=marker,tag=sgchest,tag=!hasdisplay] at @s run tag @s add hasdisplay
