
# TIP
tellraw @a[team=red] ["§b[§r坕§b] 逃出的通路已经开启！在地牢塌陷之前尽快撤离吧！"]
execute as @a[team=red] at @s run playsound sound.mapupdate record @s

# BLOCKS
fill -7504 112 -7471 -7496 105 -7475 air