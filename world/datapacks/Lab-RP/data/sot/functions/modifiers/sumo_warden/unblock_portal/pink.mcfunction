
# TIP
tellraw @a[team=pink] ["§b[§r坕§b] 逃出的通路已经开启！在地牢塌陷之前尽快撤离吧！"]
execute as @a[team=pink] at @s run playsound sound.mapupdate record @s

# BLOCKS
fill -8004 112 -7471 -7996 105 -7475 air