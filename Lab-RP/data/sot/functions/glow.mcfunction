
tag @a[scores={health=0}] add sot_death_tag

effect give @a[scores={health=1..},tag=sot_death_tag] glowing infinite 0 true
tag @a[scores={health=1..},tag=sot_death_tag] remove sot_death_tag

schedule function sot:glow 4t