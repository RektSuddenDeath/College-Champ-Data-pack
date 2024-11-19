
forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

kill @e[type=area_effect_cloud,tag=SotCore]
summon minecraft:area_effect_cloud 2500 100 2500 {Age: -32768,Duration:2147483647, Tags: ["SotCore","red"]}
summon minecraft:area_effect_cloud 2000 100 2500 {Age: -32768,Duration:2147483647, Tags: ["SotCore","blue"]}
summon minecraft:area_effect_cloud 2500 100 2000 {Age: -32768,Duration:2147483647, Tags: ["SotCore","green"]}
summon minecraft:area_effect_cloud 2500 100 3000 {Age: -32768,Duration:2147483647, Tags: ["SotCore","yellow"]}

summon minecraft:area_effect_cloud 2000 100 3000 {Age: -32768,Duration:2147483647, Tags: ["SotCore","cyan"]}
summon minecraft:area_effect_cloud 3000 100 2000 {Age: -32768,Duration:2147483647, Tags: ["SotCore","pink"]}
summon minecraft:area_effect_cloud 3000 100 2500 {Age: -32768,Duration:2147483647, Tags: ["SotCore","orange"]}
summon minecraft:area_effect_cloud 3000 100 3000 {Age: -32768,Duration:2147483647, Tags: ["SotCore","purple"]}

execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] if entity @p[team=red] run forceload add ~-200 ~-200 ~200 ~200 
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] if entity @p[team=blue] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] if entity @p[team=green] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] if entity @p[team=yellow] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] if entity @p[team=cyan] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=pink] if entity @p[team=pink] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] if entity @p[team=orange] run forceload add ~-200 ~-200 ~200 ~200
execute as @e[type=area_effect_cloud,tag=SotCore,tag=purple] if entity @p[team=purple] run forceload add ~-200 ~-200 ~200 ~200

schedule function sot:drop/relative 1s
schedule function sot:unload/1 5s
schedule function sot:unload/2 6s
schedule function sot:unload/3 7s
schedule function sot:unload/4 8s
