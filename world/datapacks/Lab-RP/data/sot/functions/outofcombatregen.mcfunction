
scoreboard players remove @a[team=!spec,scores={SotCombatTimer=1..}] SotCombatTimer 1
scoreboard players set @a[team=!spec,scores={SotDamageTaken=1..}] SotCombatTimer 8

execute as @a[scores={SotCombatTimer=8}] if predicate sot:has_regen_three unless predicate sot:has_regen_two run effect clear @s regeneration
effect give @a[scores={SotCombatTimer=0}] regeneration 2 2 true

scoreboard players set @a SotDamageTaken 0
execute if score gameflag SotGame matches 1 run schedule function sot:outofcombatregen 1s