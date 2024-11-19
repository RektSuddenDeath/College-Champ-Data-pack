
schedule clear acerace3:intro/hold
kill @e[type=armor_stand,name="Intro"]

tp @a[team=red] -29998 114.00 -30027 180 0
tp @a[team=blue] -29999 114.00 -30027 180 0
tp @a[team=green] -30000 114.00 -30027 180 0
tp @a[team=yellow] -30001 114.00 -30027 180 0
tp @a[team=cyan] -30002 114.00 -30027 180 0
tp @a[team=orange] -30003 114.00 -30027 180 0
tp @a[team=pink] -30004 114.00 -30027 180 0
tp @a[team=purple] -30005 114.00 -30027 180 0
tp @a[team=spec] -30019.68 124.74 -30018.59 223.75 30.86

fill -30017 114 -30026 -29993 116 -30026 red_stained_glass
fill -29992 116 -30037 -30018 114 -30037 orange_stained_glass

gamemode adventure @a[team=!spec]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
effect give @a[team=!spec] weakness 15 49 true

scoreboard players set intro_active tourney_stats 0
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

give @a[team=!spec] trident{Enchantments:[{id:"riptide",lvl:2}],Unbreakable:1b}
title @a[team=!spec] actionbar ["",{"text": "+","color": "green"}," 䅃",{"text": " 三叉戟","color": "green"}]
