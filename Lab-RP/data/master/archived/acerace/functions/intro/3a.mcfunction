
schedule clear acerace:intro/1a
kill @e[type=armor_stand,name="Intro"]
summon armor_stand -1046 102 -1055 {CustomName:'"Intro"',NoGravity:1b,Rotation:[100f,20f],Invisible:1b}

# tp @a -1044 103 -1053 facing -1084 88 -1063
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  每圈均有4个记录点","color":"white"}]
tellraw @a [{"text":"  若在地图中死亡，将会回到上一个成功记录的记录点。","color":"white"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  部分关卡存在路径分叉，其中一条","color":"white"},{"text":"稍难","color":"red"}]
tellraw @a [{"text":"  但如果成功挑战，可能可以比另一条","color":"white"},{"text":"更快完成！","color":"green"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]