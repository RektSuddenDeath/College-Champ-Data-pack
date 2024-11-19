
scoreboard players add current bm_normalbuildseq 1
execute as @e[type=marker,tag=bm_normalbuilds,tag=bm_selected,scores={bm_normalbuildseq=0},limit=1,sort=random] run scoreboard players operation @s bm_normalbuildseq = current bm_normalbuildseq

execute if score current bm_normalbuildseq matches 1..13 run function buildmart:randomise/normalseq