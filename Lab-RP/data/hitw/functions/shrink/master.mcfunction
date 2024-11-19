
# 2-3-4-5-6

# 2: 无警告 状态1
# 3: 有警告 状态1
# 4: 状态2
# 5: 状态2：有警告
# 6: 状态3
scoreboard players add shrink hitw_game 1

execute if score shrink hitw_game matches 1 run tellraw @a ["","§c(§r鼱§c)",{"text":" 场地即将收缩！","color":"red","bold":true}]
#execute if score shrink hitw_game matches 1 run function utils:text/hitw_shrink

execute if score shrink hitw_game matches 1 run function hitw:shrink/1
execute if score shrink hitw_game matches 3 run function hitw:shrink/1
execute if score shrink hitw_game matches 5 run function hitw:shrink/1
execute if score shrink hitw_game matches 7 run function hitw:shrink/1
execute if score shrink hitw_game matches 9 run function hitw:shrink/1

execute if score shrink hitw_game matches 2 run function hitw:shrink/2
execute if score shrink hitw_game matches 4 run function hitw:shrink/2
execute if score shrink hitw_game matches 6 run function hitw:shrink/2
execute if score shrink hitw_game matches 8 run function hitw:shrink/2
execute if score shrink hitw_game matches 10 run function hitw:shrink/2

execute if score shrink hitw_game matches 11 run function hitw:shrink/3

execute if score shrink hitw_game matches 1..10 run schedule function hitw:shrink/master 6t
execute if score shrink hitw_game matches 1 run execute as @a at @s run playsound minecraft:sound.hitwshrink record @s ~ ~ ~ 1.5