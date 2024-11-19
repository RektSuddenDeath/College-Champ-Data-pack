
fill 5018 116 4875 5024 110 4881 diorite
fill 5029 116 4893 5035 110 4899 stone
fill 5040 116 4889 5046 110 4883 andesite
fill 5048 116 4904 5054 110 4910 granite

execute as @a[team=!spec,scores={bm_location=12}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add stone_transfer
execute as @a[team=!spec,scores={bm_location=12}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=12}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/stone 5t