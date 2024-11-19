
fill 4866 116 4973 4861 112 4969 obsidian
fill 4888 116 4975 4894 112 4979 diamond_ore
fill 4860 115 4944 4856 112 4940 emerald_ore
fill 4864 106 4958 4860 102 4964 iron_block
fill 4858 106 4958 4854 102 4964 iron_ore
fill 4854 102 4949 4859 106 4946 lapis_ore
fill 4874 116 4930 4868 112 4927 gold_ore
fill 4874 116 4925 4868 112 4922 gold_block
fill 4887 110 4947 4883 104 4943 nether_quartz_ore
fill 4883 110 4949 4887 104 4953 coal_block
fill 4891 110 4949 4895 104 4953 redstone_ore

execute as @a[team=!spec,scores={bm_location=10}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run tag @s add ores_transfer
execute as @a[team=!spec,scores={bm_location=10}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s times 5 0 5
execute as @a[team=!spec,scores={bm_location=10}] at @s unless block ~ ~1 ~ air unless block ~ ~ ~ air run title @s title {"text": "\ue011","font": "font:font"}

schedule function buildmart:restore/transfer/ores 5t