
schedule clear sg:respawn/detect
scoreboard players set revivalActive sg_game 0
clear @a nether_star
execute as @a[nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run effect clear @s resistance
tellraw @a ["","§c[§r鼱§c] ","§c§l复活任务已结束！未使用的复活之星和复活资格已失效。"]