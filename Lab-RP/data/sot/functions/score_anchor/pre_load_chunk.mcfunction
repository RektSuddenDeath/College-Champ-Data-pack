kill @e[type=area_effect_cloud,tag=SotCenter]

summon minecraft:area_effect_cloud 2000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","origin"]}
summon minecraft:area_effect_cloud 2000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","blue"]}
summon minecraft:area_effect_cloud 2000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","cyan"]}
summon minecraft:area_effect_cloud 2500 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","green"]}
summon minecraft:area_effect_cloud 2500 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","red"]}
summon minecraft:area_effect_cloud 2500 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","yellow"]}
summon minecraft:area_effect_cloud 3000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","pink"]}
summon minecraft:area_effect_cloud 3000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","orange"]}
summon minecraft:area_effect_cloud 3000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotCenter","purple"]}

forceload add 2225 2225 2000 2000
forceload add 2225 1775 2000 2000
forceload add 1775 2225 2000 2000
forceload add 1775 1775 2000 2000

schedule function sot:score_anchor/drop_score 5t