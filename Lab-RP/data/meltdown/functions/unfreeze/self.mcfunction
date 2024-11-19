
tag @s remove meltdown_frozen
tag @s remove queue_unfreeze
# Remove freeze Effects
effect clear @s slowness
effect clear @s jump_boost

# notif,
execute store result storage meltdown_temp attacker_pid int 1 run scoreboard players get @s meltdown_freezer

execute if entity @s[team=red] run data modify storage meltdown_temp victim_team set value "red"
execute if entity @s[team=blue] run data modify storage meltdown_temp victim_team set value "blue"
execute if entity @s[team=green] run data modify storage meltdown_temp victim_team set value "green"
execute if entity @s[team=yellow] run data modify storage meltdown_temp victim_team set value "yellow"
execute if entity @s[team=cyan] run data modify storage meltdown_temp victim_team set value "cyan"
execute if entity @s[team=pink] run data modify storage meltdown_temp victim_team set value "pink"
execute if entity @s[team=orange] run data modify storage meltdown_temp victim_team set value "orange"
execute if entity @s[team=purple] run data modify storage meltdown_temp victim_team set value "purple"

tag @s add temp_self
## score change is included
function meltdown:unfreeze/macro_get_killer_team with storage meltdown_temp
function meltdown:unfreeze/macro_notif with storage meltdown_temp

title @s title ""
title @s subtitle ""

tellraw @s ["[§e▶§f] ","你已脱离冻结状态。"]
tag @s remove temp_self
# Respawn with kit
function meltdown:unfreeze/kit

# Recap
scoreboard players add @s meltdown_recap_thawed 1
# Remove freeze blocks
execute at @s run fill ~ ~-1 ~ ~ ~2 ~ air replace brown_stained_glass
execute at @s positioned ~-0.49 ~ ~-0.49 run kill @e[type=block_display,tag=freeze_ice_block,limit=1,sort=nearest]
execute at @s run kill @e[type=marker,tag=freeze_victim_anchor,limit=1,sort=nearest]

scoreboard players set @s meltdown_heat -1
scoreboard players set @s meltdown_freeze_since -1
scoreboard players set @s meltdown_player_is_frozen 0
scoreboard players set @s meltdown_freezer -1
# fx

# Grants Invulnerablity for 2.0s
scoreboard players set @s meltdown_invulnerable 40
## REPLACED WITH SKRIPT VISUAL FIRE.
#item replace entity @s armor.chest with leather_chestplate{Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,display:{color:16742144}}