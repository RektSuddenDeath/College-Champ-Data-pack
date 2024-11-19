
kill @e[type=armor_stand,name="Intro"]
summon armor_stand -1034 107 -1056 {CustomName:'"Intro"',NoGravity:1b,Rotation:[50f,45f],Invisible:1b}

# tp @a -1034 107 -1056 facing -1050 74 -1048
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  特殊方块","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a [{"text":"  站上一些方块时，可以获得特定效果或物品","color":"white"}]
tellraw @a [{"text":"  绿宝石块: ","color":"green"},{"text":"获得速度加成","color":"white","bold":false}]
tellraw @a [{"text":"  金块: ","color":"gold"},{"text":"获得跳跃提升","color":"white","bold":false}]
tellraw @a [{"text":"  末地石砖: ","color":"gray"},{"text":"获得鞘翅                      还有更多...","color":"white","bold":false}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]