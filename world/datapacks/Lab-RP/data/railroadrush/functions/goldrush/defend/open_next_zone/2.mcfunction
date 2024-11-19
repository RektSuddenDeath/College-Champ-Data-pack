tag @s add rrr_gold_rush_cp_2

fill ~5 ~5 ~5 ~-5 ~-1 ~-5 air replace oxidized_copper
# Summon mobs for next wave

summon vindicator ~4 ~ ~-6
summon zombie ~12 ~ ~-6
summon zombie ~16 ~ ~-6
summon zombie ~26 ~ ~-6
summon zombie ~13 ~ ~6
summon vindicator ~27 ~ ~6


summon pillager ~13 ~ ~6
summon pillager ~27 ~ ~6


execute as @e[type=villager,tag=rrr_gold_rush_defend,sort=nearest,limit=1] at @s run function railroadrush:goldrush/defend/open_next_zone/aggro