
# TIP
tellraw @a[team=purple] ["§b[§r坕§b] 逃出的通路已经开启！在地牢塌陷之前尽快撤离吧！"]
execute as @a[team=purple] at @s run playsound sound.mapupdate record @s

# BLOCKS
fill -8204 112 -7471 -8196 105 -7475 air