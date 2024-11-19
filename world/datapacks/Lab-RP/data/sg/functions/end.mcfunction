# Clear Functions
schedule clear sg:timing/core
schedule clear sg:subtimer/loop
schedule clear master:timer/timeleft/sec
# Game Flag
scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameactive sg_game 0
scoreboard players set gameflag sg_game 0

# Visual
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
execute as @a at @s run playsound music.gameendmusic record @s
title @a times 0 60 20
title @a title "§c§l游戏结束！"
title @a subtitle ""


bossbar set sg_timebar visible false

# Invincible All
effect give @a resistance infinite 6 true
execute in sg:sjtu run gamerule naturalRegeneration false
# Remove Last airdrop
function sg:airdrop/1/expire
function sg:airdrop/2/expire
function sg:airdrop/3/expire
function sg:airdrop/4/expire
function sg:airdrop/5/expire
kill @e[type=armor_stand,tag=sg_airdropstand]

# Remove tombs
kill @e[type=area_effect_cloud,tag=tomb_stand]
kill @e[type=chest_minecart,tag=tomb_cart]
kill @e[type=item]


# no more fireworks
schedule clear utils:firework_death
# Stop border
execute in sg:sjtu run worldborder add 0.0001

# Game Summary

function sg:scoring/find_survivor
function sg:scoring/teambonus

execute as @a[team=!spec] run tellraw @s ["[","§e▶","] ","你本局为第",{"score":{"name": "@s","objective": "sg_indvpos"},"color":"aqua"},"名。"]
execute as @a[team=!spec] run tellraw @s ["[","§e▶","] ","你本局淘汰了",{"score":{"name": "@s","objective": "sg_roundkills"},"color":"gold"},"名对手。"]
execute as @a[team=!spec] run tellraw @s ["[","§e▶","] ","你本局获得了",{"score":{"name": "@s","objective": "sg_indvscore"},"color":"yellow"},"分。"]

## Final Result Calculation and announcement
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/60s

function sg:scoring/final

schedule function sg:teampos/text1 2s
schedule function sg:teampos/text2 4s
schedule function utils:text/gamescore 12s
schedule function utils:text/mvp 20s
schedule function sg:mvp 22s
schedule function utils:text/eventstandings 30s

