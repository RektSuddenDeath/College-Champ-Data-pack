
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run setblock ~491 -38 ~501 sand
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run fill ~514 -35 ~503 ~514 -38 ~505 barrier
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run fill ~522 -36 ~503 ~522 -38 ~505 barrier

execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run summon item ~530 -37 ~510 {Age:-32767,Glowing:1b,Item:{id:"minecraft:dark_oak_planks",Count:1b,tag:{CanPlaceOn:[iron_block],display:{Name:'{"text": "生锈的钥匙","color":"gray","italic": false}'}}}}
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run fill ~562 -36 ~503 ~562 -38 ~505 barrier
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run place template sot:tutorial/rusty_gate ~549 -39 ~502
execute as @e[type=area_effect_cloud,tag=SotCore] at @s positioned ~-500 ~ ~-500 run place template sot:tutorial/red_vault_gate ~586 -43 ~502