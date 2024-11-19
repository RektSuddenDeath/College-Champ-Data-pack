
xp set @a 0 levels

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow

team add spec "Spectators"
function acerace:initiategame
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -100

gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops false
gamerule doImmediateRespawn true
difficulty peaceful
gamerule keepInventory true
time set day
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0

effect give @a invisibility 48 0 true
function master:timer/starting/acerace

scoreboard players reset §6 ar_sb

scoreboard players set 第一个完赛 acerace_stats 48
scoreboard players set 完成一圈 acerace_stats 7
scoreboard players set 后完赛递减 acerace_stats 3

kill @e[type=armor_stand]
kill @e[type=minecart]

team modify blue collisionRule never
team modify green collisionRule never
team modify red collisionRule never
team modify yellow collisionRule never

team modify red deathMessageVisibility always
team modify green deathMessageVisibility always
team modify blue deathMessageVisibility always
team modify yellow deathMessageVisibility always

# warning threshold
scoreboard players set warn master.timer 30
scoreboard players set highwarn master.timer 15