#these are distributed according to kits.
item replace entity @a[scores={battlebox_kit=2}] container.2 with minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:6}],display:{Name:'"Potion of Instant Healing"'}}
item replace entity @a[scores={battlebox_kit=4}] container.2 with minecraft:crossbow{Unbreakable:1}
item replace entity @a[scores={battlebox_kit=1}] container.0 with stone_sword{Unbreakable:1,Enchantments:[{id:"knockback",lvl:2}]} 1
item replace entity @a[scores={battlebox_kit=2..4}] container.0 with minecraft:stone_sword 1

item replace entity @a[scores={battlebox_kit=2}] container.2 with minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:6}],display:{Name:'"Instant Heal (2♥)"'}}
item replace entity @a[scores={battlebox_kit=2}] container.8 with minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:6}],display:{Name:'"Instant Heal (2♥)"'}}

#these are universal.
item replace entity @a armor.chest with minecraft:chainmail_chestplate
item replace entity @a armor.head with minecraft:leather_helmet
item replace entity @a armor.legs with minecraft:leather_leggings
item replace entity @a armor.feet with minecraft:leather_boots
item replace entity @a container.6 with arrow 6
item replace entity @a container.1 with minecraft:bow 1
item replace entity @a container.3 with minecraft:shears{CanDestroy:["minecraft:white_wool","minecraft:red_wool","minecraft:blue_wool","minecraft:yellow_wool","minecraft:green_wool"],Unbreakable:true}

item replace entity @a[scores={battlebox_kit=3}] container.6 with arrow 12

#these are team specific.
item replace entity @a[team=blue] container.4 with minecraft:blue_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool"]} 64
item replace entity @a[team=red] container.4 with minecraft:red_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool"]} 64
item replace entity @a[team=green] container.4 with minecraft:green_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool"]} 64
item replace entity @a[team=yellow] container.4 with minecraft:yellow_wool{"CanPlaceOn":["minecraft:bedrock","minecraft:blue_wool","minecraft:red_wool","minecraft:white_wool","minecraft:yellow_wool","minecraft:green_wool"]} 64

function master:timer/starting/5s

setblock 15 6 -14 air
setblock 15 6 -12 air
setblock 15 6 -10 air
setblock 15 6 -16 air

setblock 25 6 41 air
setblock 25 6 39 air
setblock 25 6 37 air
setblock 25 6 35 air

setblock 61 6 -16 air
setblock 61 6 -14 air
setblock 61 6 -12 air
setblock 61 6 -10 air

setblock 71 6 41 air
setblock 71 6 39 air
setblock 71 6 37 air
setblock 71 6 35 air