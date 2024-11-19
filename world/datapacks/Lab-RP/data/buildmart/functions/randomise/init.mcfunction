
# This section will select 21 builds to be used for this game, also assigning the number for each build.

## Init workspaces
scoreboard objectives remove bm_normalbuildseq
scoreboard objectives remove bm_goldenbuildseq

scoreboard objectives add bm_normalbuildseq dummy
scoreboard objectives add bm_goldenbuildseq dummy

# Remove previous game's tags
tag @e[type=marker,tag=bm_builds] remove bm_selected

# Select 14+7 Builds to be used for this game
tag @e[type=marker,tag=bm_normalbuilds,limit=14,sort=random] add bm_selected 
tag @e[type=marker,tag=bm_goldenbuilds,limit=7,sort=random] add bm_selected

# Assign a No. for each selected builds
scoreboard players set current bm_normalbuildseq 0
scoreboard players set current bm_goldenbuildseq 0

scoreboard players set @e[type=marker,tag=bm_normalbuilds] bm_normalbuildseq 0
scoreboard players set @e[type=marker,tag=bm_goldenbuilds] bm_goldenbuildseq 0

function buildmart:randomise/normalseq
function buildmart:randomise/goldenseq

## Now, 14 Target normal builds and 7 target golden builds are selected for this game.

# Copy them
execute as @e[type=marker,tag=bm_example,tag=zone_left] at @s run function buildmart:copy/find_normal_left
execute as @e[type=marker,tag=bm_example,tag=zone_middle] at @s run function buildmart:copy/find_normal_middle
execute as @e[type=marker,tag=bm_example,tag=zone_right] at @s run function buildmart:copy/find_golden
function buildmart:fixfloor/fix_all