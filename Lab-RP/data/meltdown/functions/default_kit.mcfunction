
clear @s
item replace entity @s hotbar.0 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
# Team Specific
item replace entity @s[team=red] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3002}
item replace entity @s[team=blue] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3003}
item replace entity @s[team=green] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3004}
item replace entity @s[team=yellow] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3005}
item replace entity @s[team=cyan] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3006}
item replace entity @s[team=pink] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3007}
item replace entity @s[team=orange] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3008}
item replace entity @s[team=purple] hotbar.1 with popped_chorus_fruit{display:{Name:'"§r§7加热器"'},HideFlags:24,CustomModelData:3009}

item replace entity @s[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1}]} 1 
item replace entity @s[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:30322},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @s[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}]} 1 
#
item replace entity @s inventory.26 with arrow
execute store result storage temp_md_map_id map_id int 1 run scoreboard players get @s meltdown_map_id
function meltdown:get_map with storage temp_md_map_id
item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}

effect give @s instant_health infinite 5 true
effect give @s resistance infinite 5 true
effect give @s saturation infinite 5 true
effect give @s glowing infinite 0 true