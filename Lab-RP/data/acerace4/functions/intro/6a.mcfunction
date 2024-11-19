
schedule clear acerace4:intro/hold
kill @e[type=armor_stand,name="Intro"]

tp @a[team=red] -49986 101 -50006 0 0
tp @a[team=blue] -49988 101 -50006 0 0
tp @a[team=green] -49990 101 -50006 0 0
tp @a[team=yellow] -49992 101 -50006 0 0
tp @a[team=cyan] -49994 101 -50006 0 0
tp @a[team=orange] -49996 101 -50006 0 0
tp @a[team=pink] -49998 101 -50006 0 0
tp @a[team=purple] -50000 101 -50006 0 0
tp @a[team=spec] -49993 105 -50006 0 0

fill -50007 101 -50009 -49982 104 -50009 red_stained_glass
fill -49982 104 -50003 -50004 101 -50003 orange_stained_glass

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

#give @a[team=!spec] trident{Enchantments:[{id:"riptide",lvl:2}],Unbreakable:1b}
#title @a[team=!spec] actionbar ["",{"text": "+","color": "green"}," 䅃",{"text": " 三叉戟","color": "green"}]
