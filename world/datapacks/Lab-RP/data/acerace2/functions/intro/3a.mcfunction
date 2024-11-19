
schedule clear acerace2:intro/1a
kill @e[type=armor_stand,name="Intro"]
summon armor_stand 3985 133 3836 {CustomName:'"Intro"',NoGravity:1b,Rotation:[90f,20f],Invisible:1b}

# tp @a -1044 103 -1053 facing -1084 88 -1063
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  每完成一个区域将设置记录点","color":"white"}]
tellraw @a [{"text":"  若在地图中掉落，将会回到上一个成功记录的记录点。","color":"white"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  地图中存在大量的捷径可以使用。","color":"white"}]
tellraw @a [{"text":"  它们或许更难达成，但是能够大大提升完成的速度！","color":"white"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]