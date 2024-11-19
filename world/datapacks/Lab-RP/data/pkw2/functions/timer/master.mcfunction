
# 1 Minutes
execute if score minute master.timer matches 2 if score second master.timer matches 0 run tellraw @a ["","§6[§r梎§6] ","§b游戏仅剩2分钟！"]
execute if score minute master.timer matches 2 if score second master.timer matches 0 run execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s
execute if score minute master.timer matches 1 if score second master.timer matches 0 run tellraw @a ["","§6[§r梎§6] ","§b游戏仅剩1分钟！"]
execute if score minute master.timer matches 1 if score second master.timer matches 0 run execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s

execute if score minute master.timer matches 0 if score second master.timer matches 40 run tellraw @a ["","§c[§r鼱§c] ","§c返回书将会在游戏的最后",{"text": "30","color": "#E3E3E3"},"§c秒移除！"]
execute if score minute master.timer matches 0 if score second master.timer matches 40 run execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s
execute if score minute master.timer matches 0 if score second master.timer matches 30 run function pkw2:timer/stop_recall

# Overtime
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score Overtime pkw2_game matches 0 run function pkw2:timer/overtime/init

# Game end
execute unless entity @p[gamemode=adventure] unless score devMode pkw2_game matches 1 run function pkw2:end
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score Overtime pkw2_game matches 1 if entity @p[gamemode=adventure] run function pkw2:end


# Loop
execute if score gameflag pkw2_game matches 1 run schedule function pkw2:timer/master 1s