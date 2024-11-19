
kill @e[type=armor_stand,tag=arintro]
# tp @a -982 142 -1003 facing -1030 139 -998
summon armor_stand 4003 126 3935 {Tags:["arintro"],CustomName:'"Intro"',NoGravity:1b,Rotation:[180f,10f],Invisible:1b}
gamemode spectator @a
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
title @a times 10 40 10
title @a title [{"text": "Ace Race","color":"yellow"}]

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  欢迎来到 Ace Race","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  以下是游戏玩法介绍...","color":"white","italic":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

#region fold
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
execute as @e[type=armor_stand,name="Intro"] at @s run spectate @s @r[distance=1..]
#endregion

function acerace2:intro/hold