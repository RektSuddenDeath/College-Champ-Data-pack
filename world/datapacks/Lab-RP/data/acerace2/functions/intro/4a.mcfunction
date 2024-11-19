
#kill @e[type=armor_stand,name="Intro"]
#summon armor_stand 3904 146 3928 {CustomName:'"Intro"',NoGravity:1b,Rotation:[50f,45f],Invisible:1b}

# tp @a -1034 107 -1056 facing -1050 74 -1048
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  游戏提示","bold": true,"color": "yellow"}]
tellraw @a " "
tellraw @a [{"text":"  - 一些方块可以赋予你特定效果或物品","color":"white"}]
tellraw @a [{"text":"    绿宝石块: ","color":"green"},{"text":"获得速度加成","color":"white","bold":false},"    ",{"text":"  金块: ","color":"gold"},{"text":"获得跳跃提升","color":"white","bold":false}]
tellraw @a [{"text":"    钻石块门: ","color":"aqua"},{"text":"获得鞘翅","color":"white","bold":false}]
tellraw @a ""
tellraw @a "  - emm 如果你第一次玩这个， 那可能会玩的不太好……"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]