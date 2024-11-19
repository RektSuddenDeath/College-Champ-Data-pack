
tag @a[team=!spec,gamemode=adventure,nbt={Inventory:[{id:"minecraft:arrow"}]}] add hasArrow

scoreboard players set @a[tag=hasArrow] db_timeoutReset 0
scoreboard players remove @a[tag=hasArrow] db_arrowTimeout 1
execute as @a[tag=hasArrow,scores={db_arrowTimeout=1..15}] run title @s actionbar ["",{"text": "！！！在","color": "red","bold": true},{"score":{"name": "@s","objective": "db_arrowTimeout"},"color": "yellow","bold": true},{"text": "秒内射出箭，否则你将被淘汰！！！","color": "red","bold": true}] 
execute as @a[tag=hasArrow,scores={db_arrowTimeout=0}] run tellraw @a ["",{"selector":"@s"},{"text": "因持箭过久被淘汰！"}]
execute as @a[tag=hasArrow,scores={db_arrowTimeout=0}] run kill @s

scoreboard players add @a[team=!spec,gamemode=adventure,tag=!hasArrow,scores={db_arrowTimeout=1..90}] db_timeoutReset 1
scoreboard players add @a[scores={db_timeoutReset=6..,db_arrowTimeout=1..89}] db_arrowTimeout 2
scoreboard players set @a[scores={db_arrowTimeout=91..}] db_arrowTimeout 90

tag @a remove hasArrow
execute if score gameflag db_game matches 1 run schedule function dodgebolt:arrowtimeout 1s