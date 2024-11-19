
schedule clear acerace2:intro/hold
kill @e[type=armor_stand,name="Intro"]

tp @a 4000 135 4011
gamemode adventure @a[team=!spec]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
effect give @a[team=!spec] weakness 15 5 true

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  请等待游戏开始……","color":"red"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]