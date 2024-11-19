
# Load Stage Names (TEMPORARY)
forceload add -15000 -15000
function pkw2:beta/stagename
# Flags
scoreboard players set gameflag pkw2_game 1
scoreboard players set RoundActive tourney_stats 1
gamerule doDaylightCycle true
# Sounds
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.start record @s
function pkw2:music/init
# Remove Barrier
fill -14995 101 -15021 -15005 105 -15021 air
# Title
title @a title ""
title @a subtitle ""
# Invis
effect give @a invisibility 645 0 true
effect give @a resistance infinite 5 true
# Start checking locations
function pkw2:checkpoint/assign
function pkw2:checkpoint/actionbar
# Recall item
#item replace entity @a[team=!spec] hotbar.0 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
#item replace entity @a[team=!spec] hotbar.1 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
item replace entity @a[team=!spec] hotbar.2 with knowledge_book{display:{Name:'["§r§6§l回到所在大关关口"]'}}
#item replace entity @a[team=!spec] hotbar.3 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
#item replace entity @a[team=!spec] hotbar.4 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
item replace entity @a[team=!spec] hotbar.5 with iron_nugget{display:{Name:'"§7暂无石奖牌"'},CustomModelData:20020}
item replace entity @a[team=!spec] hotbar.6 with iron_nugget{display:{Name:'"§7暂无铜奖牌"'},CustomModelData:20020}
item replace entity @a[team=!spec] hotbar.7 with iron_nugget{display:{Name:'"§7暂无银奖牌"'},CustomModelData:20020}
item replace entity @a[team=!spec] hotbar.8 with iron_nugget{display:{Name:'"§7暂无金奖牌"'},CustomModelData:20020}
execute if score modifiers_completion_sabotage pkw2_game matches 1 run item replace entity @a[team=!spec] hotbar.3 with wooden_pickaxe{Damage:57,CanDestroy:["#railroadrush:concrete"],display:{Name:'"§r§6可用于破坏混凝土，2次使用"'}}

# Modifiers
execute if score modifiers_parkour_rush pkw2_game matches 1 run function pkw2:modifiers/parkour_rush/init
execute if score modifiers_completion_sabotage pkw2_game matches 1 run function pkw2:modifiers/completion_sabotage/init

# Recall book
scoreboard objectives add pkw2_recall minecraft.used:minecraft.knowledge_book "Recall"
scoreboard objectives add pkw2_recallcd dummy "Recall Cooldown"
function pkw2:checkpoint/recall
# Time control
schedule clear pkw2:beginlistener
function master:timer/timeleft/11min
function pkw2:timer/master
# Bossbar ticking
scoreboard players set bartick pkw2_game 0
function pkw2:bossbar/ticktime
function pkw2:bossbar/updateprogress
# Nearby Players
scoreboard players set @a pkw2_nearby_5 0
scoreboard players set @a pkw2_nearby_8 0
function pkw2:nearby/loop
# Scoreboard
function pkw2:scoreboard/update
# Enable Dynamic Courses
scoreboard objectives add pkw2_dynamic dummy
scoreboard players set dynamictick pkw2_dynamic 1
function pkw2:dynamic/master
# Hotbar#
function pkw2:hotbar

# Modifier notice
execute if score modifiers_parkour_rush pkw2_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Parkour Rush","color": "#E3E3E3"},"§b: 每个奖励关均有完成人数上限。"]
execute if score modifiers_completion_sabotage pkw2_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Completion Sabotage","color": "#E3E3E3"},"§b: 完成全部挑战的玩家可以放置一个方块。"]
execute if score modifiers_champion_build pkw2_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Champion Build","color": "#E3E3E3"},"§b: 第一个完成除最终关以外的关卡，可以放置一个方块。"]

