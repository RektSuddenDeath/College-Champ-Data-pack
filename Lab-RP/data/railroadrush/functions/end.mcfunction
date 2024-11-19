
#scoreboard players set gameflag rrr_game 0
scoreboard players set RoundActive tourney_stats 0
schedule clear master:timer/timeleft/sec
schedule clear utils:survivalregen
schedule clear railroadrush:timing
# Race Begin Notice
execute as @a at @s run playsound sound.end record @s
title @a title "§c§l游戏结束！"
title @a subtitle ""
title @a times 0 30 10

stopsound @a voice
tellraw @a "\n§6矿车竞逐即将开始……\n"

schedule clear railroadrush:summon_dynamite/master
schedule clear master:overtime/loop
kill @e[type=minecart,tag=rrr_minecart]
scoreboard players set scb_factor rrr_game 3
function railroadrush:race/init

clear @a
effect clear @a glowing
gamemode adventure @a[team=!spec]

# ERASE all villagers
execute as @e[type=villager,tag=rrr_shop] run data modify entity @s Silent set value 1b
execute as @e[type=villager,tag=rrr_shop] at @s run tp @s ~ -64 ~
kill @e[type=villager,tag=rrr_shop]