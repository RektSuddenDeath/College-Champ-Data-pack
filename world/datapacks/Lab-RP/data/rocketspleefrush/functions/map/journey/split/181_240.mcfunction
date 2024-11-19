execute if score TimeElapsed rsr_game matches 214 run function rocketspleefrush:disintegrate/journey/50
execute if score TimeElapsed rsr_game matches 210 run tellraw @a "§c(§r鼱§c) §c§l最后一个平台将在5秒后移除！"
execute if score TimeElapsed rsr_game matches 210 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1