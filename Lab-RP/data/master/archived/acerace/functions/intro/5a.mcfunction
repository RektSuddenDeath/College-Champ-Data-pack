
kill @e[type=armor_stand,name="Intro"]
summon armor_stand -967 188 -1061 {CustomName:'"Intro"',NoGravity:1b,Rotation:[50f,45f],Invisible:1b}

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
tellraw @a " "
tellraw @a [{"text":"  完成一圈: ","color":"white"},{"text":"15","color":"green"}]
tellraw @a [{"text":"  第一个完赛: ","color":"white"},{"text":"640","color":"green"}]
tellraw @a [{"text":"  后完赛每名扣减: ","color":"white"},{"text":"20","color":"red"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]