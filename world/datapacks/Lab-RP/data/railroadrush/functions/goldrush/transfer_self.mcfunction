
$tp @s $(SpawnX) $(SpawnY) $(SpawnZ) 0 0
clear @s elytra
effect clear @s levitation
gamemode survival @s
tag @s remove in_gold_rush
clear @s oak_leaves
give @s oak_leaves 64
attribute @s generic.attack_damage base set 1
attribute @s generic.max_health base set 20