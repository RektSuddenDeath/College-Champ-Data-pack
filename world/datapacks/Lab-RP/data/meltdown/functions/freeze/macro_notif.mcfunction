
$tellraw @a[team=$(victim_team)] ["","§f[§b🏹§f] ",{"selector":"@s"},"被",{"selector":"@p[scores={univ_pid=$(attacker_pid)}]"},"冻结"]
$tellraw @a[team=$(killer_team)] ["","§f[§b🏹§f] ",{"selector":"@s"},"被",{"selector":"@p[scores={univ_pid=$(attacker_pid)}]"},"冻结"]
$tellraw @a[team=spec] ["","§f[§b🏹§f] ",{"selector":"@s"},"被",{"selector":"@p[scores={univ_pid=$(attacker_pid)}]"},"冻结"]

# Notif for killer
$tellraw @a[scores={univ_pid=$(attacker_pid)}] ["","[§6+",{"score":{"name":"freeze","objective":"meltdown_stats"},"color":"gold"},"§6分§f] ","你冻结了",{"selector":"@s"},"!"]

$title @a[scores={univ_pid=$(attacker_pid)}] times 0 40 10
$title @a[scores={univ_pid=$(attacker_pid)}] title ""
$title @a[scores={univ_pid=$(attacker_pid)}] subtitle ["§f[§b🏹§f] ",{"selector":"@s"}]
$execute as @a[scores={univ_pid=$(attacker_pid)}] at @s run playsound sound.acquire record @s


# score
$execute as @a[scores={univ_pid=$(attacker_pid)}] run scoreboard players operation @s meltdown_roundscore += freeze meltdown_stats
$execute as @a[scores={univ_pid=$(attacker_pid)}] run scoreboard players add @s meltdown_roundKills 1

# recap
$execute as @a[scores={univ_pid=$(attacker_pid)}] run scoreboard players add @s meltdown_recap_shot_landed 1