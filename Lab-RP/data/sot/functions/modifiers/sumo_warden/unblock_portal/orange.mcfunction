
# TIP
tellraw @a[team=orange] ["§b[§r坕§b] 逃出的通路已经开启！在地牢塌陷之前尽快撤离吧！"]
execute as @a[team=orange] at @s run playsound sound.mapupdate record @s

# BLOCKS
fill -8104 112 -7471 -8096 105 -7475 air