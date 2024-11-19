
scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameflag meltdown_game 0

schedule clear meltdown:heater_place_handler
schedule clear meltdown:telepickaxe_call_handler
schedule clear master:timer/timeleft/sec
# fx
stopsound @a voice
stopsound @a record sound.meltdown_siren
stopsound @a record sound.meltdown.melt_begins
title @a times 0 60 10
title @a subtitle ""
execute as @a at @s run playsound sound.end record @s
execute if score round meltdown_game matches 1..2 run title @a title "§c§l回合结束！"
execute if score round meltdown_game matches 3 run title @a title "§c§l游戏结束！"

# Break All Heaters
execute as @e[type=interaction,tag=meltdown_heater] at @s run function meltdown:unfreeze/heater_break

# Unfreeze All Remaining Players
execute as @a[tag=meltdown_frozen] run function meltdown:unfreeze/self

# Clear All Melt Points
kill @e[type=marker,tag=meltdown_melt_point]
# Name Tag Visible
team modify red nametagVisibility always
team modify blue nametagVisibility always
team modify green nametagVisibility always
team modify yellow nametagVisibility always
team modify cyan nametagVisibility always
team modify pink nametagVisibility always
team modify orange nametagVisibility always
team modify purple nametagVisibility always

gamerule reducedDebugInfo false
execute as @a run attribute @s generic.knockback_resistance base set 0
# Clear
clear @a
tag @a remove meltdown_has_telepickaxe
# Announcement
execute if entity @a[tag=meltdown_alive] run tellraw @a ["§b[§r嚘§b] ",{"selector":"@a[tag=meltdown_alive]"},"§b是最后存活的玩家！"]
execute unless entity @a[tag=meltdown_alive] run tellraw @a ["§b[§r嚘§b] ","§b本轮无人生还！"]

scoreboard players set @a[tag=meltdown_alive] meltdown_round_placement 1

# recap
execute as @a[tag=meltdown_alive] if score round meltdown_game matches 1 run scoreboard players operation @s meltdown_recap_r1 = @s meltdown_round_placement
execute as @a[tag=meltdown_alive] if score round meltdown_game matches 2 run scoreboard players operation @s meltdown_recap_r2 = @s meltdown_round_placement
execute as @a[tag=meltdown_alive] if score round meltdown_game matches 3 run scoreboard players operation @s meltdown_recap_r3 = @s meltdown_round_placement


# TEAM PLACEMENT
execute if entity @p[team=red,tag=meltdown_alive] run scoreboard players set red meltdown_team_placement 1
execute if entity @p[team=blue,tag=meltdown_alive] run scoreboard players set blue meltdown_team_placement 1
execute if entity @p[team=green,tag=meltdown_alive] run scoreboard players set green meltdown_team_placement 1
execute if entity @p[team=yellow,tag=meltdown_alive] run scoreboard players set yellow meltdown_team_placement 1
execute if entity @p[team=cyan,tag=meltdown_alive] run scoreboard players set cyan meltdown_team_placement 1
execute if entity @p[team=pink,tag=meltdown_alive] run scoreboard players set pink meltdown_team_placement 1
execute if entity @p[team=orange,tag=meltdown_alive] run scoreboard players set orange meltdown_team_placement 1
execute if entity @p[team=purple,tag=meltdown_alive] run scoreboard players set purple meltdown_team_placement 1


# Team Survival Placement Bonus
function meltdown:team_placement_score

# Round Result Notif
execute as @a[team=!spec] run tellraw @s ["[§e▶§f] ","你本回合为第",{"score":{"name": "@s","objective": "meltdown_round_placement"},"color": "aqua"},"名。"]
execute as @a[team=!spec] run tellraw @s ["[§e▶§f] ","你本回合获得了",{"score":{"name": "@s","objective": "meltdown_roundscore"},"color": "gold"},"分。"]
execute as @a[team=!spec] run tellraw @s ["[§e▶§f] ","你本回合淘汰了",{"score":{"name": "@s","objective": "meltdown_roundKills"},"color": "yellow"},"名对手。"]
execute as @a[team=!spec] run tellraw @s ["[§e▶§f] ","你本回合获取了",{"score":{"name": "@s","objective": "meltdown_crates_broken_round"},"color": "gold"},"个奖励箱。"]


execute as @a run scoreboard players operation @s meltdown_indvscore += @s meltdown_roundscore
scoreboard players set @a meltdown_roundscore 0
execute as @a run scoreboard players operation @s meltdown_gameKills += @s meltdown_roundKills
scoreboard players set @a meltdown_roundKills 0

# Next Round
execute if score round meltdown_game matches 1..2 run function master:timer/nextround/15s
execute if score round meltdown_game matches 1..2 run function meltdown:next_round_listener

# Team Pos Announce
schedule function meltdown:teampos/text1 2s
schedule function meltdown:teampos/text2 4s
# End Action
execute if score round meltdown_game matches 3 run function meltdown:end_action

# Remove all hotbar tags
tag @a remove meltdown_telepickaxe_in_offhand
tag @a remove meltdown_telepickaxe_in_slot_0
tag @a remove meltdown_telepickaxe_in_slot_1
tag @a remove meltdown_telepickaxe_in_slot_2
tag @a remove meltdown_telepickaxe_in_slot_3
tag @a remove meltdown_telepickaxe_in_slot_4
tag @a remove meltdown_telepickaxe_in_slot_5
tag @a remove meltdown_telepickaxe_in_slot_6
tag @a remove meltdown_telepickaxe_in_slot_7
tag @a remove meltdown_telepickaxe_in_slot_8

tag @a remove meltdown_bow_in_offhand
tag @a remove meltdown_bow_in_slot_0
tag @a remove meltdown_bow_in_slot_1
tag @a remove meltdown_bow_in_slot_2
tag @a remove meltdown_bow_in_slot_3
tag @a remove meltdown_bow_in_slot_4
tag @a remove meltdown_bow_in_slot_5
tag @a remove meltdown_bow_in_slot_6
tag @a remove meltdown_bow_in_slot_7
tag @a remove meltdown_bow_in_slot_8

tag @a remove meltdown_map_in_offhand

# Modifier: Tick rate
execute if score modifiers_blitz meltdown_game matches 1 run tick rate 20