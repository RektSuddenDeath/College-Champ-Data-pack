
scoreboard players add @s rsr_spec_payback_step 1
particle flame ~ ~ ~ 0 0 0 0 1 force

execute if score @s rsr_spec_payback_step matches 50.. run return 1
execute positioned ^ ^ ^0.5 run function rocketspleefrush:modifiers/spectators_payback/warn/loop