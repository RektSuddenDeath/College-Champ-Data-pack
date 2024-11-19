
kill @e[type=area_effect_cloud,tag=posAnchor,tag=map3]
tag @s add gen

scoreboard objectives add posAnchors dummy
scoreboard players set NewX posAnchors 0
scoreboard players set NewY posAnchors 0
scoreboard players set NewZ posAnchors 0
scoreboard players set PrevX posAnchors 0
scoreboard players set PrevY posAnchors 0
scoreboard players set PrevZ posAnchors 0

scoreboard objectives add anchorNo dummy
scoreboard players set currentNo anchorNo 1

tellraw @s "-----------"
tellraw @s "§a§lInstruction:"
tellraw @s ""
tellraw @s "Run one entire lap §c§lWITHOUT§r using any skips."
tellraw @s "Use §a/function acerace3:anchorsgen/stop§r to stop generation when you are near the finish line."
tellraw @s "§c§lDO NOT CROSS THE FINISH LINE FOR ACCURACY"
tellraw @s "-----------"

function acerace3:anchorsgen/loop