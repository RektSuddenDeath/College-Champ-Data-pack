
give @a[team=!spec] stone_sword{isSotTool:1b,Unbreakable:1b,HideFlags:24,CanDestroy:[sand,light_blue_carpet,cracked_stone_bricks,spawner,cracked_deepslate_bricks,cobweb,suspicious_sand,torch,wall_torch]} 1
give @a[team=!spec] iron_pickaxe{isSotTool:1b,Unbreakable:1b,CanDestroy:[sand,light_blue_carpet,cracked_stone_bricks,spawner,cracked_deepslate_bricks,suspicious_sand,torch,wall_torch]} 1
give @a[team=!spec] iron_shovel{isSotTool:1b,Unbreakable:1b,CanDestroy:[sand,light_blue_carpet,cracked_stone_bricks,spawner,cracked_deepslate_bricks,suspicious_sand]} 1
give @a[team=!spec] light_blue_carpet{isSotTool:1b,display:{Name:'[{"text":"标记","italic":false}]'},CanPlaceOn:["#minecraft:except_light_blue_wool"],CanDestroy:[sand,light_blue_carpet,cracked_stone_bricks,suspicious_sand],HideFlags:24} 128
give @a[team=!spec] torch{isSotTool:1b,CanPlaceOn:["#minecraft:except_light_blue_wool"],CanDestroy:[sand,white_carpet,cracked_stone_bricks,suspicious_sand],HideFlags:24} 32
give @a[team=!spec] bow
give @a[team=!spec] arrow 4
item replace entity @a[team=!spec] armor.head with leather_helmet{Unbreakable:1b}
item replace entity @a[team=!spec] armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @a[team=!spec] armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @a[team=!spec] armor.feet with leather_boots{Unbreakable:1b}

effect give @a[team=!spec] glowing infinite 0 true
