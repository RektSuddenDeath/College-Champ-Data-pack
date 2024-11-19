fill 5052 105 5102 5046 111 5108 nether_wart_block
fill 5049 105 5117 5043 111 5123 nether_bricks
fill 5043 111 5137 5049 105 5131 glowstone
fill 5035 105 5139 5029 111 5145 nether_quartz_ore
fill 5024 111 5120 5030 105 5126 soul_sand

execute as @a[team=!spec,scores={bm_location=15}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add nether_transfer
execute as @a[team=!spec,scores={bm_location=15}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=15}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/nether 5t