 
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a "  §c请等待游戏开始……"
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup record @s ~ ~ ~ 1.5

kill @e[type=armor_stand,tag=intro]
schedule clear buildmart:intro/hold
function buildmart:after_intro