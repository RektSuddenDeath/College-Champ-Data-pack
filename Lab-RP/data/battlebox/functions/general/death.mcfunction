
clear @a[scores={bb_death=1}]
tag @a[scores={bb_death=1}] remove bb_alive
tag @a[scores={bb_death=1}] remove bb_lost_survive
tag @a[scores={bb_death=1}] remove bb_noclear

execute as @a[scores={bb_death=1}] run attribute @s generic.attack_damage base set -1000

# Remix Component
execute as @a[scores={bb_death=1},tag=p.score_tweak_kill] run tellraw @s "[§c-20分§f] 被淘汰！" 
execute as @a[scores={bb_death=1},tag=p.score_tweak_kill] run scoreboard players remove @s bb_indvscore 20