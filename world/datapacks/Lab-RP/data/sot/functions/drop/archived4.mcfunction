##### 平均一个刷怪笼掉落9 Coins
# forceload add 2000 2000
forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

# summon minecraft:area_effect_cloud 2000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 2000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 2000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 2500 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 2500 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 2500 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 3000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 3000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}
summon minecraft:area_effect_cloud 3000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon"]}

#forceload
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s run forceload add ~-110 ~42 ~-110 ~42
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s run forceload add ~-27 ~53 ~-27 ~53
#region red

# keys
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:armor_stand ~500 73 ~500 {ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text":"蓝色钥匙","color":"blue","italic":false}'}}}],Invisible:1b,Invulnerable:1b,CustomName:'{"text":"空手右键点击拾取钥匙！"}',Tags:["sot_drop"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:armor_stand ~517 75 ~445 {ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text":"红色钥匙","color":"red","italic":false}'}}}],Invisible:1b,Invulnerable:1b,CustomName:'{"text":"空手右键点击拾取钥匙！"}',Tags:["sot_drop"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:armor_stand ~447 54 ~394 {ArmorItems:[{},{},{},{id:"minecraft:green_concrete",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text":"绿色钥匙","color":"green","italic":false}'}}}],Invisible:1b,Invulnerable:1b,CustomName:'{"text":"空手右键点击拾取钥匙！"}',Tags:["sot_drop"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:armor_stand ~611 80 ~451 {ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text":"黄色钥匙","color":"yellow","italic":false}'}}}],Invisible:1b,Invulnerable:1b,CustomName:'{"text":"空手右键点击拾取钥匙！"}',Tags:["sot_drop"]}
#

# Vaults TOTAL VALUE: 1158
## red # TOTAL VALUE: 280
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~496 73 ~604 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~496 73 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~496 73 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~496 73 ~607 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~496 73 ~608 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:6b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~497 73 ~604 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:6}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~497 73 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:7}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~497 73 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:8}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~497 73 ~607 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:2b,tag:{dropid:9}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~497 73 ~608 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:10}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~498 73 ~604 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:12b,tag:{dropid:11}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~498 73 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:12}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~498 73 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:9b,tag:{dropid:13}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~498 73 ~607 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:14b,tag:{dropid:14}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~498 73 ~608 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:15}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~499 73 ~604 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:16}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~499 73 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:11b,tag:{dropid:17}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~499 73 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:18}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~499 73 ~607 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:19}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~499 73 ~608 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:20}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 73 ~604 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:iron_axe",Count:1b,tag:{dropid:21}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 73 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:22}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 73 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:golden_apple",Count:2b,tag:{dropid:23}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 73 ~607 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 73 ~608 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:6b,tag:{dropid:25}}}
### VAULT MOB
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon blaze ~483 75.5 ~604 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["redvaultblaze","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon blaze ~483 75.5 ~608 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["redvaultblaze","inactivemob"],Rotation:[90f,45f]}
## blue # TOTAL VAULE:230
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~529 84 ~655 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~529 84 ~656 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~529 84 ~657 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~529 84 ~658 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:9b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~529 84 ~659 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 84 ~655 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:6}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 84 ~656 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:7}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 84 ~657 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:8}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 84 ~658 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:9}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 84 ~659 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:10}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 84 ~655 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:11}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 84 ~656 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:12}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 84 ~657 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:13}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 84 ~658 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:golden_helmet",Count:1b,tag:{dropid:14}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 84 ~659 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{dropid:15}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 84 ~655 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:16}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 84 ~656 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:17}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 84 ~657 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:18}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 84 ~658 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:19}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 84 ~659 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:20}}}

## green # TOTAL VALUE: 289
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~435 86 ~517 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~435 86 ~516 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~435 86 ~515 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~435 86 ~514 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~435 86 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~436 86 ~517 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:6}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~436 86 ~516 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:7}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~436 86 ~515 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:12b,tag:{dropid:8}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~436 86 ~514 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:14b,tag:{dropid:9}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~436 86 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:2b,tag:{dropid:10}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 86 ~517 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:2b,tag:{dropid:11}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 86 ~516 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:12}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 86 ~515 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:13}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 86 ~514 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:14}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 86 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:15}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~438 86 ~517 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:16}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~438 86 ~516 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:17}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~438 86 ~515 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:6b,tag:{dropid:18}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~438 86 ~514 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:19}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~438 86 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:20}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~439 86 ~517 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:21}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~439 86 ~516 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:22}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~439 86 ~515 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:23}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~439 86 ~514 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:golden_apple",Count:2b,tag:{dropid:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~439 86 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:golden_leggings",Count:1b,tag:{dropid:25}}}
### 1 spawner
## gold # TOTAL VAULE: 359
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 68 ~384 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 68 ~385 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 68 ~386 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 68 ~387 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 68 ~388 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 68 ~384 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:6}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 68 ~385 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:7}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 68 ~386 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:8}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 68 ~387 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:9}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~531 68 ~388 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:10}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 68 ~384 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:11}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 68 ~385 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:12}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 68 ~386 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:13}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 68 ~387 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:14}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~532 68 ~388 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:15}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 68 ~384 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:16}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 68 ~385 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:6b,tag:{dropid:17}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 68 ~386 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:18}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 68 ~387 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:19}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 68 ~388 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:20}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~534 68 ~384 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:21}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~534 68 ~385 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:22}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~534 68 ~386 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:23}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~534 68 ~387 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{dropid:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~534 68 ~388 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{dropid:25}}}
### VAULT MOB
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon husk ~538 68.5 ~397 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["yellowvaultmob","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon husk ~538 68.5 ~401 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["yellowvaultmob","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon husk ~526 68.5 ~397 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["yellowvaultmob","inactivemob"],Rotation:[270f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon husk ~526 68.5 ~401 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["yellowvaultmob","inactivemob"],Rotation:[270f,45f]}
### Spawners: 1, worth 9 coins

# .
# Sandglass Hall # Total Value: 111
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~518 77 ~487 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~519 77 ~513 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~504 77 ~520 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~480 77 ~511 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~474 81 ~484 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 88 ~524 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~500 88 ~524 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}
## Dispenser Value: 68
# North Tunnel # Total Value: 9
## 1 Spawner
# North East North Tunnel (RED KEY PUZZLE) # Total Value: 42
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~516 76 ~445 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~516 76 ~445 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~517 76 ~444 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~518 76 ~445 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~517 75 ~448 {Duration:999999,Tags:["sotmapanchors","redkeypuzzle"]}
# North East East Tunnel # TOTAL VALUE: 171
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~558 83 ~471 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~558 83 ~468 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~556 83 ~470 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~564 84 ~471 {Duration:999999,Tags:["sotmapanchors","levermobs_east"]}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~608 80 ~449 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~611 80 ~454 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:12b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~559 81 ~505 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~558 81 ~506 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
## 13 Spawners
# East Tunnel # TOTAL VAULE: 289
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~567 67 ~497 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~561 66 ~442 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~562 66 ~443 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~565 66 ~443 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~563 66 ~442 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:splash_potion",Count:2b,tag:{dropid:1,Potion:"strong_healing"}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~545 67 ~469 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~545 67 ~468 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~544 67 ~467 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:14b,tag:{dropid:1}}}
## Creeper and detector
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~549 67.5 ~466 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["fourcreeper","inactivemob"],Rotation:[0f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~551 67.5 ~466 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["fourcreeper","inactivemob"],Rotation:[0f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~549 67.5 ~470 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["fourcreeper","inactivemob"],Rotation:[180f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~551 67.5 ~470 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["fourcreeper","inactivemob"],Rotation:[180f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~550 68 ~468 {Duration:99999999,Tags:["sotmapanchors","sotrooms","fourcreepers"]}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~569 64 ~547 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~568 64 ~546 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~568 64 ~545 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:13b,tag:{dropid:1}}}
## 9 Spawners, +48 from dispensers
# South East East Tunnel (BLUE VAULT) # TOTAL VALUE: 211
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~569 64 ~547 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:1}}}
## Creeper Stairs
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~586 92 ~533 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["creeperstairs","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~589 95 ~533 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["creeperstairs","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~591 97 ~533 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["creeperstairs","inactivemob"],Rotation:[90f,45f]}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~595 97 ~532 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:5b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~594 97 ~533 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~596 97 ~534 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:12b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~595 97 ~534 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:iron_axe",Count:1b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~541 77 ~609 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~536 77 ~620 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:10b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~526 77 ~620 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:6b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~524 77 ~609 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:2b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~530 77 ~610 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:1b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~533 77 ~612 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:6}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~584 83 ~613 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~584 83 ~613 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
## 12 Spawners, +30 dispenser
# South East South Tunnel (Puzzle Room) # Total Value: 48
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~524 81 ~553 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~524 81 ~553 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~515 79 ~554 {Duration:99999999,Tags:["sotmapanchors","boulder"]}
# South West South Tunnel # Total Value: 373
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~502 97 ~549 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~503 97 ~549 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~450 80 ~537 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~456 80 ~533 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
## BLAZE PIT
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~426 79 ~552 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~430 79 ~551 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~428 79 ~554 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon blaze ~428 79 ~550 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["blazepit","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon blaze ~430 79 ~552 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["blazepit","inactivemob"],Rotation:[90f,45f]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon blaze ~427 79 ~554 {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["blazepit","inactivemob"],Rotation:[90f,45f]}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~428 79 ~552 {Duration:99999999,Tags:["sotmapanchors","blazepit"]}
## BRICKS MAZE
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~406 81 ~548 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~410 81 ~544 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~410 81 ~560 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_block",Count:1b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~466 75 ~593 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~467 75 ~590 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~461 76 ~591 {Duration:99999999,Tags:["sotmapanchors","levermobs_west"]}
## RAVAGER PATH
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~434 76 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~434 76 ~605 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~434 76 ~606 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~431 76 ~606 {Duration:99999999,Tags:["sotmapanchors","ravagerpath"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon ravager ~429 76 ~606 {PersistenceRequired:1b}
## 13 spawners
# South West West Tunnel (GREEN VAULT) # Total Value: 0 
## GREEN VAULT
# West Tunnel # Total Value: 196

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~423 73 ~489 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~424 73 ~490 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:13b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~449 61 ~456 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:4b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~445 61 ~460 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~452 61 ~461 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~458 61 ~453 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:4}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~450 61 ~444 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:2b,tag:{dropid:5}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~437 61 ~448 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:6}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~445 54 ~395 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:12b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~449 54 ~396 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:11b,tag:{dropid:2}}}
## 8 Spawners
# North West West Tunnel # Total Value: 61
## Dispenser: 61
# North West North Tunnel (YELLOW VAULT) # Total Value: 175
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~476 76 ~400 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:7b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~476 76 ~400 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon skeleton ~501 79 ~424 {PersistenceRequired:1b,HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon skeleton ~506 79 ~424 {PersistenceRequired:1b,HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon skeleton ~504 79 ~426 {PersistenceRequired:1b,HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon skeleton ~501 79 ~426 {PersistenceRequired:1b,HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~504 79 ~424 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~506 79 ~426 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:2}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~509 79 ~524 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:3}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon creeper ~510 79 ~426 {PersistenceRequired:1b}

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~551 78 ~420 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~551 78 ~421 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:3b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~551 78 ~422 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:2}}}
## 5 Spawners
# Sacrificer Value: 76
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~513 77 ~475 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~513 77 ~475 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~487 77 ~475 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_ingot",Count:2b,tag:{dropid:1}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon minecraft:item ~487 77 ~475 {Age:-32768s,Tags:["sot_drop"],Item:{id:"minecraft:gold_nugget",Count:8b,tag:{dropid:1}}}

# Torches
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~517 77 ~482 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~521 77 ~493 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~530 81 ~508 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~519 77 ~519 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~510 81 ~529 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~494 81 ~530 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~484 81 ~524 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~480 77 ~509 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~472 81 ~501 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~470 81 ~487 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~483 77 ~486 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~496 77 ~480 {Age:-32767,Item:{id:"minecraft:torch",Count:12b,tag:{isSotTool:1b,CanPlaceOn:[stripped_jungle_wood,sandstone,chiseled_sandstone,smooth_sandstone,spawner,cut_sandstone,deepslate,cobbled_deepslate,stone_bricks,end_stone_bricks,deepslate_bricks,cracked_deepslate_bricks,birch_planks,mud_bricks,cobblestone],CanDestroy:[sand,white_carpet,cracked_stone_bricks],HideFlags:24}}}
# Rusty Keys
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~520 77 ~486 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~529 81 ~487 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~529 81 ~502 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~526 81 ~516 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~511 77 ~520 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~501 81 ~530 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~485 81 ~526 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~472 81 ~519 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~470 81 ~500 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~473 81 ~485 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~483 77 ~479 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~499 77 ~480 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~503 73 ~499 {Age:-32767,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}

# Extra item drops
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~497 73 ~501 {Age:-32767,Item:{id:"minecraft:chainmail_leggings",Count:1b}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~444 86 ~515 {Age:-32767,Item:{id:"minecraft:iron_sword",Count:1b}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~529 81 ~481 {Age:-32767,Item:{id:"minecraft:golden_chestplate",Count:1b}}
# Rusty Doors
# 方向为门的朝向。
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~565 84 ~477 {Duration:9999999,Tags:["rustydoor","south"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~584 84 ~465 {Duration:9999999,Tags:["rustydoor","south"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~551 88 ~538 {Duration:9999999,Tags:["rustydoor","north"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~531 87 ~595 {Duration:9999999,Tags:["rustydoor","north"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~456 82 ~552 {Duration:9999999,Tags:["rustydoor","east"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~447 71 ~480 {Duration:9999999,Tags:["rustydoor","south"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~492 72 ~425 {Duration:9999999,Tags:["rustydoor","west"]}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~573 68 ~504 {Duration:9999999,Tags:["rustydoor","west"]}

# Clean up

kill @e[type=area_effect_cloud,tag=SotSummon]


