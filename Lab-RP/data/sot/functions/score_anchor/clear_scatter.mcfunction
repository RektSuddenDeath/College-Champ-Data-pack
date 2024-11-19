forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

summon minecraft:area_effect_cloud 2000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","blue"]}
summon minecraft:area_effect_cloud 2000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","cyan"]}
summon minecraft:area_effect_cloud 2500 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","green"]}
summon minecraft:area_effect_cloud 2500 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","red"]}
summon minecraft:area_effect_cloud 2500 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","yellow"]}
summon minecraft:area_effect_cloud 3000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","pink"]}
summon minecraft:area_effect_cloud 3000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","orange"]}
summon minecraft:area_effect_cloud 3000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","purple"]}

execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload add ~225 ~225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload add ~-225 ~-225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload add ~225 ~-225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload add ~-225 ~225 ~ ~

kill @e[type=marker,tag=sot_score_anchor,tag=split_anchors]

tellraw @s "§cCleared all Split Anchors"