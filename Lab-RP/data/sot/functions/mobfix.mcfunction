
execute as @e[type=skeleton,tag=!fixed] run data merge entity @s {HandItems:[{Count:1b,id:"bow"}]}
execute as @e[type=pillager,tag=!fixed] run data merge entity @s {HandItems:[{Count:1b,id:"crossbow"}]}

#execute as @e[type=#sot:mobs,tag=!fixed] at @s if predicate sot:in_lit_area run tp @s ~ -96 ~

tag @e[type=#sot:mobs,tag=!fixed] add fixed


execute if score gameflag SotGame matches 1 run schedule function sot:mobfix 1t