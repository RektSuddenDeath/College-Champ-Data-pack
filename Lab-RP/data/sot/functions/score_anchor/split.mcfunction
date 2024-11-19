# LOAD CHUNKS
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

tellraw @s "\nSummoning anchors spliting amongst all 8 maps"
scoreboard players set total_origin_anchors sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin] run scoreboard players add total_origin_anchors sot_anchors_scores 1

kill @e[type=marker,tag=sot_score_anchor,tag=split_anchors]

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_1"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_1] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_1"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_2"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_2] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_2"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_3"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_3] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_3"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_4"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_4] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_4"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_5"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_5] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_5"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_6"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_6] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_6"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_7"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_7] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_7"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_8"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_8] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_8"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_9"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_9] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_9"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_10"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_10] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_10"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_11"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_11] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_11"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_12"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_12] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_12"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_13"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_13] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_13"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_14"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_14] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_14"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_15"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_15] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_15"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_45"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_45] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_45"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_rusty"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_torch"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_torch"]}

execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~ ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~ ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~500 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~500 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~500 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~1000 ~ ~0 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~1000 ~ ~500 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] at @s run summon marker ~1000 ~ ~1000 {Tags:["sot_score_anchor","split_anchors","value_arrow"]}


scoreboard players set total_split_anchors sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=split_anchors] run scoreboard players add total_split_anchors sot_anchors_scores 1
tellraw @s ["Summon Complete. Results:"]
tellraw @s ["Origin Anchors: ",{"score":{"name": "total_origin_anchors","objective": "sot_anchors_scores"},"color": "green"}]
tellraw @s ["Split Anchors: ",{"score":{"name": "total_split_anchors","objective": "sot_anchors_scores"},"color": "gold"}]

scoreboard players operation total_origin_anchors sot_anchors_scores *= 8 math
tellraw @s ["Required Anchors: ",{"score":{"name": "total_origin_anchors","objective": "sot_anchors_scores"},"color": "red"}]

execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload remove ~225 ~225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload remove ~-225 ~-225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload remove ~225 ~-225 ~ ~
execute as @e[type=area_effect_cloud,tag=SotCenter] at @s run forceload remove ~-225 ~225 ~ ~

forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

kill @e[type=area_effect_cloud,tag=SotCenter]