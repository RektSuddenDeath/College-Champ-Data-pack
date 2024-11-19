
fill 5103 115 4963 5106 119 4960 melon
fill 5147 118 4956 5143 115 4952 hay_block
fill 5139 115 4926 5133 118 4923 bone_block
fill 5114 115 4923 5110 119 4927 pumpkin

execute as @a[team=!spec,scores={bm_location=13}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add farm_transfer
execute as @a[team=!spec,scores={bm_location=13}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=13}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/farm 5t