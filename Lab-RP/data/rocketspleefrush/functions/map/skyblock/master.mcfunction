kill @e[type=area_effect_cloud,tag=deathanchor]
scoreboard players set $minY rsr_playerY 150

scoreboard players set island_to_siren rsr_game 1
scoreboard players set island_to_disintegrate rsr_game 0

function rocketspleefrush:map/skyblock/tag_disint
data modify storage rsr:map_ctrl name set value "skyblock"

function rocketspleefrush:map/skyblock/time
function rocketspleefrush:map/skyblock/detection