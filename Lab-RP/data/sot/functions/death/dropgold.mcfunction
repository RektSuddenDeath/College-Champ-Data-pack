
execute if score @s SotPersonal matches 54.. run summon item ~ ~ ~ {Invulnerable:1b,Item:{id:"gold_block",Count:1b}}
execute if score @s SotPersonal matches 54.. run scoreboard players remove @s SotPersonal 54

execute if score @s SotPersonal matches 18.. run summon item ~ ~ ~ {Invulnerable:1b,Item:{id:"gold_ingot",Count:1b}}
execute if score @s SotPersonal matches 18.. run scoreboard players remove @s SotPersonal 18

execute if score @s SotPersonal matches ..17 run scoreboard players set @s SotPersonal 0

execute if score @s SotPersonal matches 1.. run function sot:death/dropgold