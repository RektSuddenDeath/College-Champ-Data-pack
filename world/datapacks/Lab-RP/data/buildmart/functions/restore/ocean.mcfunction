
fill 5134 114 5046 5140 108 5052 prismarine_bricks
fill 5140 114 5054 5134 108 5060 red_sand
fill 5132 114 5054 5126 108 5060 dark_prismarine
fill 5124 114 5054 5118 108 5060 sponge
fill 5116 114 5054 5110 108 5060 sand
fill 5116 114 5039 5112 108 5035 sea_lantern

execute as @a[team=!spec,scores={bm_location=14}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add ocean_transfer
execute as @a[team=!spec,scores={bm_location=14}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=14}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/ocean 5t