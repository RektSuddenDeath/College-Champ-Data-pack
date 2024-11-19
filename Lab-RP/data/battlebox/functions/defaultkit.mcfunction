
execute if score map bb_game matches 1 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb]}
execute if score map bb_game matches 1 run give @a[gamemode=adventure] bow 
execute if score map bb_game matches 1 run give @a[gamemode=adventure] crossbow
execute if score map bb_game matches 1 run give @a[gamemode=adventure] arrow 10

execute if score map bb_game matches 2 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 2 run give @a[gamemode=adventure] crossbow{Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1b}
execute if score map bb_game matches 2 run give @a[gamemode=adventure] arrow 12

execute if score map bb_game matches 3 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 3 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 3 run give @a[gamemode=adventure] arrow 7

execute if score map bb_game matches 4 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 4 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 4 run give @a[gamemode=adventure] arrow 6
execute if score map bb_game matches 4 run give @a[gamemode=adventure] splash_potion{Potion:"healing"}

execute if score map bb_game matches 6 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 6 run give @a[gamemode=adventure] bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:1}]}
execute if score map bb_game matches 6 run give @a[gamemode=adventure] arrow 8

execute if score map bb_game matches 7 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 7 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 7 run give @a[gamemode=adventure] arrow 6

execute if score map bb_game matches 8 run give @a[gamemode=adventure] cod

# Wool
item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:30322},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 


give @a[gamemode=adventure] minecraft:shears{CanDestroy:["minecraft:white_wool","minecraft:red_wool","minecraft:blue_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool",cobweb],Unbreakable:true}
give @a[team=red] minecraft:red_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=blue] minecraft:blue_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=green] minecraft:green_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=yellow] minecraft:yellow_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=cyan] minecraft:cyan_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=pink] minecraft:pink_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=orange] minecraft:orange_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64
give @a[team=purple] minecraft:purple_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool","minecraft:pink_wool","minecraft:purple_wool","minecraft:orange_wool","minecraft:cyan_wool"]} 64