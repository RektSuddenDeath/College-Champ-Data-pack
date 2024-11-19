kill @e[type=area_effect_cloud,tag=deathanchor]
scoreboard players set $minY rsr_playerY 135

scoreboard players set island_to_siren rsr_game 1
scoreboard players set island_to_disintegrate rsr_game 0

function rocketspleefrush:map/classic_2/tag_disint
data modify storage rsr:map_ctrl name set value "classic_2"

function rocketspleefrush:map/classic_2/time
function rocketspleefrush:map/classic_2/detection