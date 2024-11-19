


execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=red,distance=0..8] run function sot:room/challenge_enable/red
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=blue,distance=0..8] run function sot:room/challenge_enable/blue
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=green,distance=0..8] run function sot:room/challenge_enable/green
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=yellow,distance=0..8] run function sot:room/challenge_enable/yellow
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=cyan,distance=0..8] run function sot:room/challenge_enable/cyan
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=pink,distance=0..8] run function sot:room/challenge_enable/pink
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=orange,distance=0..8] run function sot:room/challenge_enable/orange
execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] if entity @a[team=purple,distance=0..8] run function sot:room/challenge_enable/purple


execute as @e[type=area_effect_cloud,tag=challenge_button] at @s if block ~ ~ ~ stone_button[powered=true] run kill @s