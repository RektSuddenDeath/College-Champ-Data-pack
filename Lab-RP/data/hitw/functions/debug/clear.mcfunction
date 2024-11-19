
kill @e[type=armor_stand,tag=north]
kill @e[type=armor_stand,tag=south]
kill @e[type=armor_stand,tag=west]
kill @e[type=armor_stand,tag=east]
fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air

tellraw @s ["[§6DEBUG§] Cleared all walls."]