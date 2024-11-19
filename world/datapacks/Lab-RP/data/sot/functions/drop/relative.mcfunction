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
summon minecraft:area_effect_cloud 2000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","blue"]}
summon minecraft:area_effect_cloud 2000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","cyan"]}
summon minecraft:area_effect_cloud 2500 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","green"]}
summon minecraft:area_effect_cloud 2500 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","red"]}
summon minecraft:area_effect_cloud 2500 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","yellow"]}
summon minecraft:area_effect_cloud 3000 100 2000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","pink"]}
summon minecraft:area_effect_cloud 3000 100 2500 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","orange"]}
summon minecraft:area_effect_cloud 3000 100 3000 {Age: -32768, Duration: 2147483647, Tags: ["SotSummon","purple"]}

#forceload
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s run forceload add ~-110 ~42 ~-110 ~42
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s run forceload add ~-27 ~53 ~-27 ~53

# Changes Game Difficulty
difficulty easy

# Clean up previous
#kill @e[type=item]
kill @e[type=area_effect_cloud,tag=sotmapanchors]
kill @e[type=marker,tag=sotmapanchors]


## Challenge Room Value: 160
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=red] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","red"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=blue] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","blue"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=green] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","green"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=yellow] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","yellow"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=cyan] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","cyan"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=pink] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","pink"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=orange] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","orange"]}
execute as @e[type=area_effect_cloud,tag=SotSummon,tag=purple] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~500 71 ~425 {Duration:9999999,Tags:["sotmapanchors","sotchallenge","purple"]}

# Anchored Drops
function sot:score_anchor/pre_load_chunk





# Red Key Puzzle

execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon area_effect_cloud ~517 75 ~448 {Duration:999999,Tags:["sotmapanchors","redkeypuzzle"]}

# Breakdown:

# Sands: 102+5

## EQUIPMENTS
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~563 86 ~485 {Age:-32767,Item:{id:"minecraft:iron_sword",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~517 75 ~459 {Age:-32767,Item:{id:"minecraft:golden_leggings",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~524 81 ~552 {Age:-32767,Item:{id:"minecraft:iron_boots",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~445 81 ~532 {Age:-32767,Item:{id:"minecraft:iron_sword",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~451 81 ~584 {Age:-32767,Item:{id:"minecraft:golden_apple",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~451 74 ~506 {Age:-32767,Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"strong_healing",isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~405 67 ~495 {Age:-32767,Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"strong_healing",isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~374 66 ~516 {Age:-32767,Item:{id:"minecraft:golden_helmet",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~429 80 ~429 {Age:-32767,Item:{id:"minecraft:iron_leggings",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~497 73 ~327 {Age:-32767,Item:{id:"minecraft:golden_apple",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~668 85 ~486 {Age:-32767,Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"strong_healing",isSotTool:1b,Unbreakable:1b,HideFlags:24}}}
# execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~631 68 ~535 {Age:-32767,Item:{id:"minecraft:iron_helmet",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24}}}


execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~503 82 ~475 {Age:-32767,Item:{id:"minecraft:brush",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24,CanPlaceOn:[suspicious_sand]}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~500 82 ~475 {Age:-32767,Item:{id:"minecraft:brush",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24,CanPlaceOn:[suspicious_sand]}}}
execute as @e[type=area_effect_cloud,tag=SotSummon] at @s positioned ~-500 ~ ~-500 run summon item ~497 82 ~475 {Age:-32767,Item:{id:"minecraft:brush",Count:1b,tag:{isSotTool:1b,Unbreakable:1b,HideFlags:24,CanPlaceOn:[suspicious_sand]}}}


# CLEAN UP
kill @e[type=area_effect_cloud,tag=SotSummon]