

execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,sort=nearest,limit=1] at @s run particle angry_villager ~ ~ ~ 0 0 0 0 100
execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor,sort=nearest,limit=1] run kill @s
tellraw @s ["[§6DEBUG§f] Removed the closest gate anchor."]