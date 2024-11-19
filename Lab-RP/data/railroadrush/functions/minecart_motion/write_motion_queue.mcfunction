
execute as @e[type=minecart,tag=rrr_minecart,tag=!motion_modified,sort=random,limit=1] at @s run function railroadrush:minecart_motion/write_motion
execute if entity @e[type=minecart,tag=rrr_minecart,tag=!motion_modified] run function railroadrush:minecart_motion/write_motion_queue

tag @e[type=minecart,tag=rrr_minecart] remove motion_modified
