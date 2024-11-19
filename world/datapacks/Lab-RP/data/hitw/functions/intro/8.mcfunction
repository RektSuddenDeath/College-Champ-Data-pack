
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a " "
tellraw @a ["",{"text": "  请等待游戏开始……","color":"red"}]
tellraw @a ""
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
scoreboard players set intro_active tourney_stats 0

item replace entity @a[team=red] armor.feet with leather_boots{display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=blue] armor.feet with leather_boots{display:{color:4980991},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=green] armor.feet with leather_boots{display:{color:65356},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=yellow] armor.feet with leather_boots{display:{color:15662848},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1}
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}]} 1 


gamemode adventure @a

execute if score platform_shape hitw_game matches 1 run function hitw:platform_shape/1/init
execute if score platform_shape hitw_game matches 2 run function hitw:platform_shape/2/init
execute if score platform_shape hitw_game matches 3 run function hitw:platform_shape/3/init
execute if score platform_shape hitw_game matches 4 run function hitw:platform_shape/4/init
execute if score platform_shape hitw_game matches 5 run function hitw:platform_shape/5/init
execute if score platform_shape hitw_game matches 6 run function hitw:platform_shape/6/init


kill @e[type=armor_stand,tag=Intro]
schedule clear hitw:intro/hold
function hitw:wall/aoc
function hitw:wall/wallaoc