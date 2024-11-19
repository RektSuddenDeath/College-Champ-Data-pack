
# TIP
tellraw @a[team=green] ["§b[§r坕§b] 逃出的通路已经开启！在地牢塌陷之前尽快撤离吧！"]
execute as @a[team=green] at @s run playsound sound.mapupdate record @s

# BLOCKS
fill -7704 112 -7471 -7696 105 -7475 air