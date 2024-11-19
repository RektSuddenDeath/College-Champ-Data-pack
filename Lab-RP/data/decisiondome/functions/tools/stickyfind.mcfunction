summon snowball ~ ~ ~ {Tags:["init","ddtools","sticky"],Item:{tag:{CustomModelData:11000005}},Passengers:[{id:"minecraft:area_effect_cloud",Duration:999999999,Tags:["stickyseg","init","ddtools"]}]}


data modify entity @e[type=snowball,tag=sticky,limit=1,tag=init,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=sticky,limit=1,tag=init,sort=nearest] Motion set from entity @s Motion

tag @e[type=snowball,tag=sticky,tag=init,limit=1,sort=nearest] remove init

kill @s