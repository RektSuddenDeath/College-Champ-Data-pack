
give @a[team=red,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_red"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3002}
give @a[team=blue,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_blue"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3003}
give @a[team=green,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_green"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3004}
give @a[team=yellow,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_yellow"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3005}
give @a[team=cyan,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_cyan"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3006}
give @a[team=pink,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_pink"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3007}
give @a[team=orange,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_orange"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3008}
give @a[team=purple,scores={meltdown_heater_cooldown=1}] magma_cube_spawn_egg{EntityTag:{id:"minecraft:interaction",Tags:["meltdown_heater","heater_purple"],height:1.01,width:1.01,CustomName:'""'},CanPlaceOn:["#minecraft:all_breakable_blocks"],display:{Name:'"§r§c加热器"'},HideFlags:24,CustomModelData:3009}

scoreboard objectives add temp_md_cd_display dummy
execute as @a[tag=meltdown_alive,tag=!meltdown_frozen] run scoreboard players operation @s temp_md_cd_display = @s meltdown_heater_cooldown
execute as @a[tag=meltdown_alive,tag=!meltdown_frozen] run scoreboard players operation @s temp_md_cd_display /= 20 math
execute as @a[tag=meltdown_alive,tag=!meltdown_frozen] run scoreboard players add @s temp_md_cd_display 1
execute as @a[tag=meltdown_alive,tag=!meltdown_frozen,scores={meltdown_heater_cooldown=1..,meltdown_modifiers_chill_meter=..0}] run title @s actionbar ["加热器CD: ",{"score":{"name": "@s","objective": "temp_md_cd_display"},"color": "red"},"§cs"]
scoreboard objectives remove temp_md_cd_display

title @a[scores={meltdown_invulnerable=39..40}] actionbar ["无敌：","§a2.0s"]
title @a[scores={meltdown_invulnerable=37..38}] actionbar ["无敌：","§a1.9s"]
title @a[scores={meltdown_invulnerable=35..36}] actionbar ["无敌：","§a1.8s"]
title @a[scores={meltdown_invulnerable=33..34}] actionbar ["无敌：","§a1.7s"]
title @a[scores={meltdown_invulnerable=31..33}] actionbar ["无敌：","§a1.6s"]
title @a[scores={meltdown_invulnerable=29..30}] actionbar ["无敌：","§a1.5s"]
title @a[scores={meltdown_invulnerable=27..28}] actionbar ["无敌：","§a1.4s"]
title @a[scores={meltdown_invulnerable=25..26}] actionbar ["无敌：","§a1.3s"]
title @a[scores={meltdown_invulnerable=23..24}] actionbar ["无敌：","§a1.2s"]
title @a[scores={meltdown_invulnerable=21..22}] actionbar ["无敌：","§a1.1s"]
title @a[scores={meltdown_invulnerable=19..20}] actionbar ["无敌：","§e1.0s"]
title @a[scores={meltdown_invulnerable=17..18}] actionbar ["无敌：","§e0.9s"]
title @a[scores={meltdown_invulnerable=15..16}] actionbar ["无敌：","§e0.8s"]
title @a[scores={meltdown_invulnerable=13..14}] actionbar ["无敌：","§e0.7s"]
title @a[scores={meltdown_invulnerable=11..12}] actionbar ["无敌：","§60.6s"]
title @a[scores={meltdown_invulnerable=9..10}] actionbar ["无敌：","§60.5s"]
title @a[scores={meltdown_invulnerable=7..8}] actionbar ["无敌：","§60.4s"]
title @a[scores={meltdown_invulnerable=5..6}] actionbar ["无敌：","§c0.3s"]
title @a[scores={meltdown_invulnerable=3..4}] actionbar ["无敌：","§c0.2s"]
title @a[scores={meltdown_invulnerable=1..2}] actionbar ["无敌：","§c0.1s"]
title @a[scores={meltdown_invulnerable=1}] actionbar ["无敌：","§c§l已失效"]

item replace entity @a[scores={meltdown_invulnerable=2}] inventory.26 with arrow
item replace entity @a[scores={meltdown_invulnerable=1}] armor.chest with air

scoreboard players remove @a[scores={meltdown_heater_cooldown=1..},tag=!meltdown_frozen,tag=meltdown_alive] meltdown_heater_cooldown 1
scoreboard players remove @a[scores={meltdown_invulnerable=1..}] meltdown_invulnerable 1

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:cooldown_handler 1t