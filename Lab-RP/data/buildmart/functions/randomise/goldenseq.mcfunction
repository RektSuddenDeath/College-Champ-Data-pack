
scoreboard players add current bm_goldenbuildseq 1
execute as @e[type=marker,tag=bm_goldenbuilds,tag=bm_selected,scores={bm_goldenbuildseq=0},limit=1,sort=random] run scoreboard players operation @s bm_goldenbuildseq = current bm_goldenbuildseq

execute if score current bm_goldenbuildseq matches 1..13 run function buildmart:randomise/goldenseq