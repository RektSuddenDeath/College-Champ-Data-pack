
scoreboard players set RoundActive tourney_stats 1

# Round Flag
scoreboard players set pregame sba_game 0
scoreboard players set bellbonus sba_game 0
scoreboard players set @a sba_logout 0
difficulty normal
gamerule fallDamage true

# Title
title @a title ""
title @a subtitle ""
# Removes barrier
execute if score map sba_game matches 1 run function skybattle:removebarrier/classic
execute if score map sba_game matches 2 run function skybattle:removebarrier/sandcastle
execute if score map sba_game matches 3 run function skybattle:removebarrier/wasteland
execute if score map sba_game matches 4 run function skybattle:removebarrier/cakesland
# Time
execute if score map sba_game matches 1 run function master:timer/timeleft/4min
execute if score map sba_game matches 2 run function master:timer/timeleft/4min
execute if score map sba_game matches 3 run function master:timer/timeleft/4min
execute if score map sba_game matches 4 run function master:timer/timeleft/4min

# Player Status
gamemode survival @a[gamemode=adventure]

# SFX
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~
execute as @a at @s run playsound minecraft:music.skybattle voice @s ~ ~ ~


function skybattle:round/roundtime
# Enables core check
#function skybattle:bellprotect
function skybattle:gt
function skybattle:teamglint
function skybattle:explosives/loop
# Combat Tag
scoreboard players set tagtime tourney_stats 600
function utils:combattag/init
# Scoreboard
function skybattle:scoreboard/start

# Glowing
effect give @a[team=!spec] glowing infinite 0 true

# Firework effects
function utils:firework_death_init

## FF Modifier
execute if score modifiers_friendlyfire sba_game matches 1 run scoreboard players set friendly_fire_mod tourney_stats 0
# Modifier Notice
execute if score modifiers_shockwave sba_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Shockwave","color": "#E3E3E3"},"§b: Fallen player will cause a shockwave. Dealing shared damage to all players in radius."]
execute if score modifiers_friendlyfire sba_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Friendlyfire","color": "#E3E3E3"},"§b: Friendlyfire is enabled."]