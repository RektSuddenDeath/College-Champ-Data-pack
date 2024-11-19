
kill @e[type=armor_stand,name="Intro"]
summon armor_stand 3915 154 4102 {CustomName:'"Intro"',NoGravity:1b,Rotation:[50f,45f],Invisible:1b}

#region fold
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
#endregion
# tp @a -967 188 -1061 facing -1025 123 -1018
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  积分标准","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a [{"text":"  完成一圈: ","color":"white"},{"text":"15","color":"green"}]
tellraw @a [{"text":"  第一个完赛: ","color":"white"},{"text":"384","color":"green"}]
tellraw @a [{"text":"  后完赛每名扣减: ","color":"white"},{"text":"12","color":"red"}]
tellraw @a " "
tellraw @a ["",{"text": "  前5名额外奖励: "},{"text": "280/210/165/120/80","color":"green"}]
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]