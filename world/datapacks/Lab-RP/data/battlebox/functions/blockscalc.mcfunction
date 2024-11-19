scoreboard objectives remove bb_blockscalc
scoreboard objectives add bb_blockscalc dummy

scoreboard players set red bb_blockscalc 0
scoreboard players set blue bb_blockscalc 0
scoreboard players set green bb_blockscalc 0
scoreboard players set yellow bb_blockscalc 0
scoreboard players set cyan bb_blockscalc 0
scoreboard players set pink bb_blockscalc 0
scoreboard players set orange bb_blockscalc 0
scoreboard players set purple bb_blockscalc 0
# red
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~ ~ ~1 red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~ ~ ~ red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~ ~ ~-1 red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~1 ~ ~1 red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~1 ~ ~ red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~1 ~ ~-1 red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~-1 ~ ~1 red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~-1 ~ ~ red_wool run scoreboard players add red bb_blockscalc 1
execute as @e[type=marker,tag=bb_redanchor] at @s if block ~-1 ~ ~-1 red_wool run scoreboard players add red bb_blockscalc 1

# blue
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~ ~ ~1 blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~ ~ ~ blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~ ~ ~-1 blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~1 ~ ~1 blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~1 ~ ~ blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~1 ~ ~-1 blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~-1 ~ ~1 blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~-1 ~ ~ blue_wool run scoreboard players add blue bb_blockscalc 1
execute as @e[type=marker,tag=bb_blueanchor] at @s if block ~-1 ~ ~-1 blue_wool run scoreboard players add blue bb_blockscalc 1

# green
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~ ~ ~1 green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~ ~ ~ green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~ ~ ~-1 green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~1 ~ ~1 green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~1 ~ ~ green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~1 ~ ~-1 green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~-1 ~ ~1 green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~-1 ~ ~ green_wool run scoreboard players add green bb_blockscalc 1
execute as @e[type=marker,tag=bb_greenanchor] at @s if block ~-1 ~ ~-1 green_wool run scoreboard players add green bb_blockscalc 1

# yellow
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~ ~ ~1 yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~ ~ ~ yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~ ~ ~-1 yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~1 ~ ~1 yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~1 ~ ~ yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~1 ~ ~-1 yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~-1 ~ ~1 yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~-1 ~ ~ yellow_wool run scoreboard players add yellow bb_blockscalc 1
execute as @e[type=marker,tag=bb_yellowanchor] at @s if block ~-1 ~ ~-1 yellow_wool run scoreboard players add yellow bb_blockscalc 1

# cyan
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~ ~ ~1 cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~ ~ ~ cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~ ~ ~-1 cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~1 ~ ~1 cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~1 ~ ~ cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~1 ~ ~-1 cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~-1 ~ ~1 cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~-1 ~ ~ cyan_wool run scoreboard players add cyan bb_blockscalc 1
execute as @e[type=marker,tag=bb_cyananchor] at @s if block ~-1 ~ ~-1 cyan_wool run scoreboard players add cyan bb_blockscalc 1

# orange
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~ ~ ~1 orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~ ~ ~ orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~ ~ ~-1 orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~1 ~ ~1 orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~1 ~ ~ orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~1 ~ ~-1 orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~-1 ~ ~1 orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~-1 ~ ~ orange_wool run scoreboard players add orange bb_blockscalc 1
execute as @e[type=marker,tag=bb_orangeanchor] at @s if block ~-1 ~ ~-1 orange_wool run scoreboard players add orange bb_blockscalc 1

# pink
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~ ~ ~1 pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~ ~ ~ pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~ ~ ~-1 pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~1 ~ ~1 pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~1 ~ ~ pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~1 ~ ~-1 pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~-1 ~ ~1 pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~-1 ~ ~ pink_wool run scoreboard players add pink bb_blockscalc 1
execute as @e[type=marker,tag=bb_pinkanchor] at @s if block ~-1 ~ ~-1 pink_wool run scoreboard players add pink bb_blockscalc 1

# purple
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~ ~ ~1 purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~ ~ ~ purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~ ~ ~-1 purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~1 ~ ~1 purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~1 ~ ~ purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~1 ~ ~-1 purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~-1 ~ ~1 purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~-1 ~ ~ purple_wool run scoreboard players add purple bb_blockscalc 1
execute as @e[type=marker,tag=bb_purpleanchor] at @s if block ~-1 ~ ~-1 purple_wool run scoreboard players add purple bb_blockscalc 1

