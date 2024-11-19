tp @a 66 6 -13 facing 61 7 -13
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","text":"  职业套装","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  每个队伍都有四个职业套装可供选择，\n  每人限选一个。每局对战开始前你有15秒时间选择职业。","color":"white"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10