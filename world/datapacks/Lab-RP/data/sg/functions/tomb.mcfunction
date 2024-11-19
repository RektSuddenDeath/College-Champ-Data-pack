
summon area_effect_cloud ~0.5 ~-0.525 ~ {Tags:["tomb_stand"],Passengers:[{id:"chest_minecart",Tags:["filling","tomb_cart"],Invulnerable:1b}],Duration:9999999}

item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.0 from entity @s inventory.0
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.1 from entity @s inventory.1
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.2 from entity @s inventory.2
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.3 from entity @s inventory.3
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.4 from entity @s inventory.4
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.5 from entity @s inventory.5
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.6 from entity @s inventory.6
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.7 from entity @s inventory.7
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.8 from entity @s inventory.8
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.9 from entity @s inventory.9
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.10 from entity @s inventory.10
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.11 from entity @s inventory.11
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.12 from entity @s inventory.12
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.13 from entity @s inventory.13
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.14 from entity @s inventory.14
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.15 from entity @s inventory.15
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.16 from entity @s inventory.16
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.17 from entity @s inventory.17
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.18 from entity @s inventory.18
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.19 from entity @s inventory.19
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.20 from entity @s inventory.20
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.21 from entity @s inventory.21
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.22 from entity @s inventory.22
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.23 from entity @s inventory.23
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.24 from entity @s inventory.24
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.25 from entity @s inventory.25
item replace entity @e[type=chest_minecart,limit=1,tag=filling,sort=nearest] container.26 from entity @s inventory.26

tag @e[type=chest_minecart,tag=filling] remove filling
summon area_effect_cloud ~-0.5 ~-0.525 ~ {Tags:["tomb_stand"],Passengers:[{id:"chest_minecart",Tags:["filling2","tomb_cart"],Invulnerable:1b}],Duration:9999999}

item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.0 from entity @s weapon.offhand
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.1 from entity @s armor.head
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.2 from entity @s armor.chest
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.3 from entity @s armor.legs
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.4 from entity @s armor.feet

item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.9 from entity @s hotbar.0
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.10 from entity @s hotbar.1
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.11 from entity @s hotbar.2
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.12 from entity @s hotbar.3
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.13 from entity @s hotbar.4
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.14 from entity @s hotbar.5
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.15 from entity @s hotbar.6
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.16 from entity @s hotbar.7
item replace entity @e[type=chest_minecart,limit=1,tag=filling2,sort=nearest] container.17 from entity @s hotbar.8
tag @e[type=chest_minecart,tag=filling2] remove filling2

clear @s