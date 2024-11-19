
fill 4974 105 5095 4966 113 5103 waxed_copper_block
fill 4954 105 5095 4946 113 5103 waxed_cut_copper

fill 4974 105 5110 4966 113 5118 waxed_oxidized_copper
fill 4954 105 5110 4946 113 5118 waxed_oxidized_cut_copper

execute as @a[team=!spec,scores={bm_location=16}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add copper_transfer
execute as @a[team=!spec,scores={bm_location=16}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=16}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/copper 5t