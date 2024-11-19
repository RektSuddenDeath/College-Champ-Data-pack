
forceload add -4009 -4025 -3997 -4025
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a ["",{"text": "  请等待游戏开始……","color":"red"}]
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
kill @e[type=armor_stand,name="Intro"]
schedule clear parkourwarrior:intro/hold
gamemode adventure @a[team=!spec]
spreadplayers -4002 -4002 2 3 true @a
execute as @a at @s run tp @s ~ ~ ~ 900 1
fill -4009 117 -4025 -3997 133 -4025 barrier

item replace entity @a[team=red] armor.feet with leather_boots{display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=blue] armor.feet with leather_boots{display:{color:4980991},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=green] armor.feet with leather_boots{display:{color:65356},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=yellow] armor.feet with leather_boots{display:{color:15662848},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}]} 1
forceload remove -3976 -4339